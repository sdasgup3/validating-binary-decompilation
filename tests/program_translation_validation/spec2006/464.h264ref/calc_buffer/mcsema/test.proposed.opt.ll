; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x2994b1__rip__type = type <{ [8 x i8] }>
%G_0x299555__rip__type = type <{ [8 x i8] }>
%G_0x29956d__rip__type = type <{ [8 x i8] }>
%G_0x29963a__rip__type = type <{ [8 x i8] }>
%G_0x299e73__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cbe00_type = type <{ [8 x i8] }>
%G_0x6cc010_type = type <{ [8 x i8] }>
%G_0x6f9740_type = type <{ [8 x i8] }>
%G_0x8b47c__rip__type = type <{ [4 x i8] }>
%G_0x8b561__rip__type = type <{ [4 x i8] }>
%G_0x8b630__rip__type = type <{ [4 x i8] }>
%G__0x4c054d_type = type <{ [8 x i8] }>
%G__0x4c059e_type = type <{ [8 x i8] }>
%G__0x4c05b9_type = type <{ [8 x i8] }>
%G__0x4c05d3_type = type <{ [8 x i8] }>
%G__0x4c05e5_type = type <{ [8 x i8] }>
%G__0x4c05f7_type = type <{ [8 x i8] }>
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
@G_0x2994b1__rip_ = global %G_0x2994b1__rip__type zeroinitializer
@G_0x299555__rip_ = global %G_0x299555__rip__type zeroinitializer
@G_0x29956d__rip_ = global %G_0x29956d__rip__type zeroinitializer
@G_0x29963a__rip_ = global %G_0x29963a__rip__type zeroinitializer
@G_0x299e73__rip_ = global %G_0x299e73__rip__type zeroinitializer
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6cbe00 = local_unnamed_addr global %G_0x6cbe00_type zeroinitializer
@G_0x6cc010 = local_unnamed_addr global %G_0x6cc010_type zeroinitializer
@G_0x6f9740 = local_unnamed_addr global %G_0x6f9740_type zeroinitializer
@G_0x8b47c__rip_ = global %G_0x8b47c__rip__type zeroinitializer
@G_0x8b561__rip_ = global %G_0x8b561__rip__type zeroinitializer
@G_0x8b630__rip_ = global %G_0x8b630__rip__type zeroinitializer
@G__0x4c054d = global %G__0x4c054d_type zeroinitializer
@G__0x4c059e = global %G__0x4c059e_type zeroinitializer
@G__0x4c05b9 = global %G__0x4c05b9_type zeroinitializer
@G__0x4c05d3 = global %G__0x4c05d3_type zeroinitializer
@G__0x4c05e5 = global %G__0x4c05e5_type zeroinitializer
@G__0x4c05f7 = global %G__0x4c05f7_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431bf0.get_LeakyBucketRate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431f00.Sort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431d90.write_buffer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @calc_buffer(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -184
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 176
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
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x4c054d_type* @G__0x4c054d to i64), i64* %RSI.i, align 8
  %40 = add i64 %7, -72
  %41 = add i64 %10, 28
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i64*
  store i64 0, i64* %42, align 8
  %RDI.i493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %44, i64* %RDI.i493, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i = bitcast %union.anon* %45 to i8*
  store i8 0, i8* %AL.i, align 1
  %46 = add i64 %43, -200413
  %47 = add i64 %43, 15
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, -8
  %50 = inttoptr i64 %49 to i64*
  store i64 %47, i64* %50, align 8
  store i64 %49, i64* %6, align 8
  store i64 %46, i64* %3, align 8
  %51 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  %52 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4c059e_type* @G__0x4c059e to i64), i64* %RDI.i493, align 8
  %53 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*), align 8
  store i64 %53, i64* %RSI.i, align 8
  %RCX.i917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %54 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %54, i64* %RCX.i917, align 8
  %RDX.i938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %55 = add i64 %54, 8
  %56 = add i64 %52, 29
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %RDX.i938, align 8
  %EAX.i958 = bitcast %union.anon* %45 to i32*
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -124
  %62 = load i32, i32* %EAX.i958, align 4
  %63 = add i64 %52, 32
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %64, align 4
  %65 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %66 = add i64 %65, -200668
  %67 = add i64 %65, 7
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  store i64 %67, i64* %70, align 8
  store i64 %69, i64* %6, align 8
  store i64 %66, i64* %3, align 8
  %71 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %51)
  %72 = load i64, i64* %3, align 8
  store i64 8, i64* %RDX.i938, align 8
  store i64 8, i64* %RSI.i, align 8
  %73 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %73, i64* %RCX.i917, align 8
  %74 = add i64 %73, 2476
  %75 = add i64 %72, 22
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -24
  %81 = add i64 %72, 26
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %82, align 8
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*), align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %RCX.i917, align 8
  %86 = icmp eq i64 %84, -1
  %87 = icmp eq i64 %85, 0
  %88 = or i1 %86, %87
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %14, align 1
  %90 = trunc i64 %85 to i32
  %91 = and i32 %90, 255
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91)
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %21, align 1
  %96 = xor i64 %85, %84
  %97 = lshr i64 %96, 4
  %98 = trunc i64 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %27, align 1
  %100 = zext i1 %87 to i8
  store i8 %100, i8* %30, align 1
  %101 = lshr i64 %85, 63
  %102 = trunc i64 %101 to i8
  store i8 %102, i8* %33, align 1
  %103 = lshr i64 %84, 63
  %104 = xor i64 %101, %103
  %105 = add nuw nsw i64 %104, %101
  %106 = icmp eq i64 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %39, align 1
  store i64 %85, i64* %RDI.i493, align 8
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -128
  %110 = load i32, i32* %EAX.i958, align 4
  %111 = add i64 %83, 18
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %112, align 4
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, -200559
  %115 = add i64 %113, 5
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, -8
  %118 = inttoptr i64 %117 to i64*
  store i64 %115, i64* %118, align 8
  store i64 %117, i64* %6, align 8
  store i64 %114, i64* %3, align 8
  %119 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %71)
  %RAX.i955 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -32
  %122 = load i64, i64* %RAX.i955, align 8
  %123 = load i64, i64* %3, align 8
  %124 = add i64 %123, 4
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125, align 8
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -32
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, 5
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %127 to i64*
  %131 = load i64, i64* %130, align 8
  store i8 0, i8* %14, align 1
  %132 = trunc i64 %131 to i32
  %133 = and i32 %132, 255
  %134 = tail call i32 @llvm.ctpop.i32(i32 %133)
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %138 = icmp eq i64 %131, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %30, align 1
  %140 = lshr i64 %131, 63
  %141 = trunc i64 %140 to i8
  store i8 %141, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v81 = select i1 %138, i64 11, i64 26
  %142 = add i64 %128, %.v81
  store i64 %142, i64* %3, align 8
  br i1 %138, label %block_432063, label %block_.L_432072

block_432063:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x4c05b9_type* @G__0x4c05b9 to i64), i64* %RDI.i493, align 8
  %143 = add i64 %142, 160653
  %144 = add i64 %142, 15
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, -8
  %147 = inttoptr i64 %146 to i64*
  store i64 %144, i64* %147, align 8
  store i64 %146, i64* %6, align 8
  store i64 %143, i64* %3, align 8
  %call2_43206d = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %143, %struct.Memory* %119)
  %.pre = load i64, i64* %3, align 8
  %.pre34 = load i64, i64* %RBP.i, align 8
  br label %block_.L_432072

block_.L_432072:                                  ; preds = %entry, %block_432063
  %148 = phi i64 [ %126, %entry ], [ %.pre34, %block_432063 ]
  %149 = phi i64 [ %142, %entry ], [ %.pre, %block_432063 ]
  %MEMORY.0 = phi %struct.Memory* [ %119, %entry ], [ %call2_43206d, %block_432063 ]
  store i64 8, i64* %RAX.i955, align 8
  store i64 8, i64* %RSI.i, align 8
  %150 = add i64 %148, -24
  %151 = add i64 %149, 11
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RDI.i493, align 8
  %154 = add i64 %149, -200594
  %155 = add i64 %149, 16
  %156 = load i64, i64* %6, align 8
  %157 = add i64 %156, -8
  %158 = inttoptr i64 %157 to i64*
  store i64 %155, i64* %158, align 8
  store i64 %157, i64* %6, align 8
  store i64 %154, i64* %3, align 8
  %159 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.0)
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -104
  %162 = load i64, i64* %RAX.i955, align 8
  %163 = load i64, i64* %3, align 8
  %164 = add i64 %163, 4
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %161 to i64*
  store i64 %162, i64* %165, align 8
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -104
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 5
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %167 to i64*
  %171 = load i64, i64* %170, align 8
  store i8 0, i8* %14, align 1
  %172 = trunc i64 %171 to i32
  %173 = and i32 %172, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %178 = icmp eq i64 %171, 0
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %30, align 1
  %180 = lshr i64 %171, 63
  %181 = trunc i64 %180 to i8
  store i8 %181, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v82 = select i1 %178, i64 11, i64 26
  %182 = add i64 %168, %.v82
  store i64 %182, i64* %3, align 8
  br i1 %178, label %block_432091, label %block_.L_4320a0

block_432091:                                     ; preds = %block_.L_432072
  store i64 ptrtoint (%G__0x4c05d3_type* @G__0x4c05d3 to i64), i64* %RDI.i493, align 8
  %183 = add i64 %182, 160607
  %184 = add i64 %182, 15
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  %call2_43209b = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %183, %struct.Memory* %159)
  %.pre35 = load i64, i64* %3, align 8
  %.pre36 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4320a0

block_.L_4320a0:                                  ; preds = %block_.L_432072, %block_432091
  %188 = phi i64 [ %166, %block_.L_432072 ], [ %.pre36, %block_432091 ]
  %189 = phi i64 [ %182, %block_.L_432072 ], [ %.pre35, %block_432091 ]
  %MEMORY.1 = phi %struct.Memory* [ %159, %block_.L_432072 ], [ %call2_43209b, %block_432091 ]
  store i64 8, i64* %RAX.i955, align 8
  store i64 8, i64* %RSI.i, align 8
  %190 = add i64 %188, -24
  %191 = add i64 %189, 11
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %RDI.i493, align 8
  %194 = add i64 %189, -200640
  %195 = add i64 %189, 16
  %196 = load i64, i64* %6, align 8
  %197 = add i64 %196, -8
  %198 = inttoptr i64 %197 to i64*
  store i64 %195, i64* %198, align 8
  store i64 %197, i64* %6, align 8
  store i64 %194, i64* %3, align 8
  %199 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.1)
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -112
  %202 = load i64, i64* %RAX.i955, align 8
  %203 = load i64, i64* %3, align 8
  %204 = add i64 %203, 4
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205, align 8
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -112
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 5
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %207 to i64*
  %211 = load i64, i64* %210, align 8
  store i8 0, i8* %14, align 1
  %212 = trunc i64 %211 to i32
  %213 = and i32 %212, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %218 = icmp eq i64 %211, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %30, align 1
  %220 = lshr i64 %211, 63
  %221 = trunc i64 %220 to i8
  store i8 %221, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v83 = select i1 %218, i64 11, i64 26
  %222 = add i64 %208, %.v83
  store i64 %222, i64* %3, align 8
  br i1 %218, label %block_4320bf, label %block_.L_4320ce

block_4320bf:                                     ; preds = %block_.L_4320a0
  store i64 ptrtoint (%G__0x4c05e5_type* @G__0x4c05e5 to i64), i64* %RDI.i493, align 8
  %223 = add i64 %222, 160561
  %224 = add i64 %222, 15
  %225 = load i64, i64* %6, align 8
  %226 = add i64 %225, -8
  %227 = inttoptr i64 %226 to i64*
  store i64 %224, i64* %227, align 8
  store i64 %226, i64* %6, align 8
  store i64 %223, i64* %3, align 8
  %call2_4320c9 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %223, %struct.Memory* %199)
  %.pre37 = load i64, i64* %3, align 8
  %.pre38 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4320ce

block_.L_4320ce:                                  ; preds = %block_.L_4320a0, %block_4320bf
  %228 = phi i64 [ %206, %block_.L_4320a0 ], [ %.pre38, %block_4320bf ]
  %229 = phi i64 [ %222, %block_.L_4320a0 ], [ %.pre37, %block_4320bf ]
  %MEMORY.2 = phi %struct.Memory* [ %199, %block_.L_4320a0 ], [ %call2_4320c9, %block_4320bf ]
  store i64 8, i64* %RAX.i955, align 8
  store i64 8, i64* %RSI.i, align 8
  %230 = add i64 %228, -24
  %231 = add i64 %229, 11
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RDI.i493, align 8
  %234 = add i64 %229, -200686
  %235 = add i64 %229, 16
  %236 = load i64, i64* %6, align 8
  %237 = add i64 %236, -8
  %238 = inttoptr i64 %237 to i64*
  store i64 %235, i64* %238, align 8
  store i64 %237, i64* %6, align 8
  store i64 %234, i64* %3, align 8
  %239 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.2)
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -120
  %242 = load i64, i64* %RAX.i955, align 8
  %243 = load i64, i64* %3, align 8
  %244 = add i64 %243, 4
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %241 to i64*
  store i64 %242, i64* %245, align 8
  %246 = load i64, i64* %RBP.i, align 8
  %247 = add i64 %246, -120
  %248 = load i64, i64* %3, align 8
  %249 = add i64 %248, 5
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %247 to i64*
  %251 = load i64, i64* %250, align 8
  store i8 0, i8* %14, align 1
  %252 = trunc i64 %251 to i32
  %253 = and i32 %252, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %258 = icmp eq i64 %251, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %30, align 1
  %260 = lshr i64 %251, 63
  %261 = trunc i64 %260 to i8
  store i8 %261, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v84 = select i1 %258, i64 11, i64 26
  %262 = add i64 %248, %.v84
  store i64 %262, i64* %3, align 8
  br i1 %258, label %block_4320ed, label %block_.L_4320fc

block_4320ed:                                     ; preds = %block_.L_4320ce
  store i64 ptrtoint (%G__0x4c05f7_type* @G__0x4c05f7 to i64), i64* %RDI.i493, align 8
  %263 = add i64 %262, 160515
  %264 = add i64 %262, 15
  %265 = load i64, i64* %6, align 8
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %264, i64* %267, align 8
  store i64 %266, i64* %6, align 8
  store i64 %263, i64* %3, align 8
  %call2_4320f7 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %263, %struct.Memory* %239)
  %.pre39 = load i64, i64* %RBP.i, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_4320fc

block_.L_4320fc:                                  ; preds = %block_.L_4320ce, %block_4320ed
  %268 = phi i64 [ %262, %block_.L_4320ce ], [ %.pre40, %block_4320ed ]
  %269 = phi i64 [ %246, %block_.L_4320ce ], [ %.pre39, %block_4320ed ]
  %MEMORY.3 = phi %struct.Memory* [ %239, %block_.L_4320ce ], [ %call2_4320f7, %block_4320ed ]
  %270 = add i64 %269, -16
  %271 = add i64 %268, 8
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i64*
  store i64 0, i64* %272, align 8
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -56
  %275 = load i64, i64* %3, align 8
  %276 = add i64 %275, 8
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %274 to i64*
  store i64 0, i64* %277, align 8
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_43210c

block_.L_43210c:                                  ; preds = %block_43211e, %block_.L_4320fc
  %278 = phi i64 [ %381, %block_43211e ], [ %.pre41, %block_.L_4320fc ]
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -56
  %281 = add i64 %278, 4
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RAX.i955, align 8
  %284 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*), align 8
  %285 = sub i64 %283, %284
  %286 = icmp ult i64 %283, %284
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %14, align 1
  %288 = trunc i64 %285 to i32
  %289 = and i32 %288, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %21, align 1
  %294 = xor i64 %284, %283
  %295 = xor i64 %294, %285
  %296 = lshr i64 %295, 4
  %297 = trunc i64 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %27, align 1
  %299 = icmp eq i64 %285, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %30, align 1
  %301 = lshr i64 %285, 63
  %302 = trunc i64 %301 to i8
  store i8 %302, i8* %33, align 1
  %303 = lshr i64 %283, 63
  %304 = lshr i64 %284, 63
  %305 = xor i64 %304, %303
  %306 = xor i64 %301, %303
  %307 = add nuw nsw i64 %306, %305
  %308 = icmp eq i64 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %39, align 1
  %.v85 = select i1 %286, i64 18, i64 55
  %310 = add i64 %278, %.v85
  store i64 %310, i64* %3, align 8
  br i1 %286, label %block_43211e, label %block_.L_432143

block_43211e:                                     ; preds = %block_.L_43210c
  %311 = add i64 %310, 4
  store i64 %311, i64* %3, align 8
  %312 = load i64, i64* %282, align 8
  store i64 %312, i64* %RAX.i955, align 8
  %313 = shl i64 %312, 3
  %314 = add i64 %313, 7313216
  %315 = add i64 %310, 12
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RAX.i955, align 8
  %318 = add i64 %279, -16
  %319 = add i64 %310, 16
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320, align 8
  %322 = add i64 %321, %317
  store i64 %322, i64* %RAX.i955, align 8
  %323 = icmp ult i64 %322, %317
  %324 = icmp ult i64 %322, %321
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %14, align 1
  %327 = trunc i64 %322 to i32
  %328 = and i32 %327, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328)
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %21, align 1
  %333 = xor i64 %321, %317
  %334 = xor i64 %333, %322
  %335 = lshr i64 %334, 4
  %336 = trunc i64 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %27, align 1
  %338 = icmp eq i64 %322, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %30, align 1
  %340 = lshr i64 %322, 63
  %341 = trunc i64 %340 to i8
  store i8 %341, i8* %33, align 1
  %342 = lshr i64 %317, 63
  %343 = lshr i64 %321, 63
  %344 = xor i64 %340, %342
  %345 = xor i64 %340, %343
  %346 = add nuw nsw i64 %344, %345
  %347 = icmp eq i64 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %39, align 1
  %349 = add i64 %310, 20
  store i64 %349, i64* %3, align 8
  store i64 %322, i64* %320, align 8
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -56
  %352 = load i64, i64* %3, align 8
  %353 = add i64 %352, 4
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %351 to i64*
  %355 = load i64, i64* %354, align 8
  %356 = add i64 %355, 1
  store i64 %356, i64* %RAX.i955, align 8
  %357 = icmp eq i64 %355, -1
  %358 = icmp eq i64 %356, 0
  %359 = or i1 %357, %358
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %14, align 1
  %361 = trunc i64 %356 to i32
  %362 = and i32 %361, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %21, align 1
  %367 = xor i64 %356, %355
  %368 = lshr i64 %367, 4
  %369 = trunc i64 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %27, align 1
  %371 = zext i1 %358 to i8
  store i8 %371, i8* %30, align 1
  %372 = lshr i64 %356, 63
  %373 = trunc i64 %372 to i8
  store i8 %373, i8* %33, align 1
  %374 = lshr i64 %355, 63
  %375 = xor i64 %372, %374
  %376 = add nuw nsw i64 %375, %372
  %377 = icmp eq i64 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %39, align 1
  %379 = add i64 %352, 12
  store i64 %379, i64* %3, align 8
  store i64 %356, i64* %354, align 8
  %380 = load i64, i64* %3, align 8
  %381 = add i64 %380, -50
  store i64 %381, i64* %3, align 8
  br label %block_.L_43210c

block_.L_432143:                                  ; preds = %block_.L_43210c
  %382 = add i64 %279, -16
  %383 = add i64 %310, 4
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i64*
  %385 = load i64, i64* %384, align 8
  store i64 %385, i64* %RAX.i955, align 8
  %386 = lshr i64 %385, 1
  store i64 %386, i64* %RCX.i917, align 8
  %387 = and i64 %385, 1
  store i64 %387, i64* %RDX.i938, align 8
  %388 = or i64 %386, %387
  store i64 %388, i64* %RSI.i, align 8
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %390 = bitcast [32 x %union.VectorReg]* %389 to i8*
  %391 = bitcast [32 x %union.VectorReg]* %389 to <2 x i32>*
  %392 = load <2 x i32>, <2 x i32>* %391, align 1
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %394 = bitcast i64* %393 to <2 x i32>*
  %395 = load <2 x i32>, <2 x i32>* %394, align 1
  %396 = sitofp i64 %388 to float
  %397 = bitcast [32 x %union.VectorReg]* %389 to float*
  store float %396, float* %397, align 1
  %398 = extractelement <2 x i32> %392, i32 1
  %399 = getelementptr inbounds i8, i8* %390, i64 4
  %400 = bitcast i8* %399 to i32*
  store i32 %398, i32* %400, align 1
  %401 = extractelement <2 x i32> %395, i32 0
  %402 = bitcast i64* %393 to i32*
  store i32 %401, i32* %402, align 1
  %403 = extractelement <2 x i32> %395, i32 1
  %404 = getelementptr inbounds i8, i8* %390, i64 12
  %405 = bitcast i8* %404 to i32*
  store i32 %403, i32* %405, align 1
  %406 = bitcast [32 x %union.VectorReg]* %389 to <2 x float>*
  %407 = load <2 x float>, <2 x float>* %406, align 1
  %408 = load <2 x i32>, <2 x i32>* %394, align 1
  %409 = extractelement <2 x float> %407, i32 0
  %410 = fadd float %409, %409
  store float %410, float* %397, align 1
  %411 = bitcast <2 x float> %407 to <2 x i32>
  %412 = extractelement <2 x i32> %411, i32 1
  store i32 %412, i32* %400, align 1
  %413 = extractelement <2 x i32> %408, i32 0
  store i32 %413, i32* %402, align 1
  %414 = extractelement <2 x i32> %408, i32 1
  store i32 %414, i32* %405, align 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %416 = bitcast %union.VectorReg* %415 to i8*
  %417 = load i64, i64* %RAX.i955, align 8
  %418 = bitcast %union.VectorReg* %415 to <2 x i32>*
  %419 = load <2 x i32>, <2 x i32>* %418, align 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %421 = bitcast i64* %420 to <2 x i32>*
  %422 = load <2 x i32>, <2 x i32>* %421, align 1
  %423 = sitofp i64 %417 to float
  %424 = bitcast %union.VectorReg* %415 to float*
  store float %423, float* %424, align 1
  %425 = extractelement <2 x i32> %419, i32 1
  %426 = getelementptr inbounds i8, i8* %416, i64 4
  %427 = bitcast i8* %426 to i32*
  store i32 %425, i32* %427, align 1
  %428 = extractelement <2 x i32> %422, i32 0
  %429 = bitcast i64* %420 to i32*
  store i32 %428, i32* %429, align 1
  %430 = extractelement <2 x i32> %422, i32 1
  %431 = getelementptr inbounds i8, i8* %416, i64 12
  %432 = bitcast i8* %431 to i32*
  store i32 %430, i32* %432, align 1
  store i8 0, i8* %14, align 1
  %433 = trunc i64 %417 to i32
  %434 = and i32 %433, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %21, align 1
  %439 = icmp eq i64 %417, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %30, align 1
  %441 = lshr i64 %417, 63
  %442 = trunc i64 %441 to i8
  store i8 %442, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -132
  %445 = add i64 %310, 45
  store i64 %445, i64* %3, align 8
  %446 = bitcast %union.VectorReg* %415 to <2 x float>*
  %447 = load <2 x float>, <2 x float>* %446, align 1
  %448 = extractelement <2 x float> %447, i32 0
  %449 = inttoptr i64 %444 to float*
  store float %448, float* %449, align 4
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -136
  %452 = load i64, i64* %3, align 8
  %453 = add i64 %452, 8
  store i64 %453, i64* %3, align 8
  %454 = load <2 x float>, <2 x float>* %406, align 1
  %455 = extractelement <2 x float> %454, i32 0
  %456 = inttoptr i64 %451 to float*
  store float %455, float* %456, align 4
  %457 = load i64, i64* %3, align 8
  %458 = load i8, i8* %33, align 1
  %459 = icmp ne i8 %458, 0
  %.v108 = select i1 %459, i64 22, i64 6
  %460 = add i64 %457, %.v108
  store i64 %460, i64* %3, align 8
  %cmpBr_432178 = icmp eq i8 %458, 1
  br i1 %cmpBr_432178, label %block_.L_432143.block_.L_43218e_crit_edge, label %block_43217e

block_.L_432143.block_.L_43218e_crit_edge:        ; preds = %block_.L_432143
  %.pre73 = bitcast [32 x %union.VectorReg]* %389 to i32*
  %.pre74 = bitcast i8* %399 to float*
  %.pre76 = bitcast i64* %393 to float*
  %.pre78 = bitcast i8* %404 to float*
  br label %block_.L_43218e

block_43217e:                                     ; preds = %block_.L_432143
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -132
  %463 = add i64 %460, 8
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = bitcast [32 x %union.VectorReg]* %389 to i32*
  store i32 %465, i32* %466, align 1
  %467 = bitcast i8* %399 to float*
  store float 0.000000e+00, float* %467, align 1
  %468 = bitcast i64* %393 to float*
  store float 0.000000e+00, float* %468, align 1
  %469 = bitcast i8* %404 to float*
  store float 0.000000e+00, float* %469, align 1
  %470 = add i64 %461, -136
  %471 = add i64 %460, 16
  store i64 %471, i64* %3, align 8
  %472 = load <2 x float>, <2 x float>* %406, align 1
  %473 = extractelement <2 x float> %472, i32 0
  %474 = inttoptr i64 %470 to float*
  store float %473, float* %474, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_43218e

block_.L_43218e:                                  ; preds = %block_.L_432143.block_.L_43218e_crit_edge, %block_43217e
  %.pre-phi79 = phi float* [ %.pre78, %block_.L_432143.block_.L_43218e_crit_edge ], [ %469, %block_43217e ]
  %.pre-phi77 = phi float* [ %.pre76, %block_.L_432143.block_.L_43218e_crit_edge ], [ %468, %block_43217e ]
  %.pre-phi75 = phi float* [ %.pre74, %block_.L_432143.block_.L_43218e_crit_edge ], [ %467, %block_43217e ]
  %.pre-phi = phi i32* [ %.pre73, %block_.L_432143.block_.L_43218e_crit_edge ], [ %466, %block_43217e ]
  %475 = phi i64 [ %460, %block_.L_432143.block_.L_43218e_crit_edge ], [ %.pre42, %block_43217e ]
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -136
  %478 = add i64 %475, 8
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  store i32 %480, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %481 = add i64 %475, add (i64 ptrtoint (%G_0x299e73__rip__type* @G_0x299e73__rip_ to i64), i64 8)
  %482 = add i64 %475, 15
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i64*
  %484 = load i64, i64* %483, align 8
  store i64 %484, i64* %RAX.i955, align 8
  %485 = lshr i64 %484, 1
  store i64 %485, i64* %RCX.i917, align 8
  %486 = and i64 %484, 1
  store i64 %486, i64* %RDX.i938, align 8
  %487 = or i64 %485, %486
  store i64 %487, i64* %RSI.i, align 8
  %488 = load <2 x i32>, <2 x i32>* %418, align 1
  %489 = load <2 x i32>, <2 x i32>* %421, align 1
  %490 = sitofp i64 %487 to float
  store float %490, float* %424, align 1
  %491 = extractelement <2 x i32> %488, i32 1
  store i32 %491, i32* %427, align 1
  %492 = extractelement <2 x i32> %489, i32 0
  store i32 %492, i32* %429, align 1
  %493 = extractelement <2 x i32> %489, i32 1
  store i32 %493, i32* %432, align 1
  %494 = load <2 x float>, <2 x float>* %446, align 1
  %495 = load <2 x i32>, <2 x i32>* %421, align 1
  %496 = extractelement <2 x float> %494, i32 0
  %497 = fadd float %496, %496
  store float %497, float* %424, align 1
  %498 = bitcast <2 x float> %494 to <2 x i32>
  %499 = extractelement <2 x i32> %498, i32 1
  store i32 %499, i32* %427, align 1
  %500 = extractelement <2 x i32> %495, i32 0
  store i32 %500, i32* %429, align 1
  %501 = extractelement <2 x i32> %495, i32 1
  store i32 %501, i32* %432, align 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %503 = bitcast %union.VectorReg* %502 to i8*
  %504 = bitcast %union.VectorReg* %502 to <2 x i32>*
  %505 = load <2 x i32>, <2 x i32>* %504, align 1
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %507 = bitcast i64* %506 to <2 x i32>*
  %508 = load <2 x i32>, <2 x i32>* %507, align 1
  %509 = sitofp i64 %484 to float
  %510 = bitcast %union.VectorReg* %502 to float*
  store float %509, float* %510, align 1
  %511 = extractelement <2 x i32> %505, i32 1
  %512 = getelementptr inbounds i8, i8* %503, i64 4
  %513 = bitcast i8* %512 to i32*
  store i32 %511, i32* %513, align 1
  %514 = extractelement <2 x i32> %508, i32 0
  %515 = bitcast i64* %506 to i32*
  store i32 %514, i32* %515, align 1
  %516 = extractelement <2 x i32> %508, i32 1
  %517 = getelementptr inbounds i8, i8* %503, i64 12
  %518 = bitcast i8* %517 to i32*
  store i32 %516, i32* %518, align 1
  %519 = load i64, i64* %RAX.i955, align 8
  store i8 0, i8* %14, align 1
  %520 = trunc i64 %519 to i32
  %521 = and i32 %520, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %21, align 1
  %526 = icmp eq i64 %519, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %30, align 1
  %528 = lshr i64 %519, 63
  %529 = trunc i64 %528 to i8
  store i8 %529, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -140
  %532 = add i64 %475, 56
  store i64 %532, i64* %3, align 8
  %533 = load <2 x float>, <2 x float>* %406, align 1
  %534 = extractelement <2 x float> %533, i32 0
  %535 = inttoptr i64 %531 to float*
  store float %534, float* %535, align 4
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -144
  %538 = load i64, i64* %3, align 8
  %539 = add i64 %538, 8
  store i64 %539, i64* %3, align 8
  %540 = bitcast %union.VectorReg* %502 to <2 x float>*
  %541 = load <2 x float>, <2 x float>* %540, align 1
  %542 = extractelement <2 x float> %541, i32 0
  %543 = inttoptr i64 %537 to float*
  store float %542, float* %543, align 4
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -148
  %546 = load i64, i64* %3, align 8
  %547 = add i64 %546, 8
  store i64 %547, i64* %3, align 8
  %548 = load <2 x float>, <2 x float>* %446, align 1
  %549 = extractelement <2 x float> %548, i32 0
  %550 = inttoptr i64 %545 to float*
  store float %549, float* %550, align 4
  %551 = load i64, i64* %3, align 8
  %552 = load i8, i8* %33, align 1
  %553 = icmp ne i8 %552, 0
  %.v109 = select i1 %553, i64 22, i64 6
  %554 = add i64 %551, %.v109
  store i64 %554, i64* %3, align 8
  %cmpBr_4321d6 = icmp eq i8 %552, 1
  br i1 %cmpBr_4321d6, label %block_.L_4321ec, label %block_4321dc

block_4321dc:                                     ; preds = %block_.L_43218e
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -144
  %557 = add i64 %554, 8
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  store i32 %559, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %560 = add i64 %555, -148
  %561 = add i64 %554, 16
  store i64 %561, i64* %3, align 8
  %562 = load <2 x float>, <2 x float>* %406, align 1
  %563 = extractelement <2 x float> %562, i32 0
  %564 = inttoptr i64 %560 to float*
  store float %563, float* %564, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_4321ec

block_.L_4321ec:                                  ; preds = %block_4321dc, %block_.L_43218e
  %565 = phi i64 [ %.pre43, %block_4321dc ], [ %554, %block_.L_43218e ]
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -148
  %568 = add i64 %565, 8
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  store i32 %570, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %571 = add i64 %566, -140
  %572 = add i64 %565, 16
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = bitcast %union.VectorReg* %415 to i32*
  store i32 %574, i32* %575, align 1
  %576 = bitcast i8* %426 to float*
  store float 0.000000e+00, float* %576, align 1
  %577 = bitcast i64* %420 to float*
  store float 0.000000e+00, float* %577, align 1
  %578 = bitcast i8* %431 to float*
  store float 0.000000e+00, float* %578, align 1
  %579 = load <2 x float>, <2 x float>* %446, align 1
  %580 = load <2 x i32>, <2 x i32>* %421, align 1
  %581 = load <2 x float>, <2 x float>* %406, align 1
  %582 = extractelement <2 x float> %579, i32 0
  %583 = extractelement <2 x float> %581, i32 0
  %584 = fdiv float %582, %583
  store float %584, float* %424, align 1
  %585 = bitcast <2 x float> %579 to <2 x i32>
  %586 = extractelement <2 x i32> %585, i32 1
  store i32 %586, i32* %427, align 1
  %587 = extractelement <2 x i32> %580, i32 0
  store i32 %587, i32* %429, align 1
  %588 = extractelement <2 x i32> %580, i32 1
  store i32 %588, i32* %432, align 1
  %589 = add i64 %565, add (i64 ptrtoint (%G_0x8b630__rip__type* @G_0x8b630__rip_ to i64), i64 20)
  %590 = add i64 %565, 28
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i32*
  %592 = load i32, i32* %591, align 4
  store i32 %592, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %593 = load <2 x i32>, <2 x i32>* %418, align 1
  %594 = load <2 x i32>, <2 x i32>* %421, align 1
  %595 = extractelement <2 x i32> %593, i32 0
  %596 = bitcast %union.VectorReg* %502 to i32*
  store i32 %595, i32* %596, align 1
  %597 = extractelement <2 x i32> %593, i32 1
  store i32 %597, i32* %513, align 1
  %598 = extractelement <2 x i32> %594, i32 0
  store i32 %598, i32* %515, align 1
  %599 = extractelement <2 x i32> %594, i32 1
  store i32 %599, i32* %518, align 1
  %600 = load <2 x float>, <2 x float>* %540, align 1
  %601 = load <2 x i32>, <2 x i32>* %507, align 1
  %602 = load <2 x float>, <2 x float>* %406, align 1
  %603 = extractelement <2 x float> %600, i32 0
  %604 = extractelement <2 x float> %602, i32 0
  %605 = fsub float %603, %604
  store float %605, float* %510, align 1
  %606 = bitcast <2 x float> %600 to <2 x i32>
  %607 = extractelement <2 x i32> %606, i32 1
  store i32 %607, i32* %513, align 1
  %608 = extractelement <2 x i32> %601, i32 0
  store i32 %608, i32* %515, align 1
  %609 = extractelement <2 x i32> %601, i32 1
  store i32 %609, i32* %518, align 1
  %610 = load <2 x float>, <2 x float>* %540, align 1
  %611 = extractelement <2 x float> %610, i32 0
  %612 = tail call float @llvm.trunc.f32(float %611)
  %613 = fptosi float %612 to i64
  %614 = xor i64 %613, -9223372036854775808
  store i64 %614, i64* %RAX.i955, align 8
  store i8 0, i8* %14, align 1
  %615 = trunc i64 %613 to i32
  %616 = and i32 %615, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %21, align 1
  %621 = icmp eq i64 %614, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %30, align 1
  %623 = lshr i64 %614, 63
  %624 = trunc i64 %623 to i8
  store i8 %624, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %625 = bitcast <2 x i32> %593 to <2 x float>
  %626 = extractelement <2 x float> %625, i32 0
  %627 = tail call float @llvm.trunc.f32(float %626)
  %628 = fptosi float %627 to i64
  store i64 %628, i64* %RCX.i917, align 8
  %629 = add i64 %565, 61
  store i64 %629, i64* %3, align 8
  %630 = fcmp uno float %626, %604
  br i1 %630, label %631, label %641

; <label>:631:                                    ; preds = %block_.L_4321ec
  %632 = fadd float %626, %604
  %633 = bitcast float %632 to i32
  %634 = and i32 %633, 2143289344
  %635 = icmp eq i32 %634, 2139095040
  %636 = and i32 %633, 4194303
  %637 = icmp ne i32 %636, 0
  %638 = and i1 %635, %637
  br i1 %638, label %639, label %647

; <label>:639:                                    ; preds = %631
  %640 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %629, %struct.Memory* %MEMORY.3)
  %.pre44 = load i64, i64* %RCX.i917, align 8
  %.pre45 = load i64, i64* %3, align 8
  %.pre46 = load i8, i8* %14, align 1
  %.pre47 = load i64, i64* %RAX.i955, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:641:                                    ; preds = %block_.L_4321ec
  %642 = fcmp ogt float %626, %604
  br i1 %642, label %647, label %643

; <label>:643:                                    ; preds = %641
  %644 = fcmp olt float %626, %604
  br i1 %644, label %647, label %645

; <label>:645:                                    ; preds = %643
  %646 = fcmp oeq float %626, %604
  br i1 %646, label %647, label %651

; <label>:647:                                    ; preds = %645, %643, %641, %631
  %648 = phi i8 [ 0, %641 ], [ 0, %643 ], [ 1, %645 ], [ 1, %631 ]
  %649 = phi i8 [ 0, %641 ], [ 0, %643 ], [ 0, %645 ], [ 1, %631 ]
  %650 = phi i8 [ 0, %641 ], [ 1, %643 ], [ 0, %645 ], [ 1, %631 ]
  store i8 %648, i8* %30, align 1
  store i8 %649, i8* %21, align 1
  store i8 %650, i8* %14, align 1
  br label %651

; <label>:651:                                    ; preds = %647, %645
  %652 = phi i8 [ %650, %647 ], [ 0, %645 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %651, %639
  %653 = phi i64 [ %.pre47, %639 ], [ %614, %651 ]
  %654 = phi i8 [ %.pre46, %639 ], [ %652, %651 ]
  %655 = phi i64 [ %.pre45, %639 ], [ %629, %651 ]
  %656 = phi i64 [ %.pre44, %639 ], [ %628, %651 ]
  %657 = phi %struct.Memory* [ %640, %639 ], [ %MEMORY.3, %651 ]
  %658 = icmp ne i8 %654, 0
  %659 = select i1 %658, i64 %656, i64 %653
  store i64 %659, i64* %RAX.i955, align 8
  %660 = load i64, i64* %RBP.i, align 8
  %661 = add i64 %660, -8
  %662 = add i64 %655, 8
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i64*
  store i64 %659, i64* %663, align 8
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -24
  %666 = load i64, i64* %3, align 8
  %667 = add i64 %666, 4
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668, align 8
  store i64 %669, i64* %RDI.i493, align 8
  %670 = add i64 %664, -104
  %671 = add i64 %666, 8
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i64*
  %673 = load i64, i64* %672, align 8
  store i64 %673, i64* %RSI.i, align 8
  %674 = add i64 %666, -1601
  %675 = add i64 %666, 13
  %676 = load i64, i64* %6, align 8
  %677 = add i64 %676, -8
  %678 = inttoptr i64 %677 to i64*
  store i64 %675, i64* %678, align 8
  store i64 %677, i64* %6, align 8
  store i64 %674, i64* %3, align 8
  %call2_432239 = tail call %struct.Memory* @sub_431bf0.get_LeakyBucketRate(%struct.State* nonnull %0, i64 %674, %struct.Memory* %657)
  %679 = load i64, i64* %3, align 8
  store i64 1, i64* %RDX.i938, align 8
  %680 = load i32, i32* %EAX.i958, align 4
  %681 = sub i32 1, %680
  %682 = icmp ugt i32 %680, 1
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %14, align 1
  %684 = and i32 %681, 255
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %21, align 1
  %689 = xor i32 %680, %681
  %690 = lshr i32 %689, 4
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  store i8 %692, i8* %27, align 1
  %693 = icmp eq i32 %681, 0
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %30, align 1
  %695 = lshr i32 %681, 31
  %696 = trunc i32 %695 to i8
  store i8 %696, i8* %33, align 1
  %697 = lshr i32 %680, 31
  %698 = add nuw nsw i32 %695, %697
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %39, align 1
  %.v86 = select i1 %693, i64 458, i64 13
  %701 = add i64 %679, %.v86
  store i64 %701, i64* %3, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br i1 %693, label %block_.L_432408, label %block_43224b

block_43224b:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %702 = add i64 %.pre62, -48
  %703 = add i64 %701, 8
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i64*
  store i64 0, i64* %704, align 8
  %705 = bitcast i8* %512 to float*
  %706 = bitcast i64* %506 to float*
  %707 = bitcast i8* %517 to float*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_432253

block_.L_432253:                                  ; preds = %block_.L_4323ed, %block_43224b
  %710 = phi i64 [ %.pre48, %block_43224b ], [ %1228, %block_.L_4323ed ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_432239, %block_43224b ], [ %MEMORY.10, %block_.L_4323ed ]
  %711 = load i64, i64* %RBP.i, align 8
  %712 = add i64 %711, -48
  %713 = add i64 %710, 4
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i64*
  %715 = load i64, i64* %714, align 8
  store i64 %715, i64* %RAX.i955, align 8
  %716 = add i64 %711, -24
  %717 = add i64 %710, 8
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i64*
  %719 = load i64, i64* %718, align 8
  %720 = sub i64 %715, %719
  %721 = icmp ult i64 %715, %719
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %14, align 1
  %723 = trunc i64 %720 to i32
  %724 = and i32 %723, 255
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %21, align 1
  %729 = xor i64 %719, %715
  %730 = xor i64 %729, %720
  %731 = lshr i64 %730, 4
  %732 = trunc i64 %731 to i8
  %733 = and i8 %732, 1
  store i8 %733, i8* %27, align 1
  %734 = icmp eq i64 %720, 0
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %30, align 1
  %736 = lshr i64 %720, 63
  %737 = trunc i64 %736 to i8
  store i8 %737, i8* %33, align 1
  %738 = lshr i64 %715, 63
  %739 = lshr i64 %719, 63
  %740 = xor i64 %739, %738
  %741 = xor i64 %736, %738
  %742 = add nuw nsw i64 %741, %740
  %743 = icmp eq i64 %742, 2
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %39, align 1
  %.v87 = select i1 %721, i64 14, i64 432
  %745 = add i64 %710, %.v87
  %746 = add i64 %745, 5
  store i64 %746, i64* %3, align 8
  br i1 %721, label %block_432261, label %block_.L_432408.loopexit

block_432261:                                     ; preds = %block_.L_432253
  %747 = load i64, i64* %714, align 8
  store i8 0, i8* %14, align 1
  %748 = trunc i64 %747 to i32
  %749 = and i32 %748, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %754 = icmp eq i64 %747, 0
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %30, align 1
  %756 = lshr i64 %747, 63
  %757 = trunc i64 %756 to i8
  store i8 %757, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v93 = select i1 %754, i64 11, i64 194
  %758 = add i64 %745, %.v93
  store i64 %758, i64* %3, align 8
  br i1 %754, label %block_43226c, label %block_.L_432323

block_43226c:                                     ; preds = %block_432261
  %759 = add i64 %711, -8
  %760 = add i64 %758, 4
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i64*
  %762 = load i64, i64* %761, align 8
  store i64 %762, i64* %RAX.i955, align 8
  %763 = lshr i64 %762, 1
  store i64 %763, i64* %RCX.i917, align 8
  %764 = and i64 %762, 1
  store i64 %764, i64* %RDX.i938, align 8
  %765 = or i64 %763, %764
  store i64 %765, i64* %RSI.i, align 8
  %766 = load <2 x i32>, <2 x i32>* %391, align 1
  %767 = load <2 x i32>, <2 x i32>* %394, align 1
  %768 = sitofp i64 %765 to float
  store float %768, float* %397, align 1
  %769 = extractelement <2 x i32> %766, i32 1
  store i32 %769, i32* %400, align 1
  %770 = extractelement <2 x i32> %767, i32 0
  store i32 %770, i32* %402, align 1
  %771 = extractelement <2 x i32> %767, i32 1
  store i32 %771, i32* %405, align 1
  %772 = load <2 x float>, <2 x float>* %406, align 1
  %773 = load <2 x i32>, <2 x i32>* %394, align 1
  %774 = extractelement <2 x float> %772, i32 0
  %775 = fadd float %774, %774
  store float %775, float* %397, align 1
  %776 = bitcast <2 x float> %772 to <2 x i32>
  %777 = extractelement <2 x i32> %776, i32 1
  store i32 %777, i32* %400, align 1
  %778 = extractelement <2 x i32> %773, i32 0
  store i32 %778, i32* %402, align 1
  %779 = extractelement <2 x i32> %773, i32 1
  store i32 %779, i32* %405, align 1
  %780 = load <2 x i32>, <2 x i32>* %418, align 1
  %781 = load <2 x i32>, <2 x i32>* %421, align 1
  %782 = sitofp i64 %762 to float
  store float %782, float* %424, align 1
  %783 = extractelement <2 x i32> %780, i32 1
  store i32 %783, i32* %427, align 1
  %784 = extractelement <2 x i32> %781, i32 0
  store i32 %784, i32* %429, align 1
  %785 = extractelement <2 x i32> %781, i32 1
  store i32 %785, i32* %432, align 1
  %786 = load i64, i64* %RAX.i955, align 8
  store i8 0, i8* %14, align 1
  %787 = trunc i64 %786 to i32
  %788 = and i32 %787, 255
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788)
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %21, align 1
  %793 = icmp eq i64 %786, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %30, align 1
  %795 = lshr i64 %786, 63
  %796 = trunc i64 %795 to i8
  store i8 %796, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -152
  %799 = add i64 %758, 45
  store i64 %799, i64* %3, align 8
  %800 = load <2 x float>, <2 x float>* %446, align 1
  %801 = extractelement <2 x float> %800, i32 0
  %802 = inttoptr i64 %798 to float*
  store float %801, float* %802, align 4
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -156
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, 8
  store i64 %806, i64* %3, align 8
  %807 = load <2 x float>, <2 x float>* %406, align 1
  %808 = extractelement <2 x float> %807, i32 0
  %809 = inttoptr i64 %804 to float*
  store float %808, float* %809, align 4
  %810 = load i64, i64* %3, align 8
  %811 = load i8, i8* %33, align 1
  %812 = icmp ne i8 %811, 0
  %.v112 = select i1 %812, i64 22, i64 6
  %813 = add i64 %810, %.v112
  store i64 %813, i64* %3, align 8
  %cmpBr_4322a1 = icmp eq i8 %811, 1
  br i1 %cmpBr_4322a1, label %block_.L_4322b7, label %block_4322a7

block_4322a7:                                     ; preds = %block_43226c
  %814 = load i64, i64* %RBP.i, align 8
  %815 = add i64 %814, -152
  %816 = add i64 %813, 8
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  store i32 %818, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %819 = add i64 %814, -156
  %820 = add i64 %813, 16
  store i64 %820, i64* %3, align 8
  %821 = load <2 x float>, <2 x float>* %406, align 1
  %822 = extractelement <2 x float> %821, i32 0
  %823 = inttoptr i64 %819 to float*
  store float %822, float* %823, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_4322b7

block_.L_4322b7:                                  ; preds = %block_4322a7, %block_43226c
  %824 = phi i64 [ %.pre49, %block_4322a7 ], [ %813, %block_43226c ]
  %825 = load i64, i64* %RBP.i, align 8
  %826 = add i64 %825, -156
  %827 = add i64 %824, 8
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  store i32 %829, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %830 = add i64 %824, add (i64 ptrtoint (%G_0x29963a__rip__type* @G_0x29963a__rip_ to i64), i64 8)
  %831 = add i64 %824, 15
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i64*
  %833 = load i64, i64* %832, align 8
  store i64 %833, i64* %RAX.i955, align 8
  %834 = add i64 %833, 48
  %835 = add i64 %824, 20
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  store i32 %837, i32* %575, align 1
  store float 0.000000e+00, float* %576, align 1
  store float 0.000000e+00, float* %577, align 1
  store float 0.000000e+00, float* %578, align 1
  %838 = load <2 x float>, <2 x float>* %406, align 1
  %839 = load <2 x i32>, <2 x i32>* %394, align 1
  %840 = load <2 x float>, <2 x float>* %446, align 1
  %841 = extractelement <2 x float> %838, i32 0
  %842 = extractelement <2 x float> %840, i32 0
  %843 = fmul float %841, %842
  store float %843, float* %397, align 1
  %844 = bitcast <2 x float> %838 to <2 x i32>
  %845 = extractelement <2 x i32> %844, i32 1
  store i32 %845, i32* %400, align 1
  %846 = extractelement <2 x i32> %839, i32 0
  store i32 %846, i32* %402, align 1
  %847 = extractelement <2 x i32> %839, i32 1
  store i32 %847, i32* %405, align 1
  %848 = add i64 %824, add (i64 ptrtoint (%G_0x8b561__rip__type* @G_0x8b561__rip_ to i64), i64 24)
  %849 = add i64 %824, 32
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  store i32 %851, i32* %575, align 1
  store float 0.000000e+00, float* %576, align 1
  store float 0.000000e+00, float* %577, align 1
  store float 0.000000e+00, float* %578, align 1
  %852 = load <2 x i32>, <2 x i32>* %391, align 1
  %853 = load <2 x i32>, <2 x i32>* %394, align 1
  %854 = extractelement <2 x i32> %852, i32 0
  store i32 %854, i32* %596, align 1
  %855 = extractelement <2 x i32> %852, i32 1
  store i32 %855, i32* %513, align 1
  %856 = extractelement <2 x i32> %853, i32 0
  store i32 %856, i32* %515, align 1
  %857 = extractelement <2 x i32> %853, i32 1
  store i32 %857, i32* %518, align 1
  %858 = load <2 x float>, <2 x float>* %540, align 1
  %859 = load <2 x i32>, <2 x i32>* %507, align 1
  %860 = load <2 x float>, <2 x float>* %446, align 1
  %861 = extractelement <2 x float> %858, i32 0
  %862 = extractelement <2 x float> %860, i32 0
  %863 = fsub float %861, %862
  store float %863, float* %510, align 1
  %864 = bitcast <2 x float> %858 to <2 x i32>
  %865 = extractelement <2 x i32> %864, i32 1
  store i32 %865, i32* %513, align 1
  %866 = extractelement <2 x i32> %859, i32 0
  store i32 %866, i32* %515, align 1
  %867 = extractelement <2 x i32> %859, i32 1
  store i32 %867, i32* %518, align 1
  %868 = load <2 x float>, <2 x float>* %540, align 1
  %869 = extractelement <2 x float> %868, i32 0
  %870 = tail call float @llvm.trunc.f32(float %869)
  %871 = fptosi float %870 to i64
  %872 = xor i64 %871, -9223372036854775808
  store i64 %872, i64* %RAX.i955, align 8
  store i8 0, i8* %14, align 1
  %873 = trunc i64 %871 to i32
  %874 = and i32 %873, 255
  %875 = tail call i32 @llvm.ctpop.i32(i32 %874)
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  %878 = xor i8 %877, 1
  store i8 %878, i8* %21, align 1
  %879 = icmp eq i64 %872, 0
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %30, align 1
  %881 = lshr i64 %872, 63
  %882 = trunc i64 %881 to i8
  store i8 %882, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %883 = bitcast <2 x i32> %852 to <2 x float>
  %884 = extractelement <2 x float> %883, i32 0
  %885 = tail call float @llvm.trunc.f32(float %884)
  %886 = fptosi float %885 to i64
  store i64 %886, i64* %RCX.i917, align 8
  %887 = add i64 %824, 65
  store i64 %887, i64* %3, align 8
  %888 = fcmp uno float %884, %862
  br i1 %888, label %889, label %899

; <label>:889:                                    ; preds = %block_.L_4322b7
  %890 = fadd float %884, %862
  %891 = bitcast float %890 to i32
  %892 = and i32 %891, 2143289344
  %893 = icmp eq i32 %892, 2139095040
  %894 = and i32 %891, 4194303
  %895 = icmp ne i32 %894, 0
  %896 = and i1 %893, %895
  br i1 %896, label %897, label %905

; <label>:897:                                    ; preds = %889
  %898 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %887, %struct.Memory* %MEMORY.7)
  %.pre50 = load i64, i64* %RCX.i917, align 8
  %.pre51 = load i64, i64* %3, align 8
  %.pre52 = load i8, i8* %14, align 1
  %.pre53 = load i64, i64* %RAX.i955, align 8
  br label %routine_divq__rcx.exit

; <label>:899:                                    ; preds = %block_.L_4322b7
  %900 = fcmp ogt float %884, %862
  br i1 %900, label %905, label %901

; <label>:901:                                    ; preds = %899
  %902 = fcmp olt float %884, %862
  br i1 %902, label %905, label %903

; <label>:903:                                    ; preds = %901
  %904 = fcmp oeq float %884, %862
  br i1 %904, label %905, label %909

; <label>:905:                                    ; preds = %903, %901, %899, %889
  %906 = phi i8 [ 0, %899 ], [ 0, %901 ], [ 1, %903 ], [ 1, %889 ]
  %907 = phi i8 [ 0, %899 ], [ 0, %901 ], [ 0, %903 ], [ 1, %889 ]
  %908 = phi i8 [ 0, %899 ], [ 1, %901 ], [ 0, %903 ], [ 1, %889 ]
  store i8 %906, i8* %30, align 1
  store i8 %907, i8* %21, align 1
  store i8 %908, i8* %14, align 1
  br label %909

; <label>:909:                                    ; preds = %905, %903
  %910 = phi i8 [ %908, %905 ], [ 0, %903 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_divq__rcx.exit

routine_divq__rcx.exit:                           ; preds = %909, %897
  %911 = phi i64 [ %.pre53, %897 ], [ %872, %909 ]
  %912 = phi i8 [ %.pre52, %897 ], [ %910, %909 ]
  %913 = phi i64 [ %.pre51, %897 ], [ %887, %909 ]
  %914 = phi i64 [ %.pre50, %897 ], [ %886, %909 ]
  %915 = phi %struct.Memory* [ %898, %897 ], [ %MEMORY.7, %909 ]
  %916 = icmp ne i8 %912, 0
  %917 = select i1 %916, i64 %914, i64 %911
  store i64 %917, i64* %RAX.i955, align 8
  %918 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %918, i64* %RCX.i917, align 8
  %919 = add i64 %918, 20
  %920 = add i64 %913, 15
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = add i32 %922, 1
  %924 = sext i32 %923 to i64
  store i64 %924, i64* %RCX.i917, align 8
  %div = udiv i64 %917, %924
  %925 = urem i64 %917, %924
  store i64 %div, i64* %708, align 8
  store i64 %925, i64* %709, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -104
  %928 = add i64 %913, 30
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i64*
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %RCX.i917, align 8
  %931 = add i64 %926, -48
  %932 = add i64 %913, 34
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RSI.i, align 8
  %935 = shl i64 %934, 3
  %936 = add i64 %930, %935
  %937 = add i64 %913, 38
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i64*
  store i64 %div, i64* %938, align 8
  %939 = load i64, i64* %3, align 8
  %940 = add i64 %939, 207
  store i64 %940, i64* %3, align 8
  br label %block_.L_4323ed

block_.L_432323:                                  ; preds = %block_432261
  %941 = add i64 %711, -104
  %942 = add i64 %758, 4
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i64*
  %944 = load i64, i64* %943, align 8
  store i64 %944, i64* %RAX.i955, align 8
  %945 = add i64 %758, 8
  store i64 %945, i64* %3, align 8
  %946 = load i64, i64* %714, align 8
  store i64 %946, i64* %RCX.i917, align 8
  %947 = shl i64 %946, 3
  %948 = add i64 %947, -8
  %949 = add i64 %948, %944
  %950 = add i64 %758, 13
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i64*
  %952 = load i64, i64* %951, align 8
  store i64 %952, i64* %RAX.i955, align 8
  %953 = lshr i64 %952, 1
  store i64 %953, i64* %RCX.i917, align 8
  %954 = and i64 %952, 1
  store i64 %954, i64* %RDX.i938, align 8
  %955 = or i64 %953, %954
  store i64 %955, i64* %RSI.i, align 8
  %956 = load <2 x i32>, <2 x i32>* %391, align 1
  %957 = load <2 x i32>, <2 x i32>* %394, align 1
  %958 = sitofp i64 %955 to float
  store float %958, float* %397, align 1
  %959 = extractelement <2 x i32> %956, i32 1
  store i32 %959, i32* %400, align 1
  %960 = extractelement <2 x i32> %957, i32 0
  store i32 %960, i32* %402, align 1
  %961 = extractelement <2 x i32> %957, i32 1
  store i32 %961, i32* %405, align 1
  %962 = load <2 x float>, <2 x float>* %406, align 1
  %963 = load <2 x i32>, <2 x i32>* %394, align 1
  %964 = extractelement <2 x float> %962, i32 0
  %965 = fadd float %964, %964
  store float %965, float* %397, align 1
  %966 = bitcast <2 x float> %962 to <2 x i32>
  %967 = extractelement <2 x i32> %966, i32 1
  store i32 %967, i32* %400, align 1
  %968 = extractelement <2 x i32> %963, i32 0
  store i32 %968, i32* %402, align 1
  %969 = extractelement <2 x i32> %963, i32 1
  store i32 %969, i32* %405, align 1
  %970 = load <2 x i32>, <2 x i32>* %418, align 1
  %971 = load <2 x i32>, <2 x i32>* %421, align 1
  %972 = sitofp i64 %952 to float
  store float %972, float* %424, align 1
  %973 = extractelement <2 x i32> %970, i32 1
  store i32 %973, i32* %427, align 1
  %974 = extractelement <2 x i32> %971, i32 0
  store i32 %974, i32* %429, align 1
  %975 = extractelement <2 x i32> %971, i32 1
  store i32 %975, i32* %432, align 1
  %976 = load i64, i64* %RAX.i955, align 8
  store i8 0, i8* %14, align 1
  %977 = trunc i64 %976 to i32
  %978 = and i32 %977, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %21, align 1
  %983 = icmp eq i64 %976, 0
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %30, align 1
  %985 = lshr i64 %976, 63
  %986 = trunc i64 %985 to i8
  store i8 %986, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %987 = load i64, i64* %RBP.i, align 8
  %988 = add i64 %987, -160
  %989 = add i64 %758, 54
  store i64 %989, i64* %3, align 8
  %990 = load <2 x float>, <2 x float>* %446, align 1
  %991 = extractelement <2 x float> %990, i32 0
  %992 = inttoptr i64 %988 to float*
  store float %991, float* %992, align 4
  %993 = load i64, i64* %RBP.i, align 8
  %994 = add i64 %993, -164
  %995 = load i64, i64* %3, align 8
  %996 = add i64 %995, 8
  store i64 %996, i64* %3, align 8
  %997 = load <2 x float>, <2 x float>* %406, align 1
  %998 = extractelement <2 x float> %997, i32 0
  %999 = inttoptr i64 %994 to float*
  store float %998, float* %999, align 4
  %1000 = load i64, i64* %3, align 8
  %1001 = load i8, i8* %33, align 1
  %1002 = icmp ne i8 %1001, 0
  %.v111 = select i1 %1002, i64 22, i64 6
  %1003 = add i64 %1000, %.v111
  store i64 %1003, i64* %3, align 8
  %cmpBr_432361 = icmp eq i8 %1001, 1
  br i1 %cmpBr_432361, label %block_.L_432377, label %block_432367

block_432367:                                     ; preds = %block_.L_432323
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -160
  %1006 = add i64 %1003, 8
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  store i32 %1008, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %1009 = add i64 %1004, -164
  %1010 = add i64 %1003, 16
  store i64 %1010, i64* %3, align 8
  %1011 = load <2 x float>, <2 x float>* %406, align 1
  %1012 = extractelement <2 x float> %1011, i32 0
  %1013 = inttoptr i64 %1009 to float*
  store float %1012, float* %1013, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_432377

block_.L_432377:                                  ; preds = %block_432367, %block_.L_432323
  %1014 = phi i64 [ %.pre56, %block_432367 ], [ %1003, %block_.L_432323 ]
  %1015 = load i64, i64* %RBP.i, align 8
  %1016 = add i64 %1015, -164
  %1017 = add i64 %1014, 8
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  store i32 %1019, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %1020 = add i64 %1015, -8
  %1021 = add i64 %1014, 12
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i64*
  %1023 = load i64, i64* %1022, align 8
  %1024 = lshr i64 %1023, 1
  %1025 = trunc i64 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = lshr i64 %1023, 2
  store i64 %1027, i64* %RAX.i955, align 8
  store i8 %1026, i8* %14, align 1
  %1028 = trunc i64 %1027 to i32
  %1029 = and i32 %1028, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1034 = icmp eq i64 %1027, 0
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1036 = load <2 x i32>, <2 x i32>* %418, align 1
  %1037 = load <2 x i32>, <2 x i32>* %421, align 1
  %1038 = sitofp i64 %1027 to float
  store float %1038, float* %424, align 1
  %1039 = extractelement <2 x i32> %1036, i32 1
  store i32 %1039, i32* %427, align 1
  %1040 = extractelement <2 x i32> %1037, i32 0
  store i32 %1040, i32* %429, align 1
  %1041 = extractelement <2 x i32> %1037, i32 1
  store i32 %1041, i32* %432, align 1
  %1042 = add i64 %1014, add (i64 ptrtoint (%G_0x29956d__rip__type* @G_0x29956d__rip_ to i64), i64 21)
  %1043 = add i64 %1014, 28
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %RAX.i955, align 8
  %1046 = add i64 %1045, 48
  %1047 = add i64 %1014, 33
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i32*
  %1049 = load i32, i32* %1048, align 4
  store i32 %1049, i32* %596, align 1
  store float 0.000000e+00, float* %705, align 1
  store float 0.000000e+00, float* %706, align 1
  store float 0.000000e+00, float* %707, align 1
  %1050 = load <2 x float>, <2 x float>* %446, align 1
  %1051 = load <2 x i32>, <2 x i32>* %421, align 1
  %1052 = load <2 x float>, <2 x float>* %540, align 1
  %1053 = extractelement <2 x float> %1050, i32 0
  %1054 = extractelement <2 x float> %1052, i32 0
  %1055 = fmul float %1053, %1054
  store float %1055, float* %424, align 1
  %1056 = bitcast <2 x float> %1050 to <2 x i32>
  %1057 = extractelement <2 x i32> %1056, i32 1
  store i32 %1057, i32* %427, align 1
  %1058 = extractelement <2 x i32> %1051, i32 0
  store i32 %1058, i32* %429, align 1
  %1059 = extractelement <2 x i32> %1051, i32 1
  store i32 %1059, i32* %432, align 1
  %1060 = add i64 %1014, add (i64 ptrtoint (%G_0x299555__rip__type* @G_0x299555__rip_ to i64), i64 37)
  %1061 = add i64 %1014, 44
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i64*
  %1063 = load i64, i64* %1062, align 8
  store i64 %1063, i64* %RAX.i955, align 8
  %1064 = add i64 %1063, 20
  %1065 = add i64 %1014, 47
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, 1
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RCX.i917, align 8
  %1070 = and i32 %1068, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %21, align 1
  %1075 = xor i32 %1068, %1067
  %1076 = lshr i32 %1075, 4
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %27, align 1
  %1079 = icmp eq i32 %1068, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %30, align 1
  %1081 = lshr i32 %1068, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %33, align 1
  %1083 = lshr i32 %1067, 31
  %1084 = xor i32 %1081, %1083
  %1085 = add nuw nsw i32 %1084, %1081
  %1086 = icmp eq i32 %1085, 2
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %39, align 1
  %1088 = bitcast <2 x float> %1052 to <2 x i32>
  %1089 = load <2 x i32>, <2 x i32>* %507, align 1
  %1090 = sitofp i32 %1068 to float
  store float %1090, float* %510, align 1
  %1091 = extractelement <2 x i32> %1088, i32 1
  store i32 %1091, i32* %513, align 1
  %1092 = extractelement <2 x i32> %1089, i32 0
  store i32 %1092, i32* %515, align 1
  %1093 = extractelement <2 x i32> %1089, i32 1
  store i32 %1093, i32* %518, align 1
  %1094 = load <2 x float>, <2 x float>* %446, align 1
  %1095 = load <2 x i32>, <2 x i32>* %421, align 1
  %1096 = load <2 x float>, <2 x float>* %540, align 1
  %1097 = extractelement <2 x float> %1094, i32 0
  %1098 = extractelement <2 x float> %1096, i32 0
  %1099 = fdiv float %1097, %1098
  store float %1099, float* %424, align 1
  %1100 = bitcast <2 x float> %1094 to <2 x i32>
  %1101 = extractelement <2 x i32> %1100, i32 1
  store i32 %1101, i32* %427, align 1
  %1102 = extractelement <2 x i32> %1095, i32 0
  store i32 %1102, i32* %429, align 1
  %1103 = extractelement <2 x i32> %1095, i32 1
  store i32 %1103, i32* %432, align 1
  %1104 = load <2 x float>, <2 x float>* %406, align 1
  %1105 = load <2 x i32>, <2 x i32>* %394, align 1
  %1106 = load <2 x float>, <2 x float>* %446, align 1
  %1107 = extractelement <2 x float> %1104, i32 0
  %1108 = extractelement <2 x float> %1106, i32 0
  %1109 = fadd float %1107, %1108
  store float %1109, float* %397, align 1
  %1110 = bitcast <2 x float> %1104 to <2 x i32>
  %1111 = extractelement <2 x i32> %1110, i32 1
  store i32 %1111, i32* %400, align 1
  %1112 = extractelement <2 x i32> %1105, i32 0
  store i32 %1112, i32* %402, align 1
  %1113 = extractelement <2 x i32> %1105, i32 1
  store i32 %1113, i32* %405, align 1
  %1114 = add i64 %1014, add (i64 ptrtoint (%G_0x8b47c__rip__type* @G_0x8b47c__rip_ to i64), i64 61)
  %1115 = add i64 %1014, 69
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  store i32 %1117, i32* %575, align 1
  store float 0.000000e+00, float* %576, align 1
  store float 0.000000e+00, float* %577, align 1
  store float 0.000000e+00, float* %578, align 1
  %1118 = load <2 x i32>, <2 x i32>* %391, align 1
  %1119 = load <2 x i32>, <2 x i32>* %394, align 1
  %1120 = extractelement <2 x i32> %1118, i32 0
  store i32 %1120, i32* %596, align 1
  %1121 = extractelement <2 x i32> %1118, i32 1
  store i32 %1121, i32* %513, align 1
  %1122 = extractelement <2 x i32> %1119, i32 0
  store i32 %1122, i32* %515, align 1
  %1123 = extractelement <2 x i32> %1119, i32 1
  store i32 %1123, i32* %518, align 1
  %1124 = load <2 x float>, <2 x float>* %540, align 1
  %1125 = load <2 x i32>, <2 x i32>* %507, align 1
  %1126 = load <2 x float>, <2 x float>* %446, align 1
  %1127 = extractelement <2 x float> %1124, i32 0
  %1128 = extractelement <2 x float> %1126, i32 0
  %1129 = fsub float %1127, %1128
  store float %1129, float* %510, align 1
  %1130 = bitcast <2 x float> %1124 to <2 x i32>
  %1131 = extractelement <2 x i32> %1130, i32 1
  store i32 %1131, i32* %513, align 1
  %1132 = extractelement <2 x i32> %1125, i32 0
  store i32 %1132, i32* %515, align 1
  %1133 = extractelement <2 x i32> %1125, i32 1
  store i32 %1133, i32* %518, align 1
  %1134 = load <2 x float>, <2 x float>* %540, align 1
  %1135 = extractelement <2 x float> %1134, i32 0
  %1136 = tail call float @llvm.trunc.f32(float %1135)
  %1137 = fptosi float %1136 to i64
  %1138 = xor i64 %1137, -9223372036854775808
  store i64 %1138, i64* %RAX.i955, align 8
  store i8 0, i8* %14, align 1
  %1139 = trunc i64 %1137 to i32
  %1140 = and i32 %1139, 255
  %1141 = tail call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  store i8 %1144, i8* %21, align 1
  %1145 = icmp eq i64 %1138, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %30, align 1
  %1147 = lshr i64 %1138, 63
  %1148 = trunc i64 %1147 to i8
  store i8 %1148, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1149 = bitcast <2 x i32> %1118 to <2 x float>
  %1150 = extractelement <2 x float> %1149, i32 0
  %1151 = tail call float @llvm.trunc.f32(float %1150)
  %1152 = fptosi float %1151 to i64
  store i64 %1152, i64* %RDX.i938, align 8
  %1153 = add i64 %1014, 102
  store i64 %1153, i64* %3, align 8
  %1154 = fcmp uno float %1150, %1128
  br i1 %1154, label %1155, label %1165

; <label>:1155:                                   ; preds = %block_.L_432377
  %1156 = fadd float %1150, %1128
  %1157 = bitcast float %1156 to i32
  %1158 = and i32 %1157, 2143289344
  %1159 = icmp eq i32 %1158, 2139095040
  %1160 = and i32 %1157, 4194303
  %1161 = icmp ne i32 %1160, 0
  %1162 = and i1 %1159, %1161
  br i1 %1162, label %1163, label %1171

; <label>:1163:                                   ; preds = %1155
  %1164 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1153, %struct.Memory* %MEMORY.7)
  %.pre57 = load i64, i64* %RDX.i938, align 8
  %.pre58 = load i64, i64* %3, align 8
  %.pre59 = load i8, i8* %14, align 1
  %.pre60 = load i64, i64* %RAX.i955, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit

; <label>:1165:                                   ; preds = %block_.L_432377
  %1166 = fcmp ogt float %1150, %1128
  br i1 %1166, label %1171, label %1167

; <label>:1167:                                   ; preds = %1165
  %1168 = fcmp olt float %1150, %1128
  br i1 %1168, label %1171, label %1169

; <label>:1169:                                   ; preds = %1167
  %1170 = fcmp oeq float %1150, %1128
  br i1 %1170, label %1171, label %1175

; <label>:1171:                                   ; preds = %1169, %1167, %1165, %1155
  %1172 = phi i8 [ 0, %1165 ], [ 0, %1167 ], [ 1, %1169 ], [ 1, %1155 ]
  %1173 = phi i8 [ 0, %1165 ], [ 0, %1167 ], [ 0, %1169 ], [ 1, %1155 ]
  %1174 = phi i8 [ 0, %1165 ], [ 1, %1167 ], [ 0, %1169 ], [ 1, %1155 ]
  store i8 %1172, i8* %30, align 1
  store i8 %1173, i8* %21, align 1
  store i8 %1174, i8* %14, align 1
  br label %1175

; <label>:1175:                                   ; preds = %1171, %1169
  %1176 = phi i8 [ %1174, %1171 ], [ 0, %1169 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit

routine_ucomiss__xmm1___xmm0.exit:                ; preds = %1175, %1163
  %1177 = phi i64 [ %.pre60, %1163 ], [ %1138, %1175 ]
  %1178 = phi i8 [ %.pre59, %1163 ], [ %1176, %1175 ]
  %1179 = phi i64 [ %.pre58, %1163 ], [ %1153, %1175 ]
  %1180 = phi i64 [ %.pre57, %1163 ], [ %1152, %1175 ]
  %1181 = phi %struct.Memory* [ %1164, %1163 ], [ %MEMORY.7, %1175 ]
  %1182 = icmp ne i8 %1178, 0
  %1183 = select i1 %1182, i64 %1180, i64 %1177
  store i64 %1183, i64* %RAX.i955, align 8
  %1184 = load i64, i64* %RBP.i, align 8
  %1185 = add i64 %1184, -104
  %1186 = add i64 %1179, 8
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i64*
  %1188 = load i64, i64* %1187, align 8
  store i64 %1188, i64* %RDX.i938, align 8
  %1189 = add i64 %1184, -48
  %1190 = add i64 %1179, 12
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %RSI.i, align 8
  %1193 = shl i64 %1192, 3
  %1194 = add i64 %1188, %1193
  %1195 = add i64 %1179, 16
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i64*
  store i64 %1183, i64* %1196, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_4323ed

block_.L_4323ed:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit, %routine_divq__rcx.exit
  %1197 = phi i64 [ %.pre61, %routine_ucomiss__xmm1___xmm0.exit ], [ %940, %routine_divq__rcx.exit ]
  %MEMORY.10 = phi %struct.Memory* [ %1181, %routine_ucomiss__xmm1___xmm0.exit ], [ %915, %routine_divq__rcx.exit ]
  %1198 = load i64, i64* %RBP.i, align 8
  %1199 = add i64 %1198, -48
  %1200 = add i64 %1197, 9
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i64*
  %1202 = load i64, i64* %1201, align 8
  %1203 = add i64 %1202, 1
  store i64 %1203, i64* %RAX.i955, align 8
  %1204 = icmp eq i64 %1202, -1
  %1205 = icmp eq i64 %1203, 0
  %1206 = or i1 %1204, %1205
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %14, align 1
  %1208 = trunc i64 %1203 to i32
  %1209 = and i32 %1208, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %21, align 1
  %1214 = xor i64 %1203, %1202
  %1215 = lshr i64 %1214, 4
  %1216 = trunc i64 %1215 to i8
  %1217 = and i8 %1216, 1
  store i8 %1217, i8* %27, align 1
  %1218 = zext i1 %1205 to i8
  store i8 %1218, i8* %30, align 1
  %1219 = lshr i64 %1203, 63
  %1220 = trunc i64 %1219 to i8
  store i8 %1220, i8* %33, align 1
  %1221 = lshr i64 %1202, 63
  %1222 = xor i64 %1219, %1221
  %1223 = add nuw nsw i64 %1222, %1219
  %1224 = icmp eq i64 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %39, align 1
  %1226 = add i64 %1197, 17
  store i64 %1226, i64* %3, align 8
  store i64 %1203, i64* %1201, align 8
  %1227 = load i64, i64* %3, align 8
  %1228 = add i64 %1227, -427
  store i64 %1228, i64* %3, align 8
  br label %block_.L_432253

block_.L_432408.loopexit:                         ; preds = %block_.L_432253
  br label %block_.L_432408

block_.L_432408:                                  ; preds = %block_.L_432408.loopexit, %routine_ucomiss__xmm0___xmm1.exit
  %1229 = phi i64 [ %701, %routine_ucomiss__xmm0___xmm1.exit ], [ %746, %block_.L_432408.loopexit ]
  %1230 = phi i64 [ %.pre62, %routine_ucomiss__xmm0___xmm1.exit ], [ %711, %block_.L_432408.loopexit ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_432239, %routine_ucomiss__xmm0___xmm1.exit ], [ %MEMORY.7, %block_.L_432408.loopexit ]
  %1231 = add i64 %1230, -24
  %1232 = add i64 %1229, 4
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i64*
  %1234 = load i64, i64* %1233, align 8
  store i64 %1234, i64* %RDI.i493, align 8
  %1235 = add i64 %1230, -104
  %1236 = add i64 %1229, 8
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RSI.i, align 8
  %1239 = add i64 %1229, -1288
  %1240 = add i64 %1229, 13
  %1241 = load i64, i64* %6, align 8
  %1242 = add i64 %1241, -8
  %1243 = inttoptr i64 %1242 to i64*
  store i64 %1240, i64* %1243, align 8
  store i64 %1242, i64* %6, align 8
  store i64 %1239, i64* %3, align 8
  %call2_432410 = tail call %struct.Memory* @sub_431f00.Sort(%struct.State* nonnull %0, i64 %1239, %struct.Memory* %MEMORY.11)
  %1244 = load i64, i64* %RBP.i, align 8
  %1245 = add i64 %1244, -8
  %1246 = load i64, i64* %3, align 8
  %1247 = add i64 %1246, 5
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1245 to i64*
  %1249 = load i64, i64* %1248, align 8
  %1250 = sext i64 %1249 to i128
  %1251 = and i128 %1250, -18446744073709551616
  %1252 = zext i64 %1249 to i128
  %1253 = or i128 %1251, %1252
  %1254 = mul nsw i128 %1253, 20
  %1255 = trunc i128 %1254 to i64
  store i64 %1255, i64* %RSI.i, align 8
  %1256 = sext i64 %1255 to i128
  %1257 = icmp ne i128 %1256, %1254
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %14, align 1
  %1259 = trunc i128 %1254 to i32
  %1260 = and i32 %1259, 252
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1265 = lshr i64 %1255, 63
  %1266 = trunc i64 %1265 to i8
  store i8 %1266, i8* %33, align 1
  store i8 %1258, i8* %39, align 1
  %1267 = add i64 %1244, -72
  %1268 = add i64 %1246, 9
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i64*
  store i64 %1255, i64* %1269, align 8
  %1270 = load i64, i64* %RBP.i, align 8
  %1271 = add i64 %1270, -48
  %1272 = load i64, i64* %3, align 8
  %1273 = add i64 %1272, 8
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1271 to i64*
  store i64 0, i64* %1274, align 8
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_432426

block_.L_432426:                                  ; preds = %block_.L_432687, %block_.L_432408
  %1275 = phi i64 [ %2189, %block_.L_432687 ], [ %.pre63, %block_.L_432408 ]
  %1276 = load i64, i64* %RBP.i, align 8
  %1277 = add i64 %1276, -48
  %1278 = add i64 %1275, 4
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i64*
  %1280 = load i64, i64* %1279, align 8
  store i64 %1280, i64* %RAX.i955, align 8
  %1281 = add i64 %1276, -24
  %1282 = add i64 %1275, 8
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i64*
  %1284 = load i64, i64* %1283, align 8
  %1285 = sub i64 %1280, %1284
  %1286 = icmp ult i64 %1280, %1284
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %14, align 1
  %1288 = trunc i64 %1285 to i32
  %1289 = and i32 %1288, 255
  %1290 = tail call i32 @llvm.ctpop.i32(i32 %1289)
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  %1293 = xor i8 %1292, 1
  store i8 %1293, i8* %21, align 1
  %1294 = xor i64 %1284, %1280
  %1295 = xor i64 %1294, %1285
  %1296 = lshr i64 %1295, 4
  %1297 = trunc i64 %1296 to i8
  %1298 = and i8 %1297, 1
  store i8 %1298, i8* %27, align 1
  %1299 = icmp eq i64 %1285, 0
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %30, align 1
  %1301 = lshr i64 %1285, 63
  %1302 = trunc i64 %1301 to i8
  store i8 %1302, i8* %33, align 1
  %1303 = lshr i64 %1280, 63
  %1304 = lshr i64 %1284, 63
  %1305 = xor i64 %1304, %1303
  %1306 = xor i64 %1301, %1303
  %1307 = add nuw nsw i64 %1306, %1305
  %1308 = icmp eq i64 %1307, 2
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %39, align 1
  %.v88 = select i1 %1286, i64 14, i64 658
  %1310 = add i64 %1275, %.v88
  store i64 %1310, i64* %3, align 8
  br i1 %1286, label %block_432434, label %block_.L_4326b8

block_432434:                                     ; preds = %block_.L_432426
  %1311 = add i64 %1276, -104
  %1312 = add i64 %1310, 4
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i64*
  %1314 = load i64, i64* %1313, align 8
  store i64 %1314, i64* %RAX.i955, align 8
  %1315 = add i64 %1310, 8
  store i64 %1315, i64* %3, align 8
  %1316 = load i64, i64* %1279, align 8
  store i64 %1316, i64* %RCX.i917, align 8
  %1317 = shl i64 %1316, 3
  %1318 = add i64 %1314, %1317
  %1319 = add i64 %1310, 12
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i64*
  %1321 = load i64, i64* %1320, align 8
  store i64 %1321, i64* %RAX.i955, align 8
  %1322 = add i64 %1310, add (i64 ptrtoint (%G_0x2994b1__rip__type* @G_0x2994b1__rip_ to i64), i64 12)
  %1323 = add i64 %1310, 19
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i64*
  %1325 = load i64, i64* %1324, align 8
  store i64 %1325, i64* %RCX.i917, align 8
  %1326 = add i64 %1325, 20
  %1327 = add i64 %1310, 22
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = add i32 %1329, 1
  %1331 = sext i32 %1330 to i64
  %1332 = sext i64 %1321 to i128
  %1333 = and i128 %1332, -18446744073709551616
  %1334 = sext i32 %1330 to i128
  %1335 = and i128 %1334, -18446744073709551616
  %1336 = zext i64 %1321 to i128
  %1337 = or i128 %1333, %1336
  %1338 = zext i64 %1331 to i128
  %1339 = or i128 %1335, %1338
  %1340 = mul i128 %1337, %1339
  %1341 = trunc i128 %1340 to i64
  store i64 %1341, i64* %RAX.i955, align 8
  %1342 = lshr i64 %1341, 1
  store i64 %1342, i64* %RCX.i917, align 8
  %1343 = trunc i128 %1340 to i64
  %1344 = and i64 %1343, 1
  store i64 %1344, i64* %RDX.i938, align 8
  %1345 = or i64 %1342, %1344
  store i64 %1345, i64* %RSI.i, align 8
  %1346 = load <2 x i32>, <2 x i32>* %391, align 1
  %1347 = load <2 x i32>, <2 x i32>* %394, align 1
  %1348 = sitofp i64 %1345 to float
  store float %1348, float* %397, align 1
  %1349 = extractelement <2 x i32> %1346, i32 1
  store i32 %1349, i32* %400, align 1
  %1350 = extractelement <2 x i32> %1347, i32 0
  store i32 %1350, i32* %402, align 1
  %1351 = extractelement <2 x i32> %1347, i32 1
  store i32 %1351, i32* %405, align 1
  %1352 = load <2 x float>, <2 x float>* %406, align 1
  %1353 = load <2 x i32>, <2 x i32>* %394, align 1
  %1354 = extractelement <2 x float> %1352, i32 0
  %1355 = fadd float %1354, %1354
  store float %1355, float* %397, align 1
  %1356 = bitcast <2 x float> %1352 to <2 x i32>
  %1357 = extractelement <2 x i32> %1356, i32 1
  store i32 %1357, i32* %400, align 1
  %1358 = extractelement <2 x i32> %1353, i32 0
  store i32 %1358, i32* %402, align 1
  %1359 = extractelement <2 x i32> %1353, i32 1
  store i32 %1359, i32* %405, align 1
  %1360 = load i64, i64* %RAX.i955, align 8
  %1361 = load <2 x i32>, <2 x i32>* %418, align 1
  %1362 = load <2 x i32>, <2 x i32>* %421, align 1
  %1363 = sitofp i64 %1360 to float
  store float %1363, float* %424, align 1
  %1364 = extractelement <2 x i32> %1361, i32 1
  store i32 %1364, i32* %427, align 1
  %1365 = extractelement <2 x i32> %1362, i32 0
  store i32 %1365, i32* %429, align 1
  %1366 = extractelement <2 x i32> %1362, i32 1
  store i32 %1366, i32* %432, align 1
  store i8 0, i8* %14, align 1
  %1367 = trunc i64 %1360 to i32
  %1368 = and i32 %1367, 255
  %1369 = tail call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  store i8 %1372, i8* %21, align 1
  %1373 = icmp eq i64 %1360, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %30, align 1
  %1375 = lshr i64 %1360, 63
  %1376 = trunc i64 %1375 to i8
  store i8 %1376, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1377 = load i64, i64* %RBP.i, align 8
  %1378 = add i64 %1377, -168
  %1379 = add i64 %1310, 72
  store i64 %1379, i64* %3, align 8
  %1380 = load <2 x float>, <2 x float>* %446, align 1
  %1381 = extractelement <2 x float> %1380, i32 0
  %1382 = inttoptr i64 %1378 to float*
  store float %1381, float* %1382, align 4
  %1383 = load i64, i64* %RBP.i, align 8
  %1384 = add i64 %1383, -172
  %1385 = load i64, i64* %3, align 8
  %1386 = add i64 %1385, 8
  store i64 %1386, i64* %3, align 8
  %1387 = load <2 x float>, <2 x float>* %406, align 1
  %1388 = extractelement <2 x float> %1387, i32 0
  %1389 = inttoptr i64 %1384 to float*
  store float %1388, float* %1389, align 4
  %1390 = load i64, i64* %3, align 8
  %1391 = load i8, i8* %33, align 1
  %1392 = icmp ne i8 %1391, 0
  %.v110 = select i1 %1392, i64 22, i64 6
  %1393 = add i64 %1390, %.v110
  store i64 %1393, i64* %3, align 8
  %cmpBr_432484 = icmp eq i8 %1391, 1
  br i1 %cmpBr_432484, label %block_.L_43249a, label %block_43248a

block_43248a:                                     ; preds = %block_432434
  %1394 = load i64, i64* %RBP.i, align 8
  %1395 = add i64 %1394, -168
  %1396 = add i64 %1393, 8
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  store i32 %1398, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %1399 = add i64 %1394, -172
  %1400 = add i64 %1393, 16
  store i64 %1400, i64* %3, align 8
  %1401 = load <2 x float>, <2 x float>* %406, align 1
  %1402 = extractelement <2 x float> %1401, i32 0
  %1403 = inttoptr i64 %1399 to float*
  store float %1402, float* %1403, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_43249a

block_.L_43249a:                                  ; preds = %block_43248a, %block_432434
  %1404 = phi i64 [ %.pre64, %block_43248a ], [ %1393, %block_432434 ]
  %1405 = load i64, i64* %RBP.i, align 8
  %1406 = add i64 %1405, -172
  %1407 = add i64 %1404, 8
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  store i32 %1409, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi75, align 1
  store float 0.000000e+00, float* %.pre-phi77, align 1
  store float 0.000000e+00, float* %.pre-phi79, align 1
  %1410 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1410, i64* %RAX.i955, align 8
  %1411 = add i64 %1410, 48
  %1412 = add i64 %1404, 21
  store i64 %1412, i64* %3, align 8
  %1413 = load <2 x float>, <2 x float>* %406, align 1
  %1414 = load <2 x i32>, <2 x i32>* %394, align 1
  %1415 = inttoptr i64 %1411 to float*
  %1416 = load float, float* %1415, align 4
  %1417 = extractelement <2 x float> %1413, i32 0
  %1418 = fdiv float %1417, %1416
  store float %1418, float* %397, align 1
  %1419 = bitcast <2 x float> %1413 to <2 x i32>
  %1420 = extractelement <2 x i32> %1419, i32 1
  store i32 %1420, i32* %400, align 1
  %1421 = extractelement <2 x i32> %1414, i32 0
  store i32 %1421, i32* %402, align 1
  %1422 = extractelement <2 x i32> %1414, i32 1
  store i32 %1422, i32* %405, align 1
  %1423 = load <2 x float>, <2 x float>* %406, align 1
  %1424 = extractelement <2 x float> %1423, i32 0
  %1425 = tail call float @llvm.trunc.f32(float %1424)
  %1426 = fptosi float %1425 to i64
  store i64 %1426, i64* %RAX.i955, align 8
  %1427 = add i64 %1405, -96
  %1428 = add i64 %1404, 30
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  store i64 %1426, i64* %1429, align 8
  %1430 = load i64, i64* %RBP.i, align 8
  %1431 = add i64 %1430, -72
  %1432 = load i64, i64* %3, align 8
  %1433 = add i64 %1432, 4
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1431 to i64*
  %1435 = load i64, i64* %1434, align 8
  store i64 %1435, i64* %RAX.i955, align 8
  %1436 = add i64 %1430, -88
  %1437 = add i64 %1432, 8
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i64*
  store i64 %1435, i64* %1438, align 8
  %1439 = load i64, i64* %RBP.i, align 8
  %1440 = add i64 %1439, -88
  %1441 = load i64, i64* %3, align 8
  %1442 = add i64 %1441, 4
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1440 to i64*
  %1444 = load i64, i64* %1443, align 8
  store i64 %1444, i64* %RAX.i955, align 8
  %1445 = add i64 %1439, -32
  %1446 = add i64 %1441, 8
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i64*
  %1448 = load i64, i64* %1447, align 8
  store i64 %1448, i64* %RCX.i917, align 8
  %1449 = add i64 %1441, 11
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i64*
  store i64 %1444, i64* %1450, align 8
  %1451 = load i64, i64* %RBP.i, align 8
  %1452 = add i64 %1451, -72
  %1453 = load i64, i64* %3, align 8
  %1454 = add i64 %1453, 4
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1452 to i64*
  %1456 = load i64, i64* %1455, align 8
  store i64 %1456, i64* %RAX.i955, align 8
  %1457 = add i64 %1451, -40
  %1458 = add i64 %1453, 8
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i64*
  store i64 %1456, i64* %1459, align 8
  %1460 = load i64, i64* %RBP.i, align 8
  %1461 = add i64 %1460, -56
  %1462 = load i64, i64* %3, align 8
  %1463 = add i64 %1462, 8
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1461 to i64*
  store i64 0, i64* %1464, align 8
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_4324db

block_.L_4324db:                                  ; preds = %block_.L_432584, %block_.L_43249a
  %1465 = phi i64 [ %1761, %block_.L_432584 ], [ %.pre65, %block_.L_43249a ]
  %1466 = load i64, i64* %RBP.i, align 8
  %1467 = add i64 %1466, -56
  %1468 = add i64 %1465, 4
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i64*
  %1470 = load i64, i64* %1469, align 8
  store i64 %1470, i64* %RAX.i955, align 8
  %1471 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*), align 8
  %1472 = sub i64 %1470, %1471
  %1473 = icmp ult i64 %1470, %1471
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %14, align 1
  %1475 = trunc i64 %1472 to i32
  %1476 = and i32 %1475, 255
  %1477 = tail call i32 @llvm.ctpop.i32(i32 %1476)
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  store i8 %1480, i8* %21, align 1
  %1481 = xor i64 %1471, %1470
  %1482 = xor i64 %1481, %1472
  %1483 = lshr i64 %1482, 4
  %1484 = trunc i64 %1483 to i8
  %1485 = and i8 %1484, 1
  store i8 %1485, i8* %27, align 1
  %1486 = icmp eq i64 %1472, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %30, align 1
  %1488 = lshr i64 %1472, 63
  %1489 = trunc i64 %1488 to i8
  store i8 %1489, i8* %33, align 1
  %1490 = lshr i64 %1470, 63
  %1491 = lshr i64 %1471, 63
  %1492 = xor i64 %1491, %1490
  %1493 = xor i64 %1488, %1490
  %1494 = add nuw nsw i64 %1493, %1492
  %1495 = icmp eq i64 %1494, 2
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %39, align 1
  %.v89 = select i1 %1473, i64 18, i64 191
  %1497 = add i64 %1465, %.v89
  store i64 %1497, i64* %3, align 8
  br i1 %1473, label %block_4324ed, label %block_.L_43259a

block_4324ed:                                     ; preds = %block_.L_4324db
  %1498 = add i64 %1466, -32
  %1499 = add i64 %1497, 4
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i64*
  %1501 = load i64, i64* %1500, align 8
  store i64 %1501, i64* %RAX.i955, align 8
  %1502 = add i64 %1497, 8
  store i64 %1502, i64* %3, align 8
  %1503 = load i64, i64* %1469, align 8
  store i64 %1503, i64* %RCX.i917, align 8
  %1504 = shl i64 %1503, 3
  %1505 = add i64 %1501, %1504
  %1506 = add i64 %1497, 12
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i64*
  %1508 = load i64, i64* %1507, align 8
  store i64 %1508, i64* %RAX.i955, align 8
  %1509 = add i64 %1497, 16
  store i64 %1509, i64* %3, align 8
  %1510 = load i64, i64* %1469, align 8
  store i64 %1510, i64* %RCX.i917, align 8
  %1511 = shl i64 %1510, 3
  %1512 = add i64 %1511, 7313216
  %1513 = add i64 %1497, 24
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i64*
  %1515 = load i64, i64* %1514, align 8
  %1516 = sub i64 %1508, %1515
  store i64 %1516, i64* %RAX.i955, align 8
  %1517 = icmp ult i64 %1508, %1515
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %14, align 1
  %1519 = trunc i64 %1516 to i32
  %1520 = and i32 %1519, 255
  %1521 = tail call i32 @llvm.ctpop.i32(i32 %1520)
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = xor i8 %1523, 1
  store i8 %1524, i8* %21, align 1
  %1525 = xor i64 %1515, %1508
  %1526 = xor i64 %1525, %1516
  %1527 = lshr i64 %1526, 4
  %1528 = trunc i64 %1527 to i8
  %1529 = and i8 %1528, 1
  store i8 %1529, i8* %27, align 1
  %1530 = icmp eq i64 %1516, 0
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %30, align 1
  %1532 = lshr i64 %1516, 63
  %1533 = trunc i64 %1532 to i8
  store i8 %1533, i8* %33, align 1
  %1534 = lshr i64 %1508, 63
  %1535 = lshr i64 %1515, 63
  %1536 = xor i64 %1535, %1534
  %1537 = xor i64 %1532, %1534
  %1538 = add nuw nsw i64 %1537, %1536
  %1539 = icmp eq i64 %1538, 2
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %39, align 1
  %1541 = add i64 %1497, 28
  store i64 %1541, i64* %3, align 8
  %1542 = load i64, i64* %1500, align 8
  store i64 %1542, i64* %RCX.i917, align 8
  %1543 = add i64 %1497, 32
  store i64 %1543, i64* %3, align 8
  %1544 = load i64, i64* %1469, align 8
  store i64 %1544, i64* %RDX.i938, align 8
  %1545 = shl i64 %1544, 3
  %1546 = add i64 %1542, %1545
  %1547 = add i64 %1497, 36
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i64*
  store i64 %1516, i64* %1548, align 8
  %1549 = load i64, i64* %RBP.i, align 8
  %1550 = add i64 %1549, -32
  %1551 = load i64, i64* %3, align 8
  %1552 = add i64 %1551, 4
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1550 to i64*
  %1554 = load i64, i64* %1553, align 8
  store i64 %1554, i64* %RAX.i955, align 8
  %1555 = add i64 %1549, -56
  %1556 = add i64 %1551, 8
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i64*
  %1558 = load i64, i64* %1557, align 8
  store i64 %1558, i64* %RCX.i917, align 8
  %1559 = shl i64 %1558, 3
  %1560 = add i64 %1554, %1559
  %1561 = add i64 %1551, 12
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i64*
  %1563 = load i64, i64* %1562, align 8
  store i64 %1563, i64* %RAX.i955, align 8
  %1564 = add i64 %1549, -40
  %1565 = add i64 %1551, 16
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i64*
  %1567 = load i64, i64* %1566, align 8
  %1568 = sub i64 %1563, %1567
  %1569 = icmp ult i64 %1563, %1567
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %14, align 1
  %1571 = trunc i64 %1568 to i32
  %1572 = and i32 %1571, 255
  %1573 = tail call i32 @llvm.ctpop.i32(i32 %1572)
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = xor i8 %1575, 1
  store i8 %1576, i8* %21, align 1
  %1577 = xor i64 %1567, %1563
  %1578 = xor i64 %1577, %1568
  %1579 = lshr i64 %1578, 4
  %1580 = trunc i64 %1579 to i8
  %1581 = and i8 %1580, 1
  store i8 %1581, i8* %27, align 1
  %1582 = icmp eq i64 %1568, 0
  %1583 = zext i1 %1582 to i8
  store i8 %1583, i8* %30, align 1
  %1584 = lshr i64 %1568, 63
  %1585 = trunc i64 %1584 to i8
  store i8 %1585, i8* %33, align 1
  %1586 = lshr i64 %1563, 63
  %1587 = lshr i64 %1567, 63
  %1588 = xor i64 %1587, %1586
  %1589 = xor i64 %1584, %1586
  %1590 = add nuw nsw i64 %1589, %1588
  %1591 = icmp eq i64 %1590, 2
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %39, align 1
  %1593 = icmp ne i8 %1585, 0
  %1594 = xor i1 %1593, %1591
  %.v91 = select i1 %1594, i64 22, i64 46
  %1595 = add i64 %1551, %.v91
  store i64 %1595, i64* %3, align 8
  br i1 %1594, label %block_432527, label %block_.L_43253f

block_432527:                                     ; preds = %block_4324ed
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %3, align 8
  %1597 = load i64, i64* %1553, align 8
  store i64 %1597, i64* %RAX.i955, align 8
  %1598 = add i64 %1595, 8
  store i64 %1598, i64* %3, align 8
  %1599 = load i64, i64* %1557, align 8
  store i64 %1599, i64* %RCX.i917, align 8
  %1600 = shl i64 %1599, 3
  %1601 = add i64 %1597, %1600
  %1602 = add i64 %1595, 12
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i64*
  %1604 = load i64, i64* %1603, align 8
  store i64 %1604, i64* %RAX.i955, align 8
  %1605 = add i64 %1595, 16
  store i64 %1605, i64* %3, align 8
  store i64 %1604, i64* %1566, align 8
  %1606 = load i64, i64* %RBP.i, align 8
  %1607 = add i64 %1606, -56
  %1608 = load i64, i64* %3, align 8
  %1609 = add i64 %1608, 4
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1607 to i64*
  %1611 = load i64, i64* %1610, align 8
  store i64 %1611, i64* %RAX.i955, align 8
  %1612 = add i64 %1606, -64
  %1613 = add i64 %1608, 8
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i64*
  store i64 %1611, i64* %1614, align 8
  %.pre66 = load i64, i64* %RBP.i, align 8
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_43253f

block_.L_43253f:                                  ; preds = %block_4324ed, %block_432527
  %1615 = phi i64 [ %1595, %block_4324ed ], [ %.pre67, %block_432527 ]
  %1616 = phi i64 [ %1549, %block_4324ed ], [ %.pre66, %block_432527 ]
  %1617 = add i64 %1616, -32
  %1618 = add i64 %1615, 4
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i64*
  %1620 = load i64, i64* %1619, align 8
  store i64 %1620, i64* %RAX.i955, align 8
  %1621 = add i64 %1616, -56
  %1622 = add i64 %1615, 8
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i64*
  %1624 = load i64, i64* %1623, align 8
  store i64 %1624, i64* %RCX.i917, align 8
  %1625 = shl i64 %1624, 3
  %1626 = add i64 %1620, %1625
  %1627 = add i64 %1615, 12
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i64*
  %1629 = load i64, i64* %1628, align 8
  store i64 %1629, i64* %RAX.i955, align 8
  %1630 = add i64 %1616, -96
  %1631 = add i64 %1615, 16
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i64*
  %1633 = load i64, i64* %1632, align 8
  %1634 = add i64 %1633, %1629
  store i64 %1634, i64* %RAX.i955, align 8
  %1635 = icmp ult i64 %1634, %1629
  %1636 = icmp ult i64 %1634, %1633
  %1637 = or i1 %1635, %1636
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %14, align 1
  %1639 = trunc i64 %1634 to i32
  %1640 = and i32 %1639, 255
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %21, align 1
  %1645 = xor i64 %1633, %1629
  %1646 = xor i64 %1645, %1634
  %1647 = lshr i64 %1646, 4
  %1648 = trunc i64 %1647 to i8
  %1649 = and i8 %1648, 1
  store i8 %1649, i8* %27, align 1
  %1650 = icmp eq i64 %1634, 0
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %30, align 1
  %1652 = lshr i64 %1634, 63
  %1653 = trunc i64 %1652 to i8
  store i8 %1653, i8* %33, align 1
  %1654 = lshr i64 %1629, 63
  %1655 = lshr i64 %1633, 63
  %1656 = xor i64 %1652, %1654
  %1657 = xor i64 %1652, %1655
  %1658 = add nuw nsw i64 %1656, %1657
  %1659 = icmp eq i64 %1658, 2
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %39, align 1
  %1661 = add i64 %1615, 20
  store i64 %1661, i64* %3, align 8
  %1662 = load i64, i64* %1619, align 8
  store i64 %1662, i64* %RCX.i917, align 8
  %1663 = add i64 %1615, 24
  store i64 %1663, i64* %3, align 8
  %1664 = load i64, i64* %1623, align 8
  store i64 %1664, i64* %RDX.i938, align 8
  %1665 = shl i64 %1664, 3
  %1666 = add i64 %1665, 8
  %1667 = add i64 %1666, %1662
  %1668 = add i64 %1615, 29
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i64*
  store i64 %1634, i64* %1669, align 8
  %1670 = load i64, i64* %RBP.i, align 8
  %1671 = add i64 %1670, -32
  %1672 = load i64, i64* %3, align 8
  %1673 = add i64 %1672, 4
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1671 to i64*
  %1675 = load i64, i64* %1674, align 8
  store i64 %1675, i64* %RAX.i955, align 8
  %1676 = add i64 %1670, -56
  %1677 = add i64 %1672, 8
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i64*
  %1679 = load i64, i64* %1678, align 8
  store i64 %1679, i64* %RCX.i917, align 8
  %1680 = shl i64 %1679, 3
  %1681 = add i64 %1680, 8
  %1682 = add i64 %1681, %1675
  %1683 = add i64 %1672, 13
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i64*
  %1685 = load i64, i64* %1684, align 8
  store i64 %1685, i64* %RAX.i955, align 8
  %1686 = add i64 %1670, -72
  %1687 = add i64 %1672, 17
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i64*
  %1689 = load i64, i64* %1688, align 8
  %1690 = sub i64 %1685, %1689
  %1691 = icmp ult i64 %1685, %1689
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %14, align 1
  %1693 = trunc i64 %1690 to i32
  %1694 = and i32 %1693, 255
  %1695 = tail call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  store i8 %1698, i8* %21, align 1
  %1699 = xor i64 %1689, %1685
  %1700 = xor i64 %1699, %1690
  %1701 = lshr i64 %1700, 4
  %1702 = trunc i64 %1701 to i8
  %1703 = and i8 %1702, 1
  store i8 %1703, i8* %27, align 1
  %1704 = icmp eq i64 %1690, 0
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %30, align 1
  %1706 = lshr i64 %1690, 63
  %1707 = trunc i64 %1706 to i8
  store i8 %1707, i8* %33, align 1
  %1708 = lshr i64 %1685, 63
  %1709 = lshr i64 %1689, 63
  %1710 = xor i64 %1709, %1708
  %1711 = xor i64 %1706, %1708
  %1712 = add nuw nsw i64 %1711, %1710
  %1713 = icmp eq i64 %1712, 2
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %39, align 1
  %1715 = icmp ne i8 %1707, 0
  %1716 = xor i1 %1715, %1713
  %1717 = or i1 %1704, %1716
  %.v92 = select i1 %1717, i64 40, i64 23
  %1718 = add i64 %1672, %.v92
  store i64 %1718, i64* %3, align 8
  br i1 %1717, label %block_.L_432584, label %block_432573

block_432573:                                     ; preds = %block_.L_43253f
  %1719 = add i64 %1718, 4
  store i64 %1719, i64* %3, align 8
  %1720 = load i64, i64* %1688, align 8
  store i64 %1720, i64* %RAX.i955, align 8
  %1721 = add i64 %1718, 8
  store i64 %1721, i64* %3, align 8
  %1722 = load i64, i64* %1674, align 8
  store i64 %1722, i64* %RCX.i917, align 8
  %1723 = add i64 %1718, 12
  store i64 %1723, i64* %3, align 8
  %1724 = load i64, i64* %1678, align 8
  store i64 %1724, i64* %RDX.i938, align 8
  %1725 = shl i64 %1724, 3
  %1726 = add i64 %1725, 8
  %1727 = add i64 %1726, %1722
  %1728 = add i64 %1718, 17
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i64*
  store i64 %1720, i64* %1729, align 8
  %.pre68 = load i64, i64* %3, align 8
  %.pre69 = load i64, i64* %RBP.i, align 8
  br label %block_.L_432584

block_.L_432584:                                  ; preds = %block_432573, %block_.L_43253f
  %1730 = phi i64 [ %.pre69, %block_432573 ], [ %1670, %block_.L_43253f ]
  %1731 = phi i64 [ %.pre68, %block_432573 ], [ %1718, %block_.L_43253f ]
  %1732 = add i64 %1730, -56
  %1733 = add i64 %1731, 9
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i64*
  %1735 = load i64, i64* %1734, align 8
  %1736 = add i64 %1735, 1
  store i64 %1736, i64* %RAX.i955, align 8
  %1737 = icmp eq i64 %1735, -1
  %1738 = icmp eq i64 %1736, 0
  %1739 = or i1 %1737, %1738
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %14, align 1
  %1741 = trunc i64 %1736 to i32
  %1742 = and i32 %1741, 255
  %1743 = tail call i32 @llvm.ctpop.i32(i32 %1742)
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = xor i8 %1745, 1
  store i8 %1746, i8* %21, align 1
  %1747 = xor i64 %1736, %1735
  %1748 = lshr i64 %1747, 4
  %1749 = trunc i64 %1748 to i8
  %1750 = and i8 %1749, 1
  store i8 %1750, i8* %27, align 1
  %1751 = zext i1 %1738 to i8
  store i8 %1751, i8* %30, align 1
  %1752 = lshr i64 %1736, 63
  %1753 = trunc i64 %1752 to i8
  store i8 %1753, i8* %33, align 1
  %1754 = lshr i64 %1735, 63
  %1755 = xor i64 %1752, %1754
  %1756 = add nuw nsw i64 %1755, %1752
  %1757 = icmp eq i64 %1756, 2
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %39, align 1
  %1759 = add i64 %1731, 17
  store i64 %1759, i64* %3, align 8
  store i64 %1736, i64* %1734, align 8
  %1760 = load i64, i64* %3, align 8
  %1761 = add i64 %1760, -186
  store i64 %1761, i64* %3, align 8
  br label %block_.L_4324db

block_.L_43259a:                                  ; preds = %block_.L_4324db
  %1762 = add i64 %1466, -72
  %1763 = add i64 %1497, 4
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i64*
  %1765 = load i64, i64* %1764, align 8
  store i64 %1765, i64* %RAX.i955, align 8
  %1766 = add i64 %1466, -40
  %1767 = add i64 %1497, 8
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i64*
  %1769 = load i64, i64* %1768, align 8
  %1770 = sub i64 %1765, %1769
  %1771 = icmp ult i64 %1765, %1769
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %14, align 1
  %1773 = trunc i64 %1770 to i32
  %1774 = and i32 %1773, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %21, align 1
  %1779 = xor i64 %1769, %1765
  %1780 = xor i64 %1779, %1770
  %1781 = lshr i64 %1780, 4
  %1782 = trunc i64 %1781 to i8
  %1783 = and i8 %1782, 1
  store i8 %1783, i8* %27, align 1
  %1784 = icmp eq i64 %1770, 0
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %30, align 1
  %1786 = lshr i64 %1770, 63
  %1787 = trunc i64 %1786 to i8
  store i8 %1787, i8* %33, align 1
  %1788 = lshr i64 %1765, 63
  %1789 = lshr i64 %1769, 63
  %1790 = xor i64 %1789, %1788
  %1791 = xor i64 %1786, %1788
  %1792 = add nuw nsw i64 %1791, %1790
  %1793 = icmp eq i64 %1792, 2
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %39, align 1
  %1795 = add i64 %1466, -80
  %1796 = add i64 %1497, 12
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i64*
  store i64 %1770, i64* %1797, align 8
  %1798 = load i64, i64* %3, align 8
  %1799 = load i64, i64* bitcast (%G_0x6f9740_type* @G_0x6f9740 to i64*), align 8
  store i64 %1799, i64* %RAX.i955, align 8
  %1800 = load i64, i64* %RBP.i, align 8
  %1801 = add i64 %1800, -88
  %1802 = add i64 %1798, 12
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i64*
  store i64 %1799, i64* %1803, align 8
  %1804 = load i64, i64* %RBP.i, align 8
  %1805 = add i64 %1804, -88
  %1806 = load i64, i64* %3, align 8
  %1807 = add i64 %1806, 4
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1805 to i64*
  %1809 = load i64, i64* %1808, align 8
  store i64 %1809, i64* %RAX.i955, align 8
  %1810 = add i64 %1804, -32
  %1811 = add i64 %1806, 8
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i64*
  %1813 = load i64, i64* %1812, align 8
  store i64 %1813, i64* %RCX.i917, align 8
  %1814 = add i64 %1806, 11
  store i64 %1814, i64* %3, align 8
  %1815 = inttoptr i64 %1813 to i64*
  store i64 %1809, i64* %1815, align 8
  %1816 = load i64, i64* %RBP.i, align 8
  %1817 = add i64 %1816, -56
  %1818 = load i64, i64* %3, align 8
  %1819 = add i64 %1818, 8
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1817 to i64*
  store i64 0, i64* %1820, align 8
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_4325c5

block_.L_4325c5:                                  ; preds = %block_.L_432671, %block_.L_43259a
  %1821 = phi i64 [ %2121, %block_.L_432671 ], [ %.pre70, %block_.L_43259a ]
  %1822 = load i64, i64* %RBP.i, align 8
  %1823 = add i64 %1822, -56
  %1824 = add i64 %1821, 4
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i64*
  %1826 = load i64, i64* %1825, align 8
  store i64 %1826, i64* %RAX.i955, align 8
  %1827 = add i64 %1822, -64
  %1828 = add i64 %1821, 8
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i64*
  %1830 = load i64, i64* %1829, align 8
  %1831 = add i64 %1830, 1
  store i64 %1831, i64* %RCX.i917, align 8
  %1832 = lshr i64 %1831, 63
  %1833 = sub i64 %1826, %1831
  %1834 = icmp ult i64 %1826, %1831
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %14, align 1
  %1836 = trunc i64 %1833 to i32
  %1837 = and i32 %1836, 255
  %1838 = tail call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  store i8 %1841, i8* %21, align 1
  %1842 = xor i64 %1831, %1826
  %1843 = xor i64 %1842, %1833
  %1844 = lshr i64 %1843, 4
  %1845 = trunc i64 %1844 to i8
  %1846 = and i8 %1845, 1
  store i8 %1846, i8* %27, align 1
  %1847 = icmp eq i64 %1833, 0
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %30, align 1
  %1849 = lshr i64 %1833, 63
  %1850 = trunc i64 %1849 to i8
  store i8 %1850, i8* %33, align 1
  %1851 = lshr i64 %1826, 63
  %1852 = xor i64 %1832, %1851
  %1853 = xor i64 %1849, %1851
  %1854 = add nuw nsw i64 %1853, %1852
  %1855 = icmp eq i64 %1854, 2
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %39, align 1
  %.v90 = select i1 %1834, i64 21, i64 194
  %1857 = add i64 %1821, %.v90
  store i64 %1857, i64* %3, align 8
  br i1 %1834, label %block_4325da, label %block_.L_432687.loopexit

block_4325da:                                     ; preds = %block_.L_4325c5
  %1858 = add i64 %1822, -32
  %1859 = add i64 %1857, 4
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1858 to i64*
  %1861 = load i64, i64* %1860, align 8
  store i64 %1861, i64* %RAX.i955, align 8
  %1862 = add i64 %1857, 8
  store i64 %1862, i64* %3, align 8
  %1863 = load i64, i64* %1825, align 8
  store i64 %1863, i64* %RCX.i917, align 8
  %1864 = shl i64 %1863, 3
  %1865 = add i64 %1861, %1864
  %1866 = add i64 %1857, 12
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i64*
  %1868 = load i64, i64* %1867, align 8
  store i64 %1868, i64* %RAX.i955, align 8
  %1869 = add i64 %1857, 16
  store i64 %1869, i64* %3, align 8
  %1870 = load i64, i64* %1825, align 8
  store i64 %1870, i64* %RCX.i917, align 8
  %1871 = shl i64 %1870, 3
  %1872 = add i64 %1871, 7313216
  %1873 = add i64 %1857, 24
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i64*
  %1875 = load i64, i64* %1874, align 8
  %1876 = sub i64 %1868, %1875
  store i64 %1876, i64* %RAX.i955, align 8
  %1877 = icmp ult i64 %1868, %1875
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %14, align 1
  %1879 = trunc i64 %1876 to i32
  %1880 = and i32 %1879, 255
  %1881 = tail call i32 @llvm.ctpop.i32(i32 %1880)
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = xor i8 %1883, 1
  store i8 %1884, i8* %21, align 1
  %1885 = xor i64 %1875, %1868
  %1886 = xor i64 %1885, %1876
  %1887 = lshr i64 %1886, 4
  %1888 = trunc i64 %1887 to i8
  %1889 = and i8 %1888, 1
  store i8 %1889, i8* %27, align 1
  %1890 = icmp eq i64 %1876, 0
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %30, align 1
  %1892 = lshr i64 %1876, 63
  %1893 = trunc i64 %1892 to i8
  store i8 %1893, i8* %33, align 1
  %1894 = lshr i64 %1868, 63
  %1895 = lshr i64 %1875, 63
  %1896 = xor i64 %1895, %1894
  %1897 = xor i64 %1892, %1894
  %1898 = add nuw nsw i64 %1897, %1896
  %1899 = icmp eq i64 %1898, 2
  %1900 = zext i1 %1899 to i8
  store i8 %1900, i8* %39, align 1
  %1901 = add i64 %1857, 28
  store i64 %1901, i64* %3, align 8
  %1902 = load i64, i64* %1860, align 8
  store i64 %1902, i64* %RCX.i917, align 8
  %1903 = add i64 %1857, 32
  store i64 %1903, i64* %3, align 8
  %1904 = load i64, i64* %1825, align 8
  store i64 %1904, i64* %RDX.i938, align 8
  %1905 = shl i64 %1904, 3
  %1906 = add i64 %1902, %1905
  %1907 = add i64 %1857, 36
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i64*
  store i64 %1876, i64* %1908, align 8
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -32
  %1911 = load i64, i64* %3, align 8
  %1912 = add i64 %1911, 4
  store i64 %1912, i64* %3, align 8
  %1913 = inttoptr i64 %1910 to i64*
  %1914 = load i64, i64* %1913, align 8
  store i64 %1914, i64* %RAX.i955, align 8
  %1915 = add i64 %1909, -56
  %1916 = add i64 %1911, 8
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i64*
  %1918 = load i64, i64* %1917, align 8
  store i64 %1918, i64* %RCX.i917, align 8
  %1919 = shl i64 %1918, 3
  %1920 = add i64 %1914, %1919
  %1921 = add i64 %1911, 13
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i8 0, i8* %14, align 1
  %1924 = trunc i64 %1923 to i32
  %1925 = and i32 %1924, 255
  %1926 = tail call i32 @llvm.ctpop.i32(i32 %1925)
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  %1929 = xor i8 %1928, 1
  store i8 %1929, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1930 = icmp eq i64 %1923, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %30, align 1
  %1932 = lshr i64 %1923, 63
  %1933 = trunc i64 %1932 to i8
  store i8 %1933, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1934 = icmp ne i8 %1933, 0
  %.v = select i1 %1934, i64 6, i64 45
  %1935 = add i64 %1921, %.v
  store i64 %1935, i64* %3, align 8
  br i1 %1934, label %block_432611, label %block_.L_432638

block_432611:                                     ; preds = %block_4325da
  %1936 = add i64 %1935, 4
  store i64 %1936, i64* %3, align 8
  %1937 = load i64, i64* %1913, align 8
  store i64 %1937, i64* %RAX.i955, align 8
  %1938 = add i64 %1935, 8
  store i64 %1938, i64* %3, align 8
  %1939 = load i64, i64* %1917, align 8
  store i64 %1939, i64* %RCX.i917, align 8
  %1940 = shl i64 %1939, 3
  %1941 = add i64 %1937, %1940
  %1942 = add i64 %1935, 12
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i64*
  %1944 = load i64, i64* %1943, align 8
  store i64 %1944, i64* %RAX.i955, align 8
  %1945 = add i64 %1909, -88
  %1946 = add i64 %1935, 16
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i64*
  %1948 = load i64, i64* %1947, align 8
  %1949 = sub i64 %1948, %1944
  store i64 %1949, i64* %RCX.i917, align 8
  %1950 = icmp ult i64 %1948, %1944
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %14, align 1
  %1952 = trunc i64 %1949 to i32
  %1953 = and i32 %1952, 255
  %1954 = tail call i32 @llvm.ctpop.i32(i32 %1953)
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  %1957 = xor i8 %1956, 1
  store i8 %1957, i8* %21, align 1
  %1958 = xor i64 %1944, %1948
  %1959 = xor i64 %1958, %1949
  %1960 = lshr i64 %1959, 4
  %1961 = trunc i64 %1960 to i8
  %1962 = and i8 %1961, 1
  store i8 %1962, i8* %27, align 1
  %1963 = icmp eq i64 %1949, 0
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %30, align 1
  %1965 = lshr i64 %1949, 63
  %1966 = trunc i64 %1965 to i8
  store i8 %1966, i8* %33, align 1
  %1967 = lshr i64 %1948, 63
  %1968 = lshr i64 %1944, 63
  %1969 = xor i64 %1968, %1967
  %1970 = xor i64 %1965, %1967
  %1971 = add nuw nsw i64 %1970, %1969
  %1972 = icmp eq i64 %1971, 2
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %39, align 1
  %1974 = add i64 %1935, 23
  store i64 %1974, i64* %3, align 8
  store i64 %1949, i64* %1947, align 8
  %1975 = load i64, i64* %RBP.i, align 8
  %1976 = add i64 %1975, -32
  %1977 = load i64, i64* %3, align 8
  %1978 = add i64 %1977, 4
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1976 to i64*
  %1980 = load i64, i64* %1979, align 8
  store i64 %1980, i64* %RAX.i955, align 8
  %1981 = add i64 %1975, -56
  %1982 = add i64 %1977, 8
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i64*
  %1984 = load i64, i64* %1983, align 8
  store i64 %1984, i64* %RCX.i917, align 8
  %1985 = shl i64 %1984, 3
  %1986 = add i64 %1980, %1985
  %1987 = add i64 %1977, 16
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i64*
  store i64 0, i64* %1988, align 8
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_432638

block_.L_432638:                                  ; preds = %block_4325da, %block_432611
  %1989 = phi i64 [ %1935, %block_4325da ], [ %.pre72, %block_432611 ]
  %1990 = phi i64 [ %1909, %block_4325da ], [ %.pre71, %block_432611 ]
  %1991 = add i64 %1990, -32
  %1992 = add i64 %1989, 4
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i64*
  %1994 = load i64, i64* %1993, align 8
  store i64 %1994, i64* %RAX.i955, align 8
  %1995 = add i64 %1990, -56
  %1996 = add i64 %1989, 8
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i64*
  %1998 = load i64, i64* %1997, align 8
  store i64 %1998, i64* %RCX.i917, align 8
  %1999 = shl i64 %1998, 3
  %2000 = add i64 %1994, %1999
  %2001 = add i64 %1989, 12
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i64*
  %2003 = load i64, i64* %2002, align 8
  store i64 %2003, i64* %RAX.i955, align 8
  %2004 = add i64 %1990, -96
  %2005 = add i64 %1989, 16
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i64*
  %2007 = load i64, i64* %2006, align 8
  %2008 = add i64 %2007, %2003
  store i64 %2008, i64* %RAX.i955, align 8
  %2009 = icmp ult i64 %2008, %2003
  %2010 = icmp ult i64 %2008, %2007
  %2011 = or i1 %2009, %2010
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %14, align 1
  %2013 = trunc i64 %2008 to i32
  %2014 = and i32 %2013, 255
  %2015 = tail call i32 @llvm.ctpop.i32(i32 %2014)
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = xor i8 %2017, 1
  store i8 %2018, i8* %21, align 1
  %2019 = xor i64 %2007, %2003
  %2020 = xor i64 %2019, %2008
  %2021 = lshr i64 %2020, 4
  %2022 = trunc i64 %2021 to i8
  %2023 = and i8 %2022, 1
  store i8 %2023, i8* %27, align 1
  %2024 = icmp eq i64 %2008, 0
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %30, align 1
  %2026 = lshr i64 %2008, 63
  %2027 = trunc i64 %2026 to i8
  store i8 %2027, i8* %33, align 1
  %2028 = lshr i64 %2003, 63
  %2029 = lshr i64 %2007, 63
  %2030 = xor i64 %2026, %2028
  %2031 = xor i64 %2026, %2029
  %2032 = add nuw nsw i64 %2030, %2031
  %2033 = icmp eq i64 %2032, 2
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %39, align 1
  %2035 = add i64 %1989, 20
  store i64 %2035, i64* %3, align 8
  %2036 = load i64, i64* %1993, align 8
  store i64 %2036, i64* %RCX.i917, align 8
  %2037 = add i64 %1989, 24
  store i64 %2037, i64* %3, align 8
  %2038 = load i64, i64* %1997, align 8
  store i64 %2038, i64* %RDX.i938, align 8
  %2039 = shl i64 %2038, 3
  %2040 = add i64 %2039, 8
  %2041 = add i64 %2040, %2036
  %2042 = add i64 %1989, 29
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2041 to i64*
  store i64 %2008, i64* %2043, align 8
  %2044 = load i64, i64* %RBP.i, align 8
  %2045 = add i64 %2044, -32
  %2046 = load i64, i64* %3, align 8
  %2047 = add i64 %2046, 4
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2045 to i64*
  %2049 = load i64, i64* %2048, align 8
  store i64 %2049, i64* %RAX.i955, align 8
  %2050 = add i64 %2044, -56
  %2051 = add i64 %2046, 8
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i64*
  %2053 = load i64, i64* %2052, align 8
  store i64 %2053, i64* %RCX.i917, align 8
  %2054 = shl i64 %2053, 3
  %2055 = add i64 %2054, 8
  %2056 = add i64 %2055, %2049
  %2057 = add i64 %2046, 13
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i64*
  %2059 = load i64, i64* %2058, align 8
  store i64 %2059, i64* %RAX.i955, align 8
  %2060 = add i64 %2044, -80
  %2061 = add i64 %2046, 17
  store i64 %2061, i64* %3, align 8
  %2062 = inttoptr i64 %2060 to i64*
  %2063 = load i64, i64* %2062, align 8
  %2064 = sub i64 %2059, %2063
  %2065 = icmp ult i64 %2059, %2063
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %14, align 1
  %2067 = trunc i64 %2064 to i32
  %2068 = and i32 %2067, 255
  %2069 = tail call i32 @llvm.ctpop.i32(i32 %2068)
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  %2072 = xor i8 %2071, 1
  store i8 %2072, i8* %21, align 1
  %2073 = xor i64 %2063, %2059
  %2074 = xor i64 %2073, %2064
  %2075 = lshr i64 %2074, 4
  %2076 = trunc i64 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %27, align 1
  %2078 = icmp eq i64 %2064, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %30, align 1
  %2080 = lshr i64 %2064, 63
  %2081 = trunc i64 %2080 to i8
  store i8 %2081, i8* %33, align 1
  %2082 = lshr i64 %2059, 63
  %2083 = lshr i64 %2063, 63
  %2084 = xor i64 %2083, %2082
  %2085 = xor i64 %2080, %2082
  %2086 = add nuw nsw i64 %2085, %2084
  %2087 = icmp eq i64 %2086, 2
  %2088 = zext i1 %2087 to i8
  store i8 %2088, i8* %39, align 1
  %2089 = icmp ne i8 %2081, 0
  %2090 = xor i1 %2089, %2087
  %2091 = or i1 %2078, %2090
  %.v80 = select i1 %2091, i64 28, i64 23
  %2092 = add i64 %2046, %.v80
  store i64 %2092, i64* %3, align 8
  br i1 %2091, label %block_.L_432671, label %block_43266c

block_43266c:                                     ; preds = %block_.L_432638
  %2093 = add i64 %2092, 27
  store i64 %2093, i64* %3, align 8
  br label %block_.L_432687

block_.L_432671:                                  ; preds = %block_.L_432638
  %2094 = add i64 %2092, 9
  store i64 %2094, i64* %3, align 8
  %2095 = load i64, i64* %2052, align 8
  %2096 = add i64 %2095, 1
  store i64 %2096, i64* %RAX.i955, align 8
  %2097 = icmp eq i64 %2095, -1
  %2098 = icmp eq i64 %2096, 0
  %2099 = or i1 %2097, %2098
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %14, align 1
  %2101 = trunc i64 %2096 to i32
  %2102 = and i32 %2101, 255
  %2103 = tail call i32 @llvm.ctpop.i32(i32 %2102)
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = xor i8 %2105, 1
  store i8 %2106, i8* %21, align 1
  %2107 = xor i64 %2096, %2095
  %2108 = lshr i64 %2107, 4
  %2109 = trunc i64 %2108 to i8
  %2110 = and i8 %2109, 1
  store i8 %2110, i8* %27, align 1
  %2111 = zext i1 %2098 to i8
  store i8 %2111, i8* %30, align 1
  %2112 = lshr i64 %2096, 63
  %2113 = trunc i64 %2112 to i8
  store i8 %2113, i8* %33, align 1
  %2114 = lshr i64 %2095, 63
  %2115 = xor i64 %2112, %2114
  %2116 = add nuw nsw i64 %2115, %2112
  %2117 = icmp eq i64 %2116, 2
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %39, align 1
  %2119 = add i64 %2092, 17
  store i64 %2119, i64* %3, align 8
  store i64 %2096, i64* %2052, align 8
  %2120 = load i64, i64* %3, align 8
  %2121 = add i64 %2120, -189
  store i64 %2121, i64* %3, align 8
  br label %block_.L_4325c5

block_.L_432687.loopexit:                         ; preds = %block_.L_4325c5
  br label %block_.L_432687

block_.L_432687:                                  ; preds = %block_.L_432687.loopexit, %block_43266c
  %2122 = phi i64 [ %2093, %block_43266c ], [ %1857, %block_.L_432687.loopexit ]
  %2123 = phi i64 [ %2044, %block_43266c ], [ %1822, %block_.L_432687.loopexit ]
  %2124 = add i64 %2123, -80
  %2125 = add i64 %2122, 4
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i64*
  %2127 = load i64, i64* %2126, align 8
  store i64 %2127, i64* %RAX.i955, align 8
  %2128 = add i64 %2123, -112
  %2129 = add i64 %2122, 8
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i64*
  %2131 = load i64, i64* %2130, align 8
  store i64 %2131, i64* %RCX.i917, align 8
  %2132 = add i64 %2123, -48
  %2133 = add i64 %2122, 12
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2132 to i64*
  %2135 = load i64, i64* %2134, align 8
  store i64 %2135, i64* %RDX.i938, align 8
  %2136 = shl i64 %2135, 3
  %2137 = add i64 %2131, %2136
  %2138 = add i64 %2122, 16
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i64*
  store i64 %2127, i64* %2139, align 8
  %2140 = load i64, i64* %RBP.i, align 8
  %2141 = add i64 %2140, -88
  %2142 = load i64, i64* %3, align 8
  %2143 = add i64 %2142, 4
  store i64 %2143, i64* %3, align 8
  %2144 = inttoptr i64 %2141 to i64*
  %2145 = load i64, i64* %2144, align 8
  store i64 %2145, i64* %RAX.i955, align 8
  %2146 = add i64 %2140, -120
  %2147 = add i64 %2142, 8
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i64*
  %2149 = load i64, i64* %2148, align 8
  store i64 %2149, i64* %RCX.i917, align 8
  %2150 = add i64 %2140, -48
  %2151 = add i64 %2142, 12
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i64*
  %2153 = load i64, i64* %2152, align 8
  store i64 %2153, i64* %RDX.i938, align 8
  %2154 = shl i64 %2153, 3
  %2155 = add i64 %2149, %2154
  %2156 = add i64 %2142, 16
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i64*
  store i64 %2145, i64* %2157, align 8
  %2158 = load i64, i64* %RBP.i, align 8
  %2159 = add i64 %2158, -48
  %2160 = load i64, i64* %3, align 8
  %2161 = add i64 %2160, 4
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2159 to i64*
  %2163 = load i64, i64* %2162, align 8
  %2164 = add i64 %2163, 1
  store i64 %2164, i64* %RAX.i955, align 8
  %2165 = icmp eq i64 %2163, -1
  %2166 = icmp eq i64 %2164, 0
  %2167 = or i1 %2165, %2166
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %14, align 1
  %2169 = trunc i64 %2164 to i32
  %2170 = and i32 %2169, 255
  %2171 = tail call i32 @llvm.ctpop.i32(i32 %2170)
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  %2174 = xor i8 %2173, 1
  store i8 %2174, i8* %21, align 1
  %2175 = xor i64 %2164, %2163
  %2176 = lshr i64 %2175, 4
  %2177 = trunc i64 %2176 to i8
  %2178 = and i8 %2177, 1
  store i8 %2178, i8* %27, align 1
  %2179 = zext i1 %2166 to i8
  store i8 %2179, i8* %30, align 1
  %2180 = lshr i64 %2164, 63
  %2181 = trunc i64 %2180 to i8
  store i8 %2181, i8* %33, align 1
  %2182 = lshr i64 %2163, 63
  %2183 = xor i64 %2180, %2182
  %2184 = add nuw nsw i64 %2183, %2180
  %2185 = icmp eq i64 %2184, 2
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %39, align 1
  %2187 = add i64 %2160, 12
  store i64 %2187, i64* %3, align 8
  store i64 %2164, i64* %2162, align 8
  %2188 = load i64, i64* %3, align 8
  %2189 = add i64 %2188, -653
  store i64 %2189, i64* %3, align 8
  br label %block_.L_432426

block_.L_4326b8:                                  ; preds = %block_.L_432426
  %2190 = add i64 %1310, 4
  store i64 %2190, i64* %3, align 8
  %2191 = load i64, i64* %1283, align 8
  store i64 %2191, i64* %RDI.i493, align 8
  %2192 = add i64 %1276, -104
  %2193 = add i64 %1310, 8
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i64*
  %2195 = load i64, i64* %2194, align 8
  store i64 %2195, i64* %RSI.i, align 8
  %2196 = add i64 %1276, -112
  %2197 = add i64 %1310, 12
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i64*
  %2199 = load i64, i64* %2198, align 8
  store i64 %2199, i64* %RDX.i938, align 8
  %2200 = add i64 %1276, -120
  %2201 = add i64 %1310, 16
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i64*
  %2203 = load i64, i64* %2202, align 8
  store i64 %2203, i64* %RCX.i917, align 8
  %2204 = add i64 %1310, -2344
  %2205 = add i64 %1310, 21
  %2206 = load i64, i64* %6, align 8
  %2207 = add i64 %2206, -8
  %2208 = inttoptr i64 %2207 to i64*
  store i64 %2205, i64* %2208, align 8
  store i64 %2207, i64* %6, align 8
  store i64 %2204, i64* %3, align 8
  %call2_4326c8 = tail call %struct.Memory* @sub_431d90.write_buffer(%struct.State* nonnull %0, i64 %2204, %struct.Memory* %call2_432410)
  %2209 = load i64, i64* %RBP.i, align 8
  %2210 = add i64 %2209, -32
  %2211 = load i64, i64* %3, align 8
  %2212 = add i64 %2211, 4
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2210 to i64*
  %2214 = load i64, i64* %2213, align 8
  store i64 %2214, i64* %RCX.i917, align 8
  store i64 %2214, i64* %RDI.i493, align 8
  %2215 = add i64 %2211, -202573
  %2216 = add i64 %2211, 12
  %2217 = load i64, i64* %6, align 8
  %2218 = add i64 %2217, -8
  %2219 = inttoptr i64 %2218 to i64*
  store i64 %2216, i64* %2219, align 8
  store i64 %2218, i64* %6, align 8
  store i64 %2215, i64* %3, align 8
  %2220 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_4326c8)
  %2221 = load i64, i64* %RBP.i, align 8
  %2222 = add i64 %2221, -104
  %2223 = load i64, i64* %3, align 8
  %2224 = add i64 %2223, 4
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2222 to i64*
  %2226 = load i64, i64* %2225, align 8
  store i64 %2226, i64* %RCX.i917, align 8
  store i64 %2226, i64* %RDI.i493, align 8
  %2227 = add i64 %2223, -202585
  %2228 = add i64 %2223, 12
  %2229 = load i64, i64* %6, align 8
  %2230 = add i64 %2229, -8
  %2231 = inttoptr i64 %2230 to i64*
  store i64 %2228, i64* %2231, align 8
  store i64 %2230, i64* %6, align 8
  store i64 %2227, i64* %3, align 8
  %2232 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2220)
  %2233 = load i64, i64* %RBP.i, align 8
  %2234 = add i64 %2233, -112
  %2235 = load i64, i64* %3, align 8
  %2236 = add i64 %2235, 4
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2234 to i64*
  %2238 = load i64, i64* %2237, align 8
  store i64 %2238, i64* %RCX.i917, align 8
  store i64 %2238, i64* %RDI.i493, align 8
  %2239 = add i64 %2235, -202597
  %2240 = add i64 %2235, 12
  %2241 = load i64, i64* %6, align 8
  %2242 = add i64 %2241, -8
  %2243 = inttoptr i64 %2242 to i64*
  store i64 %2240, i64* %2243, align 8
  store i64 %2242, i64* %6, align 8
  store i64 %2239, i64* %3, align 8
  %2244 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2232)
  %2245 = load i64, i64* %RBP.i, align 8
  %2246 = add i64 %2245, -120
  %2247 = load i64, i64* %3, align 8
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %3, align 8
  %2249 = inttoptr i64 %2246 to i64*
  %2250 = load i64, i64* %2249, align 8
  store i64 %2250, i64* %RCX.i917, align 8
  store i64 %2250, i64* %RDI.i493, align 8
  %2251 = add i64 %2247, -202609
  %2252 = add i64 %2247, 12
  %2253 = load i64, i64* %6, align 8
  %2254 = add i64 %2253, -8
  %2255 = inttoptr i64 %2254 to i64*
  store i64 %2252, i64* %2255, align 8
  store i64 %2254, i64* %6, align 8
  store i64 %2251, i64* %3, align 8
  %2256 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2244)
  %2257 = load i64, i64* %6, align 8
  %2258 = load i64, i64* %3, align 8
  %2259 = add i64 %2257, 176
  store i64 %2259, i64* %6, align 8
  %2260 = icmp ugt i64 %2257, -177
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %14, align 1
  %2262 = trunc i64 %2259 to i32
  %2263 = and i32 %2262, 255
  %2264 = tail call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  store i8 %2267, i8* %21, align 1
  %2268 = xor i64 %2257, 16
  %2269 = xor i64 %2268, %2259
  %2270 = lshr i64 %2269, 4
  %2271 = trunc i64 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %27, align 1
  %2273 = icmp eq i64 %2259, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %30, align 1
  %2275 = lshr i64 %2259, 63
  %2276 = trunc i64 %2275 to i8
  store i8 %2276, i8* %33, align 1
  %2277 = lshr i64 %2257, 63
  %2278 = xor i64 %2275, %2277
  %2279 = add nuw nsw i64 %2278, %2275
  %2280 = icmp eq i64 %2279, 2
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %39, align 1
  %2282 = add i64 %2258, 8
  store i64 %2282, i64* %3, align 8
  %2283 = add i64 %2257, 184
  %2284 = inttoptr i64 %2259 to i64*
  %2285 = load i64, i64* %2284, align 8
  store i64 %2285, i64* %RBP.i, align 8
  store i64 %2283, i64* %6, align 8
  %2286 = add i64 %2258, 9
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2283 to i64*
  %2288 = load i64, i64* %2287, align 8
  store i64 %2288, i64* %3, align 8
  %2289 = add i64 %2257, 192
  store i64 %2289, i64* %6, align 8
  ret %struct.Memory* %2256
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
define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 176
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
define %struct.Memory* @routine_movq__0x4c054d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c054d_type* @G__0x4c054d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c059e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c059e_type* @G__0x4c059e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cc010___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x9ac__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2476
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
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cc010___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RCX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_jne_.L_432072(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c05b9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c05b9_type* @G__0x4c05b9 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_jne_.L_4320a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c05d3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c05d3_type* @G__0x4c05d3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_jne_.L_4320ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c05e5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c05e5_type* @G__0x4c05e5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_jne_.L_4320fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c05f7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c05f7_type* @G__0x4c05f7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0x6cc010___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*), align 8
  %7 = sub i64 %3, %6
  %8 = icmp ult i64 %3, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_432143(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6f9740___rax_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 7313216
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
  %11 = icmp ult i64 %10, %3
  %12 = icmp ult i64 %10, %9
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %9, %3
  %24 = xor i64 %23, %10
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %10, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %3, 63
  %36 = lshr i64 %9, 63
  %37 = xor i64 %32, %35
  %38 = xor i64 %32, %36
  %39 = add nuw nsw i64 %37, %38
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_jmpq_.L_43210c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shrq__0x1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 63
  %7 = trunc i64 %6 to i8
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = lshr i64 %3, 1
  store i64 %10, i64* %RCX, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %10 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7, i8* %24, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_orq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = or i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq__rsi___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = sitofp i64 %5 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = bitcast i64* %10 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = extractelement <2 x float> %8, i32 0
  %13 = fadd float %12, %12
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = bitcast <2 x float> %8 to <2 x i32>
  %16 = extractelement <2 x i32> %15, i32 1
  %17 = getelementptr inbounds i8, i8* %4, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 0
  %20 = bitcast i64* %9 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %11, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq__rax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = sitofp i64 %5 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = bitcast i64* %10 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testq__rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
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
  %14 = icmp eq i64 %3, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i64 %3, 63
  %18 = trunc i64 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_js_.L_43218e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x84__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -132
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -136
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x299e73__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x299e73__rip__type* @G_0x299e73__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq__rsi___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = sitofp i64 %5 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = bitcast i64* %10 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = extractelement <2 x float> %8, i32 0
  %13 = fadd float %12, %12
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = bitcast <2 x float> %8 to <2 x i32>
  %16 = extractelement <2 x i32> %15, i32 1
  %17 = getelementptr inbounds i8, i8* %4, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 0
  %20 = bitcast i64* %9 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %11, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssq__rax___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = sitofp i64 %5 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = bitcast i64* %10 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_js_.L_4321ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -144
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x94__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -148
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x8c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -140
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x8b630__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x8b630__rip__type* @G_0x8b630__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = fptosi float %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RAX, align 8
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
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = fptosi float %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovbq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RAX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.get_LeakyBucketRate(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_432408(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_432403(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jne_.L_432323(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_js_.L_4322b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -152
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x9c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -156
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x29963a__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29963a__rip__type* @G_0x29963a__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x30__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 48
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fmul float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x8b561__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x8b561__rip__type* @G_0x8b561__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = fptosi float %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast %union.VectorReg* %4 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 20
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

define %struct.Memory* @routine_divq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = zext i64 %9 to i128
  %11 = shl nuw i128 %10, 64
  %12 = zext i64 %7 to i128
  %13 = or i128 %11, %12
  %14 = zext i64 %3 to i128
  %15 = udiv i128 %13, %14
  %16 = and i128 %15, 18446744073709551615
  %17 = icmp eq i128 %15, %16
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %block_400488
  %19 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:20:                                     ; preds = %block_400488
  %21 = urem i128 %13, %14
  %22 = trunc i128 %21 to i64
  %23 = trunc i128 %15 to i64
  store i64 %23, i64* %6, align 8
  store i64 %22, i64* %8, align 8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %20, %18
  %30 = phi %struct.Memory* [ %19, %18 ], [ %2, %20 ]
  ret %struct.Memory* %30
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4323ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, -8
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_js_.L_432377(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -160
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xa4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -164
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 1
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 2
  store i64 %9, i64* %RAX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %9 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %9, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x29956d__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29956d__rip__type* @G_0x29956d__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x30__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 48
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fmul float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x299555__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x299555__rip__type* @G_0x299555__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_incl__ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = xor i32 %7, %6
  %16 = lshr i32 %15, 4
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %7, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %7, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %6, 31
  %27 = xor i32 %23, %26
  %28 = add nuw nsw i32 %27, %23
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %30, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x8b47c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x8b47c__rip__type* @G_0x8b47c__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x8000000000000000___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RAX, align 8
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
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = fptosi float %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovbq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RAX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4323f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_432253(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_432408(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Sort(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imulq__0x14__MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 20
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 252
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i64 %14, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_4326b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x2994b1__rip____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2994b1__rip__type* @G_0x2994b1__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_incl__edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = xor i32 %7, %6
  %16 = lshr i32 %15, 4
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %7, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %7, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %6, 31
  %27 = xor i32 %23, %26
  %28 = add nuw nsw i32 %27, %23
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %30, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i64 %3 to i128
  %8 = and i128 %7, -18446744073709551616
  %9 = sext i64 %4 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %3 to i128
  %12 = or i128 %8, %11
  %13 = zext i64 %4 to i128
  %14 = or i128 %10, %13
  %15 = mul i128 %14, %12
  %16 = trunc i128 %15 to i64
  store i64 %16, i64* %RAX, align 8
  %17 = sext i64 %16 to i128
  %18 = icmp ne i128 %17, %15
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = trunc i128 %15 to i32
  %22 = and i32 %21, 255
  %23 = tail call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %29, align 1
  %30 = lshr i64 %16, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_js_.L_43249a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xa8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
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
define %struct.Memory* @routine_divss_0x30__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 48
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = fptosi float %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_43259a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq_0x6f9740___rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 7313216
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %3, %10
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i64 %3, %10
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
  %22 = xor i64 %10, %3
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
  %34 = lshr i64 %3, 63
  %35 = lshr i64 %10, 63
  %36 = xor i64 %35, %34
  %37 = xor i64 %31, %34
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
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
define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43253f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
  %11 = icmp ult i64 %10, %3
  %12 = icmp ult i64 %10, %9
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %9, %3
  %24 = xor i64 %23, %10
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %10, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %3, 63
  %36 = lshr i64 %9, 63
  %37 = xor i64 %32, %35
  %38 = xor i64 %32, %36
  %39 = add nuw nsw i64 %37, %38
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8__rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 8
  %7 = add i64 %6, %5
  %8 = load i64, i64* %RAX, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i64*
  store i64 %8, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 8
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_432584(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_432589(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4324db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  store i64 %10, i64* %RAX, align 8
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f9740___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9740_type* @G_0x6f9740 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_432687(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = trunc i64 %10 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i64 %10, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i64 %10, 63
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_432638(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  store i64 0, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_432671(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_432687(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_432676(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4325c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_432426(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.write_buffer(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -177
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
