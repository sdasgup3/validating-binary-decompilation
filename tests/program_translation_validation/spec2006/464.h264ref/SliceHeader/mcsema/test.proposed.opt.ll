; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x2a53ca__rip__type = type <{ [8 x i8] }>
%G_0x2ae13d__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d32c8_type = type <{ [4 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G_0x722c98_type = type <{ [4 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G_0x8b2c7__rip__type = type <{ [8 x i8] }>
%G_0x97305__rip__type = type <{ [4 x i8] }>
%G__0x4bfa23_type = type <{ [8 x i8] }>
%G__0x4bfa39_type = type <{ [8 x i8] }>
%G__0x4bfa48_type = type <{ [8 x i8] }>
%G__0x4bfa61_type = type <{ [8 x i8] }>
%G__0x4bfa6f_type = type <{ [8 x i8] }>
%G__0x4bfa82_type = type <{ [8 x i8] }>
%G__0x4bfa98_type = type <{ [8 x i8] }>
%G__0x4bfaa7_type = type <{ [8 x i8] }>
%G__0x4bfabd_type = type <{ [8 x i8] }>
%G__0x4bfadc_type = type <{ [8 x i8] }>
%G__0x4bfaf7_type = type <{ [8 x i8] }>
%G__0x4bfb12_type = type <{ [8 x i8] }>
%G__0x4bfb28_type = type <{ [8 x i8] }>
%G__0x4bfb48_type = type <{ [8 x i8] }>
%G__0x4bfb6d_type = type <{ [8 x i8] }>
%G__0x4bfb8e_type = type <{ [8 x i8] }>
%G__0x4bfbaf_type = type <{ [8 x i8] }>
%G__0x4bfbc2_type = type <{ [8 x i8] }>
%G__0x4bfbd5_type = type <{ [8 x i8] }>
%G__0x4bfbec_type = type <{ [8 x i8] }>
%G__0x4bfbff_type = type <{ [8 x i8] }>
%G__0x4bfc21_type = type <{ [8 x i8] }>
%G__0x4bfc40_type = type <{ [8 x i8] }>
%G__0x4bfc5b_type = type <{ [8 x i8] }>
%G__0x4bfc78_type = type <{ [8 x i8] }>
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
@G_0x2a53ca__rip_ = global %G_0x2a53ca__rip__type zeroinitializer
@G_0x2ae13d__rip_ = global %G_0x2ae13d__rip__type zeroinitializer
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6d32c8 = local_unnamed_addr global %G_0x6d32c8_type zeroinitializer
@G_0x6d4690 = local_unnamed_addr global %G_0x6d4690_type zeroinitializer
@G_0x722c98 = local_unnamed_addr global %G_0x722c98_type zeroinitializer
@G_0x722cb0 = local_unnamed_addr global %G_0x722cb0_type zeroinitializer
@G_0x8b2c7__rip_ = global %G_0x8b2c7__rip__type zeroinitializer
@G_0x97305__rip_ = global %G_0x97305__rip__type zeroinitializer
@G__0x4bfa23 = global %G__0x4bfa23_type zeroinitializer
@G__0x4bfa39 = global %G__0x4bfa39_type zeroinitializer
@G__0x4bfa48 = global %G__0x4bfa48_type zeroinitializer
@G__0x4bfa61 = global %G__0x4bfa61_type zeroinitializer
@G__0x4bfa6f = global %G__0x4bfa6f_type zeroinitializer
@G__0x4bfa82 = global %G__0x4bfa82_type zeroinitializer
@G__0x4bfa98 = global %G__0x4bfa98_type zeroinitializer
@G__0x4bfaa7 = global %G__0x4bfaa7_type zeroinitializer
@G__0x4bfabd = global %G__0x4bfabd_type zeroinitializer
@G__0x4bfadc = global %G__0x4bfadc_type zeroinitializer
@G__0x4bfaf7 = global %G__0x4bfaf7_type zeroinitializer
@G__0x4bfb12 = global %G__0x4bfb12_type zeroinitializer
@G__0x4bfb28 = global %G__0x4bfb28_type zeroinitializer
@G__0x4bfb48 = global %G__0x4bfb48_type zeroinitializer
@G__0x4bfb6d = global %G__0x4bfb6d_type zeroinitializer
@G__0x4bfb8e = global %G__0x4bfb8e_type zeroinitializer
@G__0x4bfbaf = global %G__0x4bfbaf_type zeroinitializer
@G__0x4bfbc2 = global %G__0x4bfbc2_type zeroinitializer
@G__0x4bfbd5 = global %G__0x4bfbd5_type zeroinitializer
@G__0x4bfbec = global %G__0x4bfbec_type zeroinitializer
@G__0x4bfbff = global %G__0x4bfbff_type zeroinitializer
@G__0x4bfc21 = global %G__0x4bfc21_type zeroinitializer
@G__0x4bfc40 = global %G__0x4bfc40_type zeroinitializer
@G__0x4bfc5b = global %G__0x4bfc5b_type zeroinitializer
@G__0x4bfc78 = global %G__0x4bfc78_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_426640.get_picture_type(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4acbc0.u_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4acb00.u_1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4ac9c0.se_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4266e0.ref_pic_list_reordering(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4269c0.pred_weight_table(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_426f50.dec_ref_pic_marking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401200.ceil_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @SliceHeader(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 80
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
  %RAX.i158 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %41, i64* %RAX.i158, align 8
  %42 = add i64 %41, 2364
  %43 = add i64 %10, 22
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %RAX.i158, align 8
  %47 = shl nsw i64 %46, 3
  %48 = add nsw i64 %47, 7493120
  %49 = add i64 %10, 30
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %48 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %RAX.i158, align 8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1086 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %53 = add i64 %10, 32
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %RCX.i1086, align 8
  %57 = add i64 %7, -12
  %58 = add i64 %10, 35
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i32*
  store i32 %55, i32* %59, align 4
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %61, i64* %RAX.i158, align 8
  %62 = add i64 %61, 14160
  %63 = add i64 %60, 15
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %RAX.i158, align 8
  %66 = add i64 %65, 24
  %67 = add i64 %60, 19
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %RAX.i158, align 8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1073 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -4
  %73 = add i64 %60, 23
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, 120
  store i64 %77, i64* %RDX.i1073, align 8
  %78 = lshr i64 %77, 63
  %79 = add i64 %77, %69
  %80 = icmp ult i64 %79, %69
  %81 = icmp ult i64 %79, %77
  %82 = or i1 %80, %81
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %14, align 1
  %84 = trunc i64 %79 to i32
  %85 = and i32 %84, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i64 %77, %69
  %91 = xor i64 %90, %79
  %92 = lshr i64 %91, 4
  %93 = trunc i64 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %27, align 1
  %95 = icmp eq i64 %79, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %30, align 1
  %97 = lshr i64 %79, 63
  %98 = trunc i64 %97 to i8
  store i8 %98, i8* %33, align 1
  %99 = lshr i64 %69, 63
  %100 = xor i64 %97, %99
  %101 = xor i64 %97, %78
  %102 = add nuw nsw i64 %100, %101
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %39, align 1
  %105 = add i64 %71, -16
  %106 = add i64 %60, 34
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i64*
  store i64 %79, i64* %107, align 8
  %108 = load i64, i64* %3, align 8
  %109 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %109, i64* %RAX.i158, align 8
  %110 = add i64 %109, 14160
  %111 = add i64 %108, 15
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -24
  %116 = add i64 %108, 19
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %117, align 8
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -28
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 7
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %119 to i32*
  store i32 0, i32* %122, align 4
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -32
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, 7
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %124 to i32*
  store i32 0, i32* %127, align 4
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -36
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 7
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %129 to i32*
  store i32 0, i32* %132, align 4
  %133 = load i64, i64* %3, align 8
  %134 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %134, i64* %RAX.i158, align 8
  %135 = add i64 %134, 72400
  %136 = add i64 %133, 15
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  store i8 0, i8* %14, align 1
  %139 = and i32 %138, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139)
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %144 = icmp eq i32 %138, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %30, align 1
  %146 = lshr i32 %138, 31
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %144, i64 64, i64 21
  %148 = add i64 %133, %.v
  %RDI.i1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x4bfa23_type* @G__0x4bfa23 to i64), i64* %RDI.i1025, align 8
  %149 = add i64 %148, 18
  store i64 %149, i64* %3, align 8
  store i64 %134, i64* %RAX.i158, align 8
  br i1 %144, label %block_.L_425cee, label %block_425cc3

block_425cc3:                                     ; preds = %entry
  %150 = add i64 %134, 12
  %151 = add i64 %148, 21
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  %155 = shl nuw i64 %154, 32
  %156 = ashr i64 %155, 33
  %157 = trunc i32 %153 to i8
  %158 = and i8 %157, 1
  %159 = trunc i64 %156 to i32
  %160 = and i64 %156, 4294967295
  store i64 %160, i64* %RCX.i1086, align 8
  store i8 %158, i8* %14, align 1
  %161 = and i32 %159, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161)
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %166 = icmp eq i32 %159, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %30, align 1
  %168 = lshr i64 %156, 31
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -16
  %173 = add i64 %148, 27
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %RDX.i1073, align 8
  %RSI.i1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %176 = and i64 %156, 4294967295
  store i64 %176, i64* %RSI.i1033, align 8
  %177 = add i64 %148, 551388
  %178 = add i64 %148, 34
  %179 = load i64, i64* %6, align 8
  %180 = add i64 %179, -8
  %181 = inttoptr i64 %180 to i64*
  store i64 %178, i64* %181, align 8
  store i64 %180, i64* %6, align 8
  store i64 %177, i64* %3, align 8
  %call2_425ce1 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %177, %struct.Memory* %2)
  %EAX.i1028 = bitcast %union.anon* %40 to i32*
  %182 = load i64, i64* %RBP.i, align 8
  %183 = add i64 %182, -28
  %184 = load i32, i32* %EAX.i1028, align 4
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 3
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %183 to i32*
  store i32 %184, i32* %187, align 4
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 38
  store i64 %189, i64* %3, align 8
  br label %block_.L_425d0f

block_.L_425cee:                                  ; preds = %entry
  %RSI.i1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %190 = add i64 %134, 12
  %191 = add i64 %148, 21
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RSI.i1021, align 8
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -16
  %197 = add i64 %148, 25
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RDX.i1073, align 8
  %200 = add i64 %148, 551346
  %201 = add i64 %148, 30
  %202 = load i64, i64* %6, align 8
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %201, i64* %204, align 8
  store i64 %203, i64* %6, align 8
  store i64 %200, i64* %3, align 8
  %call2_425d07 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %200, %struct.Memory* %2)
  %EAX.i1013 = bitcast %union.anon* %40 to i32*
  %205 = load i64, i64* %RBP.i, align 8
  %206 = add i64 %205, -28
  %207 = load i32, i32* %EAX.i1013, align 4
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 3
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %210, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_425d0f

block_.L_425d0f:                                  ; preds = %block_.L_425cee, %block_425cc3
  %EAX.i1004.pre-phi = phi i32* [ %EAX.i1013, %block_.L_425cee ], [ %EAX.i1028, %block_425cc3 ]
  %211 = phi i64 [ %.pre, %block_.L_425cee ], [ %189, %block_425cc3 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_425d07, %block_.L_425cee ], [ %call2_425ce1, %block_425cc3 ]
  %212 = add i64 %211, 2353
  %213 = add i64 %211, 5
  %214 = load i64, i64* %6, align 8
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %213, i64* %216, align 8
  store i64 %215, i64* %6, align 8
  store i64 %212, i64* %3, align 8
  %call2_425d0f = tail call %struct.Memory* @sub_426640.get_picture_type(%struct.State* nonnull %0, i64 %212, %struct.Memory* %MEMORY.0)
  %217 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfa39_type* @G__0x4bfa39 to i64), i64* %RDI.i1025, align 8
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -16
  %220 = add i64 %217, 14
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RDX.i1073, align 8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1005 = getelementptr inbounds %union.anon, %union.anon* %223, i64 0, i32 0
  %224 = load i32, i32* %EAX.i1004.pre-phi, align 4
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RSI.i1005, align 8
  %226 = add i64 %217, 551308
  %227 = add i64 %217, 21
  %228 = load i64, i64* %6, align 8
  %229 = add i64 %228, -8
  %230 = inttoptr i64 %229 to i64*
  store i64 %227, i64* %230, align 8
  store i64 %229, i64* %6, align 8
  store i64 %226, i64* %3, align 8
  %call2_425d24 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %226, %struct.Memory* %call2_425d0f)
  %231 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfa48_type* @G__0x4bfa48 to i64), i64* %RDI.i1025, align 8
  %232 = load i64, i64* %RAX.i158, align 8
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -28
  %235 = add i64 %231, 13
  store i64 %235, i64* %3, align 8
  %236 = trunc i64 %232 to i32
  %237 = inttoptr i64 %234 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = add i32 %238, %236
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RAX.i158, align 8
  %241 = icmp ult i32 %239, %236
  %242 = icmp ult i32 %239, %238
  %243 = or i1 %241, %242
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %14, align 1
  %245 = and i32 %239, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %21, align 1
  %250 = xor i32 %238, %236
  %251 = xor i32 %250, %239
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %27, align 1
  %255 = icmp eq i32 %239, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %30, align 1
  %257 = lshr i32 %239, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %33, align 1
  %259 = lshr i32 %236, 31
  %260 = lshr i32 %238, 31
  %261 = xor i32 %257, %259
  %262 = xor i32 %257, %260
  %263 = add nuw nsw i32 %261, %262
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %39, align 1
  %266 = add i64 %231, 16
  store i64 %266, i64* %3, align 8
  store i32 %239, i32* %237, align 4
  %267 = load i64, i64* %3, align 8
  %268 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %268, i64* %RDX.i1073, align 8
  %269 = add i64 %268, 4
  %270 = add i64 %267, 11
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RSI.i1005, align 8
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -16
  %276 = add i64 %267, 15
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %RDX.i1073, align 8
  %279 = add i64 %267, 551271
  %280 = add i64 %267, 20
  %281 = load i64, i64* %6, align 8
  %282 = add i64 %281, -8
  %283 = inttoptr i64 %282 to i64*
  store i64 %280, i64* %283, align 8
  store i64 %282, i64* %6, align 8
  store i64 %279, i64* %3, align 8
  %call2_425d48 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %279, %struct.Memory* %call2_425d24)
  %284 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfa61_type* @G__0x4bfa61 to i64), i64* %RSI.i1005, align 8
  %285 = load i64, i64* %RAX.i158, align 8
  %286 = load i64, i64* %RBP.i, align 8
  %287 = add i64 %286, -28
  %288 = add i64 %284, 13
  store i64 %288, i64* %3, align 8
  %289 = trunc i64 %285 to i32
  %290 = inttoptr i64 %287 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = add i32 %291, %289
  %293 = add i64 %284, 16
  store i64 %293, i64* %3, align 8
  store i32 %292, i32* %290, align 4
  %294 = load i64, i64* %3, align 8
  %295 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*), align 8
  %296 = add i32 %295, 4
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RAX.i158, align 8
  %298 = icmp ugt i32 %295, -5
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %14, align 1
  %300 = and i32 %296, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %21, align 1
  %305 = xor i32 %296, %295
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %27, align 1
  %309 = icmp eq i32 %296, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %30, align 1
  %311 = lshr i32 %296, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %33, align 1
  %313 = lshr i32 %295, 31
  %314 = xor i32 %311, %313
  %315 = add nuw nsw i32 %314, %311
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %39, align 1
  %318 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %318, i64* %RDX.i1073, align 8
  %319 = add i64 %318, 72464
  %320 = add i64 %294, 24
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RDX.i1073, align 8
  %324 = load i64, i64* %RBP.i, align 8
  %325 = add i64 %324, -16
  %326 = add i64 %294, 28
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i64*
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %RCX.i1086, align 8
  store i64 %297, i64* %RDI.i1025, align 8
  %329 = add i64 %294, 552547
  %330 = add i64 %294, 35
  %331 = load i64, i64* %6, align 8
  %332 = add i64 %331, -8
  %333 = inttoptr i64 %332 to i64*
  store i64 %330, i64* %333, align 8
  store i64 %332, i64* %6, align 8
  store i64 %329, i64* %3, align 8
  %call2_425d7b = tail call %struct.Memory* @sub_4acbc0.u_v(%struct.State* nonnull %0, i64 %329, %struct.Memory* %call2_425d48)
  %334 = load i64, i64* %RAX.i158, align 8
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -28
  %337 = load i64, i64* %3, align 8
  %338 = add i64 %337, 3
  store i64 %338, i64* %3, align 8
  %339 = trunc i64 %334 to i32
  %340 = inttoptr i64 %336 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = add i32 %341, %339
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RAX.i158, align 8
  %344 = icmp ult i32 %342, %339
  %345 = icmp ult i32 %342, %341
  %346 = or i1 %344, %345
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %14, align 1
  %348 = and i32 %342, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348)
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %21, align 1
  %353 = xor i32 %341, %339
  %354 = xor i32 %353, %342
  %355 = lshr i32 %354, 4
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %27, align 1
  %358 = icmp eq i32 %342, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %30, align 1
  %360 = lshr i32 %342, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %33, align 1
  %362 = lshr i32 %339, 31
  %363 = lshr i32 %341, 31
  %364 = xor i32 %360, %362
  %365 = xor i32 %360, %363
  %366 = add nuw nsw i32 %364, %365
  %367 = icmp eq i32 %366, 2
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %39, align 1
  %369 = add i64 %337, 6
  store i64 %369, i64* %3, align 8
  store i32 %342, i32* %340, align 4
  %370 = load i64, i64* %3, align 8
  %371 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %371, i64* %RCX.i1086, align 8
  %372 = add i64 %371, 1148
  %373 = add i64 %370, 15
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  store i8 0, i8* %14, align 1
  %376 = and i32 %375, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %381 = icmp eq i32 %375, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %30, align 1
  %383 = lshr i32 %375, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v79 = select i1 %381, i64 21, i64 176
  %385 = add i64 %370, %.v79
  store i64 %385, i64* %3, align 8
  br i1 %381, label %block_425d9b, label %block_.L_425e36

block_425d9b:                                     ; preds = %block_.L_425d0f
  %AL.i950 = bitcast %union.anon* %40 to i8*
  store i8 1, i8* %AL.i950, align 1
  %386 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %386, i64* %RCX.i1086, align 8
  %387 = add i64 %386, 28
  %388 = add i64 %385, 14
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = add i32 %390, -1
  %392 = icmp eq i32 %390, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %14, align 1
  %394 = and i32 %391, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %21, align 1
  %399 = xor i32 %391, %390
  %400 = lshr i32 %399, 4
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  store i8 %402, i8* %27, align 1
  %403 = icmp eq i32 %391, 0
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %30, align 1
  %405 = lshr i32 %391, 31
  %406 = trunc i32 %405 to i8
  store i8 %406, i8* %33, align 1
  %407 = lshr i32 %390, 31
  %408 = xor i32 %405, %407
  %409 = add nuw nsw i32 %408, %407
  %410 = icmp eq i32 %409, 2
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %39, align 1
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -49
  %414 = add i64 %385, 17
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i8*
  store i8 1, i8* %415, align 1
  %416 = load i64, i64* %3, align 8
  %417 = load i8, i8* %30, align 1
  %418 = icmp ne i8 %417, 0
  %.v119 = select i1 %418, i64 24, i64 6
  %419 = add i64 %416, %.v119
  store i64 %419, i64* %3, align 8
  %cmpBr_425dac = icmp eq i8 %417, 1
  br i1 %cmpBr_425dac, label %block_.L_425dc4, label %block_425db2

block_425db2:                                     ; preds = %block_425d9b
  %420 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %420, i64* %RAX.i158, align 8
  %421 = add i64 %420, 28
  %422 = add i64 %419, 12
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = add i32 %424, -2
  %426 = icmp ult i32 %424, 2
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %14, align 1
  %428 = and i32 %425, 255
  %429 = tail call i32 @llvm.ctpop.i32(i32 %428)
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  store i8 %432, i8* %21, align 1
  %433 = xor i32 %425, %424
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %27, align 1
  %437 = icmp eq i32 %425, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %30, align 1
  %439 = lshr i32 %425, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %33, align 1
  %441 = lshr i32 %424, 31
  %442 = xor i32 %439, %441
  %443 = add nuw nsw i32 %442, %441
  %444 = icmp eq i32 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %39, align 1
  %CL.i936 = bitcast %union.anon* %52 to i8*
  store i8 %438, i8* %CL.i936, align 1
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -49
  %448 = add i64 %419, 18
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i8*
  store i8 %438, i8* %449, align 1
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_425dc4

block_.L_425dc4:                                  ; preds = %block_425db2, %block_425d9b
  %450 = phi i64 [ %.pre45, %block_425db2 ], [ %419, %block_425d9b ]
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -49
  %453 = add i64 %450, 3
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i8*
  %455 = load i8, i8* %454, align 1
  store i8 %455, i8* %AL.i950, align 1
  store i64 ptrtoint (%G__0x4bfa6f_type* @G__0x4bfa6f to i64), i64* %RDI.i1025, align 8
  store i64 1, i64* %RDX.i1073, align 8
  %456 = and i8 %455, 1
  store i8 0, i8* %14, align 1
  %457 = zext i8 %456 to i32
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  %461 = xor i8 %456, 1
  store i8 %461, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %462 = zext i8 %456 to i64
  store i64 %462, i64* %RCX.i1086, align 8
  %463 = add i64 %451, -32
  %464 = zext i8 %456 to i32
  %465 = add i64 %450, 28
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %463 to i32*
  store i32 %464, i32* %466, align 4
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -32
  %469 = load i64, i64* %3, align 8
  %470 = add i64 %469, 3
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %468 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RSI.i1005, align 8
  %474 = add i64 %467, -16
  %475 = add i64 %469, 7
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i64*
  %477 = load i64, i64* %476, align 8
  store i64 %477, i64* %RDX.i1073, align 8
  %478 = add i64 %469, 552224
  %479 = add i64 %469, 12
  %480 = load i64, i64* %6, align 8
  %481 = add i64 %480, -8
  %482 = inttoptr i64 %481 to i64*
  store i64 %479, i64* %482, align 8
  store i64 %481, i64* %6, align 8
  store i64 %478, i64* %3, align 8
  %call2_425de7 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %478, %struct.Memory* %call2_425d7b)
  %483 = load i64, i64* %RAX.i158, align 8
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -28
  %486 = load i64, i64* %3, align 8
  %487 = add i64 %486, 3
  store i64 %487, i64* %3, align 8
  %488 = trunc i64 %483 to i32
  %489 = inttoptr i64 %485 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = add i32 %490, %488
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RAX.i158, align 8
  %493 = icmp ult i32 %491, %488
  %494 = icmp ult i32 %491, %490
  %495 = or i1 %493, %494
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %14, align 1
  %497 = and i32 %491, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497)
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %21, align 1
  %502 = xor i32 %490, %488
  %503 = xor i32 %502, %491
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %27, align 1
  %507 = icmp eq i32 %491, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %30, align 1
  %509 = lshr i32 %491, 31
  %510 = trunc i32 %509 to i8
  store i8 %510, i8* %33, align 1
  %511 = lshr i32 %488, 31
  %512 = lshr i32 %490, 31
  %513 = xor i32 %509, %511
  %514 = xor i32 %509, %512
  %515 = add nuw nsw i32 %513, %514
  %516 = icmp eq i32 %515, 2
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %39, align 1
  %518 = add i64 %486, 6
  store i64 %518, i64* %3, align 8
  store i32 %491, i32* %489, align 4
  %519 = load i64, i64* %RBP.i, align 8
  %520 = add i64 %519, -32
  %521 = load i64, i64* %3, align 8
  %522 = add i64 %521, 4
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %520 to i32*
  %524 = load i32, i32* %523, align 4
  store i8 0, i8* %14, align 1
  %525 = and i32 %524, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %530 = icmp eq i32 %524, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %30, align 1
  %532 = lshr i32 %524, 31
  %533 = trunc i32 %532 to i8
  store i8 %533, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v118 = select i1 %530, i64 63, i64 10
  %534 = add i64 %521, %.v118
  store i64 %534, i64* %3, align 8
  br i1 %530, label %block_.L_425e31, label %block_425dfc

block_425dfc:                                     ; preds = %block_.L_425dc4
  store i64 ptrtoint (%G__0x4bfa82_type* @G__0x4bfa82 to i64), i64* %RDI.i1025, align 8
  store i64 0, i64* %RAX.i158, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 1, i64* %RCX.i1086, align 8
  %535 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %535, i64* %RDX.i1073, align 8
  %536 = add i64 %535, 28
  %537 = add i64 %534, 29
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = add i32 %539, -2
  %541 = icmp ult i32 %539, 2
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %14, align 1
  %543 = and i32 %540, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %21, align 1
  %548 = xor i32 %540, %539
  %549 = lshr i32 %548, 4
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %27, align 1
  %552 = icmp eq i32 %540, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %30, align 1
  %554 = lshr i32 %540, 31
  %555 = trunc i32 %554 to i8
  store i8 %555, i8* %33, align 1
  %556 = lshr i32 %539, 31
  %557 = xor i32 %554, %556
  %558 = add nuw nsw i32 %557, %556
  %559 = icmp eq i32 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %39, align 1
  %561 = zext i1 %552 to i64
  store i64 %561, i64* %RAX.i158, align 8
  %562 = add i64 %519, -36
  %563 = zext i1 %552 to i32
  %564 = add i64 %534, 35
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %562 to i32*
  store i32 %563, i32* %565, align 4
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -36
  %568 = load i64, i64* %3, align 8
  %569 = add i64 %568, 3
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %567 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RSI.i1005, align 8
  %573 = add i64 %566, -16
  %574 = add i64 %568, 7
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RDX.i1073, align 8
  %577 = add i64 %568, 552161
  %578 = add i64 %568, 12
  %579 = load i64, i64* %6, align 8
  %580 = add i64 %579, -8
  %581 = inttoptr i64 %580 to i64*
  store i64 %578, i64* %581, align 8
  store i64 %580, i64* %6, align 8
  store i64 %577, i64* %3, align 8
  %call2_425e26 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %577, %struct.Memory* %call2_425de7)
  %582 = load i64, i64* %RAX.i158, align 8
  %583 = load i64, i64* %RBP.i, align 8
  %584 = add i64 %583, -28
  %585 = load i64, i64* %3, align 8
  %586 = add i64 %585, 3
  store i64 %586, i64* %3, align 8
  %587 = trunc i64 %582 to i32
  %588 = inttoptr i64 %584 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = add i32 %589, %587
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %RAX.i158, align 8
  %592 = icmp ult i32 %590, %587
  %593 = icmp ult i32 %590, %589
  %594 = or i1 %592, %593
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %14, align 1
  %596 = and i32 %590, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %21, align 1
  %601 = xor i32 %589, %587
  %602 = xor i32 %601, %590
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %27, align 1
  %606 = icmp eq i32 %590, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %30, align 1
  %608 = lshr i32 %590, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %33, align 1
  %610 = lshr i32 %587, 31
  %611 = lshr i32 %589, 31
  %612 = xor i32 %608, %610
  %613 = xor i32 %608, %611
  %614 = add nuw nsw i32 %612, %613
  %615 = icmp eq i32 %614, 2
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %39, align 1
  %617 = add i64 %585, 6
  store i64 %617, i64* %3, align 8
  store i32 %590, i32* %588, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_425e31

block_.L_425e31:                                  ; preds = %block_425dfc, %block_.L_425dc4
  %618 = phi i64 [ %534, %block_.L_425dc4 ], [ %.pre46, %block_425dfc ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_425de7, %block_.L_425dc4 ], [ %call2_425e26, %block_425dfc ]
  %619 = add i64 %618, 5
  store i64 %619, i64* %3, align 8
  br label %block_.L_425e36

block_.L_425e36:                                  ; preds = %block_.L_425d0f, %block_.L_425e31
  %620 = phi i64 [ %385, %block_.L_425d0f ], [ %619, %block_.L_425e31 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_425d7b, %block_.L_425d0f ], [ %MEMORY.2, %block_.L_425e31 ]
  %621 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %621, i64* %RAX.i158, align 8
  %622 = add i64 %621, 14152
  %623 = add i64 %620, 15
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i64*
  %625 = load i64, i64* %624, align 8
  store i64 %625, i64* %RAX.i158, align 8
  %626 = add i64 %625, 4
  %627 = add i64 %620, 19
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i32*
  %629 = load i32, i32* %628, align 4
  store i8 0, i8* %14, align 1
  %630 = and i32 %629, 255
  %631 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  store i8 %634, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %635 = icmp eq i32 %629, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %30, align 1
  %637 = lshr i32 %629, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v80 = select i1 %635, i64 81, i64 25
  %639 = add i64 %620, %.v80
  store i64 %639, i64* %3, align 8
  br i1 %635, label %block_.L_425e87, label %block_425e4f

block_425e4f:                                     ; preds = %block_.L_425e36
  store i64 ptrtoint (%G__0x4bfa98_type* @G__0x4bfa98 to i64), i64* %RDI.i1025, align 8
  store i64 2, i64* %RAX.i158, align 8
  store i64 %621, i64* %RCX.i1086, align 8
  %640 = add i64 %639, 25
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %621 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDX.i1073, align 8
  %644 = load i64, i64* %RBP.i, align 8
  %645 = add i64 %644, -56
  %646 = add i64 %639, 28
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  store i32 2, i32* %647, align 4
  %EDX.i846 = bitcast %union.anon* %70 to i32*
  %648 = load i32, i32* %EDX.i846, align 4
  %649 = zext i32 %648 to i64
  %650 = load i64, i64* %3, align 8
  store i64 %649, i64* %RAX.i158, align 8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %652 = sext i32 %648 to i64
  %653 = lshr i64 %652, 32
  store i64 %653, i64* %651, align 8
  %654 = load i64, i64* %RBP.i, align 8
  %655 = add i64 %654, -56
  %656 = add i64 %650, 6
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = zext i32 %658 to i64
  store i64 %659, i64* %RSI.i1005, align 8
  %660 = add i64 %650, 8
  store i64 %660, i64* %3, align 8
  %661 = sext i32 %658 to i64
  %662 = shl nuw i64 %653, 32
  %663 = or i64 %662, %649
  %664 = sdiv i64 %663, %661
  %665 = shl i64 %664, 32
  %666 = ashr exact i64 %665, 32
  %667 = icmp eq i64 %664, %666
  br i1 %667, label %670, label %668

; <label>:668:                                    ; preds = %block_425e4f
  %669 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %660, %struct.Memory* %MEMORY.3)
  %.pre47 = load i64, i64* %RBP.i, align 8
  %.pre48 = load i64, i64* %3, align 8
  %.pre49 = load i32, i32* %EDX.i846, align 4
  br label %routine_idivl__esi.exit838

; <label>:670:                                    ; preds = %block_425e4f
  %671 = srem i64 %663, %661
  %672 = and i64 %664, 4294967295
  store i64 %672, i64* %RAX.i158, align 8
  %673 = and i64 %671, 4294967295
  store i64 %673, i64* %RDX.i1073, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %674 = trunc i64 %671 to i32
  br label %routine_idivl__esi.exit838

routine_idivl__esi.exit838:                       ; preds = %670, %668
  %675 = phi i32 [ %.pre49, %668 ], [ %674, %670 ]
  %676 = phi i64 [ %.pre48, %668 ], [ %660, %670 ]
  %677 = phi i64 [ %.pre47, %668 ], [ %654, %670 ]
  %678 = phi %struct.Memory* [ %669, %668 ], [ %MEMORY.3, %670 ]
  %679 = add i64 %677, -16
  %680 = add i64 %676, 4
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i64*
  %682 = load i64, i64* %681, align 8
  store i64 %682, i64* %RCX.i1086, align 8
  %683 = zext i32 %675 to i64
  store i64 %683, i64* %RSI.i1005, align 8
  store i64 %682, i64* %RDX.i1073, align 8
  %684 = add i64 %676, 550957
  %685 = add i64 %676, 14
  %686 = load i64, i64* %6, align 8
  %687 = add i64 %686, -8
  %688 = inttoptr i64 %687 to i64*
  store i64 %685, i64* %688, align 8
  store i64 %687, i64* %6, align 8
  store i64 %684, i64* %3, align 8
  %call2_425e7c = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %684, %struct.Memory* %678)
  %689 = load i64, i64* %RAX.i158, align 8
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -28
  %692 = load i64, i64* %3, align 8
  %693 = add i64 %692, 3
  store i64 %693, i64* %3, align 8
  %694 = trunc i64 %689 to i32
  %695 = inttoptr i64 %691 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = add i32 %696, %694
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RAX.i158, align 8
  %699 = icmp ult i32 %697, %694
  %700 = icmp ult i32 %697, %696
  %701 = or i1 %699, %700
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %14, align 1
  %703 = and i32 %697, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %21, align 1
  %708 = xor i32 %696, %694
  %709 = xor i32 %708, %697
  %710 = lshr i32 %709, 4
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  store i8 %712, i8* %27, align 1
  %713 = icmp eq i32 %697, 0
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %30, align 1
  %715 = lshr i32 %697, 31
  %716 = trunc i32 %715 to i8
  store i8 %716, i8* %33, align 1
  %717 = lshr i32 %694, 31
  %718 = lshr i32 %696, 31
  %719 = xor i32 %715, %717
  %720 = xor i32 %715, %718
  %721 = add nuw nsw i32 %719, %720
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %39, align 1
  %724 = add i64 %692, 6
  store i64 %724, i64* %3, align 8
  store i32 %697, i32* %695, align 4
  %.pre50 = load i64, i64* %3, align 8
  %.pre51 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_425e87

block_.L_425e87:                                  ; preds = %routine_idivl__esi.exit838, %block_.L_425e36
  %725 = phi i64 [ %621, %block_.L_425e36 ], [ %.pre51, %routine_idivl__esi.exit838 ]
  %726 = phi i64 [ %639, %block_.L_425e36 ], [ %.pre50, %routine_idivl__esi.exit838 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_425e36 ], [ %call2_425e7c, %routine_idivl__esi.exit838 ]
  store i64 %725, i64* %RAX.i158, align 8
  %727 = add i64 %725, 72404
  %728 = add i64 %726, 15
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  store i8 0, i8* %14, align 1
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %736 = icmp eq i32 %730, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %30, align 1
  %738 = lshr i32 %730, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v81 = select i1 %736, i64 21, i64 390
  %740 = add i64 %726, %.v81
  store i64 %740, i64* %3, align 8
  br i1 %736, label %block_425e9c, label %block_.L_42600d

block_425e9c:                                     ; preds = %block_.L_425e87
  %741 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %741, i64* %RAX.i158, align 8
  %742 = add i64 %741, 1148
  %743 = add i64 %740, 15
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  store i8 0, i8* %14, align 1
  %746 = and i32 %745, 255
  %747 = tail call i32 @llvm.ctpop.i32(i32 %746)
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  store i8 %750, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %751 = icmp eq i32 %745, 0
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %30, align 1
  %753 = lshr i32 %745, 31
  %754 = trunc i32 %753 to i8
  store i8 %754, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v112 = select i1 %751, i64 78, i64 21
  %755 = add i64 %740, %.v112
  store i64 %755, i64* %3, align 8
  br i1 %751, label %block_.L_425eea, label %block_425eb1

block_425eb1:                                     ; preds = %block_425e9c
  store i64 4294967295, i64* %RAX.i158, align 8
  store i64 %725, i64* %RCX.i1086, align 8
  %756 = add i64 %725, 72448
  %757 = add i64 %755, 19
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RDX.i1073, align 8
  %761 = load i32, i32* bitcast (%G_0x6d32c8_type* @G_0x6d32c8 to i32*), align 8
  %762 = add i32 %761, 4
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RSI.i1005, align 8
  %764 = icmp ugt i32 %761, -5
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %14, align 1
  %766 = and i32 %762, 255
  %767 = tail call i32 @llvm.ctpop.i32(i32 %766)
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  store i8 %770, i8* %21, align 1
  %771 = xor i32 %762, %761
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  store i8 %774, i8* %27, align 1
  %775 = icmp eq i32 %762, 0
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %30, align 1
  %777 = lshr i32 %762, 31
  %778 = trunc i32 %777 to i8
  store i8 %778, i8* %33, align 1
  %779 = lshr i32 %761, 31
  %780 = xor i32 %777, %779
  %781 = add nuw nsw i32 %780, %777
  %782 = icmp eq i32 %781, 2
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %39, align 1
  store i64 %763, i64* %RCX.i1086, align 8
  %784 = add i64 %755, 33
  store i64 %784, i64* %3, align 8
  %785 = trunc i32 %762 to i5
  switch i5 %785, label %786 [
    i5 0, label %routine_shll__cl___eax.exit795
    i5 1, label %795
  ]

; <label>:786:                                    ; preds = %block_425eb1
  %787 = and i32 %762, 31
  %788 = zext i32 %787 to i64
  %789 = add nuw nsw i64 %788, 4294967295
  %790 = and i64 %789, 4294967295
  %791 = shl i64 4294967295, %790
  %792 = trunc i64 %791 to i32
  %793 = icmp slt i32 %792, 0
  %794 = shl i32 %792, 1
  br label %795

; <label>:795:                                    ; preds = %block_425eb1, %786
  %796 = phi i1 [ %793, %786 ], [ true, %block_425eb1 ]
  %797 = phi i32 [ %794, %786 ], [ -2, %block_425eb1 ]
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RAX.i158, align 8
  %799 = zext i1 %796 to i8
  store i8 %799, i8* %14, align 1
  %800 = and i32 %797, 254
  %801 = tail call i32 @llvm.ctpop.i32(i32 %800)
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = xor i8 %803, 1
  store i8 %804, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %805 = icmp eq i32 %797, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %30, align 1
  %807 = lshr i32 %797, 31
  %808 = trunc i32 %807 to i8
  store i8 %808, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_shll__cl___eax.exit795

routine_shll__cl___eax.exit795:                   ; preds = %795, %block_425eb1
  %809 = phi i64 [ %798, %795 ], [ 4294967295, %block_425eb1 ]
  %810 = xor i64 %809, -1
  %811 = and i64 %810, 4294967295
  store i64 %811, i64* %RAX.i158, align 8
  %812 = and i64 %760, %810
  %813 = trunc i64 %812 to i32
  store i64 %812, i64* %RDX.i1073, align 8
  store i8 0, i8* %14, align 1
  %814 = and i32 %813, 255
  %815 = tail call i32 @llvm.ctpop.i32(i32 %814)
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  store i8 %818, i8* %21, align 1
  %819 = icmp eq i32 %813, 0
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %30, align 1
  %821 = lshr i32 %813, 31
  %822 = trunc i32 %821 to i8
  store i8 %822, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %725, i64* %RDI.i1025, align 8
  %823 = add i64 %725, 72428
  %824 = add i64 %755, 52
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  store i32 %813, i32* %825, align 4
  %826 = load i64, i64* %3, align 8
  %827 = add i64 %826, 170
  br label %block_.L_425f8f

block_.L_425eea:                                  ; preds = %block_425e9c
  %828 = load i64, i64* %RBP.i, align 8
  %829 = add i64 %828, -32
  %830 = add i64 %755, 4
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  store i8 0, i8* %14, align 1
  %833 = and i32 %832, 255
  %834 = tail call i32 @llvm.ctpop.i32(i32 %833)
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = xor i8 %836, 1
  store i8 %837, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %838 = icmp eq i32 %832, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %30, align 1
  %840 = lshr i32 %832, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v115 = select i1 %838, i64 28, i64 10
  %842 = add i64 %755, %.v115
  store i64 %842, i64* %3, align 8
  br i1 %838, label %block_.L_425f06, label %block_425ef4

block_425ef4:                                     ; preds = %block_.L_425eea
  store i64 %725, i64* %RAX.i158, align 8
  %843 = add i64 %725, 28
  %844 = add i64 %842, 12
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = add i32 %846, -1
  %848 = icmp eq i32 %846, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %14, align 1
  %850 = and i32 %847, 255
  %851 = tail call i32 @llvm.ctpop.i32(i32 %850)
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  store i8 %854, i8* %21, align 1
  %855 = xor i32 %847, %846
  %856 = lshr i32 %855, 4
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  store i8 %858, i8* %27, align 1
  %859 = icmp eq i32 %847, 0
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %30, align 1
  %861 = lshr i32 %847, 31
  %862 = trunc i32 %861 to i8
  store i8 %862, i8* %33, align 1
  %863 = lshr i32 %846, 31
  %864 = xor i32 %861, %863
  %865 = add nuw nsw i32 %864, %863
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %39, align 1
  %.v116 = select i1 %859, i64 18, i64 75
  %868 = add i64 %842, %.v116
  store i64 %868, i64* %3, align 8
  br i1 %859, label %block_.L_425f06, label %block_.L_425f3f

block_.L_425f06:                                  ; preds = %block_425ef4, %block_.L_425eea
  %869 = phi i64 [ %868, %block_425ef4 ], [ %842, %block_.L_425eea ]
  store i64 4294967295, i64* %RAX.i158, align 8
  store i64 %725, i64* %RCX.i1086, align 8
  %870 = add i64 %725, 72448
  %871 = add i64 %869, 19
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %RDX.i1073, align 8
  %875 = load i32, i32* bitcast (%G_0x6d32c8_type* @G_0x6d32c8 to i32*), align 8
  %876 = add i32 %875, 4
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RSI.i1005, align 8
  %878 = icmp ugt i32 %875, -5
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %14, align 1
  %880 = and i32 %876, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %21, align 1
  %885 = xor i32 %876, %875
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %27, align 1
  %889 = icmp eq i32 %876, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %30, align 1
  %891 = lshr i32 %876, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %33, align 1
  %893 = lshr i32 %875, 31
  %894 = xor i32 %891, %893
  %895 = add nuw nsw i32 %894, %891
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %39, align 1
  store i64 %877, i64* %RCX.i1086, align 8
  %898 = add i64 %869, 33
  store i64 %898, i64* %3, align 8
  %899 = trunc i32 %876 to i5
  switch i5 %899, label %900 [
    i5 0, label %routine_shll__cl___eax.exit758
    i5 1, label %909
  ]

; <label>:900:                                    ; preds = %block_.L_425f06
  %901 = and i32 %876, 31
  %902 = zext i32 %901 to i64
  %903 = add nuw nsw i64 %902, 4294967295
  %904 = and i64 %903, 4294967295
  %905 = shl i64 4294967295, %904
  %906 = trunc i64 %905 to i32
  %907 = icmp slt i32 %906, 0
  %908 = shl i32 %906, 1
  br label %909

; <label>:909:                                    ; preds = %block_.L_425f06, %900
  %910 = phi i1 [ %907, %900 ], [ true, %block_.L_425f06 ]
  %911 = phi i32 [ %908, %900 ], [ -2, %block_.L_425f06 ]
  %912 = zext i32 %911 to i64
  store i64 %912, i64* %RAX.i158, align 8
  %913 = zext i1 %910 to i8
  store i8 %913, i8* %14, align 1
  %914 = and i32 %911, 254
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %919 = icmp eq i32 %911, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %30, align 1
  %921 = lshr i32 %911, 31
  %922 = trunc i32 %921 to i8
  store i8 %922, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_shll__cl___eax.exit758

routine_shll__cl___eax.exit758:                   ; preds = %909, %block_.L_425f06
  %923 = phi i64 [ %912, %909 ], [ 4294967295, %block_.L_425f06 ]
  %924 = xor i64 %923, -1
  %925 = and i64 %924, 4294967295
  store i64 %925, i64* %RAX.i158, align 8
  %926 = and i64 %874, %924
  %927 = trunc i64 %926 to i32
  store i64 %926, i64* %RDX.i1073, align 8
  store i8 0, i8* %14, align 1
  %928 = and i32 %927, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %21, align 1
  %933 = icmp eq i32 %927, 0
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %30, align 1
  %935 = lshr i32 %927, 31
  %936 = trunc i32 %935 to i8
  store i8 %936, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %725, i64* %RDI.i1025, align 8
  %937 = add i64 %725, 72428
  %938 = add i64 %869, 52
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  store i32 %927, i32* %939, align 4
  %940 = load i64, i64* %3, align 8
  %941 = add i64 %940, 80
  br label %block_.L_425f8a

block_.L_425f3f:                                  ; preds = %block_425ef4
  store i64 %725, i64* %RAX.i158, align 8
  %942 = add i64 %868, 12
  store i64 %942, i64* %3, align 8
  %943 = load i32, i32* %845, align 4
  %944 = add i32 %943, -2
  %945 = icmp ult i32 %943, 2
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %14, align 1
  %947 = and i32 %944, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %21, align 1
  %952 = xor i32 %944, %943
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %27, align 1
  %956 = icmp eq i32 %944, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %30, align 1
  %958 = lshr i32 %944, 31
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %33, align 1
  %960 = lshr i32 %943, 31
  %961 = xor i32 %958, %960
  %962 = add nuw nsw i32 %961, %960
  %963 = icmp eq i32 %962, 2
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %39, align 1
  %.v117 = select i1 %956, i64 18, i64 70
  %965 = add i64 %868, %.v117
  store i64 %965, i64* %3, align 8
  br i1 %956, label %block_425f51, label %block_.L_425f85

block_425f51:                                     ; preds = %block_.L_425f3f
  store i64 4294967295, i64* %RAX.i158, align 8
  store i64 %725, i64* %RCX.i1086, align 8
  %966 = add i64 %725, 72452
  %967 = add i64 %965, 19
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to i32*
  %969 = load i32, i32* %968, align 4
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RDX.i1073, align 8
  %971 = load i32, i32* bitcast (%G_0x6d32c8_type* @G_0x6d32c8 to i32*), align 8
  %972 = add i32 %971, 4
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RSI.i1005, align 8
  %974 = icmp ugt i32 %971, -5
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %14, align 1
  %976 = and i32 %972, 255
  %977 = tail call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  store i8 %980, i8* %21, align 1
  %981 = xor i32 %972, %971
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %27, align 1
  %985 = icmp eq i32 %972, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %30, align 1
  %987 = lshr i32 %972, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %33, align 1
  %989 = lshr i32 %971, 31
  %990 = xor i32 %987, %989
  %991 = add nuw nsw i32 %990, %987
  %992 = icmp eq i32 %991, 2
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %39, align 1
  store i64 %973, i64* %RCX.i1086, align 8
  %994 = add i64 %965, 33
  store i64 %994, i64* %3, align 8
  %995 = trunc i32 %972 to i5
  switch i5 %995, label %996 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %1005
  ]

; <label>:996:                                    ; preds = %block_425f51
  %997 = and i32 %972, 31
  %998 = zext i32 %997 to i64
  %999 = add nuw nsw i64 %998, 4294967295
  %1000 = and i64 %999, 4294967295
  %1001 = shl i64 4294967295, %1000
  %1002 = trunc i64 %1001 to i32
  %1003 = icmp slt i32 %1002, 0
  %1004 = shl i32 %1002, 1
  br label %1005

; <label>:1005:                                   ; preds = %block_425f51, %996
  %1006 = phi i1 [ %1003, %996 ], [ true, %block_425f51 ]
  %1007 = phi i32 [ %1004, %996 ], [ -2, %block_425f51 ]
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RAX.i158, align 8
  %1009 = zext i1 %1006 to i8
  store i8 %1009, i8* %14, align 1
  %1010 = and i32 %1007, 254
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1015 = icmp eq i32 %1007, 0
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %30, align 1
  %1017 = lshr i32 %1007, 31
  %1018 = trunc i32 %1017 to i8
  store i8 %1018, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %1005, %block_425f51
  %1019 = phi i64 [ %1008, %1005 ], [ 4294967295, %block_425f51 ]
  %1020 = xor i64 %1019, -1
  %1021 = and i64 %1020, 4294967295
  store i64 %1021, i64* %RAX.i158, align 8
  %1022 = and i64 %970, %1020
  %1023 = trunc i64 %1022 to i32
  store i64 %1022, i64* %RDX.i1073, align 8
  store i8 0, i8* %14, align 1
  %1024 = and i32 %1023, 255
  %1025 = tail call i32 @llvm.ctpop.i32(i32 %1024)
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = xor i8 %1027, 1
  store i8 %1028, i8* %21, align 1
  %1029 = icmp eq i32 %1023, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %30, align 1
  %1031 = lshr i32 %1023, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %725, i64* %RDI.i1025, align 8
  %1033 = add i64 %725, 72428
  %1034 = add i64 %965, 52
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  store i32 %1023, i32* %1035, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_425f85

block_.L_425f85:                                  ; preds = %block_.L_425f3f, %routine_shll__cl___eax.exit
  %1036 = phi i64 [ %.pre52, %routine_shll__cl___eax.exit ], [ %965, %block_.L_425f3f ]
  %1037 = add i64 %1036, 5
  store i64 %1037, i64* %3, align 8
  br label %block_.L_425f8a

block_.L_425f8a:                                  ; preds = %block_.L_425f85, %routine_shll__cl___eax.exit758
  %storemerge44 = phi i64 [ %941, %routine_shll__cl___eax.exit758 ], [ %1037, %block_.L_425f85 ]
  %1038 = add i64 %storemerge44, 5
  store i64 %1038, i64* %3, align 8
  br label %block_.L_425f8f

block_.L_425f8f:                                  ; preds = %block_.L_425f8a, %routine_shll__cl___eax.exit795
  %storemerge = phi i64 [ %827, %routine_shll__cl___eax.exit795 ], [ %1038, %block_.L_425f8a ]
  store i64 ptrtoint (%G__0x4bfaa7_type* @G__0x4bfaa7 to i64), i64* %RSI.i1005, align 8
  %1039 = load i32, i32* bitcast (%G_0x6d32c8_type* @G_0x6d32c8 to i32*), align 8
  %1040 = add i32 %1039, 4
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX.i158, align 8
  %1042 = icmp ugt i32 %1039, -5
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %14, align 1
  %1044 = and i32 %1040, 255
  %1045 = tail call i32 @llvm.ctpop.i32(i32 %1044)
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = xor i8 %1047, 1
  store i8 %1048, i8* %21, align 1
  %1049 = xor i32 %1040, %1039
  %1050 = lshr i32 %1049, 4
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  store i8 %1052, i8* %27, align 1
  %1053 = icmp eq i32 %1040, 0
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %30, align 1
  %1055 = lshr i32 %1040, 31
  %1056 = trunc i32 %1055 to i8
  store i8 %1056, i8* %33, align 1
  %1057 = lshr i32 %1039, 31
  %1058 = xor i32 %1055, %1057
  %1059 = add nuw nsw i32 %1058, %1055
  %1060 = icmp eq i32 %1059, 2
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %39, align 1
  %1062 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1062, i64* %RCX.i1086, align 8
  %1063 = add i64 %1062, 72428
  %1064 = add i64 %storemerge, 34
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = zext i32 %1066 to i64
  store i64 %1067, i64* %RDX.i1073, align 8
  %1068 = load i64, i64* %RBP.i, align 8
  %1069 = add i64 %1068, -16
  %1070 = add i64 %storemerge, 38
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i64*
  %1072 = load i64, i64* %1071, align 8
  store i64 %1072, i64* %RCX.i1086, align 8
  store i64 %1041, i64* %RDI.i1025, align 8
  %1073 = add i64 %storemerge, 551985
  %1074 = add i64 %storemerge, 45
  %1075 = load i64, i64* %6, align 8
  %1076 = add i64 %1075, -8
  %1077 = inttoptr i64 %1076 to i64*
  store i64 %1074, i64* %1077, align 8
  store i64 %1076, i64* %6, align 8
  store i64 %1073, i64* %3, align 8
  %call2_425fb7 = tail call %struct.Memory* @sub_4acbc0.u_v(%struct.State* nonnull %0, i64 %1073, %struct.Memory* %MEMORY.4)
  %1078 = load i64, i64* %RAX.i158, align 8
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -28
  %1081 = load i64, i64* %3, align 8
  %1082 = add i64 %1081, 3
  store i64 %1082, i64* %3, align 8
  %1083 = trunc i64 %1078 to i32
  %1084 = inttoptr i64 %1080 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = add i32 %1085, %1083
  %1087 = zext i32 %1086 to i64
  store i64 %1087, i64* %RAX.i158, align 8
  %1088 = icmp ult i32 %1086, %1083
  %1089 = icmp ult i32 %1086, %1085
  %1090 = or i1 %1088, %1089
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %14, align 1
  %1092 = and i32 %1086, 255
  %1093 = tail call i32 @llvm.ctpop.i32(i32 %1092)
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  store i8 %1096, i8* %21, align 1
  %1097 = xor i32 %1085, %1083
  %1098 = xor i32 %1097, %1086
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %27, align 1
  %1102 = icmp eq i32 %1086, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %30, align 1
  %1104 = lshr i32 %1086, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %33, align 1
  %1106 = lshr i32 %1083, 31
  %1107 = lshr i32 %1085, 31
  %1108 = xor i32 %1104, %1106
  %1109 = xor i32 %1104, %1107
  %1110 = add nuw nsw i32 %1108, %1109
  %1111 = icmp eq i32 %1110, 2
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %39, align 1
  %1113 = add i64 %1081, 6
  store i64 %1113, i64* %3, align 8
  store i32 %1086, i32* %1084, align 4
  %1114 = load i64, i64* %3, align 8
  %1115 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1115, i64* %RCX.i1086, align 8
  %1116 = add i64 %1115, 72492
  %1117 = add i64 %1114, 15
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  store i8 0, i8* %14, align 1
  %1120 = and i32 %1119, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1125 = icmp eq i32 %1119, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %30, align 1
  %1127 = lshr i32 %1119, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v113 = select i1 %1125, i64 70, i64 21
  %1129 = add i64 %1114, %.v113
  store i64 %1129, i64* %3, align 8
  br i1 %1125, label %block_.L_426008, label %block_425fd7

block_425fd7:                                     ; preds = %block_.L_425f8f
  %1130 = load i64, i64* %RBP.i, align 8
  %1131 = add i64 %1130, -32
  %1132 = add i64 %1129, 4
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  store i8 0, i8* %14, align 1
  %1135 = and i32 %1134, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1140 = icmp eq i32 %1134, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %30, align 1
  %1142 = lshr i32 %1134, 31
  %1143 = trunc i32 %1142 to i8
  store i8 %1143, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v114 = select i1 %1140, i64 10, i64 49
  %1144 = add i64 %1129, %.v114
  store i64 %1144, i64* %3, align 8
  br i1 %1140, label %block_425fe1, label %block_.L_426008

block_425fe1:                                     ; preds = %block_425fd7
  store i64 ptrtoint (%G__0x4bfabd_type* @G__0x4bfabd to i64), i64* %RDI.i1025, align 8
  store i64 %1115, i64* %RAX.i158, align 8
  %1145 = add i64 %1115, 72432
  %1146 = add i64 %1144, 24
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RSI.i1005, align 8
  %1150 = add i64 %1130, -16
  %1151 = add i64 %1144, 28
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %RDX.i1073, align 8
  %1154 = add i64 %1144, 551391
  %1155 = add i64 %1144, 33
  %1156 = load i64, i64* %6, align 8
  %1157 = add i64 %1156, -8
  %1158 = inttoptr i64 %1157 to i64*
  store i64 %1155, i64* %1158, align 8
  store i64 %1157, i64* %6, align 8
  store i64 %1154, i64* %3, align 8
  %call2_425ffd = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1154, %struct.Memory* %call2_425fb7)
  %1159 = load i64, i64* %RAX.i158, align 8
  %1160 = load i64, i64* %RBP.i, align 8
  %1161 = add i64 %1160, -28
  %1162 = load i64, i64* %3, align 8
  %1163 = add i64 %1162, 3
  store i64 %1163, i64* %3, align 8
  %1164 = trunc i64 %1159 to i32
  %1165 = inttoptr i64 %1161 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = add i32 %1166, %1164
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RAX.i158, align 8
  %1169 = icmp ult i32 %1167, %1164
  %1170 = icmp ult i32 %1167, %1166
  %1171 = or i1 %1169, %1170
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %14, align 1
  %1173 = and i32 %1167, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %21, align 1
  %1178 = xor i32 %1166, %1164
  %1179 = xor i32 %1178, %1167
  %1180 = lshr i32 %1179, 4
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  store i8 %1182, i8* %27, align 1
  %1183 = icmp eq i32 %1167, 0
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %30, align 1
  %1185 = lshr i32 %1167, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %33, align 1
  %1187 = lshr i32 %1164, 31
  %1188 = lshr i32 %1166, 31
  %1189 = xor i32 %1185, %1187
  %1190 = xor i32 %1185, %1188
  %1191 = add nuw nsw i32 %1189, %1190
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %39, align 1
  %1194 = add i64 %1162, 6
  store i64 %1194, i64* %3, align 8
  store i32 %1167, i32* %1165, align 4
  %.pre53 = load i64, i64* %3, align 8
  %.pre54.pre = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_426008

block_.L_426008:                                  ; preds = %block_425fd7, %block_425fe1, %block_.L_425f8f
  %.pre54 = phi i64 [ %1115, %block_.L_425f8f ], [ %1115, %block_425fd7 ], [ %.pre54.pre, %block_425fe1 ]
  %1195 = phi i64 [ %1129, %block_.L_425f8f ], [ %1144, %block_425fd7 ], [ %.pre53, %block_425fe1 ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_425fb7, %block_.L_425f8f ], [ %call2_425fb7, %block_425fd7 ], [ %call2_425ffd, %block_425fe1 ]
  %1196 = add i64 %1195, 5
  store i64 %1196, i64* %3, align 8
  br label %block_.L_42600d

block_.L_42600d:                                  ; preds = %block_.L_425e87, %block_.L_426008
  %1197 = phi i64 [ %725, %block_.L_425e87 ], [ %.pre54, %block_.L_426008 ]
  %1198 = phi i64 [ %740, %block_.L_425e87 ], [ %1196, %block_.L_426008 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.4, %block_.L_425e87 ], [ %MEMORY.9, %block_.L_426008 ]
  store i64 %1197, i64* %RAX.i158, align 8
  %1199 = add i64 %1197, 72404
  %1200 = add i64 %1198, 15
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = add i32 %1202, -1
  %1204 = icmp eq i32 %1202, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %14, align 1
  %1206 = and i32 %1203, 255
  %1207 = tail call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  store i8 %1210, i8* %21, align 1
  %1211 = xor i32 %1203, %1202
  %1212 = lshr i32 %1211, 4
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  store i8 %1214, i8* %27, align 1
  %1215 = icmp eq i32 %1203, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %30, align 1
  %1217 = lshr i32 %1203, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %33, align 1
  %1219 = lshr i32 %1202, 31
  %1220 = xor i32 %1217, %1219
  %1221 = add nuw nsw i32 %1220, %1219
  %1222 = icmp eq i32 %1221, 2
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %39, align 1
  %.v82 = select i1 %1215, i64 21, i64 156
  %1224 = add i64 %1198, %.v82
  store i64 %1224, i64* %3, align 8
  br i1 %1215, label %block_426022, label %block_.L_4260a9

block_426022:                                     ; preds = %block_.L_42600d
  store i64 %1197, i64* %RAX.i158, align 8
  %1225 = add i64 %1197, 72408
  %1226 = add i64 %1224, 15
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  %1228 = load i32, i32* %1227, align 4
  store i8 0, i8* %14, align 1
  %1229 = and i32 %1228, 255
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  store i8 %1233, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1234 = icmp eq i32 %1228, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %30, align 1
  %1236 = lshr i32 %1228, 31
  %1237 = trunc i32 %1236 to i8
  store i8 %1237, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v109 = select i1 %1234, i64 21, i64 135
  %1238 = add i64 %1224, %.v109
  store i64 %1238, i64* %3, align 8
  br i1 %1234, label %block_426037, label %block_.L_4260a9

block_426037:                                     ; preds = %block_426022
  store i64 ptrtoint (%G__0x4bfadc_type* @G__0x4bfadc to i64), i64* %RDI.i1025, align 8
  store i64 %1197, i64* %RAX.i158, align 8
  %1239 = add i64 %1197, 72436
  %1240 = add i64 %1238, 24
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = zext i32 %1242 to i64
  store i64 %1243, i64* %RSI.i1005, align 8
  %1244 = load i64, i64* %RBP.i, align 8
  %1245 = add i64 %1244, -16
  %1246 = add i64 %1238, 28
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i64*
  %1248 = load i64, i64* %1247, align 8
  store i64 %1248, i64* %RDX.i1073, align 8
  %1249 = add i64 %1238, 551305
  %1250 = add i64 %1238, 33
  %1251 = load i64, i64* %6, align 8
  %1252 = add i64 %1251, -8
  %1253 = inttoptr i64 %1252 to i64*
  store i64 %1250, i64* %1253, align 8
  store i64 %1252, i64* %6, align 8
  store i64 %1249, i64* %3, align 8
  %call2_426053 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1249, %struct.Memory* %MEMORY.10)
  %1254 = load i64, i64* %RAX.i158, align 8
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -28
  %1257 = load i64, i64* %3, align 8
  %1258 = add i64 %1257, 3
  store i64 %1258, i64* %3, align 8
  %1259 = trunc i64 %1254 to i32
  %1260 = inttoptr i64 %1256 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = add i32 %1261, %1259
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RAX.i158, align 8
  %1264 = icmp ult i32 %1262, %1259
  %1265 = icmp ult i32 %1262, %1261
  %1266 = or i1 %1264, %1265
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %14, align 1
  %1268 = and i32 %1262, 255
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  store i8 %1272, i8* %21, align 1
  %1273 = xor i32 %1261, %1259
  %1274 = xor i32 %1273, %1262
  %1275 = lshr i32 %1274, 4
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  store i8 %1277, i8* %27, align 1
  %1278 = icmp eq i32 %1262, 0
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %30, align 1
  %1280 = lshr i32 %1262, 31
  %1281 = trunc i32 %1280 to i8
  store i8 %1281, i8* %33, align 1
  %1282 = lshr i32 %1259, 31
  %1283 = lshr i32 %1261, 31
  %1284 = xor i32 %1280, %1282
  %1285 = xor i32 %1280, %1283
  %1286 = add nuw nsw i32 %1284, %1285
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %39, align 1
  %1289 = add i64 %1257, 6
  store i64 %1289, i64* %3, align 8
  store i32 %1262, i32* %1260, align 4
  %1290 = load i64, i64* %3, align 8
  %1291 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1291, i64* %RDX.i1073, align 8
  %1292 = add i64 %1291, 72492
  %1293 = add i64 %1290, 15
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  store i8 0, i8* %14, align 1
  %1296 = and i32 %1295, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1301 = icmp eq i32 %1295, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %30, align 1
  %1303 = lshr i32 %1295, 31
  %1304 = trunc i32 %1303 to i8
  store i8 %1304, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v110 = select i1 %1301, i64 70, i64 21
  %1305 = add i64 %1290, %.v110
  store i64 %1305, i64* %3, align 8
  br i1 %1301, label %block_.L_4260a4, label %block_426073

block_426073:                                     ; preds = %block_426037
  %1306 = load i64, i64* %RBP.i, align 8
  %1307 = add i64 %1306, -32
  %1308 = add i64 %1305, 4
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  store i8 0, i8* %14, align 1
  %1311 = and i32 %1310, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1316 = icmp eq i32 %1310, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %30, align 1
  %1318 = lshr i32 %1310, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v111 = select i1 %1316, i64 10, i64 49
  %1320 = add i64 %1305, %.v111
  store i64 %1320, i64* %3, align 8
  br i1 %1316, label %block_42607d, label %block_.L_4260a4

block_42607d:                                     ; preds = %block_426073
  store i64 ptrtoint (%G__0x4bfaf7_type* @G__0x4bfaf7 to i64), i64* %RDI.i1025, align 8
  store i64 %1291, i64* %RAX.i158, align 8
  %1321 = add i64 %1291, 72440
  %1322 = add i64 %1320, 24
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = zext i32 %1324 to i64
  store i64 %1325, i64* %RSI.i1005, align 8
  %1326 = add i64 %1306, -16
  %1327 = add i64 %1320, 28
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i64*
  %1329 = load i64, i64* %1328, align 8
  store i64 %1329, i64* %RDX.i1073, align 8
  %1330 = add i64 %1320, 551235
  %1331 = add i64 %1320, 33
  %1332 = load i64, i64* %6, align 8
  %1333 = add i64 %1332, -8
  %1334 = inttoptr i64 %1333 to i64*
  store i64 %1331, i64* %1334, align 8
  store i64 %1333, i64* %6, align 8
  store i64 %1330, i64* %3, align 8
  %call2_426099 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %1330, %struct.Memory* %call2_426053)
  %1335 = load i64, i64* %RAX.i158, align 8
  %1336 = load i64, i64* %RBP.i, align 8
  %1337 = add i64 %1336, -28
  %1338 = load i64, i64* %3, align 8
  %1339 = add i64 %1338, 3
  store i64 %1339, i64* %3, align 8
  %1340 = trunc i64 %1335 to i32
  %1341 = inttoptr i64 %1337 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = add i32 %1342, %1340
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RAX.i158, align 8
  %1345 = icmp ult i32 %1343, %1340
  %1346 = icmp ult i32 %1343, %1342
  %1347 = or i1 %1345, %1346
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %14, align 1
  %1349 = and i32 %1343, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349)
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %21, align 1
  %1354 = xor i32 %1342, %1340
  %1355 = xor i32 %1354, %1343
  %1356 = lshr i32 %1355, 4
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  store i8 %1358, i8* %27, align 1
  %1359 = icmp eq i32 %1343, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %30, align 1
  %1361 = lshr i32 %1343, 31
  %1362 = trunc i32 %1361 to i8
  store i8 %1362, i8* %33, align 1
  %1363 = lshr i32 %1340, 31
  %1364 = lshr i32 %1342, 31
  %1365 = xor i32 %1361, %1363
  %1366 = xor i32 %1361, %1364
  %1367 = add nuw nsw i32 %1365, %1366
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %39, align 1
  %1370 = add i64 %1338, 6
  store i64 %1370, i64* %3, align 8
  store i32 %1343, i32* %1341, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_4260a4

block_.L_4260a4:                                  ; preds = %block_426073, %block_42607d, %block_426037
  %1371 = phi i64 [ %1305, %block_426037 ], [ %1320, %block_426073 ], [ %.pre55, %block_42607d ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_426053, %block_426037 ], [ %call2_426053, %block_426073 ], [ %call2_426099, %block_42607d ]
  %1372 = add i64 %1371, 5
  store i64 %1372, i64* %3, align 8
  br label %block_.L_4260a9

block_.L_4260a9:                                  ; preds = %block_426022, %block_.L_42600d, %block_.L_4260a4
  %1373 = phi i64 [ %1224, %block_.L_42600d ], [ %1238, %block_426022 ], [ %1372, %block_.L_4260a4 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.10, %block_.L_42600d ], [ %MEMORY.10, %block_426022 ], [ %MEMORY.11, %block_.L_4260a4 ]
  %1374 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1374, i64* %RAX.i158, align 8
  %1375 = add i64 %1374, 3204
  %1376 = add i64 %1373, 15
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  %1378 = load i32, i32* %1377, align 4
  store i8 0, i8* %14, align 1
  %1379 = and i32 %1378, 255
  %1380 = tail call i32 @llvm.ctpop.i32(i32 %1379)
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1384 = icmp eq i32 %1378, 0
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %30, align 1
  %1386 = lshr i32 %1378, 31
  %1387 = trunc i32 %1386 to i8
  store i8 %1387, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v83 = select i1 %1384, i64 60, i64 21
  %1388 = add i64 %1373, %.v83
  store i64 %1388, i64* %3, align 8
  br i1 %1384, label %block_.L_4260e5, label %block_4260be

block_4260be:                                     ; preds = %block_.L_4260a9
  store i64 ptrtoint (%G__0x4bfb12_type* @G__0x4bfb12 to i64), i64* %RDI.i1025, align 8
  %1389 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1389, i64* %RAX.i158, align 8
  %1390 = add i64 %1389, 72396
  %1391 = add i64 %1388, 24
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RSI.i1005, align 8
  %1395 = load i64, i64* %RBP.i, align 8
  %1396 = add i64 %1395, -16
  %1397 = add i64 %1388, 28
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i64*
  %1399 = load i64, i64* %1398, align 8
  store i64 %1399, i64* %RDX.i1073, align 8
  %1400 = add i64 %1388, 550370
  %1401 = add i64 %1388, 33
  %1402 = load i64, i64* %6, align 8
  %1403 = add i64 %1402, -8
  %1404 = inttoptr i64 %1403 to i64*
  store i64 %1401, i64* %1404, align 8
  store i64 %1403, i64* %6, align 8
  store i64 %1400, i64* %3, align 8
  %call2_4260da = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1400, %struct.Memory* %MEMORY.12)
  %1405 = load i64, i64* %RAX.i158, align 8
  %1406 = load i64, i64* %RBP.i, align 8
  %1407 = add i64 %1406, -28
  %1408 = load i64, i64* %3, align 8
  %1409 = add i64 %1408, 3
  store i64 %1409, i64* %3, align 8
  %1410 = trunc i64 %1405 to i32
  %1411 = inttoptr i64 %1407 to i32*
  %1412 = load i32, i32* %1411, align 4
  %1413 = add i32 %1412, %1410
  %1414 = zext i32 %1413 to i64
  store i64 %1414, i64* %RAX.i158, align 8
  %1415 = icmp ult i32 %1413, %1410
  %1416 = icmp ult i32 %1413, %1412
  %1417 = or i1 %1415, %1416
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %14, align 1
  %1419 = and i32 %1413, 255
  %1420 = tail call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %21, align 1
  %1424 = xor i32 %1412, %1410
  %1425 = xor i32 %1424, %1413
  %1426 = lshr i32 %1425, 4
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  store i8 %1428, i8* %27, align 1
  %1429 = icmp eq i32 %1413, 0
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %30, align 1
  %1431 = lshr i32 %1413, 31
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, i8* %33, align 1
  %1433 = lshr i32 %1410, 31
  %1434 = lshr i32 %1412, 31
  %1435 = xor i32 %1431, %1433
  %1436 = xor i32 %1431, %1434
  %1437 = add nuw nsw i32 %1435, %1436
  %1438 = icmp eq i32 %1437, 2
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %39, align 1
  %1440 = add i64 %1408, 6
  store i64 %1440, i64* %3, align 8
  store i32 %1413, i32* %1411, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_4260e5

block_.L_4260e5:                                  ; preds = %block_4260be, %block_.L_4260a9
  %1441 = phi i64 [ %1388, %block_.L_4260a9 ], [ %.pre56, %block_4260be ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_.L_4260a9 ], [ %call2_4260da, %block_4260be ]
  %1442 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1442, i64* %RAX.i158, align 8
  %1443 = add i64 %1442, 24
  %1444 = add i64 %1441, 12
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = add i32 %1446, -1
  %1448 = icmp eq i32 %1446, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %14, align 1
  %1450 = and i32 %1447, 255
  %1451 = tail call i32 @llvm.ctpop.i32(i32 %1450)
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  store i8 %1454, i8* %21, align 1
  %1455 = xor i32 %1447, %1446
  %1456 = lshr i32 %1455, 4
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  store i8 %1458, i8* %27, align 1
  %1459 = icmp eq i32 %1447, 0
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %30, align 1
  %1461 = lshr i32 %1447, 31
  %1462 = trunc i32 %1461 to i8
  store i8 %1462, i8* %33, align 1
  %1463 = lshr i32 %1446, 31
  %1464 = xor i32 %1461, %1463
  %1465 = add nuw nsw i32 %1464, %1463
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %39, align 1
  %.v84 = select i1 %1459, i64 18, i64 57
  %1468 = add i64 %1441, %.v84
  store i64 %1468, i64* %3, align 8
  br i1 %1459, label %block_4260f7, label %block_.L_42611e

block_4260f7:                                     ; preds = %block_.L_4260e5
  store i64 ptrtoint (%G__0x4bfb28_type* @G__0x4bfb28 to i64), i64* %RDI.i1025, align 8
  store i64 %1442, i64* %RAX.i158, align 8
  %1469 = add i64 %1442, 71996
  %1470 = add i64 %1468, 24
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = zext i32 %1472 to i64
  store i64 %1473, i64* %RSI.i1005, align 8
  %1474 = load i64, i64* %RBP.i, align 8
  %1475 = add i64 %1474, -16
  %1476 = add i64 %1468, 28
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i64*
  %1478 = load i64, i64* %1477, align 8
  store i64 %1478, i64* %RDX.i1073, align 8
  %1479 = add i64 %1468, 551433
  %1480 = add i64 %1468, 33
  %1481 = load i64, i64* %6, align 8
  %1482 = add i64 %1481, -8
  %1483 = inttoptr i64 %1482 to i64*
  store i64 %1480, i64* %1483, align 8
  store i64 %1482, i64* %6, align 8
  store i64 %1479, i64* %3, align 8
  %call2_426113 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1479, %struct.Memory* %MEMORY.13)
  %1484 = load i64, i64* %RAX.i158, align 8
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -28
  %1487 = load i64, i64* %3, align 8
  %1488 = add i64 %1487, 3
  store i64 %1488, i64* %3, align 8
  %1489 = trunc i64 %1484 to i32
  %1490 = inttoptr i64 %1486 to i32*
  %1491 = load i32, i32* %1490, align 4
  %1492 = add i32 %1491, %1489
  %1493 = zext i32 %1492 to i64
  store i64 %1493, i64* %RAX.i158, align 8
  %1494 = icmp ult i32 %1492, %1489
  %1495 = icmp ult i32 %1492, %1491
  %1496 = or i1 %1494, %1495
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %14, align 1
  %1498 = and i32 %1492, 255
  %1499 = tail call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  store i8 %1502, i8* %21, align 1
  %1503 = xor i32 %1491, %1489
  %1504 = xor i32 %1503, %1492
  %1505 = lshr i32 %1504, 4
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  store i8 %1507, i8* %27, align 1
  %1508 = icmp eq i32 %1492, 0
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %30, align 1
  %1510 = lshr i32 %1492, 31
  %1511 = trunc i32 %1510 to i8
  store i8 %1511, i8* %33, align 1
  %1512 = lshr i32 %1489, 31
  %1513 = lshr i32 %1491, 31
  %1514 = xor i32 %1510, %1512
  %1515 = xor i32 %1510, %1513
  %1516 = add nuw nsw i32 %1514, %1515
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %39, align 1
  %1519 = add i64 %1487, 6
  store i64 %1519, i64* %3, align 8
  store i32 %1492, i32* %1490, align 4
  %.pre57 = load i64, i64* %3, align 8
  %.pre58 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_42611e

block_.L_42611e:                                  ; preds = %block_.L_4260e5, %block_4260f7
  %1520 = phi i64 [ %1442, %block_.L_4260e5 ], [ %.pre58, %block_4260f7 ]
  %1521 = phi i64 [ %1468, %block_.L_4260e5 ], [ %.pre57, %block_4260f7 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.13, %block_.L_4260e5 ], [ %call2_426113, %block_4260f7 ]
  store i64 %1520, i64* %RAX.i158, align 8
  %1522 = add i64 %1520, 24
  %1523 = add i64 %1521, 12
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  store i8 0, i8* %14, align 1
  %1526 = and i32 %1525, 255
  %1527 = tail call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  store i8 %1530, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1531 = icmp eq i32 %1525, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %30, align 1
  %1533 = lshr i32 %1525, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v85 = select i1 %1531, i64 54, i64 18
  %1535 = add i64 %1521, %.v85
  store i64 %1535, i64* %3, align 8
  br i1 %1531, label %block_.L_426154, label %block_426130

block_426130:                                     ; preds = %block_.L_42611e
  store i64 %1520, i64* %RAX.i158, align 8
  %1536 = add i64 %1535, 12
  store i64 %1536, i64* %3, align 8
  %1537 = load i32, i32* %1524, align 4
  %1538 = add i32 %1537, -1
  %1539 = icmp eq i32 %1537, 0
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %14, align 1
  %1541 = and i32 %1538, 255
  %1542 = tail call i32 @llvm.ctpop.i32(i32 %1541)
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = xor i8 %1544, 1
  store i8 %1545, i8* %21, align 1
  %1546 = xor i32 %1538, %1537
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %27, align 1
  %1550 = icmp eq i32 %1538, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %30, align 1
  %1552 = lshr i32 %1538, 31
  %1553 = trunc i32 %1552 to i8
  store i8 %1553, i8* %33, align 1
  %1554 = lshr i32 %1537, 31
  %1555 = xor i32 %1552, %1554
  %1556 = add nuw nsw i32 %1555, %1554
  %1557 = icmp eq i32 %1556, 2
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %39, align 1
  %.v86 = select i1 %1550, i64 36, i64 18
  %1559 = add i64 %1535, %.v86
  store i64 %1559, i64* %3, align 8
  br i1 %1550, label %block_.L_426154, label %block_426142

block_426142:                                     ; preds = %block_426130
  store i64 %1520, i64* %RAX.i158, align 8
  %1560 = add i64 %1559, 12
  store i64 %1560, i64* %3, align 8
  %1561 = load i32, i32* %1524, align 4
  %1562 = add i32 %1561, -3
  %1563 = icmp ult i32 %1561, 3
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %14, align 1
  %1565 = and i32 %1562, 255
  %1566 = tail call i32 @llvm.ctpop.i32(i32 %1565)
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  store i8 %1569, i8* %21, align 1
  %1570 = xor i32 %1562, %1561
  %1571 = lshr i32 %1570, 4
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  store i8 %1573, i8* %27, align 1
  %1574 = icmp eq i32 %1562, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %30, align 1
  %1576 = lshr i32 %1562, 31
  %1577 = trunc i32 %1576 to i8
  store i8 %1577, i8* %33, align 1
  %1578 = lshr i32 %1561, 31
  %1579 = xor i32 %1576, %1578
  %1580 = add nuw nsw i32 %1579, %1578
  %1581 = icmp eq i32 %1580, 2
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %39, align 1
  %.v87 = select i1 %1574, i64 18, i64 362
  %1583 = add i64 %1559, %.v87
  store i64 %1583, i64* %3, align 8
  br i1 %1574, label %block_.L_426154, label %block_.L_4262ac

block_.L_426154:                                  ; preds = %block_426142, %block_426130, %block_.L_42611e
  %1584 = phi i64 [ %1583, %block_426142 ], [ %1559, %block_426130 ], [ %1535, %block_.L_42611e ]
  store i64 %1520, i64* %RAX.i158, align 8
  %1585 = add i64 %1584, 12
  store i64 %1585, i64* %3, align 8
  %1586 = load i32, i32* %1524, align 4
  store i8 0, i8* %14, align 1
  %1587 = and i32 %1586, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1592 = icmp eq i32 %1586, 0
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %30, align 1
  %1594 = lshr i32 %1586, 31
  %1595 = trunc i32 %1594 to i8
  store i8 %1595, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v105 = select i1 %1592, i64 36, i64 18
  %1596 = add i64 %1584, %.v105
  store i64 %1596, i64* %3, align 8
  br i1 %1592, label %block_.L_426178, label %block_426166

block_426166:                                     ; preds = %block_.L_426154
  store i64 %1520, i64* %RAX.i158, align 8
  %1597 = add i64 %1596, 12
  store i64 %1597, i64* %3, align 8
  %1598 = load i32, i32* %1524, align 4
  %1599 = add i32 %1598, -3
  %1600 = icmp ult i32 %1598, 3
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %14, align 1
  %1602 = and i32 %1599, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %21, align 1
  %1607 = xor i32 %1599, %1598
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  store i8 %1610, i8* %27, align 1
  %1611 = icmp eq i32 %1599, 0
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %30, align 1
  %1613 = lshr i32 %1599, 31
  %1614 = trunc i32 %1613 to i8
  store i8 %1614, i8* %33, align 1
  %1615 = lshr i32 %1598, 31
  %1616 = xor i32 %1613, %1615
  %1617 = add nuw nsw i32 %1616, %1615
  %1618 = icmp eq i32 %1617, 2
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %39, align 1
  %.v106 = select i1 %1611, i64 18, i64 69
  %1620 = add i64 %1596, %.v106
  store i64 %1620, i64* %3, align 8
  br i1 %1611, label %block_.L_426178, label %block_.L_4261ab

block_.L_426178:                                  ; preds = %block_426166, %block_.L_426154
  %1621 = phi i64 [ %1620, %block_426166 ], [ %1596, %block_.L_426154 ]
  store i64 0, i64* %RAX.i158, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 1, i64* %RCX.i1086, align 8
  store i64 %1520, i64* %RDX.i1073, align 8
  %1622 = add i64 %1520, 72000
  %1623 = add i64 %1621, 21
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RSI.i1005, align 8
  %1627 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %1627, i64* %RDX.i1073, align 8
  %1628 = add i64 %1627, 184
  %1629 = add i64 %1621, 35
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i32*
  %1631 = load i32, i32* %1630, align 4
  %1632 = add i32 %1631, 1
  %1633 = zext i32 %1632 to i64
  store i64 %1633, i64* %RDI.i1025, align 8
  %1634 = lshr i32 %1632, 31
  %1635 = sub i32 %1625, %1632
  %1636 = icmp ult i32 %1625, %1632
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %14, align 1
  %1638 = and i32 %1635, 255
  %1639 = tail call i32 @llvm.ctpop.i32(i32 %1638)
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  %1642 = xor i8 %1641, 1
  store i8 %1642, i8* %21, align 1
  %1643 = xor i32 %1632, %1625
  %1644 = xor i32 %1643, %1635
  %1645 = lshr i32 %1644, 4
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  store i8 %1647, i8* %27, align 1
  %1648 = icmp eq i32 %1635, 0
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %30, align 1
  %1650 = lshr i32 %1635, 31
  %1651 = trunc i32 %1650 to i8
  store i8 %1651, i8* %33, align 1
  %1652 = lshr i32 %1625, 31
  %1653 = xor i32 %1634, %1652
  %1654 = xor i32 %1650, %1652
  %1655 = add nuw nsw i32 %1654, %1653
  %1656 = icmp eq i32 %1655, 2
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %39, align 1
  %1658 = load i64, i64* %RAX.i158, align 8
  %.op = and i64 %1658, 4294967295
  %1659 = select i1 %1648, i64 %.op, i64 1
  store i64 %1659, i64* %RAX.i158, align 8
  %1660 = load i64, i64* %RBP.i, align 8
  %1661 = add i64 %1660, -48
  %1662 = trunc i64 %1659 to i32
  %1663 = add i64 %1621, 46
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1661 to i32*
  store i32 %1662, i32* %1664, align 4
  %1665 = load i64, i64* %3, align 8
  %1666 = add i64 %1665, 108
  store i64 %1666, i64* %3, align 8
  br label %block_.L_426212

block_.L_4261ab:                                  ; preds = %block_426166
  %AL.i512 = bitcast %union.anon* %40 to i8*
  store i8 1, i8* %AL.i512, align 1
  store i64 %1520, i64* %RCX.i1086, align 8
  %1667 = add i64 %1520, 72000
  %1668 = add i64 %1620, 16
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RDX.i1073, align 8
  %1672 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %1672, i64* %RCX.i1086, align 8
  %1673 = add i64 %1672, 184
  %1674 = add i64 %1620, 30
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to i32*
  %1676 = load i32, i32* %1675, align 4
  %1677 = add i32 %1676, 1
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RSI.i1005, align 8
  %1679 = lshr i32 %1677, 31
  %1680 = sub i32 %1670, %1677
  %1681 = icmp ult i32 %1670, %1677
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %14, align 1
  %1683 = and i32 %1680, 255
  %1684 = tail call i32 @llvm.ctpop.i32(i32 %1683)
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  store i8 %1687, i8* %21, align 1
  %1688 = xor i32 %1677, %1670
  %1689 = xor i32 %1688, %1680
  %1690 = lshr i32 %1689, 4
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  store i8 %1692, i8* %27, align 1
  %1693 = icmp eq i32 %1680, 0
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %30, align 1
  %1695 = lshr i32 %1680, 31
  %1696 = trunc i32 %1695 to i8
  store i8 %1696, i8* %33, align 1
  %1697 = lshr i32 %1670, 31
  %1698 = xor i32 %1679, %1697
  %1699 = xor i32 %1695, %1697
  %1700 = add nuw nsw i32 %1699, %1698
  %1701 = icmp eq i32 %1700, 2
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %39, align 1
  %1703 = load i64, i64* %RBP.i, align 8
  %1704 = add i64 %1703, -57
  %1705 = add i64 %1620, 38
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i8*
  store i8 1, i8* %1706, align 1
  %1707 = load i64, i64* %3, align 8
  %1708 = add i64 %1707, 47
  %1709 = add i64 %1707, 6
  %1710 = load i8, i8* %30, align 1
  %1711 = icmp eq i8 %1710, 0
  %1712 = select i1 %1711, i64 %1708, i64 %1709
  store i64 %1712, i64* %3, align 8
  br i1 %1711, label %block_.L_426200, label %block_4261d7

block_4261d7:                                     ; preds = %block_.L_4261ab
  %1713 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1713, i64* %RAX.i158, align 8
  %1714 = add i64 %1713, 72004
  %1715 = add i64 %1712, 14
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = zext i32 %1717 to i64
  store i64 %1718, i64* %RCX.i1086, align 8
  %1719 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %1719, i64* %RAX.i158, align 8
  %1720 = add i64 %1719, 188
  %1721 = add i64 %1712, 28
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i32*
  %1723 = load i32, i32* %1722, align 4
  %1724 = add i32 %1723, 1
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RDX.i1073, align 8
  %1726 = lshr i32 %1724, 31
  %1727 = sub i32 %1717, %1724
  %1728 = icmp ult i32 %1717, %1724
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %14, align 1
  %1730 = and i32 %1727, 255
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %21, align 1
  %1735 = xor i32 %1724, %1717
  %1736 = xor i32 %1735, %1727
  %1737 = lshr i32 %1736, 4
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  store i8 %1739, i8* %27, align 1
  %1740 = icmp eq i32 %1727, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %30, align 1
  %1742 = lshr i32 %1727, 31
  %1743 = trunc i32 %1742 to i8
  store i8 %1743, i8* %33, align 1
  %1744 = lshr i32 %1717, 31
  %1745 = xor i32 %1726, %1744
  %1746 = xor i32 %1742, %1744
  %1747 = add nuw nsw i32 %1746, %1745
  %1748 = icmp eq i32 %1747, 2
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %39, align 1
  %SIL.i476 = bitcast %union.anon* %223 to i8*
  %1750 = xor i1 %1740, true
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %SIL.i476, align 1
  %1752 = load i64, i64* %RBP.i, align 8
  %1753 = add i64 %1752, -57
  %1754 = add i64 %1712, 41
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i8*
  store i8 %1751, i8* %1755, align 1
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_426200

block_.L_426200:                                  ; preds = %block_4261d7, %block_.L_4261ab
  %1756 = phi i64 [ %.pre59, %block_4261d7 ], [ %1708, %block_.L_4261ab ]
  %1757 = load i64, i64* %RBP.i, align 8
  %1758 = add i64 %1757, -57
  %1759 = add i64 %1756, 3
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i8*
  %1761 = load i8, i8* %1760, align 1
  store i8 %1761, i8* %AL.i512, align 1
  store i64 1, i64* %RDX.i1073, align 8
  %1762 = and i8 %1761, 1
  store i8 0, i8* %14, align 1
  %1763 = zext i8 %1762 to i32
  %1764 = tail call i32 @llvm.ctpop.i32(i32 %1763)
  %1765 = trunc i32 %1764 to i8
  %1766 = xor i8 %1765, 1
  store i8 %1766, i8* %21, align 1
  %1767 = xor i8 %1762, 1
  store i8 %1767, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1768 = zext i8 %1762 to i64
  store i64 %1768, i64* %RCX.i1086, align 8
  %1769 = add i64 %1757, -48
  %1770 = zext i8 %1762 to i32
  %1771 = add i64 %1756, 18
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1769 to i32*
  store i32 %1770, i32* %1772, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_426212

block_.L_426212:                                  ; preds = %block_.L_426200, %block_.L_426178
  %1773 = phi i64 [ %.pre60, %block_.L_426200 ], [ %1666, %block_.L_426178 ]
  store i64 ptrtoint (%G__0x4bfb48_type* @G__0x4bfb48 to i64), i64* %RDI.i1025, align 8
  %1774 = load i64, i64* %RBP.i, align 8
  %1775 = add i64 %1774, -48
  %1776 = add i64 %1773, 13
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = zext i32 %1778 to i64
  store i64 %1779, i64* %RSI.i1005, align 8
  %1780 = add i64 %1774, -16
  %1781 = add i64 %1773, 17
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i64*
  %1783 = load i64, i64* %1782, align 8
  store i64 %1783, i64* %RDX.i1073, align 8
  %1784 = add i64 %1773, 551150
  %1785 = add i64 %1773, 22
  %1786 = load i64, i64* %6, align 8
  %1787 = add i64 %1786, -8
  %1788 = inttoptr i64 %1787 to i64*
  store i64 %1785, i64* %1788, align 8
  store i64 %1787, i64* %6, align 8
  store i64 %1784, i64* %3, align 8
  %call2_426223 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %1784, %struct.Memory* %MEMORY.14)
  %1789 = load i64, i64* %RAX.i158, align 8
  %1790 = load i64, i64* %RBP.i, align 8
  %1791 = add i64 %1790, -28
  %1792 = load i64, i64* %3, align 8
  %1793 = add i64 %1792, 3
  store i64 %1793, i64* %3, align 8
  %1794 = trunc i64 %1789 to i32
  %1795 = inttoptr i64 %1791 to i32*
  %1796 = load i32, i32* %1795, align 4
  %1797 = add i32 %1796, %1794
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RAX.i158, align 8
  %1799 = icmp ult i32 %1797, %1794
  %1800 = icmp ult i32 %1797, %1796
  %1801 = or i1 %1799, %1800
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = and i32 %1797, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %21, align 1
  %1808 = xor i32 %1796, %1794
  %1809 = xor i32 %1808, %1797
  %1810 = lshr i32 %1809, 4
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  store i8 %1812, i8* %27, align 1
  %1813 = icmp eq i32 %1797, 0
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %30, align 1
  %1815 = lshr i32 %1797, 31
  %1816 = trunc i32 %1815 to i8
  store i8 %1816, i8* %33, align 1
  %1817 = lshr i32 %1794, 31
  %1818 = lshr i32 %1796, 31
  %1819 = xor i32 %1815, %1817
  %1820 = xor i32 %1815, %1818
  %1821 = add nuw nsw i32 %1819, %1820
  %1822 = icmp eq i32 %1821, 2
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %39, align 1
  %1824 = add i64 %1792, 6
  store i64 %1824, i64* %3, align 8
  store i32 %1797, i32* %1795, align 4
  %1825 = load i64, i64* %RBP.i, align 8
  %1826 = add i64 %1825, -48
  %1827 = load i64, i64* %3, align 8
  %1828 = add i64 %1827, 4
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1826 to i32*
  %1830 = load i32, i32* %1829, align 4
  store i8 0, i8* %14, align 1
  %1831 = and i32 %1830, 255
  %1832 = tail call i32 @llvm.ctpop.i32(i32 %1831)
  %1833 = trunc i32 %1832 to i8
  %1834 = and i8 %1833, 1
  %1835 = xor i8 %1834, 1
  store i8 %1835, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1836 = icmp eq i32 %1830, 0
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %30, align 1
  %1838 = lshr i32 %1830, 31
  %1839 = trunc i32 %1838 to i8
  store i8 %1839, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v107 = select i1 %1836, i64 121, i64 10
  %1840 = add i64 %1827, %.v107
  store i64 %1840, i64* %3, align 8
  br i1 %1836, label %block_.L_4262a7, label %block_426238

block_426238:                                     ; preds = %block_.L_426212
  store i64 ptrtoint (%G__0x4bfb6d_type* @G__0x4bfb6d to i64), i64* %RDI.i1025, align 8
  %1841 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1841, i64* %RAX.i158, align 8
  %1842 = add i64 %1841, 72000
  %1843 = add i64 %1840, 24
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1842 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = add i32 %1845, -1
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %RCX.i1086, align 8
  %1848 = icmp eq i32 %1845, 0
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %14, align 1
  %1850 = and i32 %1846, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %21, align 1
  %1855 = xor i32 %1846, %1845
  %1856 = lshr i32 %1855, 4
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  store i8 %1858, i8* %27, align 1
  %1859 = icmp eq i32 %1846, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %30, align 1
  %1861 = lshr i32 %1846, 31
  %1862 = trunc i32 %1861 to i8
  store i8 %1862, i8* %33, align 1
  %1863 = lshr i32 %1845, 31
  %1864 = xor i32 %1861, %1863
  %1865 = add nuw nsw i32 %1864, %1863
  %1866 = icmp eq i32 %1865, 2
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %39, align 1
  %1868 = add i64 %1825, -16
  %1869 = add i64 %1840, 31
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i64*
  %1871 = load i64, i64* %1870, align 8
  store i64 %1871, i64* %RDX.i1073, align 8
  store i64 %1847, i64* %RSI.i1005, align 8
  %1872 = add i64 %1840, 549992
  %1873 = add i64 %1840, 38
  %1874 = load i64, i64* %6, align 8
  %1875 = add i64 %1874, -8
  %1876 = inttoptr i64 %1875 to i64*
  store i64 %1873, i64* %1876, align 8
  store i64 %1875, i64* %6, align 8
  store i64 %1872, i64* %3, align 8
  %call2_426259 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1872, %struct.Memory* %call2_426223)
  %1877 = load i64, i64* %RAX.i158, align 8
  %1878 = load i64, i64* %RBP.i, align 8
  %1879 = add i64 %1878, -28
  %1880 = load i64, i64* %3, align 8
  %1881 = add i64 %1880, 3
  store i64 %1881, i64* %3, align 8
  %1882 = trunc i64 %1877 to i32
  %1883 = inttoptr i64 %1879 to i32*
  %1884 = load i32, i32* %1883, align 4
  %1885 = add i32 %1884, %1882
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RAX.i158, align 8
  %1887 = icmp ult i32 %1885, %1882
  %1888 = icmp ult i32 %1885, %1884
  %1889 = or i1 %1887, %1888
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %14, align 1
  %1891 = and i32 %1885, 255
  %1892 = tail call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  store i8 %1895, i8* %21, align 1
  %1896 = xor i32 %1884, %1882
  %1897 = xor i32 %1896, %1885
  %1898 = lshr i32 %1897, 4
  %1899 = trunc i32 %1898 to i8
  %1900 = and i8 %1899, 1
  store i8 %1900, i8* %27, align 1
  %1901 = icmp eq i32 %1885, 0
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %30, align 1
  %1903 = lshr i32 %1885, 31
  %1904 = trunc i32 %1903 to i8
  store i8 %1904, i8* %33, align 1
  %1905 = lshr i32 %1882, 31
  %1906 = lshr i32 %1884, 31
  %1907 = xor i32 %1903, %1905
  %1908 = xor i32 %1903, %1906
  %1909 = add nuw nsw i32 %1907, %1908
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %39, align 1
  %1912 = add i64 %1880, 6
  store i64 %1912, i64* %3, align 8
  store i32 %1885, i32* %1883, align 4
  %1913 = load i64, i64* %3, align 8
  %1914 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1914, i64* %RDX.i1073, align 8
  %1915 = add i64 %1914, 24
  %1916 = add i64 %1913, 12
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = add i32 %1918, -1
  %1920 = icmp eq i32 %1918, 0
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %14, align 1
  %1922 = and i32 %1919, 255
  %1923 = tail call i32 @llvm.ctpop.i32(i32 %1922)
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  %1926 = xor i8 %1925, 1
  store i8 %1926, i8* %21, align 1
  %1927 = xor i32 %1919, %1918
  %1928 = lshr i32 %1927, 4
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  store i8 %1930, i8* %27, align 1
  %1931 = icmp eq i32 %1919, 0
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %30, align 1
  %1933 = lshr i32 %1919, 31
  %1934 = trunc i32 %1933 to i8
  store i8 %1934, i8* %33, align 1
  %1935 = lshr i32 %1918, 31
  %1936 = xor i32 %1933, %1935
  %1937 = add nuw nsw i32 %1936, %1935
  %1938 = icmp eq i32 %1937, 2
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %39, align 1
  %.v108 = select i1 %1931, i64 18, i64 62
  %1940 = add i64 %1913, %.v108
  store i64 %1940, i64* %3, align 8
  br i1 %1931, label %block_426276, label %block_.L_4262a2

block_426276:                                     ; preds = %block_426238
  store i64 ptrtoint (%G__0x4bfb8e_type* @G__0x4bfb8e to i64), i64* %RDI.i1025, align 8
  store i64 %1914, i64* %RAX.i158, align 8
  %1941 = add i64 %1914, 72004
  %1942 = add i64 %1940, 24
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = add i32 %1944, -1
  %1946 = zext i32 %1945 to i64
  store i64 %1946, i64* %RCX.i1086, align 8
  %1947 = icmp eq i32 %1944, 0
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %14, align 1
  %1949 = and i32 %1945, 255
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %21, align 1
  %1954 = xor i32 %1945, %1944
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %27, align 1
  %1958 = icmp eq i32 %1945, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %30, align 1
  %1960 = lshr i32 %1945, 31
  %1961 = trunc i32 %1960 to i8
  store i8 %1961, i8* %33, align 1
  %1962 = lshr i32 %1944, 31
  %1963 = xor i32 %1960, %1962
  %1964 = add nuw nsw i32 %1963, %1962
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %39, align 1
  %1967 = load i64, i64* %RBP.i, align 8
  %1968 = add i64 %1967, -16
  %1969 = add i64 %1940, 31
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i64*
  %1971 = load i64, i64* %1970, align 8
  store i64 %1971, i64* %RDX.i1073, align 8
  store i64 %1946, i64* %RSI.i1005, align 8
  %1972 = add i64 %1940, 549930
  %1973 = add i64 %1940, 38
  %1974 = load i64, i64* %6, align 8
  %1975 = add i64 %1974, -8
  %1976 = inttoptr i64 %1975 to i64*
  store i64 %1973, i64* %1976, align 8
  store i64 %1975, i64* %6, align 8
  store i64 %1972, i64* %3, align 8
  %call2_426297 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %1972, %struct.Memory* %call2_426259)
  %1977 = load i64, i64* %RAX.i158, align 8
  %1978 = load i64, i64* %RBP.i, align 8
  %1979 = add i64 %1978, -28
  %1980 = load i64, i64* %3, align 8
  %1981 = add i64 %1980, 3
  store i64 %1981, i64* %3, align 8
  %1982 = trunc i64 %1977 to i32
  %1983 = inttoptr i64 %1979 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = add i32 %1984, %1982
  %1986 = zext i32 %1985 to i64
  store i64 %1986, i64* %RAX.i158, align 8
  %1987 = icmp ult i32 %1985, %1982
  %1988 = icmp ult i32 %1985, %1984
  %1989 = or i1 %1987, %1988
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %14, align 1
  %1991 = and i32 %1985, 255
  %1992 = tail call i32 @llvm.ctpop.i32(i32 %1991)
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  %1995 = xor i8 %1994, 1
  store i8 %1995, i8* %21, align 1
  %1996 = xor i32 %1984, %1982
  %1997 = xor i32 %1996, %1985
  %1998 = lshr i32 %1997, 4
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  store i8 %2000, i8* %27, align 1
  %2001 = icmp eq i32 %1985, 0
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %30, align 1
  %2003 = lshr i32 %1985, 31
  %2004 = trunc i32 %2003 to i8
  store i8 %2004, i8* %33, align 1
  %2005 = lshr i32 %1982, 31
  %2006 = lshr i32 %1984, 31
  %2007 = xor i32 %2003, %2005
  %2008 = xor i32 %2003, %2006
  %2009 = add nuw nsw i32 %2007, %2008
  %2010 = icmp eq i32 %2009, 2
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %39, align 1
  %2012 = add i64 %1980, 6
  store i64 %2012, i64* %3, align 8
  store i32 %1985, i32* %1983, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_4262a2

block_.L_4262a2:                                  ; preds = %block_426238, %block_426276
  %2013 = phi i64 [ %1940, %block_426238 ], [ %.pre61, %block_426276 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_426259, %block_426238 ], [ %call2_426297, %block_426276 ]
  %2014 = add i64 %2013, 5
  store i64 %2014, i64* %3, align 8
  br label %block_.L_4262a7

block_.L_4262a7:                                  ; preds = %block_.L_4262a2, %block_.L_426212
  %2015 = phi i64 [ %1840, %block_.L_426212 ], [ %2014, %block_.L_4262a2 ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_426223, %block_.L_426212 ], [ %MEMORY.19, %block_.L_4262a2 ]
  %2016 = add i64 %2015, 5
  store i64 %2016, i64* %3, align 8
  br label %block_.L_4262ac

block_.L_4262ac:                                  ; preds = %block_426142, %block_.L_4262a7
  %2017 = phi i64 [ %2016, %block_.L_4262a7 ], [ %1583, %block_426142 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_.L_4262a7 ], [ %MEMORY.14, %block_426142 ]
  %2018 = add i64 %2017, 1076
  %2019 = add i64 %2017, 5
  %2020 = load i64, i64* %6, align 8
  %2021 = add i64 %2020, -8
  %2022 = inttoptr i64 %2021 to i64*
  store i64 %2019, i64* %2022, align 8
  store i64 %2021, i64* %6, align 8
  store i64 %2018, i64* %3, align 8
  %call2_4262ac = tail call %struct.Memory* @sub_4266e0.ref_pic_list_reordering(%struct.State* nonnull %0, i64 %2018, %struct.Memory* %MEMORY.21)
  %2023 = load i64, i64* %RAX.i158, align 8
  %2024 = load i64, i64* %RBP.i, align 8
  %2025 = add i64 %2024, -28
  %2026 = load i64, i64* %3, align 8
  %2027 = add i64 %2026, 3
  store i64 %2027, i64* %3, align 8
  %2028 = trunc i64 %2023 to i32
  %2029 = inttoptr i64 %2025 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = add i32 %2030, %2028
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RAX.i158, align 8
  %2033 = icmp ult i32 %2031, %2028
  %2034 = icmp ult i32 %2031, %2030
  %2035 = or i1 %2033, %2034
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %14, align 1
  %2037 = and i32 %2031, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %21, align 1
  %2042 = xor i32 %2030, %2028
  %2043 = xor i32 %2042, %2031
  %2044 = lshr i32 %2043, 4
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  store i8 %2046, i8* %27, align 1
  %2047 = icmp eq i32 %2031, 0
  %2048 = zext i1 %2047 to i8
  store i8 %2048, i8* %30, align 1
  %2049 = lshr i32 %2031, 31
  %2050 = trunc i32 %2049 to i8
  store i8 %2050, i8* %33, align 1
  %2051 = lshr i32 %2028, 31
  %2052 = lshr i32 %2030, 31
  %2053 = xor i32 %2049, %2051
  %2054 = xor i32 %2049, %2052
  %2055 = add nuw nsw i32 %2053, %2054
  %2056 = icmp eq i32 %2055, 2
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %39, align 1
  %2058 = add i64 %2026, 6
  store i64 %2058, i64* %3, align 8
  store i32 %2031, i32* %2029, align 4
  %2059 = load i64, i64* %3, align 8
  %2060 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2060, i64* %RCX.i1086, align 8
  %2061 = add i64 %2060, 24
  %2062 = add i64 %2059, 12
  store i64 %2062, i64* %3, align 8
  %2063 = inttoptr i64 %2061 to i32*
  %2064 = load i32, i32* %2063, align 4
  store i8 0, i8* %14, align 1
  %2065 = and i32 %2064, 255
  %2066 = tail call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  store i8 %2069, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2070 = icmp eq i32 %2064, 0
  %2071 = zext i1 %2070 to i8
  store i8 %2071, i8* %30, align 1
  %2072 = lshr i32 %2064, 31
  %2073 = trunc i32 %2072 to i8
  store i8 %2073, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v88 = select i1 %2070, i64 36, i64 18
  %2074 = add i64 %2059, %.v88
  store i64 %2074, i64* %3, align 8
  br i1 %2070, label %block_.L_4262db, label %block_4262c9

block_4262c9:                                     ; preds = %block_.L_4262ac
  store i64 %2060, i64* %RAX.i158, align 8
  %2075 = add i64 %2074, 12
  store i64 %2075, i64* %3, align 8
  %2076 = load i32, i32* %2063, align 4
  %2077 = add i32 %2076, -3
  %2078 = icmp ult i32 %2076, 3
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %14, align 1
  %2080 = and i32 %2077, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %21, align 1
  %2085 = xor i32 %2077, %2076
  %2086 = lshr i32 %2085, 4
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %27, align 1
  %2089 = icmp eq i32 %2077, 0
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %30, align 1
  %2091 = lshr i32 %2077, 31
  %2092 = trunc i32 %2091 to i8
  store i8 %2092, i8* %33, align 1
  %2093 = lshr i32 %2076, 31
  %2094 = xor i32 %2091, %2093
  %2095 = add nuw nsw i32 %2094, %2093
  %2096 = icmp eq i32 %2095, 2
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %39, align 1
  %.v89 = select i1 %2089, i64 18, i64 39
  %2098 = add i64 %2074, %.v89
  store i64 %2098, i64* %3, align 8
  br i1 %2089, label %block_.L_4262db, label %block_.L_4262f0

block_.L_4262db:                                  ; preds = %block_4262c9, %block_.L_4262ac
  %2099 = phi i64 [ %2098, %block_4262c9 ], [ %2074, %block_.L_4262ac ]
  %2100 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %2100, i64* %RAX.i158, align 8
  %2101 = add i64 %2100, 192
  %2102 = add i64 %2099, 15
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i32*
  %2104 = load i32, i32* %2103, align 4
  store i8 0, i8* %14, align 1
  %2105 = and i32 %2104, 255
  %2106 = tail call i32 @llvm.ctpop.i32(i32 %2105)
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  %2109 = xor i8 %2108, 1
  store i8 %2109, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2110 = icmp eq i32 %2104, 0
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %30, align 1
  %2112 = lshr i32 %2104, 31
  %2113 = trunc i32 %2112 to i8
  store i8 %2113, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v104 = select i1 %2110, i64 21, i64 60
  %2114 = add i64 %2099, %.v104
  store i64 %2114, i64* %3, align 8
  br i1 %2110, label %block_.L_4262f0, label %block_.L_426317

block_.L_4262f0:                                  ; preds = %block_.L_4262db, %block_4262c9
  %2115 = phi i64 [ %2114, %block_.L_4262db ], [ %2098, %block_4262c9 ]
  store i64 %2060, i64* %RAX.i158, align 8
  %2116 = add i64 %2115, 12
  store i64 %2116, i64* %3, align 8
  %2117 = load i32, i32* %2063, align 4
  %2118 = add i32 %2117, -1
  %2119 = icmp eq i32 %2117, 0
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %14, align 1
  %2121 = and i32 %2118, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %21, align 1
  %2126 = xor i32 %2118, %2117
  %2127 = lshr i32 %2126, 4
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  store i8 %2129, i8* %27, align 1
  %2130 = icmp eq i32 %2118, 0
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %30, align 1
  %2132 = lshr i32 %2118, 31
  %2133 = trunc i32 %2132 to i8
  store i8 %2133, i8* %33, align 1
  %2134 = lshr i32 %2117, 31
  %2135 = xor i32 %2132, %2134
  %2136 = add nuw nsw i32 %2135, %2134
  %2137 = icmp eq i32 %2136, 2
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %39, align 1
  %.v90 = select i1 %2130, i64 18, i64 50
  %2139 = add i64 %2115, %.v90
  store i64 %2139, i64* %3, align 8
  br i1 %2130, label %block_426302, label %block_.L_426322

block_426302:                                     ; preds = %block_.L_4262f0
  %2140 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %2140, i64* %RAX.i158, align 8
  %2141 = add i64 %2140, 196
  %2142 = add i64 %2139, 15
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = add i32 %2144, -1
  %2146 = icmp eq i32 %2144, 0
  %2147 = zext i1 %2146 to i8
  store i8 %2147, i8* %14, align 1
  %2148 = and i32 %2145, 255
  %2149 = tail call i32 @llvm.ctpop.i32(i32 %2148)
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  store i8 %2152, i8* %21, align 1
  %2153 = xor i32 %2145, %2144
  %2154 = lshr i32 %2153, 4
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  store i8 %2156, i8* %27, align 1
  %2157 = icmp eq i32 %2145, 0
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %30, align 1
  %2159 = lshr i32 %2145, 31
  %2160 = trunc i32 %2159 to i8
  store i8 %2160, i8* %33, align 1
  %2161 = lshr i32 %2144, 31
  %2162 = xor i32 %2159, %2161
  %2163 = add nuw nsw i32 %2162, %2161
  %2164 = icmp eq i32 %2163, 2
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %39, align 1
  %.v103 = select i1 %2157, i64 21, i64 32
  %2166 = add i64 %2139, %.v103
  store i64 %2166, i64* %3, align 8
  br i1 %2157, label %block_.L_426317, label %block_.L_426322

block_.L_426317:                                  ; preds = %block_426302, %block_.L_4262db
  %2167 = phi i64 [ %2166, %block_426302 ], [ %2114, %block_.L_4262db ]
  %2168 = add i64 %2167, 1705
  %2169 = add i64 %2167, 5
  %2170 = load i64, i64* %6, align 8
  %2171 = add i64 %2170, -8
  %2172 = inttoptr i64 %2171 to i64*
  store i64 %2169, i64* %2172, align 8
  store i64 %2171, i64* %6, align 8
  store i64 %2168, i64* %3, align 8
  %call2_426317 = tail call %struct.Memory* @sub_4269c0.pred_weight_table(%struct.State* nonnull %0, i64 %2168, %struct.Memory* %call2_4262ac)
  %2173 = load i64, i64* %RAX.i158, align 8
  %2174 = load i64, i64* %RBP.i, align 8
  %2175 = add i64 %2174, -28
  %2176 = load i64, i64* %3, align 8
  %2177 = add i64 %2176, 3
  store i64 %2177, i64* %3, align 8
  %2178 = trunc i64 %2173 to i32
  %2179 = inttoptr i64 %2175 to i32*
  %2180 = load i32, i32* %2179, align 4
  %2181 = add i32 %2180, %2178
  %2182 = zext i32 %2181 to i64
  store i64 %2182, i64* %RAX.i158, align 8
  %2183 = icmp ult i32 %2181, %2178
  %2184 = icmp ult i32 %2181, %2180
  %2185 = or i1 %2183, %2184
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %14, align 1
  %2187 = and i32 %2181, 255
  %2188 = tail call i32 @llvm.ctpop.i32(i32 %2187)
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = xor i8 %2190, 1
  store i8 %2191, i8* %21, align 1
  %2192 = xor i32 %2180, %2178
  %2193 = xor i32 %2192, %2181
  %2194 = lshr i32 %2193, 4
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  store i8 %2196, i8* %27, align 1
  %2197 = icmp eq i32 %2181, 0
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %30, align 1
  %2199 = lshr i32 %2181, 31
  %2200 = trunc i32 %2199 to i8
  store i8 %2200, i8* %33, align 1
  %2201 = lshr i32 %2178, 31
  %2202 = lshr i32 %2180, 31
  %2203 = xor i32 %2199, %2201
  %2204 = xor i32 %2199, %2202
  %2205 = add nuw nsw i32 %2203, %2204
  %2206 = icmp eq i32 %2205, 2
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %39, align 1
  %2208 = add i64 %2176, 6
  store i64 %2208, i64* %3, align 8
  store i32 %2181, i32* %2179, align 4
  %.pre62 = load i64, i64* %3, align 8
  %.pre63 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_426322

block_.L_426322:                                  ; preds = %block_426302, %block_.L_4262f0, %block_.L_426317
  %2209 = phi i64 [ %.pre63, %block_.L_426317 ], [ %2060, %block_.L_4262f0 ], [ %2060, %block_426302 ]
  %2210 = phi i64 [ %.pre62, %block_.L_426317 ], [ %2139, %block_.L_4262f0 ], [ %2166, %block_426302 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_426317, %block_.L_426317 ], [ %call2_4262ac, %block_.L_4262f0 ], [ %call2_4262ac, %block_426302 ]
  store i64 %2209, i64* %RAX.i158, align 8
  %2211 = add i64 %2209, 72496
  %2212 = add i64 %2210, 15
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i32*
  %2214 = load i32, i32* %2213, align 4
  store i8 0, i8* %14, align 1
  %2215 = and i32 %2214, 255
  %2216 = tail call i32 @llvm.ctpop.i32(i32 %2215)
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = xor i8 %2218, 1
  store i8 %2219, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2220 = icmp eq i32 %2214, 0
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %30, align 1
  %2222 = lshr i32 %2214, 31
  %2223 = trunc i32 %2222 to i8
  store i8 %2223, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v91 = select i1 %2220, i64 32, i64 21
  %2224 = add i64 %2210, %.v91
  store i64 %2224, i64* %3, align 8
  br i1 %2220, label %block_.L_426342, label %block_426337

block_426337:                                     ; preds = %block_.L_426322
  %2225 = add i64 %2224, 3097
  %2226 = add i64 %2224, 5
  %2227 = load i64, i64* %6, align 8
  %2228 = add i64 %2227, -8
  %2229 = inttoptr i64 %2228 to i64*
  store i64 %2226, i64* %2229, align 8
  store i64 %2228, i64* %6, align 8
  store i64 %2225, i64* %3, align 8
  %call2_426337 = tail call %struct.Memory* @sub_426f50.dec_ref_pic_marking(%struct.State* nonnull %0, i64 %2225, %struct.Memory* %MEMORY.25)
  %2230 = load i64, i64* %RAX.i158, align 8
  %2231 = load i64, i64* %RBP.i, align 8
  %2232 = add i64 %2231, -28
  %2233 = load i64, i64* %3, align 8
  %2234 = add i64 %2233, 3
  store i64 %2234, i64* %3, align 8
  %2235 = trunc i64 %2230 to i32
  %2236 = inttoptr i64 %2232 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = add i32 %2237, %2235
  %2239 = zext i32 %2238 to i64
  store i64 %2239, i64* %RAX.i158, align 8
  %2240 = icmp ult i32 %2238, %2235
  %2241 = icmp ult i32 %2238, %2237
  %2242 = or i1 %2240, %2241
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %14, align 1
  %2244 = and i32 %2238, 255
  %2245 = tail call i32 @llvm.ctpop.i32(i32 %2244)
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  %2248 = xor i8 %2247, 1
  store i8 %2248, i8* %21, align 1
  %2249 = xor i32 %2237, %2235
  %2250 = xor i32 %2249, %2238
  %2251 = lshr i32 %2250, 4
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  store i8 %2253, i8* %27, align 1
  %2254 = icmp eq i32 %2238, 0
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %30, align 1
  %2256 = lshr i32 %2238, 31
  %2257 = trunc i32 %2256 to i8
  store i8 %2257, i8* %33, align 1
  %2258 = lshr i32 %2235, 31
  %2259 = lshr i32 %2237, 31
  %2260 = xor i32 %2256, %2258
  %2261 = xor i32 %2256, %2259
  %2262 = add nuw nsw i32 %2260, %2261
  %2263 = icmp eq i32 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %39, align 1
  %2265 = add i64 %2233, 6
  store i64 %2265, i64* %3, align 8
  store i32 %2238, i32* %2236, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_426342

block_.L_426342:                                  ; preds = %block_426337, %block_.L_426322
  %2266 = phi i64 [ %2224, %block_.L_426322 ], [ %.pre64, %block_426337 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_.L_426322 ], [ %call2_426337, %block_426337 ]
  %2267 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2267, i64* %RAX.i158, align 8
  %2268 = add i64 %2267, 2356
  %2269 = add i64 %2266, 15
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i32*
  %2271 = load i32, i32* %2270, align 4
  %2272 = add i32 %2271, -1
  %2273 = icmp eq i32 %2271, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %14, align 1
  %2275 = and i32 %2272, 255
  %2276 = tail call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  store i8 %2279, i8* %21, align 1
  %2280 = xor i32 %2272, %2271
  %2281 = lshr i32 %2280, 4
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  store i8 %2283, i8* %27, align 1
  %2284 = icmp eq i32 %2272, 0
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %30, align 1
  %2286 = lshr i32 %2272, 31
  %2287 = trunc i32 %2286 to i8
  store i8 %2287, i8* %33, align 1
  %2288 = lshr i32 %2271, 31
  %2289 = xor i32 %2286, %2288
  %2290 = add nuw nsw i32 %2289, %2288
  %2291 = icmp eq i32 %2290, 2
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %39, align 1
  %.v92 = select i1 %2284, i64 21, i64 78
  %2293 = add i64 %2266, %.v92
  store i64 %2293, i64* %3, align 8
  br i1 %2284, label %block_426357, label %block_.L_426390

block_426357:                                     ; preds = %block_.L_426342
  %2294 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2294, i64* %RAX.i158, align 8
  %2295 = add i64 %2294, 24
  %2296 = add i64 %2293, 12
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2295 to i32*
  %2298 = load i32, i32* %2297, align 4
  %2299 = add i32 %2298, -2
  %2300 = icmp ult i32 %2298, 2
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %14, align 1
  %2302 = and i32 %2299, 255
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2302)
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  store i8 %2306, i8* %21, align 1
  %2307 = xor i32 %2299, %2298
  %2308 = lshr i32 %2307, 4
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  store i8 %2310, i8* %27, align 1
  %2311 = icmp eq i32 %2299, 0
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %30, align 1
  %2313 = lshr i32 %2299, 31
  %2314 = trunc i32 %2313 to i8
  store i8 %2314, i8* %33, align 1
  %2315 = lshr i32 %2298, 31
  %2316 = xor i32 %2313, %2315
  %2317 = add nuw nsw i32 %2316, %2315
  %2318 = icmp eq i32 %2317, 2
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %39, align 1
  %.v102 = select i1 %2311, i64 57, i64 18
  %2320 = add i64 %2293, %.v102
  store i64 %2320, i64* %3, align 8
  br i1 %2311, label %block_.L_426390, label %block_426369

block_426369:                                     ; preds = %block_426357
  store i64 ptrtoint (%G__0x4bfbaf_type* @G__0x4bfbaf to i64), i64* %RDI.i1025, align 8
  store i64 %2294, i64* %RAX.i158, align 8
  %2321 = add i64 %2294, 72520
  %2322 = add i64 %2320, 24
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2321 to i32*
  %2324 = load i32, i32* %2323, align 4
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %RSI.i1005, align 8
  %2326 = load i64, i64* %RBP.i, align 8
  %2327 = add i64 %2326, -16
  %2328 = add i64 %2320, 28
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i64*
  %2330 = load i64, i64* %2329, align 8
  store i64 %2330, i64* %RDX.i1073, align 8
  %2331 = add i64 %2320, 549687
  %2332 = add i64 %2320, 33
  %2333 = load i64, i64* %6, align 8
  %2334 = add i64 %2333, -8
  %2335 = inttoptr i64 %2334 to i64*
  store i64 %2332, i64* %2335, align 8
  store i64 %2334, i64* %6, align 8
  store i64 %2331, i64* %3, align 8
  %call2_426385 = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %2331, %struct.Memory* %MEMORY.26)
  %2336 = load i64, i64* %RAX.i158, align 8
  %2337 = load i64, i64* %RBP.i, align 8
  %2338 = add i64 %2337, -28
  %2339 = load i64, i64* %3, align 8
  %2340 = add i64 %2339, 3
  store i64 %2340, i64* %3, align 8
  %2341 = trunc i64 %2336 to i32
  %2342 = inttoptr i64 %2338 to i32*
  %2343 = load i32, i32* %2342, align 4
  %2344 = add i32 %2343, %2341
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RAX.i158, align 8
  %2346 = icmp ult i32 %2344, %2341
  %2347 = icmp ult i32 %2344, %2343
  %2348 = or i1 %2346, %2347
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %14, align 1
  %2350 = and i32 %2344, 255
  %2351 = tail call i32 @llvm.ctpop.i32(i32 %2350)
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  %2354 = xor i8 %2353, 1
  store i8 %2354, i8* %21, align 1
  %2355 = xor i32 %2343, %2341
  %2356 = xor i32 %2355, %2344
  %2357 = lshr i32 %2356, 4
  %2358 = trunc i32 %2357 to i8
  %2359 = and i8 %2358, 1
  store i8 %2359, i8* %27, align 1
  %2360 = icmp eq i32 %2344, 0
  %2361 = zext i1 %2360 to i8
  store i8 %2361, i8* %30, align 1
  %2362 = lshr i32 %2344, 31
  %2363 = trunc i32 %2362 to i8
  store i8 %2363, i8* %33, align 1
  %2364 = lshr i32 %2341, 31
  %2365 = lshr i32 %2343, 31
  %2366 = xor i32 %2362, %2364
  %2367 = xor i32 %2362, %2365
  %2368 = add nuw nsw i32 %2366, %2367
  %2369 = icmp eq i32 %2368, 2
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %39, align 1
  %2371 = add i64 %2339, 6
  store i64 %2371, i64* %3, align 8
  store i32 %2344, i32* %2342, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_426390

block_.L_426390:                                  ; preds = %block_.L_426342, %block_426369, %block_426357
  %2372 = phi i64 [ %2293, %block_.L_426342 ], [ %2320, %block_426357 ], [ %.pre65, %block_426369 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_426342 ], [ %MEMORY.26, %block_426357 ], [ %call2_426385, %block_426369 ]
  store i64 ptrtoint (%G__0x4bfbc2_type* @G__0x4bfbc2 to i64), i64* %RDI.i1025, align 8
  %2373 = load i64, i64* %RBP.i, align 8
  %2374 = add i64 %2373, -24
  %2375 = add i64 %2372, 14
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i64*
  %2377 = load i64, i64* %2376, align 8
  store i64 %2377, i64* %RAX.i158, align 8
  %2378 = add i64 %2377, 4
  %2379 = add i64 %2372, 17
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i32*
  %2381 = load i32, i32* %2380, align 4
  %2382 = add i32 %2381, -26
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RCX.i1086, align 8
  %2384 = icmp ult i32 %2381, 26
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %14, align 1
  %2386 = and i32 %2382, 255
  %2387 = tail call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  store i8 %2390, i8* %21, align 1
  %2391 = xor i32 %2381, 16
  %2392 = xor i32 %2391, %2382
  %2393 = lshr i32 %2392, 4
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  store i8 %2395, i8* %27, align 1
  %2396 = icmp eq i32 %2382, 0
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %30, align 1
  %2398 = lshr i32 %2382, 31
  %2399 = trunc i32 %2398 to i8
  store i8 %2399, i8* %33, align 1
  %2400 = lshr i32 %2381, 31
  %2401 = xor i32 %2398, %2400
  %2402 = add nuw nsw i32 %2401, %2400
  %2403 = icmp eq i32 %2402, 2
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %39, align 1
  %2405 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %2405, i64* %RAX.i158, align 8
  %2406 = add i64 %2405, 200
  %2407 = add i64 %2372, 34
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i32*
  %2409 = load i32, i32* %2408, align 4
  %2410 = sub i32 %2382, %2409
  %2411 = zext i32 %2410 to i64
  store i64 %2411, i64* %RCX.i1086, align 8
  %2412 = icmp ult i32 %2382, %2409
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %14, align 1
  %2414 = and i32 %2410, 255
  %2415 = tail call i32 @llvm.ctpop.i32(i32 %2414)
  %2416 = trunc i32 %2415 to i8
  %2417 = and i8 %2416, 1
  %2418 = xor i8 %2417, 1
  store i8 %2418, i8* %21, align 1
  %2419 = xor i32 %2409, %2382
  %2420 = xor i32 %2419, %2410
  %2421 = lshr i32 %2420, 4
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  store i8 %2423, i8* %27, align 1
  %2424 = icmp eq i32 %2410, 0
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %30, align 1
  %2426 = lshr i32 %2410, 31
  %2427 = trunc i32 %2426 to i8
  store i8 %2427, i8* %33, align 1
  %2428 = lshr i32 %2409, 31
  %2429 = xor i32 %2428, %2398
  %2430 = xor i32 %2426, %2398
  %2431 = add nuw nsw i32 %2430, %2429
  %2432 = icmp eq i32 %2431, 2
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %39, align 1
  %2434 = add i64 %2373, -16
  %2435 = add i64 %2372, 38
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i64*
  %2437 = load i64, i64* %2436, align 8
  store i64 %2437, i64* %RDX.i1073, align 8
  store i64 %2411, i64* %RSI.i1005, align 8
  %2438 = add i64 %2372, 550448
  %2439 = add i64 %2372, 45
  %2440 = load i64, i64* %6, align 8
  %2441 = add i64 %2440, -8
  %2442 = inttoptr i64 %2441 to i64*
  store i64 %2439, i64* %2442, align 8
  store i64 %2441, i64* %6, align 8
  store i64 %2438, i64* %3, align 8
  %call2_4263b8 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %2438, %struct.Memory* %MEMORY.27)
  %2443 = load i64, i64* %RAX.i158, align 8
  %2444 = load i64, i64* %RBP.i, align 8
  %2445 = add i64 %2444, -28
  %2446 = load i64, i64* %3, align 8
  %2447 = add i64 %2446, 3
  store i64 %2447, i64* %3, align 8
  %2448 = trunc i64 %2443 to i32
  %2449 = inttoptr i64 %2445 to i32*
  %2450 = load i32, i32* %2449, align 4
  %2451 = add i32 %2450, %2448
  %2452 = zext i32 %2451 to i64
  store i64 %2452, i64* %RAX.i158, align 8
  %2453 = icmp ult i32 %2451, %2448
  %2454 = icmp ult i32 %2451, %2450
  %2455 = or i1 %2453, %2454
  %2456 = zext i1 %2455 to i8
  store i8 %2456, i8* %14, align 1
  %2457 = and i32 %2451, 255
  %2458 = tail call i32 @llvm.ctpop.i32(i32 %2457)
  %2459 = trunc i32 %2458 to i8
  %2460 = and i8 %2459, 1
  %2461 = xor i8 %2460, 1
  store i8 %2461, i8* %21, align 1
  %2462 = xor i32 %2450, %2448
  %2463 = xor i32 %2462, %2451
  %2464 = lshr i32 %2463, 4
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  store i8 %2466, i8* %27, align 1
  %2467 = icmp eq i32 %2451, 0
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %30, align 1
  %2469 = lshr i32 %2451, 31
  %2470 = trunc i32 %2469 to i8
  store i8 %2470, i8* %33, align 1
  %2471 = lshr i32 %2448, 31
  %2472 = lshr i32 %2450, 31
  %2473 = xor i32 %2469, %2471
  %2474 = xor i32 %2469, %2472
  %2475 = add nuw nsw i32 %2473, %2474
  %2476 = icmp eq i32 %2475, 2
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %39, align 1
  %2478 = add i64 %2446, 6
  store i64 %2478, i64* %3, align 8
  store i32 %2451, i32* %2449, align 4
  %2479 = load i64, i64* %3, align 8
  %2480 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2480, i64* %RDX.i1073, align 8
  %2481 = add i64 %2480, 24
  %2482 = add i64 %2479, 12
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = add i32 %2484, -3
  %2486 = icmp ult i32 %2484, 3
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %14, align 1
  %2488 = and i32 %2485, 255
  %2489 = tail call i32 @llvm.ctpop.i32(i32 %2488)
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = xor i8 %2491, 1
  store i8 %2492, i8* %21, align 1
  %2493 = xor i32 %2485, %2484
  %2494 = lshr i32 %2493, 4
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  store i8 %2496, i8* %27, align 1
  %2497 = icmp eq i32 %2485, 0
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %30, align 1
  %2499 = lshr i32 %2485, 31
  %2500 = trunc i32 %2499 to i8
  store i8 %2500, i8* %33, align 1
  %2501 = lshr i32 %2484, 31
  %2502 = xor i32 %2499, %2501
  %2503 = add nuw nsw i32 %2502, %2501
  %2504 = icmp eq i32 %2503, 2
  %2505 = zext i1 %2504 to i8
  store i8 %2505, i8* %39, align 1
  %.v93 = select i1 %2497, i64 18, i64 104
  %2506 = add i64 %2479, %.v93
  store i64 %2506, i64* %3, align 8
  br i1 %2497, label %block_4263d5, label %block_.L_42642b

block_4263d5:                                     ; preds = %block_.L_426390
  store i64 %2480, i64* %RAX.i158, align 8
  %2507 = add i64 %2506, 12
  store i64 %2507, i64* %3, align 8
  %2508 = load i32, i32* %2483, align 4
  %2509 = add i32 %2508, -3
  %2510 = icmp ult i32 %2508, 3
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %14, align 1
  %2512 = and i32 %2509, 255
  %2513 = tail call i32 @llvm.ctpop.i32(i32 %2512)
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = xor i8 %2515, 1
  store i8 %2516, i8* %21, align 1
  %2517 = xor i32 %2509, %2508
  %2518 = lshr i32 %2517, 4
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  store i8 %2520, i8* %27, align 1
  %2521 = icmp eq i32 %2509, 0
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %30, align 1
  %2523 = lshr i32 %2509, 31
  %2524 = trunc i32 %2523 to i8
  store i8 %2524, i8* %33, align 1
  %2525 = lshr i32 %2508, 31
  %2526 = xor i32 %2523, %2525
  %2527 = add nuw nsw i32 %2526, %2525
  %2528 = icmp eq i32 %2527, 2
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %39, align 1
  %.v101 = select i1 %2521, i64 18, i64 45
  %2530 = add i64 %2506, %.v101
  store i64 %2530, i64* %3, align 8
  br i1 %2521, label %block_4263e7, label %block_.L_426402

block_4263e7:                                     ; preds = %block_4263d5
  store i64 ptrtoint (%G__0x4bfbd5_type* @G__0x4bfbd5 to i64), i64* %RDI.i1025, align 8
  store i64 0, i64* %RSI.i1005, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2531 = load i64, i64* %RBP.i, align 8
  %2532 = add i64 %2531, -16
  %2533 = add i64 %2530, 16
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i64*
  %2535 = load i64, i64* %2534, align 8
  store i64 %2535, i64* %RDX.i1073, align 8
  %2536 = add i64 %2530, 550681
  %2537 = add i64 %2530, 21
  %2538 = load i64, i64* %6, align 8
  %2539 = add i64 %2538, -8
  %2540 = inttoptr i64 %2539 to i64*
  store i64 %2537, i64* %2540, align 8
  store i64 %2539, i64* %6, align 8
  store i64 %2536, i64* %3, align 8
  %call2_4263f7 = tail call %struct.Memory* @sub_4acb00.u_1(%struct.State* nonnull %0, i64 %2536, %struct.Memory* %call2_4263b8)
  %2541 = load i64, i64* %RAX.i158, align 8
  %2542 = load i64, i64* %RBP.i, align 8
  %2543 = add i64 %2542, -28
  %2544 = load i64, i64* %3, align 8
  %2545 = add i64 %2544, 3
  store i64 %2545, i64* %3, align 8
  %2546 = trunc i64 %2541 to i32
  %2547 = inttoptr i64 %2543 to i32*
  %2548 = load i32, i32* %2547, align 4
  %2549 = add i32 %2548, %2546
  %2550 = zext i32 %2549 to i64
  store i64 %2550, i64* %RAX.i158, align 8
  %2551 = icmp ult i32 %2549, %2546
  %2552 = icmp ult i32 %2549, %2548
  %2553 = or i1 %2551, %2552
  %2554 = zext i1 %2553 to i8
  store i8 %2554, i8* %14, align 1
  %2555 = and i32 %2549, 255
  %2556 = tail call i32 @llvm.ctpop.i32(i32 %2555)
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  %2559 = xor i8 %2558, 1
  store i8 %2559, i8* %21, align 1
  %2560 = xor i32 %2548, %2546
  %2561 = xor i32 %2560, %2549
  %2562 = lshr i32 %2561, 4
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  store i8 %2564, i8* %27, align 1
  %2565 = icmp eq i32 %2549, 0
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %30, align 1
  %2567 = lshr i32 %2549, 31
  %2568 = trunc i32 %2567 to i8
  store i8 %2568, i8* %33, align 1
  %2569 = lshr i32 %2546, 31
  %2570 = lshr i32 %2548, 31
  %2571 = xor i32 %2567, %2569
  %2572 = xor i32 %2567, %2570
  %2573 = add nuw nsw i32 %2571, %2572
  %2574 = icmp eq i32 %2573, 2
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %39, align 1
  %2576 = add i64 %2544, 6
  store i64 %2576, i64* %3, align 8
  store i32 %2549, i32* %2547, align 4
  %.pre66 = load i64, i64* %3, align 8
  %.pre67 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_426402

block_.L_426402:                                  ; preds = %block_4263d5, %block_4263e7
  %2577 = phi i64 [ %2480, %block_4263d5 ], [ %.pre67, %block_4263e7 ]
  %2578 = phi i64 [ %2530, %block_4263d5 ], [ %.pre66, %block_4263e7 ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_4263b8, %block_4263d5 ], [ %call2_4263f7, %block_4263e7 ]
  store i64 ptrtoint (%G__0x4bfbec_type* @G__0x4bfbec to i64), i64* %RDI.i1025, align 8
  store i64 %2577, i64* %RAX.i158, align 8
  %2579 = add i64 %2577, 44
  %2580 = add i64 %2578, 21
  store i64 %2580, i64* %3, align 8
  %2581 = inttoptr i64 %2579 to i32*
  %2582 = load i32, i32* %2581, align 4
  %2583 = add i32 %2582, -26
  %2584 = zext i32 %2583 to i64
  store i64 %2584, i64* %RCX.i1086, align 8
  %2585 = icmp ult i32 %2582, 26
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %14, align 1
  %2587 = and i32 %2583, 255
  %2588 = tail call i32 @llvm.ctpop.i32(i32 %2587)
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  %2591 = xor i8 %2590, 1
  store i8 %2591, i8* %21, align 1
  %2592 = xor i32 %2582, 16
  %2593 = xor i32 %2592, %2583
  %2594 = lshr i32 %2593, 4
  %2595 = trunc i32 %2594 to i8
  %2596 = and i8 %2595, 1
  store i8 %2596, i8* %27, align 1
  %2597 = icmp eq i32 %2583, 0
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %30, align 1
  %2599 = lshr i32 %2583, 31
  %2600 = trunc i32 %2599 to i8
  store i8 %2600, i8* %33, align 1
  %2601 = lshr i32 %2582, 31
  %2602 = xor i32 %2599, %2601
  %2603 = add nuw nsw i32 %2602, %2601
  %2604 = icmp eq i32 %2603, 2
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %39, align 1
  %2606 = load i64, i64* %RBP.i, align 8
  %2607 = add i64 %2606, -16
  %2608 = add i64 %2578, 28
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i64*
  %2610 = load i64, i64* %2609, align 8
  store i64 %2610, i64* %RDX.i1073, align 8
  store i64 %2584, i64* %RSI.i1005, align 8
  %2611 = add i64 %2578, 550334
  %2612 = add i64 %2578, 35
  %2613 = load i64, i64* %6, align 8
  %2614 = add i64 %2613, -8
  %2615 = inttoptr i64 %2614 to i64*
  store i64 %2612, i64* %2615, align 8
  store i64 %2614, i64* %6, align 8
  store i64 %2611, i64* %3, align 8
  %call2_426420 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %2611, %struct.Memory* %MEMORY.28)
  %2616 = load i64, i64* %RAX.i158, align 8
  %2617 = load i64, i64* %RBP.i, align 8
  %2618 = add i64 %2617, -28
  %2619 = load i64, i64* %3, align 8
  %2620 = add i64 %2619, 3
  store i64 %2620, i64* %3, align 8
  %2621 = trunc i64 %2616 to i32
  %2622 = inttoptr i64 %2618 to i32*
  %2623 = load i32, i32* %2622, align 4
  %2624 = add i32 %2623, %2621
  %2625 = zext i32 %2624 to i64
  store i64 %2625, i64* %RAX.i158, align 8
  %2626 = icmp ult i32 %2624, %2621
  %2627 = icmp ult i32 %2624, %2623
  %2628 = or i1 %2626, %2627
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %14, align 1
  %2630 = and i32 %2624, 255
  %2631 = tail call i32 @llvm.ctpop.i32(i32 %2630)
  %2632 = trunc i32 %2631 to i8
  %2633 = and i8 %2632, 1
  %2634 = xor i8 %2633, 1
  store i8 %2634, i8* %21, align 1
  %2635 = xor i32 %2623, %2621
  %2636 = xor i32 %2635, %2624
  %2637 = lshr i32 %2636, 4
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  store i8 %2639, i8* %27, align 1
  %2640 = icmp eq i32 %2624, 0
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %30, align 1
  %2642 = lshr i32 %2624, 31
  %2643 = trunc i32 %2642 to i8
  store i8 %2643, i8* %33, align 1
  %2644 = lshr i32 %2621, 31
  %2645 = lshr i32 %2623, 31
  %2646 = xor i32 %2642, %2644
  %2647 = xor i32 %2642, %2645
  %2648 = add nuw nsw i32 %2646, %2647
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %39, align 1
  %2651 = add i64 %2619, 6
  store i64 %2651, i64* %3, align 8
  store i32 %2624, i32* %2622, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_42642b

block_.L_42642b:                                  ; preds = %block_.L_426390, %block_.L_426402
  %2652 = phi i64 [ %2506, %block_.L_426390 ], [ %.pre68, %block_.L_426402 ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_4263b8, %block_.L_426390 ], [ %call2_426420, %block_.L_426402 ]
  %2653 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %2653, i64* %RAX.i158, align 8
  %2654 = add i64 %2653, 220
  %2655 = add i64 %2652, 15
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2654 to i32*
  %2657 = load i32, i32* %2656, align 4
  store i8 0, i8* %14, align 1
  %2658 = and i32 %2657, 255
  %2659 = tail call i32 @llvm.ctpop.i32(i32 %2658)
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  %2662 = xor i8 %2661, 1
  store i8 %2662, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2663 = icmp eq i32 %2657, 0
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %30, align 1
  %2665 = lshr i32 %2657, 31
  %2666 = trunc i32 %2665 to i8
  store i8 %2666, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v94 = select i1 %2663, i64 198, i64 21
  %2667 = add i64 %2652, %.v94
  store i64 %2667, i64* %3, align 8
  br i1 %2663, label %block_.L_4264f1, label %block_426440

block_426440:                                     ; preds = %block_.L_42642b
  store i64 ptrtoint (%G__0x4bfbff_type* @G__0x4bfbff to i64), i64* %RDI.i1025, align 8
  %2668 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2668, i64* %RAX.i158, align 8
  %2669 = add i64 %2668, 71984
  %2670 = add i64 %2667, 24
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RSI.i1005, align 8
  %2674 = load i64, i64* %RBP.i, align 8
  %2675 = add i64 %2674, -16
  %2676 = add i64 %2667, 28
  store i64 %2676, i64* %3, align 8
  %2677 = inttoptr i64 %2675 to i64*
  %2678 = load i64, i64* %2677, align 8
  store i64 %2678, i64* %RDX.i1073, align 8
  %2679 = add i64 %2667, 549472
  %2680 = add i64 %2667, 33
  %2681 = load i64, i64* %6, align 8
  %2682 = add i64 %2681, -8
  %2683 = inttoptr i64 %2682 to i64*
  store i64 %2680, i64* %2683, align 8
  store i64 %2682, i64* %6, align 8
  store i64 %2679, i64* %3, align 8
  %call2_42645c = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %2679, %struct.Memory* %MEMORY.29)
  %2684 = load i64, i64* %RAX.i158, align 8
  %2685 = load i64, i64* %RBP.i, align 8
  %2686 = add i64 %2685, -28
  %2687 = load i64, i64* %3, align 8
  %2688 = add i64 %2687, 3
  store i64 %2688, i64* %3, align 8
  %2689 = trunc i64 %2684 to i32
  %2690 = inttoptr i64 %2686 to i32*
  %2691 = load i32, i32* %2690, align 4
  %2692 = add i32 %2691, %2689
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RAX.i158, align 8
  %2694 = icmp ult i32 %2692, %2689
  %2695 = icmp ult i32 %2692, %2691
  %2696 = or i1 %2694, %2695
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %14, align 1
  %2698 = and i32 %2692, 255
  %2699 = tail call i32 @llvm.ctpop.i32(i32 %2698)
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = xor i8 %2701, 1
  store i8 %2702, i8* %21, align 1
  %2703 = xor i32 %2691, %2689
  %2704 = xor i32 %2703, %2692
  %2705 = lshr i32 %2704, 4
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  store i8 %2707, i8* %27, align 1
  %2708 = icmp eq i32 %2692, 0
  %2709 = zext i1 %2708 to i8
  store i8 %2709, i8* %30, align 1
  %2710 = lshr i32 %2692, 31
  %2711 = trunc i32 %2710 to i8
  store i8 %2711, i8* %33, align 1
  %2712 = lshr i32 %2689, 31
  %2713 = lshr i32 %2691, 31
  %2714 = xor i32 %2710, %2712
  %2715 = xor i32 %2710, %2713
  %2716 = add nuw nsw i32 %2714, %2715
  %2717 = icmp eq i32 %2716, 2
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %39, align 1
  %2719 = add i64 %2687, 6
  store i64 %2719, i64* %3, align 8
  store i32 %2692, i32* %2690, align 4
  %2720 = load i64, i64* %3, align 8
  %2721 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2721, i64* %RDX.i1073, align 8
  %2722 = add i64 %2721, 71984
  %2723 = add i64 %2720, 15
  store i64 %2723, i64* %3, align 8
  %2724 = inttoptr i64 %2722 to i32*
  %2725 = load i32, i32* %2724, align 4
  %2726 = add i32 %2725, -1
  %2727 = icmp eq i32 %2725, 0
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %14, align 1
  %2729 = and i32 %2726, 255
  %2730 = tail call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  store i8 %2733, i8* %21, align 1
  %2734 = xor i32 %2726, %2725
  %2735 = lshr i32 %2734, 4
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  store i8 %2737, i8* %27, align 1
  %2738 = icmp eq i32 %2726, 0
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %30, align 1
  %2740 = lshr i32 %2726, 31
  %2741 = trunc i32 %2740 to i8
  store i8 %2741, i8* %33, align 1
  %2742 = lshr i32 %2725, 31
  %2743 = xor i32 %2740, %2742
  %2744 = add nuw nsw i32 %2743, %2742
  %2745 = icmp eq i32 %2744, 2
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %39, align 1
  %.v95 = select i1 %2738, i64 133, i64 21
  %2747 = add i64 %2720, %.v95
  store i64 %2747, i64* %3, align 8
  br i1 %2738, label %block_.L_4264ec, label %block_42647c

block_42647c:                                     ; preds = %block_426440
  store i64 ptrtoint (%G__0x4bfc21_type* @G__0x4bfc21 to i64), i64* %RDI.i1025, align 8
  store i64 2, i64* %RAX.i158, align 8
  store i64 %2721, i64* %RCX.i1086, align 8
  %2748 = add i64 %2721, 71988
  %2749 = add i64 %2747, 29
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i32*
  %2751 = load i32, i32* %2750, align 4
  %2752 = zext i32 %2751 to i64
  store i64 %2752, i64* %RDX.i1073, align 8
  %2753 = load i64, i64* %RBP.i, align 8
  %2754 = add i64 %2753, -64
  %2755 = add i64 %2747, 32
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i32*
  store i32 2, i32* %2756, align 4
  %EDX.i195 = bitcast %union.anon* %70 to i32*
  %2757 = load i32, i32* %EDX.i195, align 4
  %2758 = zext i32 %2757 to i64
  %2759 = load i64, i64* %3, align 8
  store i64 %2758, i64* %RAX.i158, align 8
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2761 = sext i32 %2757 to i64
  %2762 = lshr i64 %2761, 32
  store i64 %2762, i64* %2760, align 8
  %2763 = load i64, i64* %RBP.i, align 8
  %2764 = add i64 %2763, -64
  %2765 = add i64 %2759, 6
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2764 to i32*
  %2767 = load i32, i32* %2766, align 4
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RSI.i1005, align 8
  %ESI.i186 = bitcast %union.anon* %223 to i32*
  %2769 = add i64 %2759, 8
  store i64 %2769, i64* %3, align 8
  %2770 = sext i32 %2767 to i64
  %2771 = shl nuw i64 %2762, 32
  %2772 = or i64 %2771, %2758
  %2773 = sdiv i64 %2772, %2770
  %2774 = shl i64 %2773, 32
  %2775 = ashr exact i64 %2774, 32
  %2776 = icmp eq i64 %2773, %2775
  br i1 %2776, label %2779, label %2777

; <label>:2777:                                   ; preds = %block_42647c
  %2778 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2769, %struct.Memory* %call2_42645c)
  %.pre69 = load i64, i64* %RBP.i, align 8
  %.pre70 = load i64, i64* %3, align 8
  %.pre71 = load i32, i32* %EAX.i1004.pre-phi, align 4
  br label %routine_idivl__esi.exit187

; <label>:2779:                                   ; preds = %block_42647c
  %2780 = srem i64 %2772, %2770
  %2781 = and i64 %2773, 4294967295
  store i64 %2781, i64* %RAX.i158, align 8
  %2782 = and i64 %2780, 4294967295
  store i64 %2782, i64* %RDX.i1073, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2783 = trunc i64 %2773 to i32
  br label %routine_idivl__esi.exit187

routine_idivl__esi.exit187:                       ; preds = %2779, %2777
  %2784 = phi i32 [ %.pre71, %2777 ], [ %2783, %2779 ]
  %2785 = phi i64 [ %.pre70, %2777 ], [ %2769, %2779 ]
  %2786 = phi i64 [ %.pre69, %2777 ], [ %2763, %2779 ]
  %2787 = phi %struct.Memory* [ %2778, %2777 ], [ %call2_42645c, %2779 ]
  %2788 = add i64 %2786, -16
  %2789 = add i64 %2785, 4
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i64*
  %2791 = load i64, i64* %2790, align 8
  store i64 %2791, i64* %RCX.i1086, align 8
  %2792 = zext i32 %2784 to i64
  store i64 %2792, i64* %RSI.i1005, align 8
  store i64 %2791, i64* %RDX.i1073, align 8
  %2793 = add i64 %2785, 550172
  %2794 = add i64 %2785, 14
  %2795 = load i64, i64* %6, align 8
  %2796 = add i64 %2795, -8
  %2797 = inttoptr i64 %2796 to i64*
  store i64 %2794, i64* %2797, align 8
  store i64 %2796, i64* %6, align 8
  store i64 %2793, i64* %3, align 8
  %call2_4264ad = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %2793, %struct.Memory* %2787)
  %2798 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfc40_type* @G__0x4bfc40 to i64), i64* %RDI.i1025, align 8
  store i64 2, i64* %RSI.i1005, align 8
  %2799 = load i64, i64* %RAX.i158, align 8
  %2800 = load i64, i64* %RBP.i, align 8
  %2801 = add i64 %2800, -28
  %2802 = add i64 %2798, 18
  store i64 %2802, i64* %3, align 8
  %2803 = trunc i64 %2799 to i32
  %2804 = inttoptr i64 %2801 to i32*
  %2805 = load i32, i32* %2804, align 4
  %2806 = add i32 %2805, %2803
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RAX.i158, align 8
  %2808 = icmp ult i32 %2806, %2803
  %2809 = icmp ult i32 %2806, %2805
  %2810 = or i1 %2808, %2809
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %14, align 1
  %2812 = and i32 %2806, 255
  %2813 = tail call i32 @llvm.ctpop.i32(i32 %2812)
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = xor i8 %2815, 1
  store i8 %2816, i8* %21, align 1
  %2817 = xor i32 %2805, %2803
  %2818 = xor i32 %2817, %2806
  %2819 = lshr i32 %2818, 4
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  store i8 %2821, i8* %27, align 1
  %2822 = icmp eq i32 %2806, 0
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %30, align 1
  %2824 = lshr i32 %2806, 31
  %2825 = trunc i32 %2824 to i8
  store i8 %2825, i8* %33, align 1
  %2826 = lshr i32 %2803, 31
  %2827 = lshr i32 %2805, 31
  %2828 = xor i32 %2824, %2826
  %2829 = xor i32 %2824, %2827
  %2830 = add nuw nsw i32 %2828, %2829
  %2831 = icmp eq i32 %2830, 2
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %39, align 1
  %2833 = add i64 %2798, 21
  store i64 %2833, i64* %3, align 8
  store i32 %2806, i32* %2804, align 4
  %2834 = load i64, i64* %3, align 8
  %2835 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2835, i64* %RCX.i1086, align 8
  %2836 = add i64 %2835, 71992
  %2837 = add i64 %2834, 14
  store i64 %2837, i64* %3, align 8
  %2838 = inttoptr i64 %2836 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = zext i32 %2839 to i64
  store i64 %2840, i64* %RAX.i158, align 8
  %2841 = sext i32 %2839 to i64
  %2842 = lshr i64 %2841, 32
  store i64 %2842, i64* %2760, align 8
  %2843 = load i32, i32* %ESI.i186, align 4
  %2844 = add i64 %2834, 17
  store i64 %2844, i64* %3, align 8
  %2845 = sext i32 %2843 to i64
  %2846 = shl nuw i64 %2842, 32
  %2847 = or i64 %2846, %2840
  %2848 = sdiv i64 %2847, %2845
  %2849 = shl i64 %2848, 32
  %2850 = ashr exact i64 %2849, 32
  %2851 = icmp eq i64 %2848, %2850
  br i1 %2851, label %2854, label %2852

; <label>:2852:                                   ; preds = %routine_idivl__esi.exit187
  %2853 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2844, %struct.Memory* %call2_4264ad)
  %.pre72 = load i64, i64* %3, align 8
  %.pre73 = load i32, i32* %EAX.i1004.pre-phi, align 4
  br label %routine_idivl__esi.exit

; <label>:2854:                                   ; preds = %routine_idivl__esi.exit187
  %2855 = srem i64 %2847, %2845
  %2856 = and i64 %2848, 4294967295
  store i64 %2856, i64* %RAX.i158, align 8
  %2857 = and i64 %2855, 4294967295
  store i64 %2857, i64* %RDX.i1073, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2858 = trunc i64 %2848 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2854, %2852
  %2859 = phi i32 [ %.pre73, %2852 ], [ %2858, %2854 ]
  %2860 = phi i64 [ %.pre72, %2852 ], [ %2844, %2854 ]
  %2861 = phi %struct.Memory* [ %2853, %2852 ], [ %call2_4264ad, %2854 ]
  %2862 = load i64, i64* %RBP.i, align 8
  %2863 = add i64 %2862, -16
  %2864 = add i64 %2860, 4
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i64*
  %2866 = load i64, i64* %2865, align 8
  store i64 %2866, i64* %RCX.i1086, align 8
  %2867 = zext i32 %2859 to i64
  store i64 %2867, i64* %RSI.i1005, align 8
  store i64 %2866, i64* %RDX.i1073, align 8
  %2868 = add i64 %2860, 550120
  %2869 = add i64 %2860, 14
  %2870 = load i64, i64* %6, align 8
  %2871 = add i64 %2870, -8
  %2872 = inttoptr i64 %2871 to i64*
  store i64 %2869, i64* %2872, align 8
  store i64 %2871, i64* %6, align 8
  store i64 %2868, i64* %3, align 8
  %call2_4264e1 = tail call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* nonnull %0, i64 %2868, %struct.Memory* %2861)
  %2873 = load i64, i64* %RAX.i158, align 8
  %2874 = load i64, i64* %RBP.i, align 8
  %2875 = add i64 %2874, -28
  %2876 = load i64, i64* %3, align 8
  %2877 = add i64 %2876, 3
  store i64 %2877, i64* %3, align 8
  %2878 = trunc i64 %2873 to i32
  %2879 = inttoptr i64 %2875 to i32*
  %2880 = load i32, i32* %2879, align 4
  %2881 = add i32 %2880, %2878
  %2882 = zext i32 %2881 to i64
  store i64 %2882, i64* %RAX.i158, align 8
  %2883 = icmp ult i32 %2881, %2878
  %2884 = icmp ult i32 %2881, %2880
  %2885 = or i1 %2883, %2884
  %2886 = zext i1 %2885 to i8
  store i8 %2886, i8* %14, align 1
  %2887 = and i32 %2881, 255
  %2888 = tail call i32 @llvm.ctpop.i32(i32 %2887)
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = xor i8 %2890, 1
  store i8 %2891, i8* %21, align 1
  %2892 = xor i32 %2880, %2878
  %2893 = xor i32 %2892, %2881
  %2894 = lshr i32 %2893, 4
  %2895 = trunc i32 %2894 to i8
  %2896 = and i8 %2895, 1
  store i8 %2896, i8* %27, align 1
  %2897 = icmp eq i32 %2881, 0
  %2898 = zext i1 %2897 to i8
  store i8 %2898, i8* %30, align 1
  %2899 = lshr i32 %2881, 31
  %2900 = trunc i32 %2899 to i8
  store i8 %2900, i8* %33, align 1
  %2901 = lshr i32 %2878, 31
  %2902 = lshr i32 %2880, 31
  %2903 = xor i32 %2899, %2901
  %2904 = xor i32 %2899, %2902
  %2905 = add nuw nsw i32 %2903, %2904
  %2906 = icmp eq i32 %2905, 2
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %39, align 1
  %2908 = add i64 %2876, 6
  store i64 %2908, i64* %3, align 8
  store i32 %2881, i32* %2879, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_4264ec

block_.L_4264ec:                                  ; preds = %routine_idivl__esi.exit, %block_426440
  %2909 = phi i64 [ %2747, %block_426440 ], [ %.pre74, %routine_idivl__esi.exit ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_42645c, %block_426440 ], [ %call2_4264e1, %routine_idivl__esi.exit ]
  %2910 = add i64 %2909, 5
  store i64 %2910, i64* %3, align 8
  %.pre75 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  br label %block_.L_4264f1

block_.L_4264f1:                                  ; preds = %block_.L_4264ec, %block_.L_42642b
  %2911 = phi i64 [ %2653, %block_.L_42642b ], [ %.pre75, %block_.L_4264ec ]
  %2912 = phi i64 [ %2667, %block_.L_42642b ], [ %2910, %block_.L_4264ec ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.29, %block_.L_42642b ], [ %MEMORY.30, %block_.L_4264ec ]
  store i64 %2911, i64* %RAX.i158, align 8
  %2913 = add i64 %2911, 60
  %2914 = add i64 %2912, 12
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to i32*
  %2916 = load i32, i32* %2915, align 4
  store i8 0, i8* %14, align 1
  %2917 = and i32 %2916, 255
  %2918 = tail call i32 @llvm.ctpop.i32(i32 %2917)
  %2919 = trunc i32 %2918 to i8
  %2920 = and i8 %2919, 1
  %2921 = xor i8 %2920, 1
  store i8 %2921, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2922 = icmp eq i32 %2916, 0
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %30, align 1
  %2924 = lshr i32 %2916, 31
  %2925 = trunc i32 %2924 to i8
  store i8 %2925, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v96 = select i1 %2922, i64 231, i64 18
  %2926 = add i64 %2912, %.v96
  store i64 %2926, i64* %3, align 8
  br i1 %2922, label %block_.L_4265d8, label %block_426503

block_426503:                                     ; preds = %block_.L_4264f1
  store i64 %2911, i64* %RAX.i158, align 8
  %2927 = add i64 %2911, 64
  %2928 = add i64 %2926, 12
  store i64 %2928, i64* %3, align 8
  %2929 = inttoptr i64 %2927 to i32*
  %2930 = load i32, i32* %2929, align 4
  %2931 = add i32 %2930, -3
  %2932 = icmp ult i32 %2930, 3
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %14, align 1
  %2934 = and i32 %2931, 255
  %2935 = tail call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  store i8 %2938, i8* %21, align 1
  %2939 = xor i32 %2931, %2930
  %2940 = lshr i32 %2939, 4
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  store i8 %2942, i8* %27, align 1
  %2943 = icmp eq i32 %2931, 0
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %30, align 1
  %2945 = lshr i32 %2931, 31
  %2946 = trunc i32 %2945 to i8
  store i8 %2946, i8* %33, align 1
  %2947 = lshr i32 %2930, 31
  %2948 = xor i32 %2945, %2947
  %2949 = add nuw nsw i32 %2948, %2947
  %2950 = icmp eq i32 %2949, 2
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %39, align 1
  %.v97 = select i1 %2932, i64 213, i64 18
  %2952 = add i64 %2926, %.v97
  store i64 %2952, i64* %3, align 8
  br i1 %2932, label %block_.L_4265d8, label %block_426515

block_426515:                                     ; preds = %block_426503
  store i64 %2911, i64* %RAX.i158, align 8
  %2953 = add i64 %2952, 12
  store i64 %2953, i64* %3, align 8
  %2954 = load i32, i32* %2929, align 4
  %2955 = add i32 %2954, -5
  %2956 = icmp ult i32 %2954, 5
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %14, align 1
  %2958 = and i32 %2955, 255
  %2959 = tail call i32 @llvm.ctpop.i32(i32 %2958)
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  %2962 = xor i8 %2961, 1
  store i8 %2962, i8* %21, align 1
  %2963 = xor i32 %2955, %2954
  %2964 = lshr i32 %2963, 4
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  store i8 %2966, i8* %27, align 1
  %2967 = icmp eq i32 %2955, 0
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %30, align 1
  %2969 = lshr i32 %2955, 31
  %2970 = trunc i32 %2969 to i8
  store i8 %2970, i8* %33, align 1
  %2971 = lshr i32 %2954, 31
  %2972 = xor i32 %2969, %2971
  %2973 = add nuw nsw i32 %2972, %2971
  %2974 = icmp eq i32 %2973, 2
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %39, align 1
  %2976 = or i1 %2967, %2956
  %.v98 = select i1 %2976, i64 18, i64 195
  %2977 = add i64 %2952, %.v98
  store i64 %2977, i64* %3, align 8
  br i1 %2976, label %block_426527, label %block_.L_4265d8

block_426527:                                     ; preds = %block_426515
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2979 = bitcast [32 x %union.VectorReg]* %2978 to i8*
  %2980 = add i64 %2977, ptrtoint (%G_0x97305__rip__type* @G_0x97305__rip_ to i64)
  %2981 = add i64 %2977, 8
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2980 to i32*
  %2983 = load i32, i32* %2982, align 4
  %2984 = bitcast [32 x %union.VectorReg]* %2978 to i32*
  store i32 %2983, i32* %2984, align 1
  %2985 = getelementptr inbounds i8, i8* %2979, i64 4
  %2986 = bitcast i8* %2985 to float*
  store float 0.000000e+00, float* %2986, align 1
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2988 = bitcast i64* %2987 to float*
  store float 0.000000e+00, float* %2988, align 1
  %2989 = getelementptr inbounds i8, i8* %2979, i64 12
  %2990 = bitcast i8* %2989 to float*
  store float 0.000000e+00, float* %2990, align 1
  %2991 = add i64 %2977, add (i64 ptrtoint (%G_0x2a53ca__rip__type* @G_0x2a53ca__rip_ to i64), i64 8)
  %2992 = add i64 %2977, 15
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i64*
  %2994 = load i64, i64* %2993, align 8
  store i64 %2994, i64* %RAX.i158, align 8
  %2995 = add i64 %2994, 72468
  %2996 = add i64 %2977, 21
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = zext i32 %2998 to i64
  store i64 %2999, i64* %RCX.i1086, align 8
  %3000 = add i64 %2994, 72472
  %3001 = add i64 %2977, 27
  store i64 %3001, i64* %3, align 8
  %3002 = inttoptr i64 %3000 to i32*
  %3003 = load i32, i32* %3002, align 4
  %3004 = sext i32 %3003 to i64
  %3005 = sext i32 %2998 to i64
  %3006 = mul nsw i64 %3005, %3004
  %3007 = trunc i64 %3006 to i32
  %3008 = and i64 %3006, 4294967295
  store i64 %3008, i64* %RDX.i1073, align 8
  %3009 = shl i64 %3006, 32
  %3010 = ashr exact i64 %3009, 32
  %3011 = icmp ne i64 %3010, %3006
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %14, align 1
  %3013 = and i32 %3007, 255
  %3014 = tail call i32 @llvm.ctpop.i32(i32 %3013)
  %3015 = trunc i32 %3014 to i8
  %3016 = and i8 %3015, 1
  %3017 = xor i8 %3016, 1
  store i8 %3017, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %3018 = lshr i32 %3007, 31
  %3019 = trunc i32 %3018 to i8
  store i8 %3019, i8* %33, align 1
  store i8 %3012, i8* %39, align 1
  %3020 = trunc i64 %3006 to i32
  %3021 = and i64 %3006, 4294967295
  store i64 %3021, i64* %RAX.i158, align 8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %3023 = bitcast %union.VectorReg* %3022 to i8*
  %3024 = bitcast %union.VectorReg* %3022 to <2 x i32>*
  %3025 = load <2 x i32>, <2 x i32>* %3024, align 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %3027 = bitcast i64* %3026 to <2 x i32>*
  %3028 = load <2 x i32>, <2 x i32>* %3027, align 1
  %3029 = uitofp i32 %3020 to float
  %3030 = bitcast %union.VectorReg* %3022 to float*
  store float %3029, float* %3030, align 1
  %3031 = extractelement <2 x i32> %3025, i32 1
  %3032 = getelementptr inbounds i8, i8* %3023, i64 4
  %3033 = bitcast i8* %3032 to i32*
  store i32 %3031, i32* %3033, align 1
  %3034 = extractelement <2 x i32> %3028, i32 0
  %3035 = bitcast i64* %3026 to i32*
  store i32 %3034, i32* %3035, align 1
  %3036 = extractelement <2 x i32> %3028, i32 1
  %3037 = getelementptr inbounds i8, i8* %3023, i64 12
  %3038 = bitcast i8* %3037 to i32*
  store i32 %3036, i32* %3038, align 1
  %3039 = add i64 %2977, add (i64 ptrtoint (%G_0x2ae13d__rip__type* @G_0x2ae13d__rip_ to i64), i64 37)
  %3040 = add i64 %2977, 44
  store i64 %3040, i64* %3, align 8
  %3041 = inttoptr i64 %3039 to i64*
  %3042 = load i64, i64* %3041, align 8
  store i64 %3042, i64* %RAX.i158, align 8
  %3043 = add i64 %3042, 168
  %3044 = add i64 %2977, 50
  store i64 %3044, i64* %3, align 8
  %3045 = inttoptr i64 %3043 to i32*
  %3046 = load i32, i32* %3045, align 4
  %3047 = add i32 %3046, 1
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RCX.i1086, align 8
  %3049 = and i32 %3047, 255
  %3050 = tail call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  store i8 %3053, i8* %21, align 1
  %3054 = xor i32 %3047, %3046
  %3055 = lshr i32 %3054, 4
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  store i8 %3057, i8* %27, align 1
  %3058 = icmp eq i32 %3047, 0
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %30, align 1
  %3060 = lshr i32 %3047, 31
  %3061 = trunc i32 %3060 to i8
  store i8 %3061, i8* %33, align 1
  %3062 = lshr i32 %3046, 31
  %3063 = xor i32 %3060, %3062
  %3064 = add nuw nsw i32 %3063, %3060
  %3065 = icmp eq i32 %3064, 2
  %3066 = zext i1 %3065 to i8
  store i8 %3066, i8* %39, align 1
  store i64 %3048, i64* %RAX.i158, align 8
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %3068 = bitcast %union.VectorReg* %3067 to i8*
  %3069 = bitcast %union.VectorReg* %3067 to <2 x i32>*
  %3070 = load <2 x i32>, <2 x i32>* %3069, align 1
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %3072 = bitcast i64* %3071 to <2 x i32>*
  %3073 = load <2 x i32>, <2 x i32>* %3072, align 1
  %3074 = uitofp i32 %3047 to float
  %3075 = bitcast %union.VectorReg* %3067 to float*
  store float %3074, float* %3075, align 1
  %3076 = extractelement <2 x i32> %3070, i32 1
  %3077 = getelementptr inbounds i8, i8* %3068, i64 4
  %3078 = bitcast i8* %3077 to i32*
  store i32 %3076, i32* %3078, align 1
  %3079 = extractelement <2 x i32> %3073, i32 0
  %3080 = bitcast i64* %3071 to i32*
  store i32 %3079, i32* %3080, align 1
  %3081 = extractelement <2 x i32> %3073, i32 1
  %3082 = getelementptr inbounds i8, i8* %3068, i64 12
  %3083 = bitcast i8* %3082 to i32*
  store i32 %3081, i32* %3083, align 1
  %3084 = bitcast %union.VectorReg* %3022 to <2 x float>*
  %3085 = load <2 x float>, <2 x float>* %3084, align 1
  %3086 = load <2 x i32>, <2 x i32>* %3027, align 1
  %3087 = bitcast %union.VectorReg* %3067 to <2 x float>*
  %3088 = load <2 x float>, <2 x float>* %3087, align 1
  %3089 = extractelement <2 x float> %3085, i32 0
  %3090 = extractelement <2 x float> %3088, i32 0
  %3091 = fdiv float %3089, %3090
  store float %3091, float* %3030, align 1
  %3092 = bitcast <2 x float> %3085 to <2 x i32>
  %3093 = extractelement <2 x i32> %3092, i32 1
  store i32 %3093, i32* %3033, align 1
  %3094 = extractelement <2 x i32> %3086, i32 0
  store i32 %3094, i32* %3035, align 1
  %3095 = extractelement <2 x i32> %3086, i32 1
  store i32 %3095, i32* %3038, align 1
  %3096 = load <2 x float>, <2 x float>* %3084, align 1
  %3097 = load <2 x i32>, <2 x i32>* %3027, align 1
  %3098 = bitcast [32 x %union.VectorReg]* %2978 to <2 x float>*
  %3099 = load <2 x float>, <2 x float>* %3098, align 1
  %3100 = extractelement <2 x float> %3096, i32 0
  %3101 = extractelement <2 x float> %3099, i32 0
  %3102 = fadd float %3100, %3101
  store float %3102, float* %3030, align 1
  %3103 = bitcast <2 x float> %3096 to <2 x i32>
  %3104 = extractelement <2 x i32> %3103, i32 1
  store i32 %3104, i32* %3033, align 1
  %3105 = extractelement <2 x i32> %3097, i32 0
  store i32 %3105, i32* %3035, align 1
  %3106 = extractelement <2 x i32> %3097, i32 1
  store i32 %3106, i32* %3038, align 1
  %3107 = load i64, i64* %RBP.i, align 8
  %3108 = add i64 %3107, -44
  %3109 = add i64 %2977, 72
  store i64 %3109, i64* %3, align 8
  %3110 = load <2 x float>, <2 x float>* %3084, align 1
  %3111 = extractelement <2 x float> %3110, i32 0
  %3112 = inttoptr i64 %3108 to float*
  store float %3111, float* %3112, align 4
  %3113 = load i64, i64* %RBP.i, align 8
  %3114 = add i64 %3113, -44
  %3115 = load i64, i64* %3, align 8
  %3116 = add i64 %3115, 5
  store i64 %3116, i64* %3, align 8
  %3117 = inttoptr i64 %3114 to float*
  %3118 = load float, float* %3117, align 4
  %3119 = fpext float %3118 to double
  %3120 = bitcast [32 x %union.VectorReg]* %2978 to double*
  store double %3119, double* %3120, align 1
  %3121 = add i64 %3115, -152799
  %3122 = add i64 %3115, 10
  %3123 = load i64, i64* %6, align 8
  %3124 = add i64 %3123, -8
  %3125 = inttoptr i64 %3124 to i64*
  store i64 %3122, i64* %3125, align 8
  store i64 %3124, i64* %6, align 8
  store i64 %3121, i64* %3, align 8
  %3126 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %MEMORY.31)
  %3127 = load i64, i64* %3, align 8
  %3128 = add i64 %3127, ptrtoint (%G_0x8b2c7__rip__type* @G_0x8b2c7__rip_ to i64)
  %3129 = add i64 %3127, 8
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i64*
  %3131 = load i64, i64* %3130, align 8
  %3132 = bitcast %union.VectorReg* %3022 to double*
  %3133 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3022, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3131, i64* %3133, align 1
  %3134 = bitcast i64* %3026 to double*
  store double 0.000000e+00, double* %3134, align 1
  %3135 = load i64, i64* %RBP.i, align 8
  %3136 = add i64 %3135, -72
  %3137 = add i64 %3127, 13
  store i64 %3137, i64* %3, align 8
  %3138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2978, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3139 = load i64, i64* %3138, align 1
  %3140 = inttoptr i64 %3136 to i64*
  store i64 %3139, i64* %3140, align 8
  %3141 = load i64, i64* %3, align 8
  %3142 = load <2 x i32>, <2 x i32>* %3024, align 1
  %3143 = load <2 x i32>, <2 x i32>* %3027, align 1
  %3144 = extractelement <2 x i32> %3142, i32 0
  store i32 %3144, i32* %2984, align 1
  %3145 = extractelement <2 x i32> %3142, i32 1
  %3146 = bitcast i8* %2985 to i32*
  store i32 %3145, i32* %3146, align 1
  %3147 = extractelement <2 x i32> %3143, i32 0
  %3148 = bitcast i64* %2987 to i32*
  store i32 %3147, i32* %3148, align 1
  %3149 = extractelement <2 x i32> %3143, i32 1
  %3150 = bitcast i8* %2989 to i32*
  store i32 %3149, i32* %3150, align 1
  %3151 = add i64 %3141, -152822
  %3152 = add i64 %3141, 8
  %3153 = load i64, i64* %6, align 8
  %3154 = add i64 %3153, -8
  %3155 = inttoptr i64 %3154 to i64*
  store i64 %3152, i64* %3155, align 8
  store i64 %3154, i64* %6, align 8
  store i64 %3151, i64* %3, align 8
  %3156 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %3126)
  %3157 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4bfc5b_type* @G__0x4bfc5b to i64), i64* %RSI.i1005, align 8
  %3158 = load i64, i64* %RBP.i, align 8
  %3159 = add i64 %3158, -72
  %3160 = add i64 %3157, 15
  store i64 %3160, i64* %3, align 8
  %3161 = inttoptr i64 %3159 to double*
  %3162 = load double, double* %3161, align 8
  %3163 = load double, double* %3120, align 1
  %3164 = fdiv double %3162, %3163
  store double %3164, double* %3132, align 1
  store i64 0, i64* %3026, align 1
  %.cast43 = bitcast double %3164 to <2 x i32>
  %3165 = extractelement <2 x i32> %.cast43, i32 0
  store i32 %3165, i32* %2984, align 1
  %3166 = extractelement <2 x i32> %.cast43, i32 1
  store i32 %3166, i32* %3146, align 1
  store i32 0, i32* %3148, align 1
  store i32 0, i32* %3150, align 1
  %3167 = add i64 %3158, -80
  %3168 = add i64 %3157, 26
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3167 to i64*
  store i64 ptrtoint (%G__0x4bfc5b_type* @G__0x4bfc5b to i64), i64* %3169, align 8
  %3170 = load i64, i64* %3, align 8
  %3171 = add i64 %3170, -152488
  %3172 = add i64 %3170, 5
  %3173 = load i64, i64* %6, align 8
  %3174 = add i64 %3173, -8
  %3175 = inttoptr i64 %3174 to i64*
  store i64 %3172, i64* %3175, align 8
  store i64 %3174, i64* %6, align 8
  store i64 %3171, i64* %3, align 8
  %call2_4265a8 = tail call %struct.Memory* @sub_401200.ceil_plt(%struct.State* nonnull %0, i64 %3171, %struct.Memory* %3156)
  %3176 = load i64, i64* %3, align 8
  %3177 = load double, double* %3120, align 1
  %3178 = tail call double @llvm.trunc.f64(double %3177)
  %3179 = tail call double @llvm.fabs.f64(double %3178)
  %3180 = fcmp ogt double %3179, 0x41DFFFFFFFC00000
  %3181 = fptosi double %3178 to i32
  %3182 = zext i32 %3181 to i64
  %3183 = select i1 %3180, i64 2147483648, i64 %3182
  store i64 %3183, i64* %RCX.i1086, align 8
  %3184 = load i64, i64* %RBP.i, align 8
  %3185 = add i64 %3184, -40
  %3186 = trunc i64 %3183 to i32
  %3187 = add i64 %3176, 7
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3185 to i32*
  store i32 %3186, i32* %3188, align 4
  %3189 = load i64, i64* %RBP.i, align 8
  %3190 = add i64 %3189, -40
  %3191 = load i64, i64* %3, align 8
  %3192 = add i64 %3191, 3
  store i64 %3192, i64* %3, align 8
  %3193 = inttoptr i64 %3190 to i32*
  %3194 = load i32, i32* %3193, align 4
  %3195 = zext i32 %3194 to i64
  store i64 %3195, i64* %RDI.i1025, align 8
  %3196 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3196, i64* %RAX.i158, align 8
  %3197 = add i64 %3196, 72652
  %3198 = add i64 %3191, 17
  store i64 %3198, i64* %3, align 8
  %3199 = inttoptr i64 %3197 to i32*
  %3200 = load i32, i32* %3199, align 4
  %3201 = zext i32 %3200 to i64
  store i64 %3201, i64* %RDX.i1073, align 8
  %3202 = add i64 %3189, -16
  %3203 = add i64 %3191, 21
  store i64 %3203, i64* %3, align 8
  %3204 = inttoptr i64 %3202 to i64*
  %3205 = load i64, i64* %3204, align 8
  store i64 %3205, i64* %RCX.i1086, align 8
  %3206 = add i64 %3189, -80
  %3207 = add i64 %3191, 25
  store i64 %3207, i64* %3, align 8
  %3208 = inttoptr i64 %3206 to i64*
  %3209 = load i64, i64* %3208, align 8
  store i64 %3209, i64* %RSI.i1005, align 8
  %3210 = add i64 %3191, 550412
  %3211 = add i64 %3191, 30
  %3212 = load i64, i64* %6, align 8
  %3213 = add i64 %3212, -8
  %3214 = inttoptr i64 %3213 to i64*
  store i64 %3211, i64* %3214, align 8
  store i64 %3213, i64* %6, align 8
  store i64 %3210, i64* %3, align 8
  %call2_4265cd = tail call %struct.Memory* @sub_4acbc0.u_v(%struct.State* nonnull %0, i64 %3210, %struct.Memory* %call2_4265a8)
  %3215 = load i64, i64* %RAX.i158, align 8
  %3216 = load i64, i64* %RBP.i, align 8
  %3217 = add i64 %3216, -28
  %3218 = load i64, i64* %3, align 8
  %3219 = add i64 %3218, 3
  store i64 %3219, i64* %3, align 8
  %3220 = trunc i64 %3215 to i32
  %3221 = inttoptr i64 %3217 to i32*
  %3222 = load i32, i32* %3221, align 4
  %3223 = add i32 %3222, %3220
  %3224 = zext i32 %3223 to i64
  store i64 %3224, i64* %RAX.i158, align 8
  %3225 = icmp ult i32 %3223, %3220
  %3226 = icmp ult i32 %3223, %3222
  %3227 = or i1 %3225, %3226
  %3228 = zext i1 %3227 to i8
  store i8 %3228, i8* %14, align 1
  %3229 = and i32 %3223, 255
  %3230 = tail call i32 @llvm.ctpop.i32(i32 %3229)
  %3231 = trunc i32 %3230 to i8
  %3232 = and i8 %3231, 1
  %3233 = xor i8 %3232, 1
  store i8 %3233, i8* %21, align 1
  %3234 = xor i32 %3222, %3220
  %3235 = xor i32 %3234, %3223
  %3236 = lshr i32 %3235, 4
  %3237 = trunc i32 %3236 to i8
  %3238 = and i8 %3237, 1
  store i8 %3238, i8* %27, align 1
  %3239 = icmp eq i32 %3223, 0
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %30, align 1
  %3241 = lshr i32 %3223, 31
  %3242 = trunc i32 %3241 to i8
  store i8 %3242, i8* %33, align 1
  %3243 = lshr i32 %3220, 31
  %3244 = lshr i32 %3222, 31
  %3245 = xor i32 %3241, %3243
  %3246 = xor i32 %3241, %3244
  %3247 = add nuw nsw i32 %3245, %3246
  %3248 = icmp eq i32 %3247, 2
  %3249 = zext i1 %3248 to i8
  store i8 %3249, i8* %39, align 1
  %3250 = add i64 %3218, 6
  store i64 %3250, i64* %3, align 8
  store i32 %3223, i32* %3221, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_4265d8

block_.L_4265d8:                                  ; preds = %block_426515, %block_426527, %block_426503, %block_.L_4264f1
  %3251 = phi i64 [ %2926, %block_.L_4264f1 ], [ %2952, %block_426503 ], [ %2977, %block_426515 ], [ %.pre76, %block_426527 ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.31, %block_.L_4264f1 ], [ %MEMORY.31, %block_426503 ], [ %MEMORY.31, %block_426515 ], [ %call2_4265cd, %block_426527 ]
  %3252 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3252, i64* %RAX.i158, align 8
  %3253 = add i64 %3252, 2364
  %3254 = add i64 %3251, 15
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i32*
  %3256 = load i32, i32* %3255, align 4
  store i8 0, i8* %14, align 1
  %3257 = and i32 %3256, 255
  %3258 = tail call i32 @llvm.ctpop.i32(i32 %3257)
  %3259 = trunc i32 %3258 to i8
  %3260 = and i8 %3259, 1
  %3261 = xor i8 %3260, 1
  store i8 %3261, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3262 = icmp eq i32 %3256, 0
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %30, align 1
  %3264 = lshr i32 %3256, 31
  %3265 = trunc i32 %3264 to i8
  store i8 %3265, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v99 = select i1 %3262, i64 82, i64 21
  %3266 = add i64 %3251, %.v99
  store i64 %3266, i64* %3, align 8
  br i1 %3262, label %block_.L_42662a, label %block_4265ed

block_4265ed:                                     ; preds = %block_.L_4265d8
  %3267 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3267, i64* %RAX.i158, align 8
  %3268 = add i64 %3267, 14152
  %3269 = add i64 %3266, 15
  store i64 %3269, i64* %3, align 8
  %3270 = inttoptr i64 %3268 to i64*
  %3271 = load i64, i64* %3270, align 8
  store i64 %3271, i64* %RAX.i158, align 8
  %3272 = add i64 %3271, 4
  %3273 = add i64 %3266, 19
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  store i8 0, i8* %14, align 1
  %3276 = and i32 %3275, 255
  %3277 = tail call i32 @llvm.ctpop.i32(i32 %3276)
  %3278 = trunc i32 %3277 to i8
  %3279 = and i8 %3278, 1
  %3280 = xor i8 %3279, 1
  store i8 %3280, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3281 = icmp eq i32 %3275, 0
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %30, align 1
  %3283 = lshr i32 %3275, 31
  %3284 = trunc i32 %3283 to i8
  store i8 %3284, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v100 = select i1 %3281, i64 25, i64 61
  %3285 = add i64 %3266, %.v100
  store i64 %3285, i64* %3, align 8
  br i1 %3281, label %block_426606, label %block_.L_42662a

block_426606:                                     ; preds = %block_4265ed
  store i64 ptrtoint (%G__0x4bfc78_type* @G__0x4bfc78 to i64), i64* %RDI.i1025, align 8
  store i64 %3267, i64* %RAX.i158, align 8
  %3286 = add i64 %3267, 20
  %3287 = add i64 %3285, 21
  store i64 %3287, i64* %3, align 8
  %3288 = inttoptr i64 %3286 to i32*
  %3289 = load i32, i32* %3288, align 4
  %3290 = zext i32 %3289 to i64
  store i64 %3290, i64* %RSI.i1005, align 8
  %3291 = load i64, i64* %RBP.i, align 8
  %3292 = add i64 %3291, -16
  %3293 = add i64 %3285, 25
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3292 to i64*
  %3295 = load i64, i64* %3294, align 8
  store i64 %3295, i64* %RDX.i1073, align 8
  %3296 = add i64 %3285, 549018
  %3297 = add i64 %3285, 30
  %3298 = load i64, i64* %6, align 8
  %3299 = add i64 %3298, -8
  %3300 = inttoptr i64 %3299 to i64*
  store i64 %3297, i64* %3300, align 8
  store i64 %3299, i64* %6, align 8
  store i64 %3296, i64* %3, align 8
  %call2_42661f = tail call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* nonnull %0, i64 %3296, %struct.Memory* %MEMORY.32)
  %3301 = load i64, i64* %RAX.i158, align 8
  %3302 = load i64, i64* %RBP.i, align 8
  %3303 = add i64 %3302, -28
  %3304 = load i64, i64* %3, align 8
  %3305 = add i64 %3304, 3
  store i64 %3305, i64* %3, align 8
  %3306 = trunc i64 %3301 to i32
  %3307 = inttoptr i64 %3303 to i32*
  %3308 = load i32, i32* %3307, align 4
  %3309 = add i32 %3308, %3306
  %3310 = zext i32 %3309 to i64
  store i64 %3310, i64* %RAX.i158, align 8
  %3311 = icmp ult i32 %3309, %3306
  %3312 = icmp ult i32 %3309, %3308
  %3313 = or i1 %3311, %3312
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %14, align 1
  %3315 = and i32 %3309, 255
  %3316 = tail call i32 @llvm.ctpop.i32(i32 %3315)
  %3317 = trunc i32 %3316 to i8
  %3318 = and i8 %3317, 1
  %3319 = xor i8 %3318, 1
  store i8 %3319, i8* %21, align 1
  %3320 = xor i32 %3308, %3306
  %3321 = xor i32 %3320, %3309
  %3322 = lshr i32 %3321, 4
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  store i8 %3324, i8* %27, align 1
  %3325 = icmp eq i32 %3309, 0
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %30, align 1
  %3327 = lshr i32 %3309, 31
  %3328 = trunc i32 %3327 to i8
  store i8 %3328, i8* %33, align 1
  %3329 = lshr i32 %3306, 31
  %3330 = lshr i32 %3308, 31
  %3331 = xor i32 %3327, %3329
  %3332 = xor i32 %3327, %3330
  %3333 = add nuw nsw i32 %3331, %3332
  %3334 = icmp eq i32 %3333, 2
  %3335 = zext i1 %3334 to i8
  store i8 %3335, i8* %39, align 1
  %3336 = add i64 %3304, 6
  store i64 %3336, i64* %3, align 8
  store i32 %3309, i32* %3307, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_42662a

block_.L_42662a:                                  ; preds = %block_4265ed, %block_426606, %block_.L_4265d8
  %3337 = phi i64 [ %3266, %block_.L_4265d8 ], [ %3285, %block_4265ed ], [ %.pre77, %block_426606 ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.32, %block_.L_4265d8 ], [ %MEMORY.32, %block_4265ed ], [ %call2_42661f, %block_426606 ]
  %3338 = load i64, i64* %RBP.i, align 8
  %3339 = add i64 %3338, -28
  %3340 = add i64 %3337, 3
  store i64 %3340, i64* %3, align 8
  %3341 = inttoptr i64 %3339 to i32*
  %3342 = load i32, i32* %3341, align 4
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %RAX.i158, align 8
  %3344 = load i64, i64* %6, align 8
  %3345 = add i64 %3344, 80
  store i64 %3345, i64* %6, align 8
  %3346 = icmp ugt i64 %3344, -81
  %3347 = zext i1 %3346 to i8
  store i8 %3347, i8* %14, align 1
  %3348 = trunc i64 %3345 to i32
  %3349 = and i32 %3348, 255
  %3350 = tail call i32 @llvm.ctpop.i32(i32 %3349)
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = xor i8 %3352, 1
  store i8 %3353, i8* %21, align 1
  %3354 = xor i64 %3344, 16
  %3355 = xor i64 %3354, %3345
  %3356 = lshr i64 %3355, 4
  %3357 = trunc i64 %3356 to i8
  %3358 = and i8 %3357, 1
  store i8 %3358, i8* %27, align 1
  %3359 = icmp eq i64 %3345, 0
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %30, align 1
  %3361 = lshr i64 %3345, 63
  %3362 = trunc i64 %3361 to i8
  store i8 %3362, i8* %33, align 1
  %3363 = lshr i64 %3344, 63
  %3364 = xor i64 %3361, %3363
  %3365 = add nuw nsw i64 %3364, %3361
  %3366 = icmp eq i64 %3365, 2
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %39, align 1
  %3368 = add i64 %3337, 8
  store i64 %3368, i64* %3, align 8
  %3369 = add i64 %3344, 88
  %3370 = inttoptr i64 %3345 to i64*
  %3371 = load i64, i64* %3370, align 8
  store i64 %3371, i64* %RBP.i, align 8
  store i64 %3369, i64* %6, align 8
  %3372 = add i64 %3337, 9
  store i64 %3372, i64* %3, align 8
  %3373 = inttoptr i64 %3369 to i64*
  %3374 = load i64, i64* %3373, align 8
  store i64 %3374, i64* %3, align 8
  %3375 = add i64 %3344, 96
  store i64 %3375, i64* %6, align 8
  ret %struct.Memory* %MEMORY.33
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x93c__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2364
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
define %struct.Memory* @routine_movq_0x725600___rax_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 7493120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 120
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72400
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
define %struct.Memory* @routine_je_.L_425cee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfa23___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfa23_type* @G__0x4bfa23 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.ue_v(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_425d0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.get_picture_type(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfa39___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfa39_type* @G__0x4bfa39 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x4bfa48___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfa48_type* @G__0x4bfa48 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movq_0x6d4690___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__0x4bfa61___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfa61_type* @G__0x4bfa61 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x722c98___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -5
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11b10__rdx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72464
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.u_v(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722cb0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x47c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1148
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
define %struct.Memory* @routine_jne_.L_425e36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x1c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movb__al__MINUS0x31__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -49
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_425dc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_sete__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x31__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -49
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x31__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -49
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4bfa6f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfa6f_type* @G__0x4bfa6f to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RCX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.u_1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_425e31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfa82___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfa82_type* @G__0x4bfa82 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x1c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_425e36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3748__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_425e87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfa98___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfa98_type* @G__0x4bfa98 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
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
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
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
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72404
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
define %struct.Memory* @routine_jne_.L_42600d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1148
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
define %struct.Memory* @routine_je_.L_425eea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11b00__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72448
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
define %struct.Memory* @routine_movl_0x6d32c8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d32c8_type* @G_0x6d32c8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -5
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RAX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = and i64 %6, %4
  %10 = trunc i64 %9 to i32
  store i64 %9, i64* %RDX, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %10, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %10, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x11aec__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 72428
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_425f8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_425f06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_425f3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_425f8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_425f85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11b04__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72452
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
define %struct.Memory* @routine_movq__0x4bfaa7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfaa7_type* @G__0x4bfaa7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6d32c8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d32c8_type* @G_0x6d32c8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11aec__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72428
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
define %struct.Memory* @routine_cmpl__0x0__0x11b2c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72492
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
define %struct.Memory* @routine_je_.L_426008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfabd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfabd_type* @G__0x4bfabd to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11af0__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72432
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
define %struct.Memory* @routine_callq_.se_v(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42600d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x11ad4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72404
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
define %struct.Memory* @routine_jne_.L_4260a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11ad8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72408
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
define %struct.Memory* @routine_movq__0x4bfadc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfadc_type* @G__0x4bfadc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11af4__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11b2c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72492
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
define %struct.Memory* @routine_je_.L_4260a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4260a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfaf7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfaf7_type* @G__0x4bfaf7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11af8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72440
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
define %struct.Memory* @routine_jmpq_.L_4260a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xc84__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3204
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
define %struct.Memory* @routine_je_.L_4260e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfb12___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfb12_type* @G__0x4bfb12 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11acc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72396
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_42611e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfb28___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfb28_type* @G__0x4bfb28 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1193c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71996
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_je_.L_426154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_4262ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426178(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4261ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11940__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72000
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
define %struct.Memory* @routine_movl_0xb8__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ESI, align 4
  %6 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_426212(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11940__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72000
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
define %struct.Memory* @routine_movq_0x6d4690___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb8__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movb__al__MINUS0x39__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -57
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_426200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11944__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72004
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
define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xbc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 188
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
define %struct.Memory* @routine_setne__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x39__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -57
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x39__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -57
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
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
define %struct.Memory* @routine_movq__0x4bfb48___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfb48_type* @G__0x4bfb48 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_je_.L_4262a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfb6d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfb6d_type* @G__0x4bfb6d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11940__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72000
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
define %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_4262a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfb8e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfb8e_type* @G__0x4bfb8e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4262a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4262ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ref_pic_list_reordering(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_je_.L_4262db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4262f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xc0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 192
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
define %struct.Memory* @routine_jne_.L_426317(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426322(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0xc4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 196
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
define %struct.Memory* @routine_callq_.pred_weight_table(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11b30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72496
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
define %struct.Memory* @routine_je_.L_426342(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.dec_ref_pic_marking(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x934__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2356
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
define %struct.Memory* @routine_jne_.L_426390(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_je_.L_426390(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfbaf___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfbaf_type* @G__0x4bfbaf to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11b48__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72520
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
define %struct.Memory* @routine_movq__0x4bfbc2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfbc2_type* @G__0x4bfbc2 to i64), i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_subl__0x1a___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -26
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 26
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0xc8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 200
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_42642b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426402(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfbd5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfbd5_type* @G__0x4bfbd5 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x4bfbec___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfbec_type* @G__0x4bfbec to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
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
define %struct.Memory* @routine_cmpl__0x0__0xdc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 220
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
define %struct.Memory* @routine_je_.L_4264f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfbff___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfbff_type* @G__0x4bfbff to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11930__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71984
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x11930__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 71984
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
define %struct.Memory* @routine_je_.L_4264ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfc21___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfc21_type* @G__0x4bfc21 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11934__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71988
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq__0x4bfc40___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfc40_type* @G__0x4bfc40 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0x11938__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71992
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
define %struct.Memory* @routine_jmpq_.L_4264f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_jbe_.L_4265d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jb_.L_4265d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_ja_.L_4265d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x97305__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x97305__rip__type* @G_0x97305__rip_ to i64)
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
define %struct.Memory* @routine_movq_0x2a53ca__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2a53ca__rip__type* @G_0x2a53ca__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11b14__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72468
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
define %struct.Memory* @routine_movl_0x11b18__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72472
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
define %struct.Memory* @routine_imull__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RDX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
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
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x2ae13d__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2ae13d__rip__type* @G_0x2ae13d__rip_ to i64)
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xa8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 168
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
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fadd float %15, %16
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x2c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x8b2c7__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x8b2c7__rip__type* @G_0x8b2c7__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4bfc5b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfc5b_type* @G__0x4bfc5b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ceil_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl_0x11bcc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72652
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x93c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2364
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
define %struct.Memory* @routine_je_.L_42662a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42662a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bfc78___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bfc78_type* @G__0x4bfc78 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
