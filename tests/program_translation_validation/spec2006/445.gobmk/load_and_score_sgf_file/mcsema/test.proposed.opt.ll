; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0x99c080_type = type <{ [8 x i8] }>
%G_0xab0f14_type = type <{ [16 x i8] }>
%G_0xab0fbc_type = type <{ [4 x i8] }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G_0xb454f8_type = type <{ [4 x i8] }>
%G_0xe0041__rip__type = type <{ [16 x i8] }>
%G__0x579c45_type = type <{ [8 x i8] }>
%G__0x579c74_type = type <{ [8 x i8] }>
%G__0x57e7b5_type = type <{ [8 x i8] }>
%G__0x5858b6_type = type <{ [4 x i8] }>
%G__0x5878ab_type = type <{ [8 x i8] }>
%G__0x5878b5_type = type <{ [8 x i8] }>
%G__0x5878e5_type = type <{ [4 x i8] }>
%G__0x5878ec_type = type <{ [8 x i8] }>
%G__0x5878fb_type = type <{ [8 x i8] }>
%G__0x58790f_type = type <{ [8 x i8] }>
%G__0x58792b_type = type <{ [8 x i8] }>
%G__0x587947_type = type <{ [8 x i8] }>
%G__0x58794d_type = type <{ [8 x i8] }>
%G__0x587953_type = type <{ [8 x i8] }>
%G__0x58796c_type = type <{ [8 x i8] }>
%G__0x587994_type = type <{ [8 x i8] }>
%G__0x58799f_type = type <{ [8 x i8] }>
%G__0x5879aa_type = type <{ [8 x i8] }>
%G__0x5879c4_type = type <{ [8 x i8] }>
%G__0xab0f18_type = type <{ [8 x i8] }>
%G__0xab0f1c_type = type <{ [8 x i8] }>
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
@G_0x99c080 = local_unnamed_addr global %G_0x99c080_type zeroinitializer
@G_0xab0f14 = local_unnamed_addr global %G_0xab0f14_type zeroinitializer
@G_0xab0fbc = local_unnamed_addr global %G_0xab0fbc_type zeroinitializer
@G_0xafdfb0 = local_unnamed_addr global %G_0xafdfb0_type zeroinitializer
@G_0xb454f8 = local_unnamed_addr global %G_0xb454f8_type zeroinitializer
@G_0xe0041__rip_ = global %G_0xe0041__rip__type zeroinitializer
@G__0x579c45 = global %G__0x579c45_type zeroinitializer
@G__0x579c74 = global %G__0x579c74_type zeroinitializer
@G__0x57e7b5 = global %G__0x57e7b5_type zeroinitializer
@G__0x5858b6 = global %G__0x5858b6_type zeroinitializer
@G__0x5878ab = global %G__0x5878ab_type zeroinitializer
@G__0x5878b5 = global %G__0x5878b5_type zeroinitializer
@G__0x5878e5 = global %G__0x5878e5_type zeroinitializer
@G__0x5878ec = global %G__0x5878ec_type zeroinitializer
@G__0x5878fb = global %G__0x5878fb_type zeroinitializer
@G__0x58790f = global %G__0x58790f_type zeroinitializer
@G__0x58792b = global %G__0x58792b_type zeroinitializer
@G__0x587947 = global %G__0x587947_type zeroinitializer
@G__0x58794d = global %G__0x58794d_type zeroinitializer
@G__0x587953 = global %G__0x587953_type zeroinitializer
@G__0x58796c = global %G__0x58796c_type zeroinitializer
@G__0x587994 = global %G__0x587994_type zeroinitializer
@G__0x58799f = global %G__0x58799f_type zeroinitializer
@G__0x5879aa = global %G__0x5879aa_type zeroinitializer
@G__0x5879c4 = global %G__0x5879c4_type zeroinitializer
@G__0xab0f18 = global %G__0xab0f18_type zeroinitializer
@G__0xab0f1c = global %G__0xab0f1c_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64)

declare extern_weak x86_64_sysvcc i64 @__isoc99_sscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_404380.sgftree_clear(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404680.sgftreeCreateHeaderNode(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_472ae0.sgffile_printboard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425bd0.reset_engine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427ca0.genmove_conservative(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e310.play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4727a0.sgffile_add_debuginfo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4045e0.sgftreeAddPlay(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4729f0.sgffile_output(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406f80.aftermath_compute_score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42ebe0.gnugo_estimate_score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4046f0.sgftreeAddComment(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401eb0.sgfGetCharProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402ab0.sgfWriteResult(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425c60.examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @load_and_score_sgf_file(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -440
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 432
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
  %RAX.i56 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, -344
  store i64 %41, i64* %RAX.i56, align 8
  %RDI.i90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -16
  %43 = load i64, i64* %RDI.i90, align 8
  %44 = add i64 %10, 21
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %RSI.i122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -16
  %48 = load i64, i64* %RSI.i122, align 8
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51, align 8
  %RDX.i134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -24
  %54 = load i64, i64* %RDX.i134, align 8
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -48
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 8
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %59 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -316
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 10
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 0, i32* %67, align 4
  %68 = load i64, i64* %RAX.i56, align 8
  %69 = load i64, i64* %3, align 8
  store i64 %68, i64* %RDI.i90, align 8
  %70 = add i64 %69, -611392
  %71 = add i64 %69, 8
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %71, i64* %74, align 8
  store i64 %73, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  %call2_4997c3 = tail call %struct.Memory* @sub_404380.sgftree_clear(%struct.State* %0, i64 %70, %struct.Memory* %2)
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -336
  %77 = load i64, i64* %3, align 8
  store i64 %76, i64* %RDI.i90, align 8
  %78 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RSI.i122, align 8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %81 = bitcast [32 x %union.VectorReg]* %80 to i8*
  %82 = load i32, i32* bitcast (%G_0xb454f8_type* @G_0xb454f8 to i32*), align 8
  %83 = bitcast [32 x %union.VectorReg]* %80 to i32*
  store i32 %82, i32* %83, align 1
  %84 = getelementptr inbounds i8, i8* %81, i64 4
  %85 = bitcast i8* %84 to float*
  store float 0.000000e+00, float* %85, align 1
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %87 = bitcast i64* %86 to float*
  store float 0.000000e+00, float* %87, align 1
  %88 = getelementptr inbounds i8, i8* %81, i64 12
  %89 = bitcast i8* %88 to float*
  store float 0.000000e+00, float* %89, align 1
  %90 = add i64 %77, -610632
  %91 = add i64 %77, 28
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, -8
  %94 = inttoptr i64 %93 to i64*
  store i64 %91, i64* %94, align 8
  store i64 %93, i64* %6, align 8
  store i64 %90, i64* %3, align 8
  %call2_4997df = tail call %struct.Memory* @sub_404680.sgftreeCreateHeaderNode(%struct.State* %0, i64 %90, %struct.Memory* %call2_4997c3)
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -336
  %97 = load i64, i64* %3, align 8
  store i64 %96, i64* %RDI.i90, align 8
  %98 = add i64 %97, -158980
  %99 = add i64 %97, 12
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %99, i64* %102, align 8
  store i64 %101, i64* %6, align 8
  store i64 %98, i64* %3, align 8
  %call2_4997eb = tail call %struct.Memory* @sub_472ae0.sgffile_printboard(%struct.State* %0, i64 %98, %struct.Memory* %call2_4997df)
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -16
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RAX.i56, align 8
  %109 = add i64 %108, 4
  %110 = add i64 %105, 7
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RSI.i122, align 8
  %114 = add i64 %103, -312
  %115 = add i64 %105, 13
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 %112, i32* %116, align 4
  %117 = load i64, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  %118 = add i64 %117, -474157
  %119 = add i64 %117, 16
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, -8
  %122 = inttoptr i64 %121 to i64*
  store i64 %119, i64* %122, align 8
  store i64 %121, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  %call2_499808 = tail call %struct.Memory* @sub_425bd0.reset_engine(%struct.State* %0, i64 %118, %struct.Memory* %call2_4997eb)
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -24
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %124 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %RDI.i90, align 8
  store i64 and (i64 ptrtoint (%G__0x5878e5_type* @G__0x5878e5 to i64), i64 4294967295), i64* %RSI.i122, align 8
  %129 = add i64 %125, -624461
  %130 = add i64 %125, 14
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %131, -8
  %133 = inttoptr i64 %132 to i64*
  store i64 %130, i64* %133, align 8
  store i64 %132, i64* %6, align 8
  store i64 %129, i64* %3, align 8
  %134 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %call2_499808)
  %EAX.i592 = bitcast %union.anon* %40 to i32*
  %135 = load i32, i32* %EAX.i592, align 4
  %136 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %137 = and i32 %135, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137)
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %142 = icmp eq i32 %135, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %30, align 1
  %144 = lshr i32 %135, 31
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %142, i64 34, i64 9
  %146 = add i64 %136, %.v
  store i64 %146, i64* %3, align 8
  br i1 %142, label %block_.L_49983d, label %block_499824

block_499824:                                     ; preds = %entry
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -24
  %149 = add i64 %146, 4
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RDI.i90, align 8
  store i64 and (i64 ptrtoint (%G__0x5858b6_type* @G__0x5858b6 to i64), i64 4294967295), i64* %RAX.i56, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x5858b6_type* @G__0x5858b6 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i122, align 8
  %152 = add i64 %146, -624484
  %153 = add i64 %146, 16
  %154 = load i64, i64* %6, align 8
  %155 = add i64 %154, -8
  %156 = inttoptr i64 %155 to i64*
  store i64 %153, i64* %156, align 8
  store i64 %155, i64* %6, align 8
  store i64 %152, i64* %3, align 8
  %157 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %134)
  %158 = load i32, i32* %EAX.i592, align 4
  %159 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %160 = and i32 %158, 255
  %161 = tail call i32 @llvm.ctpop.i32(i32 %160)
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  store i8 %164, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %165 = icmp eq i32 %158, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %30, align 1
  %167 = lshr i32 %158, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v42 = select i1 %165, i64 9, i64 1208
  %169 = add i64 %159, %.v42
  store i64 %169, i64* %3, align 8
  br i1 %165, label %block_.L_49983d, label %block_.L_499cec

block_.L_49983d:                                  ; preds = %block_499824, %entry
  %170 = phi i64 [ %146, %entry ], [ %169, %block_499824 ]
  %MEMORY.0 = phi %struct.Memory* [ %134, %entry ], [ %157, %block_499824 ]
  %171 = add i64 %170, 5
  store i64 %171, i64* %3, align 8
  %RCX.i523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %AL.i503 = bitcast %union.anon* %40 to i8*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i465 = getelementptr inbounds %union.anon, %union.anon* %172, i64 0, i32 0
  %CL.i447 = bitcast %union.anon* %172 to i8*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_499842

block_.L_499842:                                  ; preds = %block_.L_49998d, %block_.L_49983d
  %174 = phi i64 [ %171, %block_.L_49983d ], [ %550, %block_.L_49998d ]
  %175 = phi i64 [ %.pre, %block_.L_49983d ], [ %538, %block_.L_49998d ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_49983d ], [ %call2_49994c, %block_.L_49998d ]
  %176 = add i64 %175, -28
  store i64 %176, i64* %RDI.i90, align 8
  %177 = add i64 %175, -32
  store i64 %177, i64* %RSI.i122, align 8
  %178 = add i64 %175, -312
  %179 = add i64 %174, 14
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RDX.i134, align 8
  %183 = add i64 %174, -465826
  %184 = add i64 %174, 19
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  %call2_499850 = tail call %struct.Memory* @sub_427ca0.genmove_conservative(%struct.State* nonnull %0, i64 %183, %struct.Memory* %MEMORY.1)
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -36
  %190 = load i32, i32* %EAX.i592, align 4
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 3
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %189 to i32*
  store i32 %190, i32* %193, align 4
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -36
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, 4
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %195 to i32*
  %199 = load i32, i32* %198, align 4
  store i8 0, i8* %14, align 1
  %200 = and i32 %199, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200)
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %205 = icmp eq i32 %199, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %30, align 1
  %207 = lshr i32 %199, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %209 = icmp ne i8 %208, 0
  %210 = select i1 %209, i64 102, i64 16
  %211 = add i64 %210, %197
  store i64 %211, i64* %3, align 8
  br i1 %209, label %block_.L_4998b8, label %block_499862

block_499862:                                     ; preds = %block_.L_499842
  store i64 ptrtoint (%G__0x5878ec_type* @G__0x5878ec to i64), i64* %RDI.i90, align 8
  store i64 ptrtoint (%G__0x5878b5_type* @G__0x5878b5 to i64), i64* %RAX.i56, align 8
  store i64 ptrtoint (%G__0x5878ab_type* @G__0x5878ab to i64), i64* %RCX.i523, align 8
  %212 = add i64 %194, -316
  %213 = add i64 %211, 30
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  store i32 0, i32* %214, align 4
  %215 = load i64, i64* %3, align 8
  %216 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RSI.i122, align 8
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -312
  %220 = add i64 %215, 14
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = add i32 %222, -1
  %224 = icmp eq i32 %222, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %14, align 1
  %226 = and i32 %223, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %21, align 1
  %231 = xor i32 %223, %222
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %27, align 1
  %235 = icmp eq i32 %223, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %30, align 1
  %237 = lshr i32 %223, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %33, align 1
  %239 = lshr i32 %222, 31
  %240 = xor i32 %237, %239
  %241 = add nuw nsw i32 %240, %239
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %39, align 1
  %244 = load i64, i64* %RCX.i523, align 8
  %245 = load i64, i64* %RAX.i56, align 8
  %246 = select i1 %235, i64 %244, i64 %245
  store i64 %246, i64* %RAX.i56, align 8
  %247 = add i64 %218, -28
  %248 = add i64 %215, 21
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RCX.i523, align 8
  %252 = add i64 %218, -32
  %253 = add i64 %215, 25
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %173, align 8
  store i64 %246, i64* %RDX.i134, align 8
  store i8 0, i8* %AL.i503, align 1
  %257 = add i64 %215, -293594
  %258 = add i64 %215, 35
  %259 = load i64, i64* %6, align 8
  %260 = add i64 %259, -8
  %261 = inttoptr i64 %260 to i64*
  store i64 %258, i64* %261, align 8
  store i64 %260, i64* %6, align 8
  store i64 %257, i64* %3, align 8
  %call2_4998a8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %257, %struct.Memory* %MEMORY.1)
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -340
  %264 = load i32, i32* %EAX.i592, align 4
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 6
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %263 to i32*
  store i32 %264, i32* %267, align 4
  %268 = load i64, i64* %3, align 8
  %269 = add i64 %268, 84
  store i64 %269, i64* %3, align 8
  br label %block_.L_499907

block_.L_4998b8:                                  ; preds = %block_.L_499842
  store i64 ptrtoint (%G__0x5878fb_type* @G__0x5878fb to i64), i64* %RDI.i90, align 8
  store i64 ptrtoint (%G__0x5878b5_type* @G__0x5878b5 to i64), i64* %RAX.i56, align 8
  store i64 ptrtoint (%G__0x5878ab_type* @G__0x5878ab to i64), i64* %RCX.i523, align 8
  %270 = add i64 %194, -316
  %271 = add i64 %211, 26
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, 1
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RDX.i134, align 8
  %276 = icmp eq i32 %273, -1
  %277 = icmp eq i32 %274, 0
  %278 = or i1 %276, %277
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %14, align 1
  %280 = and i32 %274, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280)
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %21, align 1
  %285 = xor i32 %274, %273
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %27, align 1
  %289 = zext i1 %277 to i8
  store i8 %289, i8* %30, align 1
  %290 = lshr i32 %274, 31
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %33, align 1
  %292 = lshr i32 %273, 31
  %293 = xor i32 %290, %292
  %294 = add nuw nsw i32 %293, %290
  %295 = icmp eq i32 %294, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %39, align 1
  %297 = add i64 %211, 35
  store i64 %297, i64* %3, align 8
  store i32 %274, i32* %272, align 4
  %298 = load i64, i64* %3, align 8
  %299 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RSI.i122, align 8
  %301 = load i64, i64* %RBP.i, align 8
  %302 = add i64 %301, -312
  %303 = add i64 %298, 14
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = add i32 %305, -1
  %307 = icmp eq i32 %305, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %14, align 1
  %309 = and i32 %306, 255
  %310 = tail call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  store i8 %313, i8* %21, align 1
  %314 = xor i32 %306, %305
  %315 = lshr i32 %314, 4
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  store i8 %317, i8* %27, align 1
  %318 = icmp eq i32 %306, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %30, align 1
  %320 = lshr i32 %306, 31
  %321 = trunc i32 %320 to i8
  store i8 %321, i8* %33, align 1
  %322 = lshr i32 %305, 31
  %323 = xor i32 %320, %322
  %324 = add nuw nsw i32 %323, %322
  %325 = icmp eq i32 %324, 2
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %39, align 1
  %327 = load i64, i64* %RCX.i523, align 8
  %328 = load i64, i64* %RAX.i56, align 8
  %329 = select i1 %318, i64 %327, i64 %328
  store i64 %329, i64* %RAX.i56, align 8
  store i64 %329, i64* %RDX.i134, align 8
  store i8 0, i8* %AL.i503, align 1
  %330 = add i64 %298, -293685
  %331 = add i64 %298, 28
  %332 = load i64, i64* %6, align 8
  %333 = add i64 %332, -8
  %334 = inttoptr i64 %333 to i64*
  store i64 %331, i64* %334, align 8
  store i64 %333, i64* %6, align 8
  store i64 %330, i64* %3, align 8
  %call2_4998fc = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %330, %struct.Memory* %MEMORY.1)
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -344
  %337 = load i32, i32* %EAX.i592, align 4
  %338 = load i64, i64* %3, align 8
  %339 = add i64 %338, 6
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %336 to i32*
  store i32 %337, i32* %340, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_499907

block_.L_499907:                                  ; preds = %block_.L_4998b8, %block_499862
  %341 = phi i64 [ %.pre21, %block_.L_4998b8 ], [ %269, %block_499862 ]
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -28
  %344 = add i64 %341, 4
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = mul i32 %346, 20
  %348 = add i32 %347, 21
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RAX.i56, align 8
  %350 = icmp ugt i32 %347, -22
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %14, align 1
  %352 = and i32 %348, 253
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352)
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %21, align 1
  %357 = xor i32 %347, 16
  %358 = xor i32 %357, %348
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %362 = lshr i32 %348, 31
  %363 = trunc i32 %362 to i8
  store i8 %363, i8* %33, align 1
  %364 = lshr i32 %347, 31
  %365 = xor i32 %362, %364
  %366 = add nuw nsw i32 %365, %362
  %367 = icmp eq i32 %366, 2
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %39, align 1
  %369 = add i64 %342, -32
  %370 = add i64 %341, 10
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = add i32 %372, %348
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX.i56, align 8
  %375 = icmp ult i32 %373, %348
  %376 = icmp ult i32 %373, %372
  %377 = or i1 %375, %376
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %14, align 1
  %379 = and i32 %373, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %21, align 1
  %384 = xor i32 %372, %348
  %385 = xor i32 %384, %373
  %386 = lshr i32 %385, 4
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %27, align 1
  %389 = icmp eq i32 %373, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %30, align 1
  %391 = lshr i32 %373, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %33, align 1
  %393 = lshr i32 %372, 31
  %394 = xor i32 %391, %362
  %395 = xor i32 %391, %393
  %396 = add nuw nsw i32 %394, %395
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %39, align 1
  %399 = add i64 %342, -312
  %400 = add i64 %341, 16
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RSI.i122, align 8
  store i64 %374, i64* %RDI.i90, align 8
  %404 = add i64 %341, -570871
  %405 = add i64 %341, 23
  %406 = load i64, i64* %6, align 8
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408, align 8
  store i64 %407, i64* %6, align 8
  store i64 %404, i64* %3, align 8
  %call2_499919 = tail call %struct.Memory* @sub_40e310.play_move(%struct.State* nonnull %0, i64 %404, %struct.Memory* %MEMORY.1)
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -328
  %411 = load i64, i64* %3, align 8
  %412 = add i64 %411, 7
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %410 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %RDI.i90, align 8
  %415 = add i64 %409, -36
  %416 = add i64 %411, 10
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RSI.i122, align 8
  %420 = add i64 %411, -160126
  %421 = add i64 %411, 15
  %422 = load i64, i64* %6, align 8
  %423 = add i64 %422, -8
  %424 = inttoptr i64 %423 to i64*
  store i64 %421, i64* %424, align 8
  store i64 %423, i64* %6, align 8
  store i64 %420, i64* %3, align 8
  %call2_499928 = tail call %struct.Memory* @sub_4727a0.sgffile_add_debuginfo(%struct.State* nonnull %0, i64 %420, %struct.Memory* %call2_499919)
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -336
  %427 = load i64, i64* %3, align 8
  store i64 %426, i64* %RDI.i90, align 8
  %428 = add i64 %425, -312
  %429 = add i64 %427, 13
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RSI.i122, align 8
  %433 = add i64 %425, -28
  %434 = add i64 %427, 16
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RDX.i134, align 8
  %438 = add i64 %425, -32
  %439 = add i64 %427, 19
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RCX.i465, align 8
  %443 = add i64 %427, -611149
  %444 = add i64 %427, 24
  %445 = load i64, i64* %6, align 8
  %446 = add i64 %445, -8
  %447 = inttoptr i64 %446 to i64*
  store i64 %444, i64* %447, align 8
  store i64 %446, i64* %6, align 8
  store i64 %443, i64* %3, align 8
  %call2_499940 = tail call %struct.Memory* @sub_4045e0.sgftreeAddPlay(%struct.State* nonnull %0, i64 %443, %struct.Memory* %call2_499928)
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -336
  %450 = load i64, i64* %3, align 8
  store i64 %449, i64* %RDI.i90, align 8
  %451 = add i64 %450, -159573
  %452 = add i64 %450, 12
  %453 = load i64, i64* %6, align 8
  %454 = add i64 %453, -8
  %455 = inttoptr i64 %454 to i64*
  store i64 %452, i64* %455, align 8
  store i64 %454, i64* %6, align 8
  store i64 %451, i64* %3, align 8
  %call2_49994c = tail call %struct.Memory* @sub_4729f0.sgffile_output(%struct.State* nonnull %0, i64 %451, %struct.Memory* %call2_499940)
  %456 = load i64, i64* %3, align 8
  store i64 3, i64* %RAX.i56, align 8
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -312
  %459 = add i64 %456, 11
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = sub i32 3, %461
  %463 = add i64 %456, 17
  store i64 %463, i64* %3, align 8
  store i32 %462, i32* %460, align 4
  %464 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i56, align 8
  store i8 0, i8* %CL.i447, align 1
  %465 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %466 = add i32 %465, -10000
  %467 = icmp ult i32 %465, 10000
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %14, align 1
  %469 = and i32 %466, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %21, align 1
  %474 = xor i32 %465, 16
  %475 = xor i32 %474, %466
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %27, align 1
  %479 = icmp eq i32 %466, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %30, align 1
  %481 = lshr i32 %466, 31
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %33, align 1
  %483 = lshr i32 %465, 31
  %484 = xor i32 %481, %483
  %485 = add nuw nsw i32 %484, %483
  %486 = icmp eq i32 %485, 2
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %39, align 1
  %488 = load i64, i64* %RBP.i, align 8
  %489 = add i64 %488, -345
  %490 = add i64 %464, 21
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i8*
  store i8 0, i8* %491, align 1
  %492 = load i64, i64* %3, align 8
  %493 = add i64 %492, 22
  %494 = add i64 %492, 6
  %495 = load i8, i8* %30, align 1
  %496 = icmp eq i8 %495, 0
  %497 = load i8, i8* %33, align 1
  %498 = icmp ne i8 %497, 0
  %499 = load i8, i8* %39, align 1
  %500 = icmp ne i8 %499, 0
  %501 = xor i1 %498, %500
  %502 = xor i1 %501, true
  %503 = and i1 %496, %502
  %504 = select i1 %503, i64 %493, i64 %494
  store i64 %504, i64* %3, align 8
  br i1 %503, label %block_.L_49998d, label %block_49997d

block_49997d:                                     ; preds = %block_.L_499907
  %505 = load i64, i64* %RBP.i, align 8
  %506 = add i64 %505, -316
  %507 = add i64 %504, 7
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = add i32 %509, -2
  %511 = icmp ult i32 %509, 2
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %14, align 1
  %513 = and i32 %510, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %21, align 1
  %518 = xor i32 %510, %509
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %27, align 1
  %522 = icmp eq i32 %510, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %30, align 1
  %524 = lshr i32 %510, 31
  %525 = trunc i32 %524 to i8
  store i8 %525, i8* %33, align 1
  %526 = lshr i32 %509, 31
  %527 = xor i32 %524, %526
  %528 = add nuw nsw i32 %527, %526
  %529 = icmp eq i32 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %39, align 1
  %531 = icmp ne i8 %525, 0
  %532 = xor i1 %529, %531
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %AL.i503, align 1
  %534 = add i64 %505, -345
  %535 = add i64 %504, 16
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i8*
  store i8 %533, i8* %536, align 1
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_49998d

block_.L_49998d:                                  ; preds = %block_49997d, %block_.L_499907
  %537 = phi i64 [ %.pre22, %block_49997d ], [ %493, %block_.L_499907 ]
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -345
  %540 = add i64 %537, 6
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i8*
  %542 = load i8, i8* %541, align 1
  store i8 %542, i8* %AL.i503, align 1
  %543 = and i8 %542, 1
  store i8 0, i8* %14, align 1
  %544 = zext i8 %543 to i32
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544)
  %546 = trunc i32 %545 to i8
  %547 = xor i8 %546, 1
  store i8 %547, i8* %21, align 1
  %548 = xor i8 %543, 1
  store i8 %548, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %549 = icmp eq i8 %548, 0
  %.v44 = select i1 %549, i64 -331, i64 14
  %550 = add i64 %537, %.v44
  store i64 %550, i64* %3, align 8
  br i1 %549, label %block_.L_499842, label %block_49999b

block_49999b:                                     ; preds = %block_.L_49998d
  %551 = add i64 %538, -316
  %552 = add i64 %550, 7
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = add i32 %554, -2
  %556 = icmp ult i32 %554, 2
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %14, align 1
  %558 = and i32 %555, 255
  %559 = tail call i32 @llvm.ctpop.i32(i32 %558)
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  store i8 %562, i8* %21, align 1
  %563 = xor i32 %555, %554
  %564 = lshr i32 %563, 4
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  store i8 %566, i8* %27, align 1
  %567 = icmp eq i32 %555, 0
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %30, align 1
  %569 = lshr i32 %555, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %33, align 1
  %571 = lshr i32 %554, 31
  %572 = xor i32 %569, %571
  %573 = add nuw nsw i32 %572, %571
  %574 = icmp eq i32 %573, 2
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %39, align 1
  %576 = icmp ne i8 %570, 0
  %577 = xor i1 %576, %574
  %.v45 = select i1 %577, i64 844, i64 13
  %578 = add i64 %550, %.v45
  store i64 %578, i64* %3, align 8
  br i1 %577, label %block_.L_499ce7, label %block_4999a8

block_4999a8:                                     ; preds = %block_49999b
  %579 = add i64 %538, -24
  %580 = add i64 %578, 4
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i64*
  %582 = load i64, i64* %581, align 8
  store i64 %582, i64* %RDI.i90, align 8
  store i64 and (i64 ptrtoint (%G__0x5858b6_type* @G__0x5858b6 to i64), i64 4294967295), i64* %RAX.i56, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x5858b6_type* @G__0x5858b6 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i122, align 8
  %583 = add i64 %578, -624872
  %584 = add i64 %578, 16
  %585 = load i64, i64* %6, align 8
  %586 = add i64 %585, -8
  %587 = inttoptr i64 %586 to i64*
  store i64 %584, i64* %587, align 8
  store i64 %586, i64* %6, align 8
  store i64 %583, i64* %3, align 8
  %588 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %call2_49994c)
  %589 = load i32, i32* %EAX.i592, align 4
  %590 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %591 = and i32 %589, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %596 = icmp eq i32 %589, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %30, align 1
  %598 = lshr i32 %589, 31
  %599 = trunc i32 %598 to i8
  store i8 %599, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v46 = select i1 %596, i64 9, i64 50
  %600 = add i64 %590, %.v46
  store i64 %600, i64* %3, align 8
  br i1 %596, label %block_4999c1, label %block_.L_4999ea

block_4999c1:                                     ; preds = %block_4999a8
  %601 = load i64, i64* %RBP.i, align 8
  %602 = add i64 %601, -336
  store i64 %602, i64* %RSI.i122, align 8
  %603 = add i64 %601, -312
  %604 = add i64 %600, 13
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RDI.i90, align 8
  %608 = load i32, i32* bitcast (%G_0xb454f8_type* @G_0xb454f8 to i32*), align 8
  store i32 %608, i32* %83, align 1
  store float 0.000000e+00, float* %85, align 1
  store float 0.000000e+00, float* %87, align 1
  store float 0.000000e+00, float* %89, align 1
  %609 = add i64 %600, -600641
  %610 = add i64 %600, 27
  %611 = load i64, i64* %6, align 8
  %612 = add i64 %611, -8
  %613 = inttoptr i64 %612 to i64*
  store i64 %610, i64* %613, align 8
  store i64 %612, i64* %6, align 8
  store i64 %609, i64* %3, align 8
  %call2_4999d7 = tail call %struct.Memory* @sub_406f80.aftermath_compute_score(%struct.State* nonnull %0, i64 %609, %struct.Memory* %588)
  %614 = load i64, i64* %3, align 8
  %615 = bitcast [32 x %union.VectorReg]* %80 to <2 x float>*
  %616 = load <2 x float>, <2 x float>* %615, align 1
  %617 = extractelement <2 x float> %616, i32 0
  store float %617, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %618 = add i64 %614, 48
  store i64 %618, i64* %3, align 8
  br label %block_.L_499a0c

block_.L_4999ea:                                  ; preds = %block_4999a8
  store i64 ptrtoint (%G__0xab0f18_type* @G__0xab0f18 to i64), i64* %RDI.i90, align 8
  store i64 ptrtoint (%G__0xab0f1c_type* @G__0xab0f1c to i64), i64* %RSI.i122, align 8
  %619 = add i64 %600, -437770
  %620 = add i64 %600, 25
  %621 = load i64, i64* %6, align 8
  %622 = add i64 %621, -8
  %623 = inttoptr i64 %622 to i64*
  store i64 %620, i64* %623, align 8
  store i64 %622, i64* %6, align 8
  store i64 %619, i64* %3, align 8
  %call2_4999fe = tail call %struct.Memory* @sub_42ebe0.gnugo_estimate_score(%struct.State* nonnull %0, i64 %619, %struct.Memory* %588)
  %624 = load i64, i64* %3, align 8
  %625 = add i64 %624, 9
  store i64 %625, i64* %3, align 8
  %626 = bitcast [32 x %union.VectorReg]* %80 to <2 x float>*
  %627 = load <2 x float>, <2 x float>* %626, align 1
  %628 = extractelement <2 x float> %627, i32 0
  store float %628, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  br label %block_.L_499a0c

block_.L_499a0c:                                  ; preds = %block_.L_4999ea, %block_4999c1
  %629 = phi float [ %628, %block_.L_4999ea ], [ %617, %block_4999c1 ]
  %630 = phi i64 [ %625, %block_.L_4999ea ], [ %618, %block_4999c1 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_4999fe, %block_.L_4999ea ], [ %call2_4999d7, %block_4999c1 ]
  %631 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %80, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %632 = bitcast i8* %84 to i32*
  %633 = bitcast i64* %86 to i32*
  %634 = bitcast i8* %88 to i32*
  %635 = bitcast [32 x %union.VectorReg]* %80 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %635, align 1
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %637 = bitcast %union.VectorReg* %636 to i8*
  %638 = fpext float %629 to double
  %639 = bitcast %union.VectorReg* %636 to double*
  store double %638, double* %639, align 1
  %640 = add i64 %630, 16
  store i64 %640, i64* %3, align 8
  %641 = bitcast [32 x %union.VectorReg]* %80 to double*
  %642 = load double, double* %641, align 1
  %643 = fcmp uno double %642, %638
  br i1 %643, label %644, label %654

; <label>:644:                                    ; preds = %block_.L_499a0c
  %645 = fadd double %638, %642
  %646 = bitcast double %645 to i64
  %647 = and i64 %646, 9221120237041090560
  %648 = icmp eq i64 %647, 9218868437227405312
  %649 = and i64 %646, 2251799813685247
  %650 = icmp ne i64 %649, 0
  %651 = and i1 %648, %650
  br i1 %651, label %652, label %660

; <label>:652:                                    ; preds = %644
  %653 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %640, %struct.Memory* %MEMORY.4)
  %.pre23 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit386

; <label>:654:                                    ; preds = %block_.L_499a0c
  %655 = fcmp ogt double %642, %638
  br i1 %655, label %660, label %656

; <label>:656:                                    ; preds = %654
  %657 = fcmp olt double %642, %638
  br i1 %657, label %660, label %658

; <label>:658:                                    ; preds = %656
  %659 = fcmp oeq double %642, %638
  br i1 %659, label %660, label %664

; <label>:660:                                    ; preds = %658, %656, %654, %644
  %661 = phi i8 [ 0, %654 ], [ 0, %656 ], [ 1, %658 ], [ 1, %644 ]
  %662 = phi i8 [ 0, %654 ], [ 0, %656 ], [ 0, %658 ], [ 1, %644 ]
  %663 = phi i8 [ 0, %654 ], [ 1, %656 ], [ 0, %658 ], [ 1, %644 ]
  store i8 %661, i8* %30, align 1
  store i8 %662, i8* %21, align 1
  store i8 %663, i8* %14, align 1
  br label %664

; <label>:664:                                    ; preds = %660, %658
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit386

routine_ucomisd__xmm1___xmm0.exit386:             ; preds = %664, %652
  %665 = phi i64 [ %.pre23, %652 ], [ %640, %664 ]
  %666 = phi %struct.Memory* [ %653, %652 ], [ %MEMORY.4, %664 ]
  %667 = load i8, i8* %14, align 1
  %668 = load i8, i8* %30, align 1
  %669 = or i8 %668, %667
  %670 = icmp ne i8 %669, 0
  %.v54 = select i1 %670, i64 74, i64 6
  %671 = add i64 %665, %.v54
  store i64 %671, i64* %3, align 8
  br i1 %670, label %block_.L_499a66, label %block_499a22

block_499a22:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit386
  store i64 ptrtoint (%G__0x58790f_type* @G__0x58790f to i64), i64* %RSI.i122, align 8
  %672 = load i64, i64* %RBP.i, align 8
  %673 = add i64 %672, -304
  store i64 %673, i64* %RDI.i90, align 8
  %674 = load i32, i32* bitcast (%G_0xab0f14_type* @G_0xab0f14 to i32*), align 8
  store i32 %674, i32* %83, align 1
  store float 0.000000e+00, float* %85, align 1
  %675 = load i64, i64* %631, align 1
  %676 = trunc i64 %675 to i32
  %677 = bitcast %union.anon* %40 to [2 x i32]*
  store i32 %676, i32* %EAX.i592, align 1
  %678 = getelementptr inbounds [2 x i32], [2 x i32]* %677, i64 0, i64 1
  store i32 0, i32* %678, align 1
  %679 = load i64, i64* %RAX.i56, align 8
  %680 = xor i64 %679, -2147483648
  %681 = trunc i64 %680 to i32
  %682 = and i64 %680, 4294967295
  store i64 %682, i64* %RAX.i56, align 8
  store i8 0, i8* %14, align 1
  %683 = and i32 %681, 255
  %684 = tail call i32 @llvm.ctpop.i32(i32 %683)
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = xor i8 %686, 1
  store i8 %687, i8* %21, align 1
  %688 = icmp eq i32 %681, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %30, align 1
  %690 = lshr i32 %681, 31
  %691 = trunc i32 %690 to i8
  store i8 %691, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %692 = trunc i64 %680 to i32
  store i32 %692, i32* %83, align 1
  store i32 0, i32* %632, align 1
  store i32 0, i32* %633, align 1
  store i32 0, i32* %634, align 1
  %693 = bitcast [32 x %union.VectorReg]* %80 to <2 x float>*
  %694 = load <2 x float>, <2 x float>* %693, align 1
  %695 = extractelement <2 x float> %694, i32 0
  %696 = fpext float %695 to double
  store double %696, double* %641, align 1
  store i8 1, i8* %AL.i503, align 1
  %697 = add i64 %671, -624722
  %698 = add i64 %671, 50
  %699 = load i64, i64* %6, align 8
  %700 = add i64 %699, -8
  %701 = inttoptr i64 %700 to i64*
  store i64 %698, i64* %701, align 8
  store i64 %700, i64* %6, align 8
  store i64 %697, i64* %3, align 8
  %702 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %666)
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -305
  %705 = load i64, i64* %3, align 8
  %706 = add i64 %705, 7
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %704 to i8*
  store i8 66, i8* %707, align 1
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -352
  %710 = load i32, i32* %EAX.i592, align 4
  %711 = load i64, i64* %3, align 8
  %712 = add i64 %711, 6
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %709 to i32*
  store i32 %710, i32* %713, align 4
  %714 = load i64, i64* %3, align 8
  %715 = add i64 %714, 120
  br label %block_.L_499ad9

block_.L_499a66:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit386
  %716 = bitcast [32 x %union.VectorReg]* %80 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %716, align 1
  %717 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %718 = fpext float %717 to double
  store double %718, double* %639, align 1
  %719 = add i64 %671, 16
  store i64 %719, i64* %3, align 8
  %720 = load double, double* %641, align 1
  %721 = fcmp uno double %718, %720
  br i1 %721, label %722, label %732

; <label>:722:                                    ; preds = %block_.L_499a66
  %723 = fadd double %718, %720
  %724 = bitcast double %723 to i64
  %725 = and i64 %724, 9221120237041090560
  %726 = icmp eq i64 %725, 9218868437227405312
  %727 = and i64 %724, 2251799813685247
  %728 = icmp ne i64 %727, 0
  %729 = and i1 %726, %728
  br i1 %729, label %730, label %738

; <label>:730:                                    ; preds = %722
  %731 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %719, %struct.Memory* %666)
  %.pre24 = load i64, i64* %3, align 8
  %.pre25 = load i8, i8* %14, align 1
  %.pre26 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:732:                                    ; preds = %block_.L_499a66
  %733 = fcmp ogt double %718, %720
  br i1 %733, label %738, label %734

; <label>:734:                                    ; preds = %732
  %735 = fcmp olt double %718, %720
  br i1 %735, label %738, label %736

; <label>:736:                                    ; preds = %734
  %737 = fcmp oeq double %718, %720
  br i1 %737, label %738, label %742

; <label>:738:                                    ; preds = %736, %734, %732, %722
  %739 = phi i8 [ 0, %732 ], [ 0, %734 ], [ 1, %736 ], [ 1, %722 ]
  %740 = phi i8 [ 0, %732 ], [ 0, %734 ], [ 0, %736 ], [ 1, %722 ]
  %741 = phi i8 [ 0, %732 ], [ 1, %734 ], [ 0, %736 ], [ 1, %722 ]
  store i8 %739, i8* %30, align 1
  store i8 %740, i8* %21, align 1
  store i8 %741, i8* %14, align 1
  br label %742

; <label>:742:                                    ; preds = %738, %736
  %743 = phi i8 [ %739, %738 ], [ %668, %736 ]
  %744 = phi i8 [ %741, %738 ], [ %667, %736 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %742, %730
  %745 = phi i8 [ %.pre26, %730 ], [ %743, %742 ]
  %746 = phi i8 [ %.pre25, %730 ], [ %744, %742 ]
  %747 = phi i64 [ %.pre24, %730 ], [ %719, %742 ]
  %748 = phi %struct.Memory* [ %731, %730 ], [ %666, %742 ]
  %749 = or i8 %745, %746
  %750 = icmp ne i8 %749, 0
  %.v51 = select i1 %750, i64 57, i64 6
  %751 = add i64 %747, %.v51
  %752 = add i64 %751, 10
  store i64 %752, i64* %3, align 8
  br i1 %750, label %block_.L_499aaf, label %block_499a7c

block_499a7c:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  store i64 ptrtoint (%G__0x58792b_type* @G__0x58792b to i64), i64* %RSI.i122, align 8
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -304
  store i64 %754, i64* %RDI.i90, align 8
  %755 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %756 = fpext float %755 to double
  store double %756, double* %641, align 1
  store i8 1, i8* %AL.i503, align 1
  %757 = add i64 %751, -624812
  %758 = add i64 %751, 33
  %759 = load i64, i64* %6, align 8
  %760 = add i64 %759, -8
  %761 = inttoptr i64 %760 to i64*
  store i64 %758, i64* %761, align 8
  store i64 %760, i64* %6, align 8
  store i64 %757, i64* %3, align 8
  %762 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %748)
  %763 = load i64, i64* %RBP.i, align 8
  %764 = add i64 %763, -305
  %765 = load i64, i64* %3, align 8
  %766 = add i64 %765, 7
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %764 to i8*
  store i8 87, i8* %767, align 1
  %768 = load i64, i64* %RBP.i, align 8
  %769 = add i64 %768, -356
  %770 = load i32, i32* %EAX.i592, align 4
  %771 = load i64, i64* %3, align 8
  %772 = add i64 %771, 6
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %769 to i32*
  store i32 %770, i32* %773, align 4
  %774 = load i64, i64* %3, align 8
  %775 = add i64 %774, 42
  store i64 %775, i64* %3, align 8
  br label %block_.L_499ad4

block_.L_499aaf:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  store i64 ptrtoint (%G__0x587947_type* @G__0x587947 to i64), i64* %RSI.i122, align 8
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -304
  store i64 %777, i64* %RDI.i90, align 8
  store i8 0, i8* %AL.i503, align 1
  %778 = add i64 %751, -624863
  %779 = add i64 %751, 24
  %780 = load i64, i64* %6, align 8
  %781 = add i64 %780, -8
  %782 = inttoptr i64 %781 to i64*
  store i64 %779, i64* %782, align 8
  store i64 %781, i64* %6, align 8
  store i64 %778, i64* %3, align 8
  %783 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %748)
  %784 = load i64, i64* %RBP.i, align 8
  %785 = add i64 %784, -305
  %786 = load i64, i64* %3, align 8
  %787 = add i64 %786, 7
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %785 to i8*
  store i8 48, i8* %788, align 1
  %789 = load i64, i64* %RBP.i, align 8
  %790 = add i64 %789, -360
  %791 = load i32, i32* %EAX.i592, align 4
  %792 = load i64, i64* %3, align 8
  %793 = add i64 %792, 6
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %790 to i32*
  store i32 %791, i32* %794, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_499ad4

block_.L_499ad4:                                  ; preds = %block_.L_499aaf, %block_499a7c
  %795 = phi i64 [ %.pre27, %block_.L_499aaf ], [ %775, %block_499a7c ]
  %MEMORY.5 = phi %struct.Memory* [ %783, %block_.L_499aaf ], [ %762, %block_499a7c ]
  %796 = add i64 %795, 5
  store i64 %796, i64* %3, align 8
  br label %block_.L_499ad9

block_.L_499ad9:                                  ; preds = %block_.L_499ad4, %block_499a22
  %storemerge = phi i64 [ %715, %block_499a22 ], [ %796, %block_.L_499ad4 ]
  %MEMORY.6 = phi %struct.Memory* [ %702, %block_499a22 ], [ %MEMORY.5, %block_.L_499ad4 ]
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -304
  store i64 %798, i64* %RDI.i90, align 8
  %799 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %799, i64* %RSI.i122, align 8
  %800 = add i64 %storemerge, -625273
  %801 = add i64 %storemerge, 20
  %802 = load i64, i64* %6, align 8
  %803 = add i64 %802, -8
  %804 = inttoptr i64 %803 to i64*
  store i64 %801, i64* %804, align 8
  store i64 %803, i64* %6, align 8
  store i64 %800, i64* %3, align 8
  %805 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.6)
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -336
  %808 = load i64, i64* %3, align 8
  store i64 %807, i64* %RDI.i90, align 8
  %809 = add i64 %806, -304
  store i64 %809, i64* %RSI.i122, align 8
  %810 = add i64 %806, -364
  %811 = load i32, i32* %EAX.i592, align 4
  %812 = add i64 %808, 20
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %810 to i32*
  store i32 %811, i32* %813, align 4
  %814 = load i64, i64* %3, align 8
  %815 = add i64 %814, -611345
  %816 = add i64 %814, 5
  %817 = load i64, i64* %6, align 8
  %818 = add i64 %817, -8
  %819 = inttoptr i64 %818 to i64*
  store i64 %816, i64* %819, align 8
  store i64 %818, i64* %6, align 8
  store i64 %815, i64* %3, align 8
  %call2_499b01 = tail call %struct.Memory* @sub_4046f0.sgftreeAddComment(%struct.State* nonnull %0, i64 %815, %struct.Memory* %805)
  %820 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579c74_type* @G__0x579c74 to i64), i64* %RSI.i122, align 8
  %821 = load i64, i64* %RBP.i, align 8
  %822 = add i64 %821, -48
  store i64 %822, i64* %RDX.i134, align 8
  %823 = add i64 %821, -8
  %824 = add i64 %820, 18
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i64*
  %826 = load i64, i64* %825, align 8
  store i64 %826, i64* %RDI.i90, align 8
  %827 = add i64 %820, 21
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i64*
  %829 = load i64, i64* %828, align 8
  store i64 %829, i64* %RDI.i90, align 8
  %830 = add i64 %820, -621654
  %831 = add i64 %820, 26
  %832 = load i64, i64* %6, align 8
  %833 = add i64 %832, -8
  %834 = inttoptr i64 %833 to i64*
  store i64 %831, i64* %834, align 8
  store i64 %833, i64* %6, align 8
  store i64 %830, i64* %3, align 8
  %call2_499b1b = tail call %struct.Memory* @sub_401eb0.sgfGetCharProperty(%struct.State* nonnull %0, i64 %830, %struct.Memory* %call2_499b01)
  %835 = load i32, i32* %EAX.i592, align 4
  %836 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %837 = and i32 %835, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837)
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %842 = icmp eq i32 %835, 0
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %30, align 1
  %844 = lshr i32 %835, 31
  %845 = trunc i32 %844 to i8
  store i8 %845, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v47 = select i1 %842, i64 417, i64 9
  %846 = add i64 %836, %.v47
  store i64 %846, i64* %3, align 8
  br i1 %842, label %block_.L_499cc1, label %block_499b29

block_499b29:                                     ; preds = %block_.L_499ad9
  store i64 ptrtoint (%G__0x58794d_type* @G__0x58794d to i64), i64* %RSI.i122, align 8
  %847 = load i64, i64* %RBP.i, align 8
  %848 = add i64 %847, -49
  store i64 %848, i64* %RDX.i134, align 8
  %849 = add i64 %847, -40
  store i64 %849, i64* %RCX.i465, align 8
  %850 = add i64 %847, -48
  %851 = add i64 %846, 22
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i64*
  %853 = load i64, i64* %852, align 8
  store i64 %853, i64* %RDI.i90, align 8
  store i8 0, i8* %AL.i503, align 1
  %854 = add i64 %846, -625129
  %855 = add i64 %846, 29
  %856 = load i64, i64* %6, align 8
  %857 = add i64 %856, -8
  %858 = inttoptr i64 %857 to i64*
  store i64 %855, i64* %858, align 8
  store i64 %857, i64* %6, align 8
  store i64 %854, i64* %3, align 8
  %859 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %call2_499b1b)
  %860 = load i32, i32* %EAX.i592, align 4
  %861 = load i64, i64* %3, align 8
  %862 = add i32 %860, -2
  %863 = icmp ult i32 %860, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %14, align 1
  %865 = and i32 %862, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %21, align 1
  %870 = xor i32 %862, %860
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %27, align 1
  %874 = icmp eq i32 %862, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %30, align 1
  %876 = lshr i32 %862, 31
  %877 = trunc i32 %876 to i8
  store i8 %877, i8* %33, align 1
  %878 = lshr i32 %860, 31
  %879 = xor i32 %876, %878
  %880 = add nuw nsw i32 %879, %878
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %39, align 1
  %.v48 = select i1 %874, i64 9, i64 202
  %883 = add i64 %861, %.v48
  store i64 %883, i64* %3, align 8
  br i1 %874, label %block_499b4f, label %block_.L_499c10

block_499b4f:                                     ; preds = %block_499b29
  store i64 ptrtoint (%G__0x587953_type* @G__0x587953 to i64), i64* %RSI.i122, align 8
  %884 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %884, i64* %RDI.i90, align 8
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -40
  %887 = add i64 %883, 23
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to float*
  %889 = load float, float* %888, align 4
  %890 = fpext float %889 to double
  store double %890, double* %641, align 1
  store i8 1, i8* %AL.i503, align 1
  %891 = add i64 %883, -625279
  %892 = add i64 %883, 30
  %893 = load i64, i64* %6, align 8
  %894 = add i64 %893, -8
  %895 = inttoptr i64 %894 to i64*
  store i64 %892, i64* %895, align 8
  store i64 %894, i64* %6, align 8
  store i64 %891, i64* %3, align 8
  %896 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %859)
  %897 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58796c_type* @G__0x58796c to i64), i64* %RDI.i90, align 8
  %898 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %898, i64* %RSI.i122, align 8
  %899 = load i64, i64* %RBP.i, align 8
  %900 = add i64 %899, -368
  %901 = load i32, i32* %EAX.i592, align 4
  %902 = add i64 %897, 24
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %900 to i32*
  store i32 %901, i32* %903, align 4
  %904 = load i64, i64* %3, align 8
  %905 = add i64 %904, -625445
  %906 = add i64 %904, 5
  %907 = load i64, i64* %6, align 8
  %908 = add i64 %907, -8
  %909 = inttoptr i64 %908 to i64*
  store i64 %906, i64* %909, align 8
  store i64 %908, i64* %6, align 8
  store i64 %905, i64* %3, align 8
  %910 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %896)
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -40
  %913 = load i64, i64* %3, align 8
  %914 = add i64 %913, 5
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %912 to float*
  %916 = load float, float* %915, align 4
  %917 = fpext float %916 to double
  store double %917, double* %641, align 1
  %918 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %919 = fpext float %918 to double
  store double %919, double* %639, align 1
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %921 = bitcast %union.VectorReg* %920 to i8*
  %922 = add i64 %913, add (i64 ptrtoint (%G_0xe0041__rip__type* @G_0xe0041__rip_ to i64), i64 14)
  %923 = add i64 %913, 21
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = add i64 %913, add (i64 ptrtoint (%G_0xe0041__rip__type* @G_0xe0041__rip_ to i64), i64 18)
  %927 = inttoptr i64 %926 to i32*
  %928 = load i32, i32* %927, align 4
  %929 = add i64 %913, add (i64 ptrtoint (%G_0xe0041__rip__type* @G_0xe0041__rip_ to i64), i64 22)
  %930 = inttoptr i64 %929 to i32*
  %931 = load i32, i32* %930, align 4
  %932 = add i64 %913, add (i64 ptrtoint (%G_0xe0041__rip__type* @G_0xe0041__rip_ to i64), i64 26)
  %933 = inttoptr i64 %932 to i32*
  %934 = load i32, i32* %933, align 4
  %935 = bitcast %union.VectorReg* %920 to i32*
  store i32 %925, i32* %935, align 1
  %936 = getelementptr inbounds i8, i8* %921, i64 4
  %937 = bitcast i8* %936 to i32*
  store i32 %928, i32* %937, align 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %939 = bitcast i64* %938 to i32*
  store i32 %931, i32* %939, align 1
  %940 = getelementptr inbounds i8, i8* %921, i64 12
  %941 = bitcast i8* %940 to i32*
  store i32 %934, i32* %941, align 1
  %942 = bitcast double %919 to i64
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %944 = load i64, i64* %943, align 1
  %945 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %920, i64 0, i32 0, i32 0, i32 0, i64 0
  %946 = load i64, i64* %945, align 1
  %947 = load i64, i64* %938, align 1
  %948 = and i64 %946, %942
  %949 = and i64 %947, %944
  %950 = trunc i64 %948 to i32
  %951 = lshr i64 %948, 32
  %952 = trunc i64 %951 to i32
  %953 = bitcast %union.VectorReg* %636 to i32*
  store i32 %950, i32* %953, align 1
  %954 = getelementptr inbounds i8, i8* %637, i64 4
  %955 = bitcast i8* %954 to i32*
  store i32 %952, i32* %955, align 1
  %956 = trunc i64 %949 to i32
  %957 = bitcast i64* %943 to i32*
  store i32 %956, i32* %957, align 1
  %958 = lshr i64 %949, 32
  %959 = trunc i64 %958 to i32
  %960 = getelementptr inbounds i8, i8* %637, i64 12
  %961 = bitcast i8* %960 to i32*
  store i32 %959, i32* %961, align 1
  %962 = add i64 %913, 29
  store i64 %962, i64* %3, align 8
  %963 = load double, double* %639, align 1
  %964 = fcmp uno double %917, %963
  br i1 %964, label %965, label %975

; <label>:965:                                    ; preds = %block_499b4f
  %966 = fadd double %917, %963
  %967 = bitcast double %966 to i64
  %968 = and i64 %967, 9221120237041090560
  %969 = icmp eq i64 %968, 9218868437227405312
  %970 = and i64 %967, 2251799813685247
  %971 = icmp ne i64 %970, 0
  %972 = and i1 %969, %971
  br i1 %972, label %973, label %981

; <label>:973:                                    ; preds = %965
  %974 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %962, %struct.Memory* %910)
  %.pre28 = load i64, i64* %RBP.i, align 8
  %.pre29 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:975:                                    ; preds = %block_499b4f
  %976 = fcmp ogt double %917, %963
  br i1 %976, label %981, label %977

; <label>:977:                                    ; preds = %975
  %978 = fcmp olt double %917, %963
  br i1 %978, label %981, label %979

; <label>:979:                                    ; preds = %977
  %980 = fcmp oeq double %917, %963
  br i1 %980, label %981, label %985

; <label>:981:                                    ; preds = %979, %977, %975, %965
  %982 = phi i8 [ 0, %975 ], [ 0, %977 ], [ 1, %979 ], [ 1, %965 ]
  %983 = phi i8 [ 0, %975 ], [ 0, %977 ], [ 0, %979 ], [ 1, %965 ]
  %984 = phi i8 [ 0, %975 ], [ 1, %977 ], [ 0, %979 ], [ 1, %965 ]
  store i8 %982, i8* %30, align 1
  store i8 %983, i8* %21, align 1
  store i8 %984, i8* %14, align 1
  br label %985

; <label>:985:                                    ; preds = %981, %979
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %985, %973
  %986 = phi i64 [ %.pre29, %973 ], [ %962, %985 ]
  %987 = phi i64 [ %.pre28, %973 ], [ %911, %985 ]
  %988 = phi %struct.Memory* [ %974, %973 ], [ %910, %985 ]
  %989 = add i64 %987, -372
  %990 = load i32, i32* %EAX.i592, align 4
  %991 = add i64 %986, 6
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %989 to i32*
  store i32 %990, i32* %992, align 4
  %993 = load i64, i64* %3, align 8
  %994 = add i64 %993, 65
  %995 = add i64 %993, 6
  %996 = load i8, i8* %30, align 1
  %997 = icmp eq i8 %996, 0
  %998 = select i1 %997, i64 %994, i64 %995
  store i64 %998, i64* %3, align 8
  br i1 %997, label %block_.L_499bee, label %block_499bb3

block_499bb3:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %999 = load i8, i8* %21, align 1
  %1000 = icmp ne i8 %999, 0
  %.v56 = select i1 %1000, i64 59, i64 6
  %1001 = add i64 %998, %.v56
  store i64 %1001, i64* %3, align 8
  %cmpBr_499bb3 = icmp eq i8 %999, 1
  br i1 %cmpBr_499bb3, label %block_.L_499bee, label %block_499bb9

block_499bb9:                                     ; preds = %block_499bb3
  %1002 = load i64, i64* %RBP.i, align 8
  %1003 = add i64 %1002, -305
  %1004 = add i64 %1001, 7
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i8*
  %1006 = load i8, i8* %1005, align 1
  %1007 = sext i8 %1006 to i64
  %1008 = and i64 %1007, 4294967295
  store i64 %1008, i64* %RAX.i56, align 8
  %1009 = add i64 %1002, -49
  %1010 = add i64 %1001, 11
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i8*
  %1012 = load i8, i8* %1011, align 1
  %1013 = sext i8 %1012 to i64
  %1014 = and i64 %1013, 4294967295
  store i64 %1014, i64* %RCX.i465, align 8
  %1015 = sext i8 %1006 to i32
  %1016 = sext i8 %1012 to i32
  %1017 = sub nsw i32 %1015, %1016
  %1018 = icmp ult i8 %1006, %1012
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %14, align 1
  %1020 = and i32 %1017, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %21, align 1
  %1025 = xor i8 %1012, %1006
  %1026 = zext i8 %1025 to i32
  %1027 = xor i32 %1026, %1017
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  store i8 %1030, i8* %27, align 1
  %1031 = icmp eq i32 %1017, 0
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %30, align 1
  %1033 = lshr i32 %1017, 31
  %1034 = trunc i32 %1033 to i8
  store i8 %1034, i8* %33, align 1
  %1035 = lshr i32 %1015, 31
  %1036 = lshr i32 %1016, 31
  %1037 = xor i32 %1036, %1035
  %1038 = xor i32 %1033, %1035
  %1039 = add nuw nsw i32 %1038, %1037
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %39, align 1
  %.v50 = select i1 %1031, i64 19, i64 53
  %1042 = add i64 %1001, %.v50
  store i64 %1042, i64* %3, align 8
  br i1 %1031, label %block_499bcc, label %block_.L_499bee

block_499bcc:                                     ; preds = %block_499bb9
  store i64 ptrtoint (%G__0x587994_type* @G__0x587994 to i64), i64* %RDI.i90, align 8
  %1043 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %1043, i64* %RSI.i122, align 8
  %1044 = add i64 %1042, -625516
  %1045 = add i64 %1042, 23
  %1046 = load i64, i64* %6, align 8
  %1047 = add i64 %1046, -8
  %1048 = inttoptr i64 %1047 to i64*
  store i64 %1045, i64* %1048, align 8
  store i64 %1047, i64* %6, align 8
  store i64 %1044, i64* %3, align 8
  %1049 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %988)
  %1050 = load i64, i64* %RBP.i, align 8
  %1051 = add i64 %1050, -376
  %1052 = load i32, i32* %EAX.i592, align 4
  %1053 = load i64, i64* %3, align 8
  %1054 = add i64 %1053, 6
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1051 to i32*
  store i32 %1052, i32* %1055, align 4
  %1056 = load i64, i64* %3, align 8
  %1057 = add i64 %1056, 34
  store i64 %1057, i64* %3, align 8
  br label %block_.L_499c0b

block_.L_499bee:                                  ; preds = %block_499bb9, %block_499bb3, %routine_ucomisd__xmm1___xmm0.exit
  %1058 = phi i64 [ %1042, %block_499bb9 ], [ %1001, %block_499bb3 ], [ %994, %routine_ucomisd__xmm1___xmm0.exit ]
  store i64 ptrtoint (%G__0x58799f_type* @G__0x58799f to i64), i64* %RDI.i90, align 8
  %1059 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %1059, i64* %RSI.i122, align 8
  %1060 = add i64 %1058, -625550
  %1061 = add i64 %1058, 23
  %1062 = load i64, i64* %6, align 8
  %1063 = add i64 %1062, -8
  %1064 = inttoptr i64 %1063 to i64*
  store i64 %1061, i64* %1064, align 8
  store i64 %1063, i64* %6, align 8
  store i64 %1060, i64* %3, align 8
  %1065 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %988)
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -380
  %1068 = load i32, i32* %EAX.i592, align 4
  %1069 = load i64, i64* %3, align 8
  %1070 = add i64 %1069, 6
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1067 to i32*
  store i32 %1068, i32* %1071, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_499c0b

block_.L_499c0b:                                  ; preds = %block_.L_499bee, %block_499bcc
  %1072 = phi i64 [ %.pre30, %block_.L_499bee ], [ %1057, %block_499bcc ]
  %MEMORY.8 = phi %struct.Memory* [ %1065, %block_.L_499bee ], [ %1049, %block_499bcc ]
  %1073 = add i64 %1072, 177
  br label %block_.L_499cbc

block_.L_499c10:                                  ; preds = %block_499b29
  %1074 = load i64, i64* %RBP.i, align 8
  %1075 = add i64 %1074, -48
  %1076 = add i64 %883, 4
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i64*
  %1078 = load i64, i64* %1077, align 8
  store i64 %1078, i64* %RAX.i56, align 8
  %1079 = add i64 %1078, 2
  %1080 = add i64 %883, 8
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i8*
  %1082 = load i8, i8* %1081, align 1
  %1083 = sext i8 %1082 to i64
  %1084 = and i64 %1083, 4294967295
  store i64 %1084, i64* %RCX.i465, align 8
  %1085 = sext i8 %1082 to i32
  %1086 = add nsw i32 %1085, -82
  %1087 = icmp ult i8 %1082, 82
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %14, align 1
  %1089 = and i32 %1086, 255
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %21, align 1
  %1094 = xor i32 %1085, 16
  %1095 = xor i32 %1094, %1086
  %1096 = lshr i32 %1095, 4
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %27, align 1
  %1099 = icmp eq i32 %1086, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %30, align 1
  %1101 = lshr i32 %1086, 31
  %1102 = trunc i32 %1101 to i8
  store i8 %1102, i8* %33, align 1
  %1103 = lshr i32 %1085, 31
  %1104 = xor i32 %1101, %1103
  %1105 = add nuw nsw i32 %1104, %1103
  %1106 = icmp eq i32 %1105, 2
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %39, align 1
  %.v49 = select i1 %1099, i64 17, i64 167
  %1108 = add i64 %883, %.v49
  store i64 %1108, i64* %3, align 8
  br i1 %1099, label %block_499c21, label %block_.L_499cb7

block_499c21:                                     ; preds = %block_.L_499c10
  store i64 ptrtoint (%G__0x5879aa_type* @G__0x5879aa to i64), i64* %RSI.i122, align 8
  %1109 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %1109, i64* %RDI.i90, align 8
  store i8 0, i8* %AL.i503, align 1
  %1110 = add i64 %1108, -625489
  %1111 = add i64 %1108, 25
  %1112 = load i64, i64* %6, align 8
  %1113 = add i64 %1112, -8
  %1114 = inttoptr i64 %1113 to i64*
  store i64 %1111, i64* %1114, align 8
  store i64 %1113, i64* %6, align 8
  store i64 %1110, i64* %3, align 8
  %1115 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %859)
  %1116 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58796c_type* @G__0x58796c to i64), i64* %RDI.i90, align 8
  %1117 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %1117, i64* %RSI.i122, align 8
  %1118 = load i64, i64* %RBP.i, align 8
  %1119 = add i64 %1118, -384
  %1120 = load i32, i32* %EAX.i592, align 4
  %1121 = add i64 %1116, 24
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1119 to i32*
  store i32 %1120, i32* %1122, align 4
  %1123 = load i64, i64* %3, align 8
  %1124 = add i64 %1123, -625650
  %1125 = add i64 %1123, 5
  %1126 = load i64, i64* %6, align 8
  %1127 = add i64 %1126, -8
  %1128 = inttoptr i64 %1127 to i64*
  store i64 %1125, i64* %1128, align 8
  store i64 %1127, i64* %6, align 8
  store i64 %1124, i64* %3, align 8
  %1129 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %1115)
  %1130 = load i64, i64* %RBP.i, align 8
  %1131 = add i64 %1130, -48
  %1132 = load i64, i64* %3, align 8
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1131 to i64*
  %1135 = load i64, i64* %1134, align 8
  store i64 %1135, i64* %RSI.i122, align 8
  %1136 = add i64 %1132, 7
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i8*
  %1138 = load i8, i8* %1137, align 1
  %1139 = sext i8 %1138 to i64
  %1140 = and i64 %1139, 4294967295
  store i64 %1140, i64* %RCX.i465, align 8
  %1141 = add i64 %1130, -305
  %1142 = add i64 %1132, 14
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i8*
  %1144 = load i8, i8* %1143, align 1
  %1145 = sext i8 %1144 to i64
  %1146 = and i64 %1145, 4294967295
  store i64 %1146, i64* %RDX.i134, align 8
  %1147 = sext i8 %1138 to i32
  %1148 = sext i8 %1144 to i32
  %1149 = sub nsw i32 %1147, %1148
  %1150 = icmp ult i8 %1138, %1144
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %14, align 1
  %1152 = and i32 %1149, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %21, align 1
  %1157 = xor i8 %1144, %1138
  %1158 = zext i8 %1157 to i32
  %1159 = xor i32 %1158, %1149
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  store i8 %1162, i8* %27, align 1
  %1163 = icmp eq i32 %1149, 0
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %30, align 1
  %1165 = lshr i32 %1149, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %33, align 1
  %1167 = lshr i32 %1147, 31
  %1168 = lshr i32 %1148, 31
  %1169 = xor i32 %1168, %1167
  %1170 = xor i32 %1165, %1167
  %1171 = add nuw nsw i32 %1170, %1169
  %1172 = icmp eq i32 %1171, 2
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %39, align 1
  %1174 = add i64 %1130, -388
  %1175 = load i32, i32* %EAX.i592, align 4
  %1176 = add i64 %1132, 22
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1174 to i32*
  store i32 %1175, i32* %1177, align 4
  %1178 = load i64, i64* %3, align 8
  %1179 = load i8, i8* %30, align 1
  %1180 = icmp eq i8 %1179, 0
  %.v55 = select i1 %1180, i64 40, i64 6
  %1181 = add i64 %1178, %.v55
  %1182 = add i64 %1181, 10
  store i64 %1182, i64* %3, align 8
  br i1 %1180, label %block_.L_499c95, label %block_499c73

block_499c73:                                     ; preds = %block_499c21
  store i64 ptrtoint (%G__0x587994_type* @G__0x587994 to i64), i64* %RDI.i90, align 8
  %1183 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %1183, i64* %RSI.i122, align 8
  %1184 = add i64 %1181, -625683
  %1185 = add i64 %1181, 23
  %1186 = load i64, i64* %6, align 8
  %1187 = add i64 %1186, -8
  %1188 = inttoptr i64 %1187 to i64*
  store i64 %1185, i64* %1188, align 8
  store i64 %1187, i64* %6, align 8
  store i64 %1184, i64* %3, align 8
  %1189 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %1129)
  %1190 = load i64, i64* %RBP.i, align 8
  %1191 = add i64 %1190, -392
  %1192 = load i32, i32* %EAX.i592, align 4
  %1193 = load i64, i64* %3, align 8
  %1194 = add i64 %1193, 6
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1191 to i32*
  store i32 %1192, i32* %1195, align 4
  %1196 = load i64, i64* %3, align 8
  %1197 = add i64 %1196, 34
  store i64 %1197, i64* %3, align 8
  br label %block_.L_499cb2

block_.L_499c95:                                  ; preds = %block_499c21
  store i64 ptrtoint (%G__0x58799f_type* @G__0x58799f to i64), i64* %RDI.i90, align 8
  %1198 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %1198, i64* %RSI.i122, align 8
  %1199 = add i64 %1181, -625717
  %1200 = add i64 %1181, 23
  %1201 = load i64, i64* %6, align 8
  %1202 = add i64 %1201, -8
  %1203 = inttoptr i64 %1202 to i64*
  store i64 %1200, i64* %1203, align 8
  store i64 %1202, i64* %6, align 8
  store i64 %1199, i64* %3, align 8
  %1204 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %1129)
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -396
  %1207 = load i32, i32* %EAX.i592, align 4
  %1208 = load i64, i64* %3, align 8
  %1209 = add i64 %1208, 6
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1206 to i32*
  store i32 %1207, i32* %1210, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_499cb2

block_.L_499cb2:                                  ; preds = %block_.L_499c95, %block_499c73
  %1211 = phi i64 [ %.pre31, %block_.L_499c95 ], [ %1197, %block_499c73 ]
  %MEMORY.9 = phi %struct.Memory* [ %1204, %block_.L_499c95 ], [ %1189, %block_499c73 ]
  %1212 = add i64 %1211, 5
  store i64 %1212, i64* %3, align 8
  br label %block_.L_499cb7

block_.L_499cb7:                                  ; preds = %block_.L_499c10, %block_.L_499cb2
  %1213 = phi i64 [ %1108, %block_.L_499c10 ], [ %1212, %block_.L_499cb2 ]
  %MEMORY.10 = phi %struct.Memory* [ %859, %block_.L_499c10 ], [ %MEMORY.9, %block_.L_499cb2 ]
  %1214 = add i64 %1213, 5
  store i64 %1214, i64* %3, align 8
  br label %block_.L_499cbc

block_.L_499cbc:                                  ; preds = %block_.L_499cb7, %block_.L_499c0b
  %storemerge18 = phi i64 [ %1073, %block_.L_499c0b ], [ %1214, %block_.L_499cb7 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.8, %block_.L_499c0b ], [ %MEMORY.10, %block_.L_499cb7 ]
  %1215 = add i64 %storemerge18, 5
  store i64 %1215, i64* %3, align 8
  br label %block_.L_499cc1

block_.L_499cc1:                                  ; preds = %block_.L_499cbc, %block_.L_499ad9
  %1216 = phi i64 [ %846, %block_.L_499ad9 ], [ %1215, %block_.L_499cbc ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_499b1b, %block_.L_499ad9 ], [ %MEMORY.11, %block_.L_499cbc ]
  store i64 1, i64* %RSI.i122, align 8
  %1217 = load i64, i64* %RBP.i, align 8
  %1218 = add i64 %1217, -336
  %1219 = add i64 %1216, 12
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i64*
  %1221 = load i64, i64* %1220, align 8
  store i64 %1221, i64* %RDI.i90, align 8
  %1222 = load i32, i32* bitcast (%G_0xab0f14_type* @G_0xab0f14 to i32*), align 8
  store i32 %1222, i32* %83, align 1
  store float 0.000000e+00, float* %85, align 1
  store float 0.000000e+00, float* %87, align 1
  store float 0.000000e+00, float* %89, align 1
  %1223 = add i64 %1216, -619025
  %1224 = add i64 %1216, 26
  %1225 = load i64, i64* %6, align 8
  %1226 = add i64 %1225, -8
  %1227 = inttoptr i64 %1226 to i64*
  store i64 %1224, i64* %1227, align 8
  store i64 %1226, i64* %6, align 8
  store i64 %1223, i64* %3, align 8
  %call2_499cd6 = tail call %struct.Memory* @sub_402ab0.sgfWriteResult(%struct.State* nonnull %0, i64 %1223, %struct.Memory* %MEMORY.12)
  %1228 = load i64, i64* %RBP.i, align 8
  %1229 = add i64 %1228, -336
  %1230 = load i64, i64* %3, align 8
  store i64 %1229, i64* %RDI.i90, align 8
  %1231 = add i64 %1230, -160491
  %1232 = add i64 %1230, 12
  %1233 = load i64, i64* %6, align 8
  %1234 = add i64 %1233, -8
  %1235 = inttoptr i64 %1234 to i64*
  store i64 %1232, i64* %1235, align 8
  store i64 %1234, i64* %6, align 8
  store i64 %1231, i64* %3, align 8
  %call2_499ce2 = tail call %struct.Memory* @sub_4729f0.sgffile_output(%struct.State* nonnull %0, i64 %1231, %struct.Memory* %call2_499cd6)
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_499ce7

block_.L_499ce7:                                  ; preds = %block_.L_499cc1, %block_49999b
  %1236 = phi i64 [ %578, %block_49999b ], [ %.pre32, %block_.L_499cc1 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_49994c, %block_49999b ], [ %call2_499ce2, %block_.L_499cc1 ]
  %1237 = add i64 %1236, 5
  store i64 %1237, i64* %3, align 8
  br label %block_.L_499cec

block_.L_499cec:                                  ; preds = %block_499824, %block_.L_499ce7
  %1238 = phi i64 [ %1237, %block_.L_499ce7 ], [ %169, %block_499824 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.13, %block_.L_499ce7 ], [ %157, %block_499824 ]
  store i32 0, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  %1239 = load i64, i64* %RBP.i, align 8
  %1240 = add i64 %1239, -24
  %1241 = add i64 %1238, 15
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i64*
  %1243 = load i64, i64* %1242, align 8
  store i64 %1243, i64* %RDI.i90, align 8
  store i64 and (i64 ptrtoint (%G__0x5858b6_type* @G__0x5858b6 to i64), i64 4294967295), i64* %RAX.i56, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x5858b6_type* @G__0x5858b6 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i122, align 8
  %1244 = add i64 %1238, -625708
  %1245 = add i64 %1238, 27
  %1246 = load i64, i64* %6, align 8
  %1247 = add i64 %1246, -8
  %1248 = inttoptr i64 %1247 to i64*
  store i64 %1245, i64* %1248, align 8
  store i64 %1247, i64* %6, align 8
  store i64 %1244, i64* %3, align 8
  %1249 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %MEMORY.14)
  %1250 = load i32, i32* %EAX.i592, align 4
  %1251 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1252 = and i32 %1250, 255
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1257 = icmp eq i32 %1250, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %30, align 1
  %1259 = lshr i32 %1250, 31
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v43 = select i1 %1257, i64 221, i64 9
  %1261 = add i64 %1251, %.v43
  store i64 %1261, i64* %3, align 8
  br i1 %1257, label %block_.L_499de4, label %block_499d10

block_499d10:                                     ; preds = %block_.L_499cec
  store i64 99, i64* %RSI.i122, align 8
  %1262 = load i64, i64* %RBP.i, align 8
  %1263 = add i64 %1262, -312
  %1264 = add i64 %1261, 11
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RDI.i90, align 8
  %1268 = add i64 %1261, -475312
  %1269 = add i64 %1261, 16
  %1270 = load i64, i64* %6, align 8
  %1271 = add i64 %1270, -8
  %1272 = inttoptr i64 %1271 to i64*
  store i64 %1269, i64* %1272, align 8
  store i64 %1271, i64* %6, align 8
  store i64 %1268, i64* %3, align 8
  %call2_499d1b = tail call %struct.Memory* @sub_425c60.examine_position(%struct.State* nonnull %0, i64 %1268, %struct.Memory* %1249)
  %1273 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RAX.i56, align 8
  store i64 0, i64* %RDI.i90, align 8
  store i64 0, i64* %RSI.i122, align 8
  %1274 = add i64 %1273, -179296
  %1275 = add i64 %1273, 15
  %1276 = load i64, i64* %6, align 8
  %1277 = add i64 %1276, -8
  %1278 = inttoptr i64 %1277 to i64*
  store i64 %1275, i64* %1278, align 8
  store i64 %1277, i64* %6, align 8
  store i64 %1274, i64* %3, align 8
  %call2_499d2a = tail call %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* nonnull %0, i64 %1274, %struct.Memory* %call2_499d1b)
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1280 = load i64, i64* %3, align 8
  %1281 = bitcast %union.VectorReg* %1279 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1281, align 1
  store i64 ptrtoint (%G__0x579c45_type* @G__0x579c45 to i64), i64* %RAX.i56, align 8
  store i64 ptrtoint (%G__0x57e7b5_type* @G__0x57e7b5 to i64), i64* %RSI.i122, align 8
  %1282 = bitcast [32 x %union.VectorReg]* %80 to <2 x float>*
  %1283 = load <2 x float>, <2 x float>* %1282, align 1
  %1284 = extractelement <2 x float> %1283, i32 0
  store float %1284, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %1285 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %1285, i64* %RDI.i90, align 8
  %1286 = add i64 %1280, 48
  store i64 %1286, i64* %3, align 8
  %1287 = bitcast %union.VectorReg* %1279 to <2 x float>*
  %1288 = load <2 x float>, <2 x float>* %1287, align 1
  %1289 = extractelement <2 x float> %1288, i32 0
  %1290 = fcmp uno float %1289, %1284
  br i1 %1290, label %1291, label %1301

; <label>:1291:                                   ; preds = %block_499d10
  %1292 = fadd float %1289, %1284
  %1293 = bitcast float %1292 to i32
  %1294 = and i32 %1293, 2143289344
  %1295 = icmp eq i32 %1294, 2139095040
  %1296 = and i32 %1293, 4194303
  %1297 = icmp ne i32 %1296, 0
  %1298 = and i1 %1295, %1297
  br i1 %1298, label %1299, label %1307

; <label>:1299:                                   ; preds = %1291
  %1300 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1286, %struct.Memory* %call2_499d2a)
  %.pre33 = load i64, i64* %RSI.i122, align 8
  %.pre34 = load i64, i64* %3, align 8
  %.pre35 = load i64, i64* %RAX.i56, align 8
  %.pre36 = load <2 x float>, <2 x float>* %1287, align 1
  %.pre37 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  br label %routine_ucomiss_0xab0f14___xmm1.exit54

; <label>:1301:                                   ; preds = %block_499d10
  %1302 = fcmp ogt float %1289, %1284
  br i1 %1302, label %1307, label %1303

; <label>:1303:                                   ; preds = %1301
  %1304 = fcmp olt float %1289, %1284
  br i1 %1304, label %1307, label %1305

; <label>:1305:                                   ; preds = %1303
  %1306 = fcmp oeq float %1289, %1284
  br i1 %1306, label %1307, label %1311

; <label>:1307:                                   ; preds = %1305, %1303, %1301, %1291
  %1308 = phi i8 [ 0, %1301 ], [ 0, %1303 ], [ 1, %1305 ], [ 1, %1291 ]
  %1309 = phi i8 [ 0, %1301 ], [ 0, %1303 ], [ 0, %1305 ], [ 1, %1291 ]
  %1310 = phi i8 [ 0, %1301 ], [ 1, %1303 ], [ 0, %1305 ], [ 1, %1291 ]
  store i8 %1308, i8* %30, align 1
  store i8 %1309, i8* %21, align 1
  store i8 %1310, i8* %14, align 1
  br label %1311

; <label>:1311:                                   ; preds = %1307, %1305
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss_0xab0f14___xmm1.exit54

routine_ucomiss_0xab0f14___xmm1.exit54:           ; preds = %1311, %1299
  %1312 = phi float [ %.pre37, %1299 ], [ %1284, %1311 ]
  %1313 = phi <2 x float> [ %.pre36, %1299 ], [ %1288, %1311 ]
  %1314 = phi i64 [ %.pre35, %1299 ], [ ptrtoint (%G__0x579c45_type* @G__0x579c45 to i64), %1311 ]
  %1315 = phi i64 [ %.pre34, %1299 ], [ %1286, %1311 ]
  %1316 = phi i64 [ %.pre33, %1299 ], [ ptrtoint (%G__0x57e7b5_type* @G__0x57e7b5 to i64), %1311 ]
  %1317 = phi %struct.Memory* [ %1300, %1299 ], [ %call2_499d2a, %1311 ]
  %1318 = load i8, i8* %14, align 1
  %1319 = load i8, i8* %30, align 1
  %1320 = or i8 %1319, %1318
  %1321 = icmp eq i8 %1320, 0
  %1322 = select i1 %1321, i64 %1316, i64 %1314
  store i64 %1322, i64* %RAX.i56, align 8
  %1323 = add i64 %1315, 12
  store i64 %1323, i64* %3, align 8
  %1324 = extractelement <2 x float> %1313, i32 0
  %1325 = fcmp uno float %1324, %1312
  br i1 %1325, label %1326, label %1336

; <label>:1326:                                   ; preds = %routine_ucomiss_0xab0f14___xmm1.exit54
  %1327 = fadd float %1324, %1312
  %1328 = bitcast float %1327 to i32
  %1329 = and i32 %1328, 2143289344
  %1330 = icmp eq i32 %1329, 2139095040
  %1331 = and i32 %1328, 4194303
  %1332 = icmp ne i32 %1331, 0
  %1333 = and i1 %1330, %1332
  br i1 %1333, label %1334, label %1342

; <label>:1334:                                   ; preds = %1326
  %1335 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1323, %struct.Memory* %1317)
  %.pre38 = load i64, i64* %RAX.i56, align 8
  %.pre39 = load i64, i64* %3, align 8
  br label %routine_ucomiss_0xab0f14___xmm1.exit

; <label>:1336:                                   ; preds = %routine_ucomiss_0xab0f14___xmm1.exit54
  %1337 = fcmp ogt float %1324, %1312
  br i1 %1337, label %1342, label %1338

; <label>:1338:                                   ; preds = %1336
  %1339 = fcmp olt float %1324, %1312
  br i1 %1339, label %1342, label %1340

; <label>:1340:                                   ; preds = %1338
  %1341 = fcmp oeq float %1324, %1312
  br i1 %1341, label %1342, label %1346

; <label>:1342:                                   ; preds = %1340, %1338, %1336, %1326
  %1343 = phi i8 [ 0, %1336 ], [ 0, %1338 ], [ 1, %1340 ], [ 1, %1326 ]
  %1344 = phi i8 [ 0, %1336 ], [ 0, %1338 ], [ 0, %1340 ], [ 1, %1326 ]
  %1345 = phi i8 [ 0, %1336 ], [ 1, %1338 ], [ 0, %1340 ], [ 1, %1326 ]
  store i8 %1343, i8* %30, align 1
  store i8 %1344, i8* %21, align 1
  store i8 %1345, i8* %14, align 1
  br label %1346

; <label>:1346:                                   ; preds = %1342, %1340
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss_0xab0f14___xmm1.exit

routine_ucomiss_0xab0f14___xmm1.exit:             ; preds = %1346, %1334
  %1347 = phi i64 [ %.pre39, %1334 ], [ %1323, %1346 ]
  %1348 = phi i64 [ %.pre38, %1334 ], [ %1322, %1346 ]
  %1349 = phi %struct.Memory* [ %1335, %1334 ], [ %1317, %1346 ]
  %1350 = load i64, i64* %RBP.i, align 8
  %1351 = add i64 %1350, -408
  %1352 = add i64 %1347, 7
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i64*
  store i64 %1348, i64* %1353, align 8
  %1354 = load i64, i64* %RBP.i, align 8
  %1355 = add i64 %1354, -416
  %1356 = load i64, i64* %RDI.i90, align 8
  %1357 = load i64, i64* %3, align 8
  %1358 = add i64 %1357, 7
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1355 to i64*
  store i64 %1356, i64* %1359, align 8
  %1360 = load i64, i64* %3, align 8
  %1361 = load i8, i8* %14, align 1
  %1362 = load i8, i8* %30, align 1
  %1363 = or i8 %1362, %1361
  %1364 = icmp ne i8 %1363, 0
  %.v53 = select i1 %1364, i64 41, i64 6
  %1365 = add i64 %1360, %.v53
  %1366 = add i64 %1365, 9
  store i64 %1366, i64* %3, align 8
  %1367 = load i32, i32* bitcast (%G_0xab0f14_type* @G_0xab0f14 to i32*), align 8
  store i32 %1367, i32* %83, align 1
  store float 0.000000e+00, float* %85, align 1
  store float 0.000000e+00, float* %87, align 1
  store float 0.000000e+00, float* %89, align 1
  br i1 %1364, label %block_.L_499da2, label %block_499d7f

block_499d7f:                                     ; preds = %routine_ucomiss_0xab0f14___xmm1.exit
  %1368 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %80, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1369 = load i64, i64* %1368, align 1
  %1370 = trunc i64 %1369 to i32
  %1371 = bitcast %union.anon* %40 to [2 x i32]*
  store i32 %1370, i32* %EAX.i592, align 1
  %1372 = getelementptr inbounds [2 x i32], [2 x i32]* %1371, i64 0, i64 1
  store i32 0, i32* %1372, align 1
  %1373 = load i64, i64* %RAX.i56, align 8
  %1374 = xor i64 %1373, -2147483648
  %1375 = trunc i64 %1374 to i32
  %1376 = and i64 %1374, 4294967295
  store i64 %1376, i64* %RAX.i56, align 8
  store i8 0, i8* %14, align 1
  %1377 = and i32 %1375, 255
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377)
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %21, align 1
  %1382 = icmp eq i32 %1375, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %30, align 1
  %1384 = lshr i32 %1375, 31
  %1385 = trunc i32 %1384 to i8
  store i8 %1385, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1386 = trunc i64 %1374 to i32
  store i32 %1386, i32* %83, align 1
  %1387 = bitcast i8* %84 to i32*
  store i32 0, i32* %1387, align 1
  %1388 = bitcast i64* %86 to i32*
  store i32 0, i32* %1388, align 1
  %1389 = bitcast i8* %88 to i32*
  store i32 0, i32* %1389, align 1
  %1390 = load i64, i64* %RBP.i, align 8
  %1391 = add i64 %1390, -420
  %1392 = add i64 %1365, 30
  store i64 %1392, i64* %3, align 8
  %1393 = load <2 x float>, <2 x float>* %1282, align 1
  %1394 = extractelement <2 x float> %1393, i32 0
  %1395 = inttoptr i64 %1391 to float*
  store float %1394, float* %1395, align 4
  %1396 = load i64, i64* %3, align 8
  %1397 = add i64 %1396, 22
  store i64 %1397, i64* %3, align 8
  br label %block_.L_499db3

block_.L_499da2:                                  ; preds = %routine_ucomiss_0xab0f14___xmm1.exit
  %1398 = load i64, i64* %RBP.i, align 8
  %1399 = add i64 %1398, -420
  %1400 = add i64 %1365, 17
  store i64 %1400, i64* %3, align 8
  %1401 = load <2 x float>, <2 x float>* %1282, align 1
  %1402 = extractelement <2 x float> %1401, i32 0
  %1403 = inttoptr i64 %1399 to float*
  store float %1402, float* %1403, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_499db3

block_.L_499db3:                                  ; preds = %block_.L_499da2, %block_499d7f
  %1404 = phi i64 [ %.pre40, %block_.L_499da2 ], [ %1397, %block_499d7f ]
  %1405 = load i64, i64* %RBP.i, align 8
  %1406 = add i64 %1405, -420
  %1407 = add i64 %1404, 8
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  store i32 %1409, i32* %83, align 1
  store float 0.000000e+00, float* %85, align 1
  store float 0.000000e+00, float* %87, align 1
  store float 0.000000e+00, float* %89, align 1
  store i64 ptrtoint (%G__0x5879c4_type* @G__0x5879c4 to i64), i64* %RSI.i122, align 8
  %1410 = load <2 x float>, <2 x float>* %1282, align 1
  %1411 = extractelement <2 x float> %1410, i32 0
  %1412 = fpext float %1411 to double
  %1413 = bitcast [32 x %union.VectorReg]* %80 to double*
  store double %1412, double* %1413, align 1
  %1414 = add i64 %1405, -416
  %1415 = add i64 %1404, 29
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i64*
  %1417 = load i64, i64* %1416, align 8
  store i64 %1417, i64* %RDI.i90, align 8
  %1418 = add i64 %1405, -408
  %1419 = add i64 %1404, 36
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i64*
  %1421 = load i64, i64* %1420, align 8
  store i64 %1421, i64* %RDX.i134, align 8
  %AL.i = bitcast %union.anon* %40 to i8*
  store i8 1, i8* %AL.i, align 1
  %1422 = add i64 %1404, -625891
  %1423 = add i64 %1404, 43
  %1424 = load i64, i64* %6, align 8
  %1425 = add i64 %1424, -8
  %1426 = inttoptr i64 %1425 to i64*
  store i64 %1423, i64* %1426, align 8
  store i64 %1425, i64* %6, align 8
  store i64 %1422, i64* %3, align 8
  %1427 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1349)
  %1428 = load i64, i64* %RBP.i, align 8
  %1429 = add i64 %1428, -424
  %1430 = load i32, i32* %EAX.i592, align 4
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, 6
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1429 to i32*
  store i32 %1430, i32* %1433, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_499de4

block_.L_499de4:                                  ; preds = %block_.L_499db3, %block_.L_499cec
  %1434 = phi i64 [ %1261, %block_.L_499cec ], [ %.pre41, %block_.L_499db3 ]
  %MEMORY.16 = phi %struct.Memory* [ %1249, %block_.L_499cec ], [ %1427, %block_.L_499db3 ]
  %1435 = load i64, i64* %6, align 8
  %1436 = add i64 %1435, 432
  store i64 %1436, i64* %6, align 8
  %1437 = icmp ugt i64 %1435, -433
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %14, align 1
  %1439 = trunc i64 %1436 to i32
  %1440 = and i32 %1439, 255
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  store i8 %1444, i8* %21, align 1
  %1445 = xor i64 %1435, 16
  %1446 = xor i64 %1445, %1436
  %1447 = lshr i64 %1446, 4
  %1448 = trunc i64 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %27, align 1
  %1450 = icmp eq i64 %1436, 0
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %30, align 1
  %1452 = lshr i64 %1436, 63
  %1453 = trunc i64 %1452 to i8
  store i8 %1453, i8* %33, align 1
  %1454 = lshr i64 %1435, 63
  %1455 = xor i64 %1452, %1454
  %1456 = add nuw nsw i64 %1455, %1452
  %1457 = icmp eq i64 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %39, align 1
  %1459 = add i64 %1434, 8
  store i64 %1459, i64* %3, align 8
  %1460 = add i64 %1435, 440
  %1461 = inttoptr i64 %1436 to i64*
  %1462 = load i64, i64* %1461, align 8
  store i64 %1462, i64* %RBP.i, align 8
  store i64 %1460, i64* %6, align 8
  %1463 = add i64 %1434, 9
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1460 to i64*
  %1465 = load i64, i64* %1464, align 8
  store i64 %1465, i64* %3, align 8
  %1466 = add i64 %1435, 448
  store i64 %1466, i64* %6, align 8
  ret %struct.Memory* %MEMORY.16
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
define %struct.Memory* @routine_subq__0x1b0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -432
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 432
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
define %struct.Memory* @routine_leaq_MINUS0x150__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_callq_.sgftree_clear(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x150__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb454f8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb454f8_type* @G_0xb454f8 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgftreeCreateHeaderNode(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.sgffile_printboard(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0xab0fbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.reset_engine(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5878e5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x5878e5_type* @G__0x5878e5 to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_49983d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5858b6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x5858b6_type* @G__0x5858b6 to i64), i64 4294967295), i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_499cec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_499842(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.genmove_conservative(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_4998b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5878ec___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5878ec_type* @G__0x5878ec to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5878b5___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5878b5_type* @G__0x5878b5 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5878ab___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5878ab_type* @G__0x5878ab to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xafdfb0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_cmoveq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RAX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -340
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499907(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5878fb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5878fb_type* @G__0x5878fb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
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
define %struct.Memory* @routine_movl__edx__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -344
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.play_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x148__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.sgffile_add_debuginfo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_callq_.sgftreeAddPlay(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.sgffile_output(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x138__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2710__0xafdfb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %6 = add i32 %5, -10000
  %7 = icmp ult i32 %5, 10000
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x159__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -345
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_49998d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
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
define %struct.Memory* @routine_setl__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x159__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -345
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x159__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -345
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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
define %struct.Memory* @routine_jne_.L_499842(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_499ce7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4999ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x150__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x138__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_callq_.aftermath_compute_score(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0xab0f14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499a0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xab0f18___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xab0f18_type* @G__0xab0f18 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xab0f1c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xab0f1c_type* @G__0xab0f1c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gnugo_estimate_score(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0xab0f14___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_499a66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58790f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58790f_type* @G__0x58790f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x130__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xab0f14___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f14_type* @G_0xab0f14 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movd__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RAX to [2 x i32]*
  %9 = bitcast i64* %RAX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movd__eax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to i32*
  store i32 %6, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %5, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i32*
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %5, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x42__MINUS0x131__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -305
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 66, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -352
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499ad9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_499aaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58792b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58792b_type* @G__0x58792b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0xab0f14___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x57__MINUS0x131__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -305
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 87, i8* %7, align 1
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
define %struct.Memory* @routine_jmpq_.L_499ad4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x587947___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x587947_type* @G__0x587947 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x30__MINUS0x131__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -305
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 48, i8* %7, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c080___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fputs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x130__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__0x579c74___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579c74_type* @G__0x579c74 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgfGetCharProperty(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_499cc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58794d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58794d_type* @G__0x58794d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x31__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -49
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_499c10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x587953___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x587953_type* @G__0x587953 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c080___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c080_type* @G_0x99c080 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_movq__0x58796c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58796c_type* @G__0x58796c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -368
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0xe0041__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xe0041__rip__type* @G_0xe0041__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0xe0041__rip__type* @G_0xe0041__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0xe0041__rip__type* @G_0xe0041__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0xe0041__rip__type* @G_0xe0041__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -372
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_499bee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_499bee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x131__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -305
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x31__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -49
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
define %struct.Memory* @routine_movq__0x587994___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x587994_type* @G__0x587994 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -376
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499c0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58799f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58799f_type* @G__0x58799f to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_499cbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl__0x52___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -82
  %8 = icmp ult i32 %4, 82
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_499cb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5879aa___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5879aa_type* @G__0x5879aa to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -384
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movsbl___rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i8**
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
define %struct.Memory* @routine_movsbl_MINUS0x131__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -305
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_499c95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -392
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499cb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -396
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499cb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_499cc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x150__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgfWriteResult(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_499cec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xab0fbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_499de4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x63___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 99, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.examine_position(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.estimate_score(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579c45___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579c45_type* @G__0x579c45 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e7b5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e7b5_type* @G__0x57e7b5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_0xab0f14___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %10 = fcmp uno float %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %block_400488
  %12 = fadd float %8, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %11
  %20 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:21:                                     ; preds = %block_400488
  %22 = fcmp ogt float %8, %9
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %21
  %24 = fcmp olt float %8, %9
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp oeq float %8, %9
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %25, %23, %21, %11
  %28 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 1, %25 ], [ 1, %11 ]
  %29 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 0, %25 ], [ 1, %11 ]
  %30 = phi i8 [ 0, %21 ], [ 1, %23 ], [ 0, %25 ], [ 1, %11 ]
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %27, %25
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %34, %19
  %38 = phi %struct.Memory* [ %20, %19 ], [ %2, %34 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovaq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp eq i8 %10, 0
  %12 = load i64, i64* %RAX, align 8
  %13 = select i1 %11, i64 %3, i64 %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x1a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_499da2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x1a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -420
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
define %struct.Memory* @routine_jmpq_.L_499db3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x1a4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -420
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
define %struct.Memory* @routine_movq__0x5879c4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5879c4_type* @G__0x5879c4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x198__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -424
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1b0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 432
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -433
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
