; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x3f405__rip__type = type <{ [8 x i8] }>
%G_0x3f4ca__rip__type = type <{ [8 x i8] }>
%G_0x3f4fd__rip__type = type <{ [8 x i8] }>
%G_0x3f5c2__rip__type = type <{ [8 x i8] }>
%G_0x3f5e9__rip__type = type <{ [8 x i8] }>
%G_0x676d90_type = type <{ [1 x i8] }>
%G_0x676ffc_type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x456453_type = type <{ [8 x i8] }>
%G__0x4564a4_type = type <{ [8 x i8] }>
%G__0x4564b6_type = type <{ [8 x i8] }>
%G__0x4564c8_type = type <{ [8 x i8] }>
%G__0x4564fe_type = type <{ [8 x i8] }>
%G__0x456509_type = type <{ [8 x i8] }>
%G__0x456517_type = type <{ [8 x i8] }>
%G__0x45653b_type = type <{ [8 x i8] }>
%G__0x45653f_type = type <{ [8 x i8] }>
%G__0x456583_type = type <{ [8 x i8] }>
%G__0x4565ad_type = type <{ [8 x i8] }>
%G__0x4565fe_type = type <{ [8 x i8] }>
%G__0x456657_type = type <{ [8 x i8] }>
%G__0x456697_type = type <{ [8 x i8] }>
%G__0x4566e3_type = type <{ [8 x i8] }>
%G__0x45672d_type = type <{ [8 x i8] }>
%G__0x45677c_type = type <{ [8 x i8] }>
%G__0x4567c0_type = type <{ [8 x i8] }>
%G__0x4567fd_type = type <{ [8 x i8] }>
%G__0x456802_type = type <{ [8 x i8] }>
%G__0x45680a_type = type <{ [8 x i8] }>
%G__0x456826_type = type <{ [8 x i8] }>
%G__0x456836_type = type <{ [8 x i8] }>
%G__0x45683c_type = type <{ [8 x i8] }>
%G__0x456842_type = type <{ [8 x i8] }>
%G__0x45684a_type = type <{ [8 x i8] }>
%G__0x456853_type = type <{ [8 x i8] }>
%G__0x457b32_type = type <{ [8 x i8] }>
%G__0x458d45_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
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
@G_0x3f405__rip_ = global %G_0x3f405__rip__type zeroinitializer
@G_0x3f4ca__rip_ = global %G_0x3f4ca__rip__type zeroinitializer
@G_0x3f4fd__rip_ = global %G_0x3f4fd__rip__type zeroinitializer
@G_0x3f5c2__rip_ = global %G_0x3f5c2__rip__type zeroinitializer
@G_0x3f5e9__rip_ = global %G_0x3f5e9__rip__type zeroinitializer
@G_0x676d90 = local_unnamed_addr global %G_0x676d90_type zeroinitializer
@G_0x676ffc = local_unnamed_addr global %G_0x676ffc_type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x456453 = global %G__0x456453_type zeroinitializer
@G__0x4564a4 = global %G__0x4564a4_type zeroinitializer
@G__0x4564b6 = global %G__0x4564b6_type zeroinitializer
@G__0x4564c8 = global %G__0x4564c8_type zeroinitializer
@G__0x4564fe = global %G__0x4564fe_type zeroinitializer
@G__0x456509 = global %G__0x456509_type zeroinitializer
@G__0x456517 = global %G__0x456517_type zeroinitializer
@G__0x45653b = global %G__0x45653b_type zeroinitializer
@G__0x45653f = global %G__0x45653f_type zeroinitializer
@G__0x456583 = global %G__0x456583_type zeroinitializer
@G__0x4565ad = global %G__0x4565ad_type zeroinitializer
@G__0x4565fe = global %G__0x4565fe_type zeroinitializer
@G__0x456657 = global %G__0x456657_type zeroinitializer
@G__0x456697 = global %G__0x456697_type zeroinitializer
@G__0x4566e3 = global %G__0x4566e3_type zeroinitializer
@G__0x45672d = global %G__0x45672d_type zeroinitializer
@G__0x45677c = global %G__0x45677c_type zeroinitializer
@G__0x4567c0 = global %G__0x4567c0_type zeroinitializer
@G__0x4567fd = global %G__0x4567fd_type zeroinitializer
@G__0x456802 = global %G__0x456802_type zeroinitializer
@G__0x45680a = global %G__0x45680a_type zeroinitializer
@G__0x456826 = global %G__0x456826_type zeroinitializer
@G__0x456836 = global %G__0x456836_type zeroinitializer
@G__0x45683c = global %G__0x45683c_type zeroinitializer
@G__0x456842 = global %G__0x456842_type zeroinitializer
@G__0x45684a = global %G__0x45684a_type zeroinitializer
@G__0x456853 = global %G__0x456853_type zeroinitializer
@G__0x457b32 = global %G__0x457b32_type zeroinitializer
@G__0x458d45 = global %G__0x458d45_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_432f30.P7Logoddsify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ebe0.Warn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452580.FArgMax(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @WriteProfile(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -264
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 256
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
  %RAX.i57 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 1, i64* %RAX.i57, align 8
  %RDI.i141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i141, align 8
  %42 = add i64 %10, 19
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i165, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i186 = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -20
  %53 = load i32, i32* %EDX.i186, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -16
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RDI.i141, align 8
  %EAX.i611 = bitcast %union.anon* %39 to i32*
  %63 = load i32, i32* %EAX.i611, align 4
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RSI.i165, align 8
  %65 = add i64 %59, 123477
  %66 = add i64 %59, 11
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, -8
  %69 = inttoptr i64 %68 to i64*
  store i64 %66, i64* %69, align 8
  store i64 %68, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  %call2_414ce1 = tail call %struct.Memory* @sub_432f30.P7Logoddsify(%struct.State* %0, i64 %65, %struct.Memory* %2)
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -16
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %RDI.i141, align 8
  %76 = add i64 %75, 136
  %77 = add i64 %72, 14
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, -1000
  %81 = icmp ult i32 %79, 1000
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %14, align 1
  %83 = and i32 %80, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83)
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %21, align 1
  %88 = xor i32 %80, %79
  %89 = lshr i32 %88, 4
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  store i8 %91, i8* %26, align 1
  %92 = icmp eq i32 %80, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %29, align 1
  %94 = lshr i32 %80, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %32, align 1
  %96 = lshr i32 %79, 31
  %97 = xor i32 %94, %96
  %98 = add nuw nsw i32 %97, %96
  %99 = icmp eq i32 %98, 2
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %38, align 1
  %101 = icmp ne i8 %95, 0
  %102 = xor i1 %101, %99
  %103 = or i1 %92, %102
  %.v = select i1 %103, i64 54, i64 20
  %104 = add i64 %72, %.v
  store i64 %104, i64* %3, align 8
  br i1 %103, label %block_.L_414d1c, label %block_414cfa

block_414cfa:                                     ; preds = %entry
  %105 = add i64 %70, -20
  %106 = add i64 %104, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  store i8 0, i8* %14, align 1
  %109 = and i32 %108, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %114 = icmp eq i32 %108, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %29, align 1
  %116 = lshr i32 %108, 31
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v62 = select i1 %114, i64 10, i64 34
  %118 = add i64 %104, %.v62
  store i64 %118, i64* %3, align 8
  br i1 %114, label %block_414d04, label %block_.L_414d1c

block_414d04:                                     ; preds = %block_414cfa
  store i64 ptrtoint (%G__0x456453_type* @G__0x456453 to i64), i64* %RDI.i141, align 8
  %119 = add i64 %118, 14
  store i64 %119, i64* %3, align 8
  %120 = load i64, i64* %74, align 8
  store i64 %120, i64* %RAX.i57, align 8
  %121 = add i64 %118, 17
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RSI.i165, align 8
  %AL.i822 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i822, align 1
  %124 = add i64 %118, 171740
  %125 = add i64 %118, 24
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %6, align 8
  store i64 %124, i64* %3, align 8
  %call2_414d17 = tail call %struct.Memory* @sub_43ebe0.Warn(%struct.State* nonnull %0, i64 %124, %struct.Memory* %call2_414ce1)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_414d1c

block_.L_414d1c:                                  ; preds = %block_414cfa, %block_414d04, %entry
  %129 = phi i64 [ %104, %entry ], [ %118, %block_414cfa ], [ %.pre, %block_414d04 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_414ce1, %entry ], [ %call2_414ce1, %block_414cfa ], [ %call2_414d17, %block_414d04 ]
  %130 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %131 = add i32 %130, -3
  %132 = icmp ult i32 %130, 3
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %14, align 1
  %134 = and i32 %131, 255
  %135 = tail call i32 @llvm.ctpop.i32(i32 %134)
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  store i8 %138, i8* %21, align 1
  %139 = xor i32 %131, %130
  %140 = lshr i32 %139, 4
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  store i8 %142, i8* %26, align 1
  %143 = icmp eq i32 %131, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %29, align 1
  %145 = lshr i32 %131, 31
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %32, align 1
  %147 = lshr i32 %130, 31
  %148 = xor i32 %145, %147
  %149 = add nuw nsw i32 %148, %147
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %38, align 1
  %.v63 = select i1 %143, i64 14, i64 43
  %152 = add i64 %129, %.v63
  store i64 %152, i64* %3, align 8
  br i1 %143, label %block_414d2a, label %block_.L_414d47

block_414d2a:                                     ; preds = %block_.L_414d1c
  store i64 ptrtoint (%G__0x4564a4_type* @G__0x4564a4 to i64), i64* %RSI.i165, align 8
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -8
  %155 = add i64 %152, 14
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %RDI.i141, align 8
  %AL.i901 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i901, align 1
  %158 = add i64 %152, -79802
  %159 = add i64 %152, 21
  %160 = load i64, i64* %6, align 8
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %162, align 8
  store i64 %161, i64* %6, align 8
  store i64 %158, i64* %3, align 8
  %163 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.0)
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -56
  %166 = load i32, i32* %EAX.i611, align 4
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 3
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %165 to i32*
  store i32 %166, i32* %169, align 4
  %170 = load i64, i64* %3, align 8
  %171 = add i64 %170, 70
  br label %block_.L_414d88

block_.L_414d47:                                  ; preds = %block_.L_414d1c
  %172 = add i32 %130, -2
  %173 = icmp ult i32 %130, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %14, align 1
  %175 = and i32 %172, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %21, align 1
  %180 = xor i32 %172, %130
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %26, align 1
  %184 = icmp eq i32 %172, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %29, align 1
  %186 = lshr i32 %172, 31
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %32, align 1
  %188 = xor i32 %186, %147
  %189 = add nuw nsw i32 %188, %147
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %38, align 1
  %.v64 = select i1 %184, i64 14, i64 43
  %192 = add i64 %152, %.v64
  %193 = add i64 %192, 10
  store i64 %193, i64* %3, align 8
  br i1 %184, label %block_414d55, label %block_.L_414d72

block_414d55:                                     ; preds = %block_.L_414d47
  store i64 ptrtoint (%G__0x4564b6_type* @G__0x4564b6 to i64), i64* %RSI.i165, align 8
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -8
  %196 = add i64 %192, 14
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i64*
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %RDI.i141, align 8
  %AL.i1109 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1109, align 1
  %199 = add i64 %192, -79845
  %200 = add i64 %192, 21
  %201 = load i64, i64* %6, align 8
  %202 = add i64 %201, -8
  %203 = inttoptr i64 %202 to i64*
  store i64 %200, i64* %203, align 8
  store i64 %202, i64* %6, align 8
  store i64 %199, i64* %3, align 8
  %204 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.0)
  %205 = load i64, i64* %RBP.i, align 8
  %206 = add i64 %205, -60
  %207 = load i32, i32* %EAX.i611, align 4
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 3
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %210, align 4
  %211 = load i64, i64* %3, align 8
  %212 = add i64 %211, 22
  store i64 %212, i64* %3, align 8
  br label %block_.L_414d83

block_.L_414d72:                                  ; preds = %block_.L_414d47
  store i64 ptrtoint (%G__0x4564c8_type* @G__0x4564c8 to i64), i64* %RDI.i141, align 8
  %AL.i1123 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1123, align 1
  %213 = add i64 %192, 171166
  %214 = add i64 %192, 17
  %215 = load i64, i64* %6, align 8
  %216 = add i64 %215, -8
  %217 = inttoptr i64 %216 to i64*
  store i64 %214, i64* %217, align 8
  store i64 %216, i64* %6, align 8
  store i64 %213, i64* %3, align 8
  %call2_414d7e = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %213, %struct.Memory* %MEMORY.0)
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_414d83

block_.L_414d83:                                  ; preds = %block_.L_414d72, %block_414d55
  %218 = phi i64 [ %.pre39, %block_.L_414d72 ], [ %212, %block_414d55 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_414d7e, %block_.L_414d72 ], [ %204, %block_414d55 ]
  %219 = add i64 %218, 5
  store i64 %219, i64* %3, align 8
  br label %block_.L_414d88

block_.L_414d88:                                  ; preds = %block_.L_414d83, %block_414d2a
  %storemerge = phi i64 [ %171, %block_414d2a ], [ %219, %block_.L_414d83 ]
  %MEMORY.2 = phi %struct.Memory* [ %163, %block_414d2a ], [ %MEMORY.1, %block_.L_414d83 ]
  %220 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %221 = add i32 %220, -3
  %222 = icmp ult i32 %220, 3
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %14, align 1
  %224 = and i32 %221, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224)
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %21, align 1
  %229 = xor i32 %221, %220
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %26, align 1
  %233 = icmp eq i32 %221, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %29, align 1
  %235 = lshr i32 %221, 31
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %32, align 1
  %237 = lshr i32 %220, 31
  %238 = xor i32 %235, %237
  %239 = add nuw nsw i32 %238, %237
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %38, align 1
  %.v65 = select i1 %233, i64 14, i64 43
  %242 = add i64 %storemerge, %.v65
  store i64 %242, i64* %3, align 8
  br i1 %233, label %block_414d96, label %block_.L_414db3

block_414d96:                                     ; preds = %block_.L_414d88
  store i64 ptrtoint (%G__0x4564fe_type* @G__0x4564fe to i64), i64* %RSI.i165, align 8
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -8
  %245 = add i64 %242, 14
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RDI.i141, align 8
  %AL.i1112 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1112, align 1
  %248 = add i64 %242, -79910
  %249 = add i64 %242, 21
  %250 = load i64, i64* %6, align 8
  %251 = add i64 %250, -8
  %252 = inttoptr i64 %251 to i64*
  store i64 %249, i64* %252, align 8
  store i64 %251, i64* %6, align 8
  store i64 %248, i64* %3, align 8
  %253 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.2)
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -64
  %256 = load i32, i32* %EAX.i611, align 4
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 3
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %255 to i32*
  store i32 %256, i32* %259, align 4
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 48
  br label %block_.L_414dde

block_.L_414db3:                                  ; preds = %block_.L_414d88
  %262 = add i32 %220, -2
  %263 = icmp ult i32 %220, 2
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %14, align 1
  %265 = and i32 %262, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %21, align 1
  %270 = xor i32 %262, %220
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %26, align 1
  %274 = icmp eq i32 %262, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %29, align 1
  %276 = lshr i32 %262, 31
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %32, align 1
  %278 = xor i32 %276, %237
  %279 = add nuw nsw i32 %278, %237
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %38, align 1
  %.v66 = select i1 %274, i64 14, i64 38
  %282 = add i64 %242, %.v66
  store i64 %282, i64* %3, align 8
  br i1 %274, label %block_414dc1, label %block_.L_414dd9

block_414dc1:                                     ; preds = %block_.L_414db3
  store i64 ptrtoint (%G__0x456509_type* @G__0x456509 to i64), i64* %RSI.i165, align 8
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -8
  %285 = add i64 %282, 14
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RDI.i141, align 8
  %AL.i1096 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1096, align 1
  %288 = add i64 %282, -79953
  %289 = add i64 %282, 21
  %290 = load i64, i64* %6, align 8
  %291 = add i64 %290, -8
  %292 = inttoptr i64 %291 to i64*
  store i64 %289, i64* %292, align 8
  store i64 %291, i64* %6, align 8
  store i64 %288, i64* %3, align 8
  %293 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.2)
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -68
  %296 = load i32, i32* %EAX.i611, align 4
  %297 = load i64, i64* %3, align 8
  %298 = add i64 %297, 3
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %295 to i32*
  store i32 %296, i32* %299, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_414dd9

block_.L_414dd9:                                  ; preds = %block_.L_414db3, %block_414dc1
  %300 = phi i64 [ %282, %block_.L_414db3 ], [ %.pre40, %block_414dc1 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_414db3 ], [ %293, %block_414dc1 ]
  %301 = add i64 %300, 5
  store i64 %301, i64* %3, align 8
  br label %block_.L_414dde

block_.L_414dde:                                  ; preds = %block_.L_414dd9, %block_414d96
  %storemerge24 = phi i64 [ %261, %block_414d96 ], [ %301, %block_.L_414dd9 ]
  %MEMORY.4 = phi %struct.Memory* [ %253, %block_414d96 ], [ %MEMORY.3, %block_.L_414dd9 ]
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -8
  %304 = add i64 %storemerge24, 4
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %RDI.i141, align 8
  %307 = add i64 %302, -16
  %308 = add i64 %storemerge24, 8
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RAX.i57, align 8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1080 = getelementptr inbounds %union.anon, %union.anon* %311, i64 0, i32 0
  %312 = add i64 %310, 136
  %313 = add i64 %storemerge24, 14
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RCX.i1080, align 8
  %317 = add i64 %storemerge24, 18
  store i64 %317, i64* %3, align 8
  %318 = load i64, i64* %309, align 8
  store i64 %318, i64* %RAX.i57, align 8
  %R8.i1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %319 = add i64 %storemerge24, 21
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %R8.i1074, align 8
  %322 = add i64 %storemerge24, 25
  store i64 %322, i64* %3, align 8
  %323 = load i64, i64* %309, align 8
  store i64 %323, i64* %RAX.i57, align 8
  %RDX.i1068 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %324 = add i64 %323, 456
  %325 = add i64 %storemerge24, 31
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, 512
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RDX.i1068, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit59 = lshr exact i32 %328, 9
  %330 = trunc i32 %.lobit59 to i8
  %331 = xor i8 %330, 1
  store i8 %331, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %332 = add i64 %302, -80
  %333 = add i64 %storemerge24, 44
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i64*
  store i64 %306, i64* %334, align 8
  %ECX.i1057 = bitcast %union.anon* %311 to i32*
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -84
  %337 = load i32, i32* %ECX.i1057, align 4
  %338 = load i64, i64* %3, align 8
  %339 = add i64 %338, 3
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %336 to i32*
  store i32 %337, i32* %340, align 4
  %341 = load i64, i64* %RBP.i, align 8
  %342 = add i64 %341, -96
  %343 = load i64, i64* %R8.i1074, align 8
  %344 = load i64, i64* %3, align 8
  %345 = add i64 %344, 4
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %342 to i64*
  store i64 %343, i64* %346, align 8
  %347 = load i64, i64* %3, align 8
  %348 = load i8, i8* %29, align 1
  %349 = icmp ne i8 %348, 0
  %.v94 = select i1 %349, i64 23, i64 6
  %350 = add i64 %347, %.v94
  store i64 %350, i64* %3, align 8
  %cmpBr_414e11 = icmp eq i8 %348, 1
  br i1 %cmpBr_414e11, label %block_.L_414e28, label %block_414e17

block_414e17:                                     ; preds = %block_.L_414dde
  %351 = load i64, i64* %RBP.i, align 8
  %352 = add i64 %351, -16
  %353 = add i64 %350, 4
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %RAX.i57, align 8
  %356 = add i64 %355, 8
  %357 = add i64 %350, 8
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %RAX.i57, align 8
  %360 = add i64 %351, -104
  %361 = add i64 %350, 12
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i64*
  store i64 %359, i64* %362, align 8
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 24
  br label %block_.L_414e3b

block_.L_414e28:                                  ; preds = %block_.L_414dde
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i57, align 8
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -104
  %367 = add i64 %350, 14
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %368, align 8
  %369 = load i64, i64* %3, align 8
  %370 = add i64 %369, 5
  store i64 %370, i64* %3, align 8
  br label %block_.L_414e3b

block_.L_414e3b:                                  ; preds = %block_.L_414e28, %block_414e17
  %storemerge25 = phi i64 [ %364, %block_414e17 ], [ %370, %block_.L_414e28 ]
  %371 = load i64, i64* %RBP.i, align 8
  %372 = add i64 %371, -104
  %373 = add i64 %storemerge25, 4
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %RAX.i57, align 8
  %376 = add i64 %371, -16
  %377 = add i64 %storemerge25, 8
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RCX.i1080, align 8
  %380 = add i64 %379, 456
  %381 = add i64 %storemerge25, 14
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = and i32 %383, 2
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RDX.i1068, align 8
  store i8 0, i8* %14, align 1
  %386 = tail call i32 @llvm.ctpop.i32(i32 %384)
  %387 = trunc i32 %386 to i8
  %388 = xor i8 %387, 1
  store i8 %388, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit60 = lshr exact i32 %384, 1
  %389 = trunc i32 %.lobit60 to i8
  %390 = xor i8 %389, 1
  store i8 %390, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %391 = add i64 %371, -112
  %392 = add i64 %storemerge25, 24
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i64*
  store i64 %375, i64* %393, align 8
  %394 = load i64, i64* %3, align 8
  %395 = load i8, i8* %29, align 1
  %396 = icmp ne i8 %395, 0
  %.v95 = select i1 %396, i64 23, i64 6
  %397 = add i64 %394, %.v95
  store i64 %397, i64* %3, align 8
  %cmpBr_414e53 = icmp eq i8 %395, 1
  br i1 %cmpBr_414e53, label %block_.L_414e6a, label %block_414e59

block_414e59:                                     ; preds = %block_.L_414e3b
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -16
  %400 = add i64 %397, 4
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RAX.i57, align 8
  %403 = add i64 %402, 16
  %404 = add i64 %397, 8
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RAX.i57, align 8
  %407 = add i64 %398, -120
  %408 = add i64 %397, 12
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i64*
  store i64 %406, i64* %409, align 8
  %410 = load i64, i64* %3, align 8
  %411 = add i64 %410, 24
  br label %block_.L_414e7d

block_.L_414e6a:                                  ; preds = %block_.L_414e3b
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i57, align 8
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -120
  %414 = add i64 %397, 14
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %415, align 8
  %416 = load i64, i64* %3, align 8
  %417 = add i64 %416, 5
  store i64 %417, i64* %3, align 8
  br label %block_.L_414e7d

block_.L_414e7d:                                  ; preds = %block_.L_414e6a, %block_414e59
  %storemerge27 = phi i64 [ %411, %block_414e59 ], [ %417, %block_.L_414e6a ]
  %418 = load i64, i64* %RBP.i, align 8
  %419 = add i64 %418, -120
  %420 = add i64 %storemerge27, 4
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %RAX.i57, align 8
  store i64 ptrtoint (%G__0x456517_type* @G__0x456517 to i64), i64* %RSI.i165, align 8
  store i64 ptrtoint (%G__0x45653b_type* @G__0x45653b to i64), i64* %RDX.i1068, align 8
  %423 = add i64 %418, -80
  %424 = add i64 %storemerge27, 28
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i64*
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %RDI.i141, align 8
  %427 = add i64 %418, -84
  %428 = add i64 %storemerge27, 31
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RCX.i1080, align 8
  %432 = add i64 %418, -96
  %433 = add i64 %storemerge27, 35
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i64*
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %R8.i1074, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %436 = add i64 %418, -112
  %437 = add i64 %storemerge27, 39
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %R9.i, align 8
  %440 = bitcast i64* %6 to i64**
  %441 = load i64*, i64** %440, align 8
  %442 = add i64 %storemerge27, 43
  store i64 %442, i64* %3, align 8
  store i64 %422, i64* %441, align 8
  %AL.i984 = bitcast %union.anon* %39 to i8*
  %443 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %444 = add i64 %443, -80184
  %445 = add i64 %443, 7
  %446 = load i64, i64* %6, align 8
  %447 = add i64 %446, -8
  %448 = inttoptr i64 %447 to i64*
  store i64 %445, i64* %448, align 8
  store i64 %447, i64* %6, align 8
  store i64 %444, i64* %3, align 8
  %449 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.4)
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -20
  %452 = load i64, i64* %3, align 8
  %453 = add i64 %452, 4
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454, align 4
  store i8 0, i8* %14, align 1
  %456 = and i32 %455, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %461 = icmp eq i32 %455, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %29, align 1
  %463 = lshr i32 %455, 31
  %464 = trunc i32 %463 to i8
  store i8 %464, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %465 = add i64 %450, -124
  %466 = load i32, i32* %EAX.i611, align 4
  %467 = add i64 %452, 7
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %465 to i32*
  store i32 %466, i32* %468, align 4
  %469 = load i64, i64* %3, align 8
  %470 = load i8, i8* %29, align 1
  %471 = icmp ne i8 %470, 0
  %.v96 = select i1 %471, i64 234, i64 6
  %472 = add i64 %469, %.v96
  %cmpBr_414eb6 = icmp eq i8 %470, 1
  store i64 ptrtoint (%G__0x45653f_type* @G__0x45653f to i64), i64* %RSI.i165, align 8
  store i64 ptrtoint (%G__0x45653b_type* @G__0x45653b to i64), i64* %RDX.i1068, align 8
  %473 = load i64, i64* %RBP.i, align 8
  %474 = add i64 %473, -8
  %475 = add i64 %472, 24
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i64*
  %477 = load i64, i64* %476, align 8
  store i64 %477, i64* %RDI.i141, align 8
  %478 = add i64 %472, 26
  store i64 %478, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  br i1 %cmpBr_414eb6, label %block_.L_414fa0, label %block_414ebc

block_414ebc:                                     ; preds = %block_.L_414e7d
  %479 = add i64 %472, -80204
  %480 = add i64 %472, 31
  %481 = load i64, i64* %6, align 8
  %482 = add i64 %481, -8
  %483 = inttoptr i64 %482 to i64*
  store i64 %480, i64* %483, align 8
  store i64 %482, i64* %6, align 8
  store i64 %479, i64* %3, align 8
  %484 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %449)
  %485 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x456583_type* @G__0x456583 to i64), i64* %RSI.i165, align 8
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -8
  %488 = add i64 %485, 14
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RDI.i141, align 8
  %491 = add i64 %486, -128
  %492 = load i32, i32* %EAX.i611, align 4
  %493 = add i64 %485, 17
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %491 to i32*
  store i32 %492, i32* %494, align 4
  %495 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %496 = add i64 %495, -80252
  %497 = add i64 %495, 7
  %498 = load i64, i64* %6, align 8
  %499 = add i64 %498, -8
  %500 = inttoptr i64 %499 to i64*
  store i64 %497, i64* %500, align 8
  store i64 %499, i64* %6, align 8
  store i64 %496, i64* %3, align 8
  %501 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %484)
  %502 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4565ad_type* @G__0x4565ad to i64), i64* %RSI.i165, align 8
  %503 = load i64, i64* %RBP.i, align 8
  %504 = add i64 %503, -8
  %505 = add i64 %502, 14
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i64*
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %RDI.i141, align 8
  %508 = add i64 %503, -132
  %509 = load i32, i32* %EAX.i611, align 4
  %510 = add i64 %502, 20
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %508 to i32*
  store i32 %509, i32* %511, align 4
  %512 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %513 = add i64 %512, -80279
  %514 = add i64 %512, 7
  %515 = load i64, i64* %6, align 8
  %516 = add i64 %515, -8
  %517 = inttoptr i64 %516 to i64*
  store i64 %514, i64* %517, align 8
  store i64 %516, i64* %6, align 8
  store i64 %513, i64* %3, align 8
  %518 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %501)
  %519 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4565fe_type* @G__0x4565fe to i64), i64* %RSI.i165, align 8
  %520 = load i64, i64* %RBP.i, align 8
  %521 = add i64 %520, -8
  %522 = add i64 %519, 14
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %RDI.i141, align 8
  %525 = add i64 %520, -136
  %526 = load i32, i32* %EAX.i611, align 4
  %527 = add i64 %519, 20
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %525 to i32*
  store i32 %526, i32* %528, align 4
  %529 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %530 = add i64 %529, -80306
  %531 = add i64 %529, 7
  %532 = load i64, i64* %6, align 8
  %533 = add i64 %532, -8
  %534 = inttoptr i64 %533 to i64*
  store i64 %531, i64* %534, align 8
  store i64 %533, i64* %6, align 8
  store i64 %530, i64* %3, align 8
  %535 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %518)
  %536 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x456657_type* @G__0x456657 to i64), i64* %RSI.i165, align 8
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -8
  %539 = add i64 %536, 14
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %RDI.i141, align 8
  %542 = add i64 %537, -140
  %543 = load i32, i32* %EAX.i611, align 4
  %544 = add i64 %536, 20
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %542 to i32*
  store i32 %543, i32* %545, align 4
  %546 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %547 = add i64 %546, -80333
  %548 = add i64 %546, 7
  %549 = load i64, i64* %6, align 8
  %550 = add i64 %549, -8
  %551 = inttoptr i64 %550 to i64*
  store i64 %548, i64* %551, align 8
  store i64 %550, i64* %6, align 8
  store i64 %547, i64* %3, align 8
  %552 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %535)
  %553 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x456697_type* @G__0x456697 to i64), i64* %RSI.i165, align 8
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -8
  %556 = add i64 %553, 14
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i64*
  %558 = load i64, i64* %557, align 8
  store i64 %558, i64* %RDI.i141, align 8
  %559 = add i64 %554, -144
  %560 = load i32, i32* %EAX.i611, align 4
  %561 = add i64 %553, 20
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i32*
  store i32 %560, i32* %562, align 4
  %563 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %564 = add i64 %563, -80360
  %565 = add i64 %563, 7
  %566 = load i64, i64* %6, align 8
  %567 = add i64 %566, -8
  %568 = inttoptr i64 %567 to i64*
  store i64 %565, i64* %568, align 8
  store i64 %567, i64* %6, align 8
  store i64 %564, i64* %3, align 8
  %569 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %552)
  %570 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4566e3_type* @G__0x4566e3 to i64), i64* %RSI.i165, align 8
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -8
  %573 = add i64 %570, 14
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i64*
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %RDI.i141, align 8
  %576 = add i64 %571, -148
  %577 = load i32, i32* %EAX.i611, align 4
  %578 = add i64 %570, 20
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %576 to i32*
  store i32 %577, i32* %579, align 4
  %580 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %581 = add i64 %580, -80387
  %582 = add i64 %580, 7
  %583 = load i64, i64* %6, align 8
  %584 = add i64 %583, -8
  %585 = inttoptr i64 %584 to i64*
  store i64 %582, i64* %585, align 8
  store i64 %584, i64* %6, align 8
  store i64 %581, i64* %3, align 8
  %586 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %569)
  %587 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45672d_type* @G__0x45672d to i64), i64* %RSI.i165, align 8
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, -8
  %590 = add i64 %587, 14
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i64*
  %592 = load i64, i64* %591, align 8
  store i64 %592, i64* %RDI.i141, align 8
  %593 = add i64 %588, -152
  %594 = load i32, i32* %EAX.i611, align 4
  %595 = add i64 %587, 20
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %593 to i32*
  store i32 %594, i32* %596, align 4
  %597 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %598 = add i64 %597, -80414
  %599 = add i64 %597, 7
  %600 = load i64, i64* %6, align 8
  %601 = add i64 %600, -8
  %602 = inttoptr i64 %601 to i64*
  store i64 %599, i64* %602, align 8
  store i64 %601, i64* %6, align 8
  store i64 %598, i64* %3, align 8
  %603 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %586)
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -156
  %606 = load i32, i32* %EAX.i611, align 4
  %607 = load i64, i64* %3, align 8
  %608 = add i64 %607, 6
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %605 to i32*
  store i32 %606, i32* %609, align 4
  %610 = load i64, i64* %3, align 8
  %611 = add i64 %610, 204
  store i64 %611, i64* %3, align 8
  br label %block_.L_415067

block_.L_414fa0:                                  ; preds = %block_.L_414e7d
  %612 = add i64 %472, -80432
  %613 = add i64 %472, 31
  %614 = load i64, i64* %6, align 8
  %615 = add i64 %614, -8
  %616 = inttoptr i64 %615 to i64*
  store i64 %613, i64* %616, align 8
  store i64 %615, i64* %6, align 8
  store i64 %612, i64* %3, align 8
  %617 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %449)
  %618 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45677c_type* @G__0x45677c to i64), i64* %RSI.i165, align 8
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -8
  %621 = add i64 %618, 14
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %620 to i64*
  %623 = load i64, i64* %622, align 8
  store i64 %623, i64* %RDI.i141, align 8
  %624 = add i64 %619, -160
  %625 = load i32, i32* %EAX.i611, align 4
  %626 = add i64 %618, 20
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %624 to i32*
  store i32 %625, i32* %627, align 4
  %628 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %629 = add i64 %628, -80483
  %630 = add i64 %628, 7
  %631 = load i64, i64* %6, align 8
  %632 = add i64 %631, -8
  %633 = inttoptr i64 %632 to i64*
  store i64 %630, i64* %633, align 8
  store i64 %632, i64* %6, align 8
  store i64 %629, i64* %3, align 8
  %634 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %617)
  %635 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4567c0_type* @G__0x4567c0 to i64), i64* %RSI.i165, align 8
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -8
  %638 = add i64 %635, 14
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RDI.i141, align 8
  %641 = add i64 %636, -164
  %642 = load i32, i32* %EAX.i611, align 4
  %643 = add i64 %635, 20
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %641 to i32*
  store i32 %642, i32* %644, align 4
  %645 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %646 = add i64 %645, -80510
  %647 = add i64 %645, 7
  %648 = load i64, i64* %6, align 8
  %649 = add i64 %648, -8
  %650 = inttoptr i64 %649 to i64*
  store i64 %647, i64* %650, align 8
  store i64 %649, i64* %6, align 8
  store i64 %646, i64* %3, align 8
  %651 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %634)
  %652 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x456657_type* @G__0x456657 to i64), i64* %RSI.i165, align 8
  %653 = load i64, i64* %RBP.i, align 8
  %654 = add i64 %653, -8
  %655 = add i64 %652, 14
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i64*
  %657 = load i64, i64* %656, align 8
  store i64 %657, i64* %RDI.i141, align 8
  %658 = add i64 %653, -168
  %659 = load i32, i32* %EAX.i611, align 4
  %660 = add i64 %652, 20
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %658 to i32*
  store i32 %659, i32* %661, align 4
  %662 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %663 = add i64 %662, -80537
  %664 = add i64 %662, 7
  %665 = load i64, i64* %6, align 8
  %666 = add i64 %665, -8
  %667 = inttoptr i64 %666 to i64*
  store i64 %664, i64* %667, align 8
  store i64 %666, i64* %6, align 8
  store i64 %663, i64* %3, align 8
  %668 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %651)
  %669 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x456697_type* @G__0x456697 to i64), i64* %RSI.i165, align 8
  %670 = load i64, i64* %RBP.i, align 8
  %671 = add i64 %670, -8
  %672 = add i64 %669, 14
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i64*
  %674 = load i64, i64* %673, align 8
  store i64 %674, i64* %RDI.i141, align 8
  %675 = add i64 %670, -172
  %676 = load i32, i32* %EAX.i611, align 4
  %677 = add i64 %669, 20
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %675 to i32*
  store i32 %676, i32* %678, align 4
  %679 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %680 = add i64 %679, -80564
  %681 = add i64 %679, 7
  %682 = load i64, i64* %6, align 8
  %683 = add i64 %682, -8
  %684 = inttoptr i64 %683 to i64*
  store i64 %681, i64* %684, align 8
  store i64 %683, i64* %6, align 8
  store i64 %680, i64* %3, align 8
  %685 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %668)
  %686 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4566e3_type* @G__0x4566e3 to i64), i64* %RSI.i165, align 8
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -8
  %689 = add i64 %686, 14
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %RDI.i141, align 8
  %692 = add i64 %687, -176
  %693 = load i32, i32* %EAX.i611, align 4
  %694 = add i64 %686, 20
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %692 to i32*
  store i32 %693, i32* %695, align 4
  %696 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %697 = add i64 %696, -80591
  %698 = add i64 %696, 7
  %699 = load i64, i64* %6, align 8
  %700 = add i64 %699, -8
  %701 = inttoptr i64 %700 to i64*
  store i64 %698, i64* %701, align 8
  store i64 %700, i64* %6, align 8
  store i64 %697, i64* %3, align 8
  %702 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %685)
  %703 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45672d_type* @G__0x45672d to i64), i64* %RSI.i165, align 8
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -8
  %706 = add i64 %703, 14
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %RDI.i141, align 8
  %709 = add i64 %704, -180
  %710 = load i32, i32* %EAX.i611, align 4
  %711 = add i64 %703, 20
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %709 to i32*
  store i32 %710, i32* %712, align 4
  %713 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i984, align 1
  %714 = add i64 %713, -80618
  %715 = add i64 %713, 7
  %716 = load i64, i64* %6, align 8
  %717 = add i64 %716, -8
  %718 = inttoptr i64 %717 to i64*
  store i64 %715, i64* %718, align 8
  store i64 %717, i64* %6, align 8
  store i64 %714, i64* %3, align 8
  %719 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %702)
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -184
  %722 = load i32, i32* %EAX.i611, align 4
  %723 = load i64, i64* %3, align 8
  %724 = add i64 %723, 6
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %721 to i32*
  store i32 %722, i32* %725, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_415067

block_.L_415067:                                  ; preds = %block_.L_414fa0, %block_414ebc
  %726 = phi i64 [ %.pre41, %block_.L_414fa0 ], [ %611, %block_414ebc ]
  %MEMORY.7 = phi %struct.Memory* [ %719, %block_.L_414fa0 ], [ %603, %block_414ebc ]
  store i64 ptrtoint (%G__0x4567fd_type* @G__0x4567fd to i64), i64* %RSI.i165, align 8
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -8
  %729 = add i64 %726, 14
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RDI.i141, align 8
  store i8 0, i8* %AL.i984, align 1
  %732 = add i64 %726, -80631
  %733 = add i64 %726, 21
  %734 = load i64, i64* %6, align 8
  %735 = add i64 %734, -8
  %736 = inttoptr i64 %735 to i64*
  store i64 %733, i64* %736, align 8
  store i64 %735, i64* %6, align 8
  store i64 %732, i64* %3, align 8
  %737 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.7)
  %738 = load i64, i64* %RBP.i, align 8
  %739 = add i64 %738, -28
  %740 = load i64, i64* %3, align 8
  %741 = add i64 %740, 7
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %739 to i32*
  store i32 0, i32* %742, align 4
  %743 = load i64, i64* %RBP.i, align 8
  %744 = add i64 %743, -188
  %745 = load i32, i32* %EAX.i611, align 4
  %746 = load i64, i64* %3, align 8
  %747 = add i64 %746, 6
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %744 to i32*
  store i32 %745, i32* %748, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_415089

block_.L_415089:                                  ; preds = %block_415099, %block_.L_415067
  %749 = phi i64 [ %.pre42, %block_.L_415067 ], [ %840, %block_415099 ]
  %MEMORY.8 = phi %struct.Memory* [ %737, %block_.L_415067 ], [ %802, %block_415099 ]
  %750 = load i64, i64* %RBP.i, align 8
  %751 = add i64 %750, -28
  %752 = add i64 %749, 3
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RAX.i57, align 8
  %756 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
  %757 = sub i32 %754, %756
  %758 = icmp ult i32 %754, %756
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %14, align 1
  %760 = and i32 %757, 255
  %761 = tail call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  store i8 %764, i8* %21, align 1
  %765 = xor i32 %756, %754
  %766 = xor i32 %765, %757
  %767 = lshr i32 %766, 4
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  store i8 %769, i8* %26, align 1
  %770 = icmp eq i32 %757, 0
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %29, align 1
  %772 = lshr i32 %757, 31
  %773 = trunc i32 %772 to i8
  store i8 %773, i8* %32, align 1
  %774 = lshr i32 %754, 31
  %775 = lshr i32 %756, 31
  %776 = xor i32 %775, %774
  %777 = xor i32 %772, %774
  %778 = add nuw nsw i32 %777, %776
  %779 = icmp eq i32 %778, 2
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %38, align 1
  %781 = icmp ne i8 %773, 0
  %782 = xor i1 %781, %779
  %.v67 = select i1 %782, i64 16, i64 69
  %783 = add i64 %749, %.v67
  store i64 %783, i64* %3, align 8
  br i1 %782, label %block_415099, label %block_.L_4150ce

block_415099:                                     ; preds = %block_.L_415089
  store i64 ptrtoint (%G__0x456802_type* @G__0x456802 to i64), i64* %RSI.i165, align 8
  %784 = add i64 %750, -8
  %785 = add i64 %783, 14
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i64*
  %787 = load i64, i64* %786, align 8
  store i64 %787, i64* %RDI.i141, align 8
  %788 = add i64 %783, 18
  store i64 %788, i64* %3, align 8
  %789 = load i32, i32* %753, align 4
  %790 = sext i32 %789 to i64
  store i64 %790, i64* %RAX.i57, align 8
  %791 = add nsw i64 %790, 6778848
  %792 = add i64 %783, 26
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i8*
  %794 = load i8, i8* %793, align 1
  %795 = sext i8 %794 to i64
  %796 = and i64 %795, 4294967295
  store i64 %796, i64* %RDX.i1068, align 8
  store i8 0, i8* %AL.i984, align 1
  %797 = add i64 %783, -80681
  %798 = add i64 %783, 33
  %799 = load i64, i64* %6, align 8
  %800 = add i64 %799, -8
  %801 = inttoptr i64 %800 to i64*
  store i64 %798, i64* %801, align 8
  store i64 %800, i64* %6, align 8
  store i64 %797, i64* %3, align 8
  %802 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.8)
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -192
  %805 = load i32, i32* %EAX.i611, align 4
  %806 = load i64, i64* %3, align 8
  %807 = add i64 %806, 6
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %804 to i32*
  store i32 %805, i32* %808, align 4
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -28
  %811 = load i64, i64* %3, align 8
  %812 = add i64 %811, 3
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %810 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = add i32 %814, 1
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RAX.i57, align 8
  %817 = icmp eq i32 %814, -1
  %818 = icmp eq i32 %815, 0
  %819 = or i1 %817, %818
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %14, align 1
  %821 = and i32 %815, 255
  %822 = tail call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %21, align 1
  %826 = xor i32 %815, %814
  %827 = lshr i32 %826, 4
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  store i8 %829, i8* %26, align 1
  %830 = zext i1 %818 to i8
  store i8 %830, i8* %29, align 1
  %831 = lshr i32 %815, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %32, align 1
  %833 = lshr i32 %814, 31
  %834 = xor i32 %831, %833
  %835 = add nuw nsw i32 %834, %831
  %836 = icmp eq i32 %835, 2
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %38, align 1
  %838 = add i64 %811, 9
  store i64 %838, i64* %3, align 8
  store i32 %815, i32* %813, align 4
  %839 = load i64, i64* %3, align 8
  %840 = add i64 %839, -64
  store i64 %840, i64* %3, align 8
  br label %block_.L_415089

block_.L_4150ce:                                  ; preds = %block_.L_415089
  %841 = add i64 %750, -20
  %842 = add i64 %783, 4
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  store i8 0, i8* %14, align 1
  %845 = and i32 %844, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845)
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %850 = icmp eq i32 %844, 0
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %29, align 1
  %852 = lshr i32 %844, 31
  %853 = trunc i32 %852 to i8
  store i8 %853, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v68 = select i1 %850, i64 42, i64 10
  %854 = add i64 %783, %.v68
  %855 = add i64 %854, 10
  store i64 %855, i64* %3, align 8
  br i1 %850, label %block_.L_4150f8, label %block_4150d8

block_4150d8:                                     ; preds = %block_.L_4150ce
  store i64 ptrtoint (%G__0x45680a_type* @G__0x45680a to i64), i64* %RSI.i165, align 8
  %856 = add i64 %750, -8
  %857 = add i64 %854, 14
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i64*
  %859 = load i64, i64* %858, align 8
  store i64 %859, i64* %RDI.i141, align 8
  store i8 0, i8* %AL.i984, align 1
  %860 = add i64 %854, -80744
  %861 = add i64 %854, 21
  %862 = load i64, i64* %6, align 8
  %863 = add i64 %862, -8
  %864 = inttoptr i64 %863 to i64*
  store i64 %861, i64* %864, align 8
  store i64 %863, i64* %6, align 8
  store i64 %860, i64* %3, align 8
  %865 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.8)
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -196
  %868 = load i32, i32* %EAX.i611, align 4
  %869 = load i64, i64* %3, align 8
  %870 = add i64 %869, 6
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %867 to i32*
  store i32 %868, i32* %871, align 4
  %872 = load i64, i64* %3, align 8
  %873 = add i64 %872, 32
  store i64 %873, i64* %3, align 8
  br label %block_.L_415113

block_.L_4150f8:                                  ; preds = %block_.L_4150ce
  store i64 ptrtoint (%G__0x456826_type* @G__0x456826 to i64), i64* %RSI.i165, align 8
  %874 = add i64 %750, -8
  %875 = add i64 %854, 14
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RDI.i141, align 8
  store i8 0, i8* %AL.i984, align 1
  %878 = add i64 %854, -80776
  %879 = add i64 %854, 21
  %880 = load i64, i64* %6, align 8
  %881 = add i64 %880, -8
  %882 = inttoptr i64 %881 to i64*
  store i64 %879, i64* %882, align 8
  store i64 %881, i64* %6, align 8
  store i64 %878, i64* %3, align 8
  %883 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.8)
  %884 = load i64, i64* %RBP.i, align 8
  %885 = add i64 %884, -200
  %886 = load i32, i32* %EAX.i611, align 4
  %887 = load i64, i64* %3, align 8
  %888 = add i64 %887, 6
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %885 to i32*
  store i32 %886, i32* %889, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_415113

block_.L_415113:                                  ; preds = %block_.L_4150f8, %block_4150d8
  %890 = phi i64 [ %.pre43, %block_.L_4150f8 ], [ %873, %block_4150d8 ]
  %MEMORY.9 = phi %struct.Memory* [ %883, %block_.L_4150f8 ], [ %865, %block_4150d8 ]
  %891 = load i64, i64* %RBP.i, align 8
  %892 = add i64 %891, -24
  %893 = add i64 %890, 7
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  store i32 1, i32* %894, align 4
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %896, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %899 = bitcast i64* %898 to double*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %901 = bitcast %union.VectorReg* %900 to double*
  %902 = bitcast [32 x %union.VectorReg]* %896 to double*
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_41511a

block_.L_41511a:                                  ; preds = %block_.L_4154b5, %block_.L_415113
  %903 = phi i64 [ %.pre44, %block_.L_415113 ], [ %2379, %block_.L_4154b5 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_415113 ], [ %MEMORY.18, %block_.L_4154b5 ]
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -24
  %906 = add i64 %903, 3
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX.i57, align 8
  %910 = add i64 %904, -16
  %911 = add i64 %903, 7
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i64*
  %913 = load i64, i64* %912, align 8
  store i64 %913, i64* %RCX.i1080, align 8
  %914 = add i64 %913, 136
  %915 = add i64 %903, 13
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = sub i32 %908, %917
  %919 = icmp ult i32 %908, %917
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %14, align 1
  %921 = and i32 %918, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %21, align 1
  %926 = xor i32 %917, %908
  %927 = xor i32 %926, %918
  %928 = lshr i32 %927, 4
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  store i8 %930, i8* %26, align 1
  %931 = icmp eq i32 %918, 0
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %29, align 1
  %933 = lshr i32 %918, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %32, align 1
  %935 = lshr i32 %908, 31
  %936 = lshr i32 %917, 31
  %937 = xor i32 %936, %935
  %938 = xor i32 %933, %935
  %939 = add nuw nsw i32 %938, %937
  %940 = icmp eq i32 %939, 2
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %38, align 1
  %942 = icmp ne i8 %934, 0
  %943 = xor i1 %942, %940
  %.demorgan = or i1 %931, %943
  %.v69 = select i1 %.demorgan, i64 19, i64 942
  %944 = add i64 %903, %.v69
  store i64 %944, i64* %3, align 8
  br i1 %.demorgan, label %block_41512d, label %block_.L_4154c8

block_41512d:                                     ; preds = %block_.L_41511a
  store i64 10, i64* %RAX.i57, align 8
  %945 = add i64 %944, 8
  store i64 %945, i64* %3, align 8
  %946 = load i32, i32* %907, align 4
  %947 = add i32 %946, -1
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RCX.i1080, align 8
  %949 = icmp eq i32 %946, 0
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %14, align 1
  %951 = and i32 %947, 255
  %952 = tail call i32 @llvm.ctpop.i32(i32 %951)
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  store i8 %955, i8* %21, align 1
  %956 = xor i32 %947, %946
  %957 = lshr i32 %956, 4
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  store i8 %959, i8* %26, align 1
  %960 = icmp eq i32 %947, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %29, align 1
  %962 = lshr i32 %947, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %32, align 1
  %964 = lshr i32 %946, 31
  %965 = xor i32 %962, %964
  %966 = add nuw nsw i32 %965, %964
  %967 = icmp eq i32 %966, 2
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %38, align 1
  %969 = add i64 %904, -204
  %970 = add i64 %944, 17
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  store i32 10, i32* %971, align 4
  %972 = load i32, i32* %ECX.i1057, align 4
  %973 = zext i32 %972 to i64
  %974 = load i64, i64* %3, align 8
  store i64 %973, i64* %RAX.i57, align 8
  %975 = sext i32 %972 to i64
  %976 = lshr i64 %975, 32
  store i64 %976, i64* %895, align 8
  %977 = load i64, i64* %RBP.i, align 8
  %978 = add i64 %977, -204
  %979 = add i64 %974, 9
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RCX.i1080, align 8
  %983 = add i64 %974, 11
  store i64 %983, i64* %3, align 8
  %984 = sext i32 %981 to i64
  %985 = shl nuw i64 %976, 32
  %986 = or i64 %985, %973
  %987 = sdiv i64 %986, %984
  %988 = shl i64 %987, 32
  %989 = ashr exact i64 %988, 32
  %990 = icmp eq i64 %987, %989
  br i1 %990, label %993, label %991

; <label>:991:                                    ; preds = %block_41512d
  %992 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %983, %struct.Memory* %MEMORY.10)
  %.pre45 = load i32, i32* %EDX.i186, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:993:                                    ; preds = %block_41512d
  %994 = srem i64 %986, %984
  %995 = and i64 %987, 4294967295
  store i64 %995, i64* %RAX.i57, align 8
  %996 = and i64 %994, 4294967295
  store i64 %996, i64* %RDX.i1068, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %997 = trunc i64 %994 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %993, %991
  %998 = phi i64 [ %.pre46, %991 ], [ %983, %993 ]
  %999 = phi i32 [ %.pre45, %991 ], [ %997, %993 ]
  %1000 = phi %struct.Memory* [ %992, %991 ], [ %MEMORY.10, %993 ]
  store i8 0, i8* %14, align 1
  %1001 = and i32 %999, 255
  %1002 = tail call i32 @llvm.ctpop.i32(i32 %1001)
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1006 = icmp eq i32 %999, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %29, align 1
  %1008 = lshr i32 %999, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v73 = select i1 %1006, i64 9, i64 49
  %1010 = add i64 %998, %.v73
  store i64 %1010, i64* %3, align 8
  br i1 %1006, label %block_415152, label %block_.L_41517a

block_415152:                                     ; preds = %routine_idivl__ecx.exit
  %1011 = load i64, i64* %RBP.i, align 8
  %1012 = add i64 %1011, -24
  %1013 = add i64 %1010, 4
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = add i32 %1015, -10
  %1017 = icmp ult i32 %1015, 10
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %14, align 1
  %1019 = and i32 %1016, 255
  %1020 = tail call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  store i8 %1023, i8* %21, align 1
  %1024 = xor i32 %1016, %1015
  %1025 = lshr i32 %1024, 4
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  store i8 %1027, i8* %26, align 1
  %1028 = icmp eq i32 %1016, 0
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %29, align 1
  %1030 = lshr i32 %1016, 31
  %1031 = trunc i32 %1030 to i8
  store i8 %1031, i8* %32, align 1
  %1032 = lshr i32 %1015, 31
  %1033 = xor i32 %1030, %1032
  %1034 = add nuw nsw i32 %1033, %1032
  %1035 = icmp eq i32 %1034, 2
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %38, align 1
  %1037 = icmp ne i8 %1031, 0
  %1038 = xor i1 %1037, %1035
  %1039 = or i1 %1028, %1038
  %.v81 = select i1 %1039, i64 40, i64 10
  %1040 = add i64 %1010, %.v81
  store i64 %1040, i64* %3, align 8
  br i1 %1039, label %block_.L_41517a, label %block_41515c

block_41515c:                                     ; preds = %block_415152
  store i64 ptrtoint (%G__0x456836_type* @G__0x456836 to i64), i64* %RSI.i165, align 8
  %1041 = add i64 %1011, -8
  %1042 = add i64 %1040, 14
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i64*
  %1044 = load i64, i64* %1043, align 8
  store i64 %1044, i64* %RDI.i141, align 8
  %1045 = add i64 %1040, 17
  store i64 %1045, i64* %3, align 8
  %1046 = load i32, i32* %1014, align 4
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %RDX.i1068, align 8
  store i8 0, i8* %AL.i984, align 1
  %1048 = add i64 %1040, -80876
  %1049 = add i64 %1040, 24
  %1050 = load i64, i64* %6, align 8
  %1051 = add i64 %1050, -8
  %1052 = inttoptr i64 %1051 to i64*
  store i64 %1049, i64* %1052, align 8
  store i64 %1051, i64* %6, align 8
  store i64 %1048, i64* %3, align 8
  %1053 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1000)
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -208
  %1056 = load i32, i32* %EAX.i611, align 4
  %1057 = load i64, i64* %3, align 8
  %1058 = add i64 %1057, 6
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1055 to i32*
  store i32 %1056, i32* %1059, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_41517a

block_.L_41517a:                                  ; preds = %routine_idivl__ecx.exit, %block_41515c, %block_415152
  %1060 = phi i64 [ %1010, %routine_idivl__ecx.exit ], [ %1040, %block_415152 ], [ %.pre47, %block_41515c ]
  %MEMORY.11 = phi %struct.Memory* [ %1000, %routine_idivl__ecx.exit ], [ %1000, %block_415152 ], [ %1053, %block_41515c ]
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -16
  %1063 = add i64 %1060, 4
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %RAX.i57, align 8
  %1066 = add i64 %1065, 152
  %1067 = add i64 %1060, 11
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  store i64 %1069, i64* %RAX.i57, align 8
  %1070 = add i64 %1061, -24
  %1071 = add i64 %1060, 15
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = sext i32 %1073 to i64
  store i64 %1074, i64* %RCX.i1080, align 8
  %1075 = shl nsw i64 %1074, 3
  %1076 = add i64 %1075, %1069
  %1077 = add i64 %1060, 19
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i64*
  %1079 = load i64, i64* %1078, align 8
  store i64 %1079, i64* %RDI.i141, align 8
  %1080 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RSI.i165, align 8
  %1082 = add i64 %1060, 250886
  %1083 = add i64 %1060, 31
  %1084 = load i64, i64* %6, align 8
  %1085 = add i64 %1084, -8
  %1086 = inttoptr i64 %1085 to i64*
  store i64 %1083, i64* %1086, align 8
  store i64 %1085, i64* %6, align 8
  store i64 %1082, i64* %3, align 8
  %call2_415194 = tail call %struct.Memory* @sub_452580.FArgMax(%struct.State* nonnull %0, i64 %1082, %struct.Memory* %MEMORY.11)
  %1087 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45683c_type* @G__0x45683c to i64), i64* %RSI.i165, align 8
  %1088 = load i64, i64* %RBP.i, align 8
  %1089 = add i64 %1088, -28
  %1090 = load i32, i32* %EAX.i611, align 4
  %1091 = add i64 %1087, 13
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1089 to i32*
  store i32 %1090, i32* %1092, align 4
  %1093 = load i64, i64* %RBP.i, align 8
  %1094 = add i64 %1093, -8
  %1095 = load i64, i64* %3, align 8
  %1096 = add i64 %1095, 4
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1094 to i64*
  %1098 = load i64, i64* %1097, align 8
  store i64 %1098, i64* %RDI.i141, align 8
  %1099 = add i64 %1093, -28
  %1100 = add i64 %1095, 8
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  %1103 = sext i32 %1102 to i64
  store i64 %1103, i64* %RCX.i1080, align 8
  %1104 = add nsw i64 %1103, 6778848
  %1105 = add i64 %1095, 16
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i8*
  %1107 = load i8, i8* %1106, align 1
  %1108 = sext i8 %1107 to i64
  %1109 = and i64 %1108, 4294967295
  store i64 %1109, i64* %RDX.i1068, align 8
  store i8 0, i8* %AL.i984, align 1
  %1110 = add i64 %1095, -80950
  %1111 = add i64 %1095, 23
  %1112 = load i64, i64* %6, align 8
  %1113 = add i64 %1112, -8
  %1114 = inttoptr i64 %1113 to i64*
  store i64 %1111, i64* %1114, align 8
  store i64 %1113, i64* %6, align 8
  store i64 %1110, i64* %3, align 8
  %1115 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_415194)
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -28
  %1118 = load i64, i64* %3, align 8
  %1119 = add i64 %1118, 7
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1117 to i32*
  store i32 0, i32* %1120, align 4
  %1121 = load i64, i64* %RBP.i, align 8
  %1122 = add i64 %1121, -212
  %1123 = load i32, i32* %EAX.i611, align 4
  %1124 = load i64, i64* %3, align 8
  %1125 = add i64 %1124, 6
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1122 to i32*
  store i32 %1123, i32* %1126, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_4151ca

block_.L_4151ca:                                  ; preds = %block_.L_415225, %block_.L_41517a
  %1127 = phi i64 [ %.pre48, %block_.L_41517a ], [ %1374, %block_.L_415225 ]
  %MEMORY.12 = phi %struct.Memory* [ %1115, %block_.L_41517a ], [ %1336, %block_.L_415225 ]
  %1128 = load i64, i64* %RBP.i, align 8
  %1129 = add i64 %1128, -28
  %1130 = add i64 %1127, 3
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i32*
  %1132 = load i32, i32* %1131, align 4
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RAX.i57, align 8
  %1134 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
  %1135 = sub i32 %1132, %1134
  %1136 = icmp ult i32 %1132, %1134
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %14, align 1
  %1138 = and i32 %1135, 255
  %1139 = tail call i32 @llvm.ctpop.i32(i32 %1138)
  %1140 = trunc i32 %1139 to i8
  %1141 = and i8 %1140, 1
  %1142 = xor i8 %1141, 1
  store i8 %1142, i8* %21, align 1
  %1143 = xor i32 %1134, %1132
  %1144 = xor i32 %1143, %1135
  %1145 = lshr i32 %1144, 4
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  store i8 %1147, i8* %26, align 1
  %1148 = icmp eq i32 %1135, 0
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %29, align 1
  %1150 = lshr i32 %1135, 31
  %1151 = trunc i32 %1150 to i8
  store i8 %1151, i8* %32, align 1
  %1152 = lshr i32 %1132, 31
  %1153 = lshr i32 %1134, 31
  %1154 = xor i32 %1153, %1152
  %1155 = xor i32 %1150, %1152
  %1156 = add nuw nsw i32 %1155, %1154
  %1157 = icmp eq i32 %1156, 2
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %38, align 1
  %1159 = icmp ne i8 %1151, 0
  %1160 = xor i1 %1159, %1157
  %.v74 = select i1 %1160, i64 16, i64 162
  %1161 = add i64 %1127, %.v74
  store i64 %1161, i64* %3, align 8
  br i1 %1160, label %block_4151da, label %block_.L_41526c

block_4151da:                                     ; preds = %block_.L_4151ca
  %1162 = add i64 %1128, -16
  %1163 = add i64 %1161, 4
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i64*
  %1165 = load i64, i64* %1164, align 8
  store i64 %1165, i64* %RAX.i57, align 8
  %1166 = add i64 %1165, 320
  %1167 = add i64 %1161, 11
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i64*
  %1169 = load i64, i64* %1168, align 8
  store i64 %1169, i64* %RAX.i57, align 8
  %1170 = add i64 %1161, 15
  store i64 %1170, i64* %3, align 8
  %1171 = load i32, i32* %1131, align 4
  %1172 = sext i32 %1171 to i64
  store i64 %1172, i64* %RCX.i1080, align 8
  %1173 = shl nsw i64 %1172, 3
  %1174 = add i64 %1173, %1169
  %1175 = add i64 %1161, 19
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i64*
  %1177 = load i64, i64* %1176, align 8
  store i64 %1177, i64* %RAX.i57, align 8
  %1178 = add i64 %1128, -24
  %1179 = add i64 %1161, 23
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i32*
  %1181 = load i32, i32* %1180, align 4
  %1182 = sext i32 %1181 to i64
  store i64 %1182, i64* %RCX.i1080, align 8
  %1183 = shl nsw i64 %1182, 2
  %1184 = add i64 %1183, %1177
  %1185 = add i64 %1161, 26
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RDX.i1068, align 8
  %1189 = add i64 %1128, -32
  %1190 = add i64 %1161, 29
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  store i32 %1187, i32* %1191, align 4
  %1192 = load i64, i64* %RBP.i, align 8
  %1193 = add i64 %1192, -24
  %1194 = load i64, i64* %3, align 8
  %1195 = add i64 %1194, 3
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1193 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RDX.i1068, align 8
  %1199 = add i64 %1192, -16
  %1200 = add i64 %1194, 7
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i64*
  %1202 = load i64, i64* %1201, align 8
  store i64 %1202, i64* %RAX.i57, align 8
  %1203 = add i64 %1202, 136
  %1204 = add i64 %1194, 13
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = sub i32 %1197, %1206
  %1208 = icmp ult i32 %1197, %1206
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %14, align 1
  %1210 = and i32 %1207, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  %1215 = xor i32 %1206, %1197
  %1216 = xor i32 %1215, %1207
  %1217 = lshr i32 %1216, 4
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  store i8 %1219, i8* %26, align 1
  %1220 = icmp eq i32 %1207, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %29, align 1
  %1222 = lshr i32 %1207, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %32, align 1
  %1224 = lshr i32 %1197, 31
  %1225 = lshr i32 %1206, 31
  %1226 = xor i32 %1225, %1224
  %1227 = xor i32 %1222, %1224
  %1228 = add nuw nsw i32 %1227, %1226
  %1229 = icmp eq i32 %1228, 2
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %38, align 1
  %1231 = icmp ne i8 %1223, 0
  %1232 = xor i1 %1231, %1229
  %.v80 = select i1 %1232, i64 19, i64 46
  %1233 = add i64 %1194, %.v80
  store i64 %1233, i64* %3, align 8
  br i1 %1232, label %block_41520a, label %block_.L_415225

block_41520a:                                     ; preds = %block_4151da
  %1234 = add i64 %1233, 4
  store i64 %1234, i64* %3, align 8
  %1235 = load i64, i64* %1201, align 8
  store i64 %1235, i64* %RAX.i57, align 8
  %1236 = add i64 %1235, 312
  %1237 = add i64 %1233, 11
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i64*
  %1239 = load i64, i64* %1238, align 8
  store i64 %1239, i64* %RAX.i57, align 8
  %1240 = add i64 %1233, 14
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i64*
  %1242 = load i64, i64* %1241, align 8
  store i64 %1242, i64* %RAX.i57, align 8
  %1243 = add i64 %1233, 18
  store i64 %1243, i64* %3, align 8
  %1244 = load i32, i32* %1196, align 4
  %1245 = sext i32 %1244 to i64
  store i64 %1245, i64* %RCX.i1080, align 8
  %1246 = shl nsw i64 %1245, 2
  %1247 = add i64 %1246, %1242
  %1248 = add i64 %1233, 21
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RDX.i1068, align 8
  %1252 = add i64 %1192, -32
  %1253 = add i64 %1233, 24
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i32*
  %1255 = load i32, i32* %1254, align 4
  %1256 = add i32 %1255, %1250
  %1257 = zext i32 %1256 to i64
  store i64 %1257, i64* %RDX.i1068, align 8
  %1258 = icmp ult i32 %1256, %1250
  %1259 = icmp ult i32 %1256, %1255
  %1260 = or i1 %1258, %1259
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %14, align 1
  %1262 = and i32 %1256, 255
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %21, align 1
  %1267 = xor i32 %1255, %1250
  %1268 = xor i32 %1267, %1256
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %26, align 1
  %1272 = icmp eq i32 %1256, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %29, align 1
  %1274 = lshr i32 %1256, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %32, align 1
  %1276 = lshr i32 %1250, 31
  %1277 = lshr i32 %1255, 31
  %1278 = xor i32 %1274, %1276
  %1279 = xor i32 %1274, %1277
  %1280 = add nuw nsw i32 %1278, %1279
  %1281 = icmp eq i32 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %38, align 1
  %1283 = add i64 %1233, 27
  store i64 %1283, i64* %3, align 8
  store i32 %1256, i32* %1254, align 4
  %.pre54 = load i64, i64* %3, align 8
  %.pre55 = load i64, i64* %RBP.i, align 8
  br label %block_.L_415225

block_.L_415225:                                  ; preds = %block_4151da, %block_41520a
  %1284 = phi i64 [ %1192, %block_4151da ], [ %.pre55, %block_41520a ]
  %1285 = phi i64 [ %1233, %block_4151da ], [ %.pre54, %block_41520a ]
  store i64 ptrtoint (%G__0x457b32_type* @G__0x457b32 to i64), i64* %RSI.i165, align 8
  %1286 = add i64 %1285, add (i64 ptrtoint (%G_0x3f5e9__rip__type* @G_0x3f5e9__rip_ to i64), i64 10)
  %1287 = add i64 %1285, 18
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i64*
  %1289 = load i64, i64* %1288, align 8
  store i64 %1289, i64* %897, align 1
  store double 0.000000e+00, double* %899, align 1
  %1290 = add i64 %1284, -32
  %1291 = add i64 %1285, 22
  store i64 %1291, i64* %3, align 8
  %1292 = inttoptr i64 %1290 to i32*
  %1293 = load i32, i32* %1292, align 4
  %1294 = sext i32 %1293 to i64
  %1295 = mul nsw i64 %1294, 100
  %1296 = trunc i64 %1295 to i32
  %1297 = mul i64 %1294, 429496729600
  %1298 = ashr exact i64 %1297, 32
  %1299 = icmp ne i64 %1298, %1295
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %14, align 1
  %1301 = and i32 %1296, 252
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1306 = lshr i32 %1296, 31
  %1307 = trunc i32 %1306 to i8
  store i8 %1307, i8* %32, align 1
  store i8 %1300, i8* %38, align 1
  %1308 = trunc i64 %1295 to i32
  %1309 = sitofp i32 %1308 to double
  %1310 = bitcast i64 %1289 to double
  %1311 = fdiv double %1309, %1310
  store double %1311, double* %901, align 1
  %1312 = tail call double @llvm.trunc.f64(double %1311)
  %1313 = tail call double @llvm.fabs.f64(double %1312)
  %1314 = fcmp ogt double %1313, 0x41DFFFFFFFC00000
  %1315 = fptosi double %1312 to i32
  %1316 = zext i32 %1315 to i64
  %1317 = select i1 %1314, i64 2147483648, i64 %1316
  store i64 %1317, i64* %RAX.i57, align 8
  %1318 = trunc i64 %1317 to i32
  %1319 = add i64 %1285, 37
  store i64 %1319, i64* %3, align 8
  store i32 %1318, i32* %1292, align 4
  %1320 = load i64, i64* %RBP.i, align 8
  %1321 = add i64 %1320, -8
  %1322 = load i64, i64* %3, align 8
  %1323 = add i64 %1322, 4
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1321 to i64*
  %1325 = load i64, i64* %1324, align 8
  store i64 %1325, i64* %RDI.i141, align 8
  %1326 = add i64 %1320, -32
  %1327 = add i64 %1322, 7
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = zext i32 %1329 to i64
  store i64 %1330, i64* %RDX.i1068, align 8
  store i8 0, i8* %AL.i984, align 1
  %1331 = add i64 %1322, -81114
  %1332 = add i64 %1322, 14
  %1333 = load i64, i64* %6, align 8
  %1334 = add i64 %1333, -8
  %1335 = inttoptr i64 %1334 to i64*
  store i64 %1332, i64* %1335, align 8
  store i64 %1334, i64* %6, align 8
  store i64 %1331, i64* %3, align 8
  %1336 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.12)
  %1337 = load i64, i64* %RBP.i, align 8
  %1338 = add i64 %1337, -216
  %1339 = load i32, i32* %EAX.i611, align 4
  %1340 = load i64, i64* %3, align 8
  %1341 = add i64 %1340, 6
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1338 to i32*
  store i32 %1339, i32* %1342, align 4
  %1343 = load i64, i64* %RBP.i, align 8
  %1344 = add i64 %1343, -28
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, 3
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1344 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = add i32 %1348, 1
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RAX.i57, align 8
  %1351 = icmp eq i32 %1348, -1
  %1352 = icmp eq i32 %1349, 0
  %1353 = or i1 %1351, %1352
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %14, align 1
  %1355 = and i32 %1349, 255
  %1356 = tail call i32 @llvm.ctpop.i32(i32 %1355)
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  %1359 = xor i8 %1358, 1
  store i8 %1359, i8* %21, align 1
  %1360 = xor i32 %1349, %1348
  %1361 = lshr i32 %1360, 4
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  store i8 %1363, i8* %26, align 1
  %1364 = zext i1 %1352 to i8
  store i8 %1364, i8* %29, align 1
  %1365 = lshr i32 %1349, 31
  %1366 = trunc i32 %1365 to i8
  store i8 %1366, i8* %32, align 1
  %1367 = lshr i32 %1348, 31
  %1368 = xor i32 %1365, %1367
  %1369 = add nuw nsw i32 %1368, %1365
  %1370 = icmp eq i32 %1369, 2
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %38, align 1
  %1372 = add i64 %1345, 9
  store i64 %1372, i64* %3, align 8
  store i32 %1349, i32* %1347, align 4
  %1373 = load i64, i64* %3, align 8
  %1374 = add i64 %1373, -157
  store i64 %1374, i64* %3, align 8
  br label %block_.L_4151ca

block_.L_41526c:                                  ; preds = %block_.L_4151ca
  %1375 = add i64 %1128, -24
  %1376 = add i64 %1161, 4
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  %1378 = load i32, i32* %1377, align 4
  %1379 = add i32 %1378, -1
  %1380 = icmp eq i32 %1378, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %14, align 1
  %1382 = and i32 %1379, 255
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %21, align 1
  %1387 = xor i32 %1379, %1378
  %1388 = lshr i32 %1387, 4
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  store i8 %1390, i8* %26, align 1
  %1391 = icmp eq i32 %1379, 0
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %29, align 1
  %1393 = lshr i32 %1379, 31
  %1394 = trunc i32 %1393 to i8
  store i8 %1394, i8* %32, align 1
  %1395 = lshr i32 %1378, 31
  %1396 = xor i32 %1393, %1395
  %1397 = add nuw nsw i32 %1396, %1395
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %38, align 1
  %1400 = icmp ne i8 %1394, 0
  %1401 = xor i1 %1400, %1398
  %1402 = or i1 %1391, %1401
  %.v75 = select i1 %1402, i64 158, i64 10
  %1403 = add i64 %1161, %.v75
  store i64 %1403, i64* %3, align 8
  br i1 %1402, label %block_.L_41530a, label %block_415276

block_415276:                                     ; preds = %block_.L_41526c
  %1404 = add i64 %1403, ptrtoint (%G_0x3f5c2__rip__type* @G_0x3f5c2__rip_ to i64)
  %1405 = add i64 %1403, 8
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i64*
  %1407 = load i64, i64* %1406, align 8
  store i64 %1407, i64* %897, align 1
  store double 0.000000e+00, double* %899, align 1
  %1408 = add i64 %1128, -16
  %1409 = add i64 %1403, 12
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i64*
  %1411 = load i64, i64* %1410, align 8
  store i64 %1411, i64* %RAX.i57, align 8
  %1412 = add i64 %1411, 312
  %1413 = add i64 %1403, 19
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i64*
  %1415 = load i64, i64* %1414, align 8
  store i64 %1415, i64* %RAX.i57, align 8
  %1416 = add i64 %1415, 8
  %1417 = add i64 %1403, 23
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %RAX.i57, align 8
  %1420 = add i64 %1403, 26
  store i64 %1420, i64* %3, align 8
  %1421 = load i32, i32* %1377, align 4
  %1422 = add i32 %1421, -1
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RCX.i1080, align 8
  %1424 = icmp eq i32 %1421, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %14, align 1
  %1426 = and i32 %1422, 255
  %1427 = tail call i32 @llvm.ctpop.i32(i32 %1426)
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = xor i8 %1429, 1
  store i8 %1430, i8* %21, align 1
  %1431 = xor i32 %1422, %1421
  %1432 = lshr i32 %1431, 4
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  store i8 %1434, i8* %26, align 1
  %1435 = icmp eq i32 %1422, 0
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %29, align 1
  %1437 = lshr i32 %1422, 31
  %1438 = trunc i32 %1437 to i8
  store i8 %1438, i8* %32, align 1
  %1439 = lshr i32 %1421, 31
  %1440 = xor i32 %1437, %1439
  %1441 = add nuw nsw i32 %1440, %1439
  %1442 = icmp eq i32 %1441, 2
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %38, align 1
  %1444 = sext i32 %1422 to i64
  store i64 %1444, i64* %RDX.i1068, align 8
  %1445 = shl nsw i64 %1444, 2
  %1446 = add i64 %1419, %1445
  %1447 = add i64 %1403, 35
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = zext i32 %1449 to i64
  store i64 %1450, i64* %RCX.i1080, align 8
  %1451 = add i64 %1403, 39
  store i64 %1451, i64* %3, align 8
  %1452 = load i64, i64* %1410, align 8
  store i64 %1452, i64* %RAX.i57, align 8
  %1453 = add i64 %1452, 312
  %1454 = add i64 %1403, 46
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i64*
  %1456 = load i64, i64* %1455, align 8
  store i64 %1456, i64* %RAX.i57, align 8
  %1457 = add i64 %1456, 24
  %1458 = add i64 %1403, 50
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i64*
  %1460 = load i64, i64* %1459, align 8
  store i64 %1460, i64* %RAX.i57, align 8
  %1461 = add i64 %1403, 53
  store i64 %1461, i64* %3, align 8
  %1462 = load i32, i32* %1377, align 4
  %1463 = add i32 %1462, -1
  %1464 = zext i32 %1463 to i64
  store i64 %1464, i64* %RSI.i165, align 8
  %1465 = icmp eq i32 %1462, 0
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %14, align 1
  %1467 = and i32 %1463, 255
  %1468 = tail call i32 @llvm.ctpop.i32(i32 %1467)
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  %1471 = xor i8 %1470, 1
  store i8 %1471, i8* %21, align 1
  %1472 = xor i32 %1463, %1462
  %1473 = lshr i32 %1472, 4
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  store i8 %1475, i8* %26, align 1
  %1476 = icmp eq i32 %1463, 0
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %29, align 1
  %1478 = lshr i32 %1463, 31
  %1479 = trunc i32 %1478 to i8
  store i8 %1479, i8* %32, align 1
  %1480 = lshr i32 %1462, 31
  %1481 = xor i32 %1478, %1480
  %1482 = add nuw nsw i32 %1481, %1480
  %1483 = icmp eq i32 %1482, 2
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %38, align 1
  %1485 = sext i32 %1463 to i64
  store i64 %1485, i64* %RDX.i1068, align 8
  %1486 = shl nsw i64 %1485, 2
  %1487 = add i64 %1460, %1486
  %1488 = add i64 %1403, 62
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = add i32 %1490, %1449
  %1492 = zext i32 %1491 to i64
  store i64 %1492, i64* %RCX.i1080, align 8
  %1493 = icmp ult i32 %1491, %1449
  %1494 = icmp ult i32 %1491, %1490
  %1495 = or i1 %1493, %1494
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %14, align 1
  %1497 = and i32 %1491, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %21, align 1
  %1502 = xor i32 %1490, %1449
  %1503 = xor i32 %1502, %1491
  %1504 = lshr i32 %1503, 4
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  store i8 %1506, i8* %26, align 1
  %1507 = icmp eq i32 %1491, 0
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %29, align 1
  %1509 = lshr i32 %1491, 31
  %1510 = trunc i32 %1509 to i8
  store i8 %1510, i8* %32, align 1
  %1511 = lshr i32 %1449, 31
  %1512 = lshr i32 %1490, 31
  %1513 = xor i32 %1509, %1511
  %1514 = xor i32 %1509, %1512
  %1515 = add nuw nsw i32 %1513, %1514
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %38, align 1
  %1518 = load i64, i64* %RBP.i, align 8
  %1519 = add i64 %1518, -16
  %1520 = add i64 %1403, 66
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i64*
  %1522 = load i64, i64* %1521, align 8
  store i64 %1522, i64* %RAX.i57, align 8
  %1523 = add i64 %1522, 312
  %1524 = add i64 %1403, 73
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i64*
  %1526 = load i64, i64* %1525, align 8
  store i64 %1526, i64* %RAX.i57, align 8
  %1527 = add i64 %1403, 76
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i64*
  %1529 = load i64, i64* %1528, align 8
  store i64 %1529, i64* %RAX.i57, align 8
  %1530 = add i64 %1518, -24
  %1531 = add i64 %1403, 79
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1530 to i32*
  %1533 = load i32, i32* %1532, align 4
  %1534 = add i32 %1533, -1
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RSI.i165, align 8
  %1536 = icmp eq i32 %1533, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %14, align 1
  %1538 = and i32 %1534, 255
  %1539 = tail call i32 @llvm.ctpop.i32(i32 %1538)
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  %1542 = xor i8 %1541, 1
  store i8 %1542, i8* %21, align 1
  %1543 = xor i32 %1534, %1533
  %1544 = lshr i32 %1543, 4
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  store i8 %1546, i8* %26, align 1
  %1547 = icmp eq i32 %1534, 0
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %29, align 1
  %1549 = lshr i32 %1534, 31
  %1550 = trunc i32 %1549 to i8
  store i8 %1550, i8* %32, align 1
  %1551 = lshr i32 %1533, 31
  %1552 = xor i32 %1549, %1551
  %1553 = add nuw nsw i32 %1552, %1551
  %1554 = icmp eq i32 %1553, 2
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %38, align 1
  %1556 = sext i32 %1534 to i64
  store i64 %1556, i64* %RDX.i1068, align 8
  %1557 = shl nsw i64 %1556, 2
  %1558 = add i64 %1529, %1557
  %1559 = add i64 %1403, 88
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i32*
  %1561 = load i32, i32* %1560, align 4
  %1562 = sub i32 %1491, %1561
  %1563 = zext i32 %1562 to i64
  store i64 %1563, i64* %RCX.i1080, align 8
  %1564 = icmp ult i32 %1491, %1561
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %14, align 1
  %1566 = and i32 %1562, 255
  %1567 = tail call i32 @llvm.ctpop.i32(i32 %1566)
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = xor i8 %1569, 1
  store i8 %1570, i8* %21, align 1
  %1571 = xor i32 %1561, %1491
  %1572 = xor i32 %1571, %1562
  %1573 = lshr i32 %1572, 4
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  store i8 %1575, i8* %26, align 1
  %1576 = icmp eq i32 %1562, 0
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %29, align 1
  %1578 = lshr i32 %1562, 31
  %1579 = trunc i32 %1578 to i8
  store i8 %1579, i8* %32, align 1
  %1580 = lshr i32 %1561, 31
  %1581 = xor i32 %1580, %1509
  %1582 = xor i32 %1578, %1509
  %1583 = add nuw nsw i32 %1582, %1581
  %1584 = icmp eq i32 %1583, 2
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %38, align 1
  %1586 = add i64 %1403, 92
  store i64 %1586, i64* %3, align 8
  %1587 = load i64, i64* %1521, align 8
  store i64 %1587, i64* %RAX.i57, align 8
  %1588 = add i64 %1587, 312
  %1589 = add i64 %1403, 99
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i64*
  %1591 = load i64, i64* %1590, align 8
  store i64 %1591, i64* %RAX.i57, align 8
  %1592 = add i64 %1591, 32
  %1593 = add i64 %1403, 103
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i64*
  %1595 = load i64, i64* %1594, align 8
  store i64 %1595, i64* %RAX.i57, align 8
  %1596 = load i64, i64* %RBP.i, align 8
  %1597 = add i64 %1596, -24
  %1598 = add i64 %1403, 106
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = add i32 %1600, -1
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RSI.i165, align 8
  %1603 = icmp eq i32 %1600, 0
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %14, align 1
  %1605 = and i32 %1601, 255
  %1606 = tail call i32 @llvm.ctpop.i32(i32 %1605)
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = xor i8 %1608, 1
  store i8 %1609, i8* %21, align 1
  %1610 = xor i32 %1601, %1600
  %1611 = lshr i32 %1610, 4
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  store i8 %1613, i8* %26, align 1
  %1614 = icmp eq i32 %1601, 0
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %29, align 1
  %1616 = lshr i32 %1601, 31
  %1617 = trunc i32 %1616 to i8
  store i8 %1617, i8* %32, align 1
  %1618 = lshr i32 %1600, 31
  %1619 = xor i32 %1616, %1618
  %1620 = add nuw nsw i32 %1619, %1618
  %1621 = icmp eq i32 %1620, 2
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %38, align 1
  %1623 = sext i32 %1601 to i64
  store i64 %1623, i64* %RDX.i1068, align 8
  %1624 = shl nsw i64 %1623, 2
  %1625 = add i64 %1595, %1624
  %1626 = add i64 %1403, 115
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = sub i32 %1562, %1628
  %1630 = sext i32 %1629 to i64
  %1631 = sub nsw i64 0, %1630
  %1632 = trunc i64 %1631 to i32
  %1633 = and i64 %1631, 4294967295
  store i64 %1633, i64* %RCX.i1080, align 8
  %1634 = shl i64 %1631, 32
  %1635 = ashr exact i64 %1634, 32
  %1636 = icmp ne i64 %1635, %1631
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %14, align 1
  %1638 = and i32 %1632, 255
  %1639 = tail call i32 @llvm.ctpop.i32(i32 %1638)
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  %1642 = xor i8 %1641, 1
  store i8 %1642, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1643 = lshr i32 %1632, 31
  %1644 = trunc i32 %1643 to i8
  store i8 %1644, i8* %32, align 1
  store i8 %1637, i8* %38, align 1
  %1645 = load i64, i64* %RBP.i, align 8
  %1646 = add i64 %1645, -40
  %1647 = trunc i64 %1631 to i32
  %1648 = add i64 %1403, 121
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1646 to i32*
  store i32 %1647, i32* %1649, align 4
  %1650 = load i64, i64* %RBP.i, align 8
  %1651 = add i64 %1650, -40
  %1652 = load i64, i64* %3, align 8
  %1653 = add i64 %1652, 4
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1651 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = sext i32 %1655 to i64
  %1657 = mul nsw i64 %1656, 100
  %1658 = trunc i64 %1657 to i32
  %1659 = mul i64 %1656, 429496729600
  %1660 = ashr exact i64 %1659, 32
  %1661 = icmp ne i64 %1660, %1657
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %14, align 1
  %1663 = and i32 %1658, 252
  %1664 = tail call i32 @llvm.ctpop.i32(i32 %1663)
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = xor i8 %1666, 1
  store i8 %1667, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1668 = lshr i32 %1658, 31
  %1669 = trunc i32 %1668 to i8
  store i8 %1669, i8* %32, align 1
  store i8 %1662, i8* %38, align 1
  %1670 = trunc i64 %1657 to i32
  %1671 = sitofp i32 %1670 to double
  %1672 = load double, double* %902, align 1
  %1673 = fdiv double %1671, %1672
  store double %1673, double* %901, align 1
  %1674 = tail call double @llvm.trunc.f64(double %1673)
  %1675 = tail call double @llvm.fabs.f64(double %1674)
  %1676 = fcmp ogt double %1675, 0x41DFFFFFFFC00000
  %1677 = fptosi double %1674 to i32
  %1678 = zext i32 %1677 to i64
  %1679 = select i1 %1676, i64 2147483648, i64 %1678
  store i64 %1679, i64* %RCX.i1080, align 8
  %1680 = trunc i64 %1679 to i32
  %1681 = add i64 %1652, 19
  store i64 %1681, i64* %3, align 8
  store i32 %1680, i32* %1654, align 4
  %1682 = load i64, i64* %3, align 8
  %1683 = add i64 %1682, 12
  store i64 %1683, i64* %3, align 8
  br label %block_.L_415311

block_.L_41530a:                                  ; preds = %block_.L_41526c
  %1684 = add i64 %1128, -40
  %1685 = add i64 %1403, 7
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i32*
  store i32 100, i32* %1686, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_415311

block_.L_415311:                                  ; preds = %block_.L_41530a, %block_415276
  %1687 = phi i64 [ %.pre49, %block_.L_41530a ], [ %1683, %block_415276 ]
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -24
  %1690 = add i64 %1687, 4
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = add i32 %1692, -1
  %1694 = icmp eq i32 %1692, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %14, align 1
  %1696 = and i32 %1693, 255
  %1697 = tail call i32 @llvm.ctpop.i32(i32 %1696)
  %1698 = trunc i32 %1697 to i8
  %1699 = and i8 %1698, 1
  %1700 = xor i8 %1699, 1
  store i8 %1700, i8* %21, align 1
  %1701 = xor i32 %1693, %1692
  %1702 = lshr i32 %1701, 4
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  store i8 %1704, i8* %26, align 1
  %1705 = icmp eq i32 %1693, 0
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %29, align 1
  %1707 = lshr i32 %1693, 31
  %1708 = trunc i32 %1707 to i8
  store i8 %1708, i8* %32, align 1
  %1709 = lshr i32 %1692, 31
  %1710 = xor i32 %1707, %1709
  %1711 = add nuw nsw i32 %1710, %1709
  %1712 = icmp eq i32 %1711, 2
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %38, align 1
  %1714 = icmp ne i8 %1708, 0
  %1715 = xor i1 %1714, %1712
  %1716 = or i1 %1705, %1715
  %.v76 = select i1 %1716, i64 76, i64 10
  %1717 = add i64 %1687, %.v76
  store i64 %1717, i64* %3, align 8
  br i1 %1716, label %block_.L_41535d, label %block_41531b

block_41531b:                                     ; preds = %block_.L_415311
  %1718 = add i64 %1717, ptrtoint (%G_0x3f4fd__rip__type* @G_0x3f4fd__rip_ to i64)
  %1719 = add i64 %1717, 8
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i64*
  %1721 = load i64, i64* %1720, align 8
  store i64 %1721, i64* %897, align 1
  store double 0.000000e+00, double* %899, align 1
  %1722 = add i64 %1688, -16
  %1723 = add i64 %1717, 12
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i64*
  %1725 = load i64, i64* %1724, align 8
  store i64 %1725, i64* %RAX.i57, align 8
  %1726 = add i64 %1725, 312
  %1727 = add i64 %1717, 19
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i64*
  %1729 = load i64, i64* %1728, align 8
  store i64 %1729, i64* %RAX.i57, align 8
  %1730 = add i64 %1729, 32
  %1731 = add i64 %1717, 23
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i64*
  %1733 = load i64, i64* %1732, align 8
  store i64 %1733, i64* %RAX.i57, align 8
  %1734 = add i64 %1717, 26
  store i64 %1734, i64* %3, align 8
  %1735 = load i32, i32* %1691, align 4
  %1736 = add i32 %1735, -1
  %1737 = zext i32 %1736 to i64
  store i64 %1737, i64* %RCX.i1080, align 8
  %1738 = icmp eq i32 %1735, 0
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %14, align 1
  %1740 = and i32 %1736, 255
  %1741 = tail call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  store i8 %1744, i8* %21, align 1
  %1745 = xor i32 %1736, %1735
  %1746 = lshr i32 %1745, 4
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  store i8 %1748, i8* %26, align 1
  %1749 = icmp eq i32 %1736, 0
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %29, align 1
  %1751 = lshr i32 %1736, 31
  %1752 = trunc i32 %1751 to i8
  store i8 %1752, i8* %32, align 1
  %1753 = lshr i32 %1735, 31
  %1754 = xor i32 %1751, %1753
  %1755 = add nuw nsw i32 %1754, %1753
  %1756 = icmp eq i32 %1755, 2
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %38, align 1
  %1758 = sext i32 %1736 to i64
  store i64 %1758, i64* %RDX.i1068, align 8
  %1759 = shl nsw i64 %1758, 2
  %1760 = add i64 %1733, %1759
  %1761 = add i64 %1717, 36
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i32*
  %1763 = load i32, i32* %1762, align 4
  %1764 = sext i32 %1763 to i64
  %1765 = sub nsw i64 0, %1764
  %1766 = trunc i64 %1765 to i32
  %1767 = and i64 %1765, 4294967295
  store i64 %1767, i64* %RCX.i1080, align 8
  %1768 = shl i64 %1765, 32
  %1769 = ashr exact i64 %1768, 32
  %1770 = icmp ne i64 %1769, %1765
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %14, align 1
  %1772 = and i32 %1766, 255
  %1773 = tail call i32 @llvm.ctpop.i32(i32 %1772)
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  %1776 = xor i8 %1775, 1
  store i8 %1776, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1777 = lshr i32 %1766, 31
  %1778 = trunc i32 %1777 to i8
  store i8 %1778, i8* %32, align 1
  store i8 %1771, i8* %38, align 1
  %1779 = add i64 %1688, -44
  %1780 = trunc i64 %1765 to i32
  %1781 = add i64 %1717, 39
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1779 to i32*
  store i32 %1780, i32* %1782, align 4
  %1783 = load i64, i64* %RBP.i, align 8
  %1784 = add i64 %1783, -44
  %1785 = load i64, i64* %3, align 8
  %1786 = add i64 %1785, 4
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1784 to i32*
  %1788 = load i32, i32* %1787, align 4
  %1789 = sext i32 %1788 to i64
  %1790 = mul nsw i64 %1789, 100
  %1791 = trunc i64 %1790 to i32
  %1792 = mul i64 %1789, 429496729600
  %1793 = ashr exact i64 %1792, 32
  %1794 = icmp ne i64 %1793, %1790
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %14, align 1
  %1796 = and i32 %1791, 252
  %1797 = tail call i32 @llvm.ctpop.i32(i32 %1796)
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  %1800 = xor i8 %1799, 1
  store i8 %1800, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1801 = lshr i32 %1791, 31
  %1802 = trunc i32 %1801 to i8
  store i8 %1802, i8* %32, align 1
  store i8 %1795, i8* %38, align 1
  %1803 = trunc i64 %1790 to i32
  %1804 = sitofp i32 %1803 to double
  %1805 = load double, double* %902, align 1
  %1806 = fdiv double %1804, %1805
  store double %1806, double* %901, align 1
  %1807 = tail call double @llvm.trunc.f64(double %1806)
  %1808 = tail call double @llvm.fabs.f64(double %1807)
  %1809 = fcmp ogt double %1808, 0x41DFFFFFFFC00000
  %1810 = fptosi double %1807 to i32
  %1811 = zext i32 %1810 to i64
  %1812 = select i1 %1809, i64 2147483648, i64 %1811
  store i64 %1812, i64* %RCX.i1080, align 8
  %1813 = trunc i64 %1812 to i32
  %1814 = add i64 %1785, 19
  store i64 %1814, i64* %3, align 8
  store i32 %1813, i32* %1787, align 4
  %1815 = load i64, i64* %3, align 8
  %1816 = add i64 %1815, 12
  store i64 %1816, i64* %3, align 8
  br label %block_.L_415364

block_.L_41535d:                                  ; preds = %block_.L_415311
  %1817 = add i64 %1688, -44
  %1818 = add i64 %1717, 7
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  store i32 100, i32* %1819, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_415364

block_.L_415364:                                  ; preds = %block_.L_41535d, %block_41531b
  %1820 = phi i64 [ %.pre50, %block_.L_41535d ], [ %1816, %block_41531b ]
  %1821 = load i64, i64* %RBP.i, align 8
  %1822 = add i64 %1821, -24
  %1823 = add i64 %1820, 4
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = add i32 %1825, -1
  %1827 = icmp eq i32 %1825, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %14, align 1
  %1829 = and i32 %1826, 255
  %1830 = tail call i32 @llvm.ctpop.i32(i32 %1829)
  %1831 = trunc i32 %1830 to i8
  %1832 = and i8 %1831, 1
  %1833 = xor i8 %1832, 1
  store i8 %1833, i8* %21, align 1
  %1834 = xor i32 %1826, %1825
  %1835 = lshr i32 %1834, 4
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  store i8 %1837, i8* %26, align 1
  %1838 = icmp eq i32 %1826, 0
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %29, align 1
  %1840 = lshr i32 %1826, 31
  %1841 = trunc i32 %1840 to i8
  store i8 %1841, i8* %32, align 1
  %1842 = lshr i32 %1825, 31
  %1843 = xor i32 %1840, %1842
  %1844 = add nuw nsw i32 %1843, %1842
  %1845 = icmp eq i32 %1844, 2
  %1846 = zext i1 %1845 to i8
  store i8 %1846, i8* %38, align 1
  %1847 = icmp ne i8 %1841, 0
  %1848 = xor i1 %1847, %1845
  %1849 = or i1 %1838, %1848
  %.v77 = select i1 %1849, i64 158, i64 10
  %1850 = add i64 %1820, %.v77
  store i64 %1850, i64* %3, align 8
  br i1 %1849, label %block_.L_415402, label %block_41536e

block_41536e:                                     ; preds = %block_.L_415364
  %1851 = add i64 %1850, ptrtoint (%G_0x3f4ca__rip__type* @G_0x3f4ca__rip_ to i64)
  %1852 = add i64 %1850, 8
  store i64 %1852, i64* %3, align 8
  %1853 = inttoptr i64 %1851 to i64*
  %1854 = load i64, i64* %1853, align 8
  store i64 %1854, i64* %897, align 1
  store double 0.000000e+00, double* %899, align 1
  %1855 = add i64 %1821, -16
  %1856 = add i64 %1850, 12
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i64*
  %1858 = load i64, i64* %1857, align 8
  store i64 %1858, i64* %RAX.i57, align 8
  %1859 = add i64 %1858, 312
  %1860 = add i64 %1850, 19
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i64*
  %1862 = load i64, i64* %1861, align 8
  store i64 %1862, i64* %RAX.i57, align 8
  %1863 = add i64 %1862, 40
  %1864 = add i64 %1850, 23
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i64*
  %1866 = load i64, i64* %1865, align 8
  store i64 %1866, i64* %RAX.i57, align 8
  %1867 = add i64 %1850, 26
  store i64 %1867, i64* %3, align 8
  %1868 = load i32, i32* %1824, align 4
  %1869 = add i32 %1868, -1
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RCX.i1080, align 8
  %1871 = icmp eq i32 %1868, 0
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %14, align 1
  %1873 = and i32 %1869, 255
  %1874 = tail call i32 @llvm.ctpop.i32(i32 %1873)
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = xor i8 %1876, 1
  store i8 %1877, i8* %21, align 1
  %1878 = xor i32 %1869, %1868
  %1879 = lshr i32 %1878, 4
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  store i8 %1881, i8* %26, align 1
  %1882 = icmp eq i32 %1869, 0
  %1883 = zext i1 %1882 to i8
  store i8 %1883, i8* %29, align 1
  %1884 = lshr i32 %1869, 31
  %1885 = trunc i32 %1884 to i8
  store i8 %1885, i8* %32, align 1
  %1886 = lshr i32 %1868, 31
  %1887 = xor i32 %1884, %1886
  %1888 = add nuw nsw i32 %1887, %1886
  %1889 = icmp eq i32 %1888, 2
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %38, align 1
  %1891 = sext i32 %1869 to i64
  store i64 %1891, i64* %RDX.i1068, align 8
  %1892 = shl nsw i64 %1891, 2
  %1893 = add i64 %1866, %1892
  %1894 = add i64 %1850, 35
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = zext i32 %1896 to i64
  store i64 %1897, i64* %RCX.i1080, align 8
  %1898 = add i64 %1850, 39
  store i64 %1898, i64* %3, align 8
  %1899 = load i64, i64* %1857, align 8
  store i64 %1899, i64* %RAX.i57, align 8
  %1900 = add i64 %1899, 312
  %1901 = add i64 %1850, 46
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i64*
  %1903 = load i64, i64* %1902, align 8
  store i64 %1903, i64* %RAX.i57, align 8
  %1904 = add i64 %1903, 16
  %1905 = add i64 %1850, 50
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to i64*
  %1907 = load i64, i64* %1906, align 8
  store i64 %1907, i64* %RAX.i57, align 8
  %1908 = add i64 %1850, 53
  store i64 %1908, i64* %3, align 8
  %1909 = load i32, i32* %1824, align 4
  %1910 = add i32 %1909, -1
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RSI.i165, align 8
  %1912 = icmp eq i32 %1909, 0
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %14, align 1
  %1914 = and i32 %1910, 255
  %1915 = tail call i32 @llvm.ctpop.i32(i32 %1914)
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  %1918 = xor i8 %1917, 1
  store i8 %1918, i8* %21, align 1
  %1919 = xor i32 %1910, %1909
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
  %1927 = lshr i32 %1909, 31
  %1928 = xor i32 %1925, %1927
  %1929 = add nuw nsw i32 %1928, %1927
  %1930 = icmp eq i32 %1929, 2
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %38, align 1
  %1932 = sext i32 %1910 to i64
  store i64 %1932, i64* %RDX.i1068, align 8
  %1933 = shl nsw i64 %1932, 2
  %1934 = add i64 %1907, %1933
  %1935 = add i64 %1850, 62
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i32*
  %1937 = load i32, i32* %1936, align 4
  %1938 = add i32 %1937, %1896
  %1939 = zext i32 %1938 to i64
  store i64 %1939, i64* %RCX.i1080, align 8
  %1940 = icmp ult i32 %1938, %1896
  %1941 = icmp ult i32 %1938, %1937
  %1942 = or i1 %1940, %1941
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %14, align 1
  %1944 = and i32 %1938, 255
  %1945 = tail call i32 @llvm.ctpop.i32(i32 %1944)
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = xor i8 %1947, 1
  store i8 %1948, i8* %21, align 1
  %1949 = xor i32 %1937, %1896
  %1950 = xor i32 %1949, %1938
  %1951 = lshr i32 %1950, 4
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  store i8 %1953, i8* %26, align 1
  %1954 = icmp eq i32 %1938, 0
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %29, align 1
  %1956 = lshr i32 %1938, 31
  %1957 = trunc i32 %1956 to i8
  store i8 %1957, i8* %32, align 1
  %1958 = lshr i32 %1896, 31
  %1959 = lshr i32 %1937, 31
  %1960 = xor i32 %1956, %1958
  %1961 = xor i32 %1956, %1959
  %1962 = add nuw nsw i32 %1960, %1961
  %1963 = icmp eq i32 %1962, 2
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %38, align 1
  %1965 = load i64, i64* %RBP.i, align 8
  %1966 = add i64 %1965, -16
  %1967 = add i64 %1850, 66
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1966 to i64*
  %1969 = load i64, i64* %1968, align 8
  store i64 %1969, i64* %RAX.i57, align 8
  %1970 = add i64 %1969, 312
  %1971 = add i64 %1850, 73
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i64*
  %1973 = load i64, i64* %1972, align 8
  store i64 %1973, i64* %RAX.i57, align 8
  %1974 = add i64 %1850, 76
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i64*
  %1976 = load i64, i64* %1975, align 8
  store i64 %1976, i64* %RAX.i57, align 8
  %1977 = add i64 %1965, -24
  %1978 = add i64 %1850, 79
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = add i32 %1980, -1
  %1982 = zext i32 %1981 to i64
  store i64 %1982, i64* %RSI.i165, align 8
  %1983 = icmp eq i32 %1980, 0
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %14, align 1
  %1985 = and i32 %1981, 255
  %1986 = tail call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  store i8 %1989, i8* %21, align 1
  %1990 = xor i32 %1981, %1980
  %1991 = lshr i32 %1990, 4
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  store i8 %1993, i8* %26, align 1
  %1994 = icmp eq i32 %1981, 0
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %29, align 1
  %1996 = lshr i32 %1981, 31
  %1997 = trunc i32 %1996 to i8
  store i8 %1997, i8* %32, align 1
  %1998 = lshr i32 %1980, 31
  %1999 = xor i32 %1996, %1998
  %2000 = add nuw nsw i32 %1999, %1998
  %2001 = icmp eq i32 %2000, 2
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %38, align 1
  %2003 = sext i32 %1981 to i64
  store i64 %2003, i64* %RDX.i1068, align 8
  %2004 = shl nsw i64 %2003, 2
  %2005 = add i64 %1976, %2004
  %2006 = add i64 %1850, 88
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = sub i32 %1938, %2008
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RCX.i1080, align 8
  %2011 = icmp ult i32 %1938, %2008
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %14, align 1
  %2013 = and i32 %2009, 255
  %2014 = tail call i32 @llvm.ctpop.i32(i32 %2013)
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  %2017 = xor i8 %2016, 1
  store i8 %2017, i8* %21, align 1
  %2018 = xor i32 %2008, %1938
  %2019 = xor i32 %2018, %2009
  %2020 = lshr i32 %2019, 4
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  store i8 %2022, i8* %26, align 1
  %2023 = icmp eq i32 %2009, 0
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %29, align 1
  %2025 = lshr i32 %2009, 31
  %2026 = trunc i32 %2025 to i8
  store i8 %2026, i8* %32, align 1
  %2027 = lshr i32 %2008, 31
  %2028 = xor i32 %2027, %1956
  %2029 = xor i32 %2025, %1956
  %2030 = add nuw nsw i32 %2029, %2028
  %2031 = icmp eq i32 %2030, 2
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %38, align 1
  %2033 = add i64 %1850, 92
  store i64 %2033, i64* %3, align 8
  %2034 = load i64, i64* %1968, align 8
  store i64 %2034, i64* %RAX.i57, align 8
  %2035 = add i64 %2034, 312
  %2036 = add i64 %1850, 99
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i64*
  %2038 = load i64, i64* %2037, align 8
  store i64 %2038, i64* %RAX.i57, align 8
  %2039 = add i64 %2038, 48
  %2040 = add i64 %1850, 103
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i64*
  %2042 = load i64, i64* %2041, align 8
  store i64 %2042, i64* %RAX.i57, align 8
  %2043 = load i64, i64* %RBP.i, align 8
  %2044 = add i64 %2043, -24
  %2045 = add i64 %1850, 106
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  %2047 = load i32, i32* %2046, align 4
  %2048 = add i32 %2047, -1
  %2049 = zext i32 %2048 to i64
  store i64 %2049, i64* %RSI.i165, align 8
  %2050 = icmp eq i32 %2047, 0
  %2051 = zext i1 %2050 to i8
  store i8 %2051, i8* %14, align 1
  %2052 = and i32 %2048, 255
  %2053 = tail call i32 @llvm.ctpop.i32(i32 %2052)
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = xor i8 %2055, 1
  store i8 %2056, i8* %21, align 1
  %2057 = xor i32 %2048, %2047
  %2058 = lshr i32 %2057, 4
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  store i8 %2060, i8* %26, align 1
  %2061 = icmp eq i32 %2048, 0
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %29, align 1
  %2063 = lshr i32 %2048, 31
  %2064 = trunc i32 %2063 to i8
  store i8 %2064, i8* %32, align 1
  %2065 = lshr i32 %2047, 31
  %2066 = xor i32 %2063, %2065
  %2067 = add nuw nsw i32 %2066, %2065
  %2068 = icmp eq i32 %2067, 2
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %38, align 1
  %2070 = sext i32 %2048 to i64
  store i64 %2070, i64* %RDX.i1068, align 8
  %2071 = shl nsw i64 %2070, 2
  %2072 = add i64 %2042, %2071
  %2073 = add i64 %1850, 115
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = sub i32 %2009, %2075
  %2077 = sext i32 %2076 to i64
  %2078 = sub nsw i64 0, %2077
  %2079 = trunc i64 %2078 to i32
  %2080 = and i64 %2078, 4294967295
  store i64 %2080, i64* %RCX.i1080, align 8
  %2081 = shl i64 %2078, 32
  %2082 = ashr exact i64 %2081, 32
  %2083 = icmp ne i64 %2082, %2078
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %14, align 1
  %2085 = and i32 %2079, 255
  %2086 = tail call i32 @llvm.ctpop.i32(i32 %2085)
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  %2089 = xor i8 %2088, 1
  store i8 %2089, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2090 = lshr i32 %2079, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %32, align 1
  store i8 %2084, i8* %38, align 1
  %2092 = load i64, i64* %RBP.i, align 8
  %2093 = add i64 %2092, -48
  %2094 = trunc i64 %2078 to i32
  %2095 = add i64 %1850, 121
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2093 to i32*
  store i32 %2094, i32* %2096, align 4
  %2097 = load i64, i64* %RBP.i, align 8
  %2098 = add i64 %2097, -48
  %2099 = load i64, i64* %3, align 8
  %2100 = add i64 %2099, 4
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2098 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = sext i32 %2102 to i64
  %2104 = mul nsw i64 %2103, 100
  %2105 = trunc i64 %2104 to i32
  %2106 = mul i64 %2103, 429496729600
  %2107 = ashr exact i64 %2106, 32
  %2108 = icmp ne i64 %2107, %2104
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %14, align 1
  %2110 = and i32 %2105, 252
  %2111 = tail call i32 @llvm.ctpop.i32(i32 %2110)
  %2112 = trunc i32 %2111 to i8
  %2113 = and i8 %2112, 1
  %2114 = xor i8 %2113, 1
  store i8 %2114, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2115 = lshr i32 %2105, 31
  %2116 = trunc i32 %2115 to i8
  store i8 %2116, i8* %32, align 1
  store i8 %2109, i8* %38, align 1
  %2117 = trunc i64 %2104 to i32
  %2118 = sitofp i32 %2117 to double
  %2119 = load double, double* %902, align 1
  %2120 = fdiv double %2118, %2119
  store double %2120, double* %901, align 1
  %2121 = tail call double @llvm.trunc.f64(double %2120)
  %2122 = tail call double @llvm.fabs.f64(double %2121)
  %2123 = fcmp ogt double %2122, 0x41DFFFFFFFC00000
  %2124 = fptosi double %2121 to i32
  %2125 = zext i32 %2124 to i64
  %2126 = select i1 %2123, i64 2147483648, i64 %2125
  store i64 %2126, i64* %RCX.i1080, align 8
  %2127 = trunc i64 %2126 to i32
  %2128 = add i64 %2099, 19
  store i64 %2128, i64* %3, align 8
  store i32 %2127, i32* %2101, align 4
  %2129 = load i64, i64* %3, align 8
  %2130 = add i64 %2129, 12
  store i64 %2130, i64* %3, align 8
  br label %block_.L_415409

block_.L_415402:                                  ; preds = %block_.L_415364
  %2131 = add i64 %1821, -48
  %2132 = add i64 %1850, 7
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i32*
  store i32 100, i32* %2133, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_415409

block_.L_415409:                                  ; preds = %block_.L_415402, %block_41536e
  %2134 = phi i64 [ %.pre51, %block_.L_415402 ], [ %2130, %block_41536e ]
  %2135 = load i64, i64* %RBP.i, align 8
  %2136 = add i64 %2135, -24
  %2137 = add i64 %2134, 4
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = add i32 %2139, -1
  %2141 = icmp eq i32 %2139, 0
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %14, align 1
  %2143 = and i32 %2140, 255
  %2144 = tail call i32 @llvm.ctpop.i32(i32 %2143)
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  %2147 = xor i8 %2146, 1
  store i8 %2147, i8* %21, align 1
  %2148 = xor i32 %2140, %2139
  %2149 = lshr i32 %2148, 4
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  store i8 %2151, i8* %26, align 1
  %2152 = icmp eq i32 %2140, 0
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %29, align 1
  %2154 = lshr i32 %2140, 31
  %2155 = trunc i32 %2154 to i8
  store i8 %2155, i8* %32, align 1
  %2156 = lshr i32 %2139, 31
  %2157 = xor i32 %2154, %2156
  %2158 = add nuw nsw i32 %2157, %2156
  %2159 = icmp eq i32 %2158, 2
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %38, align 1
  %2161 = icmp ne i8 %2155, 0
  %2162 = xor i1 %2161, %2159
  %2163 = or i1 %2152, %2162
  %.v78 = select i1 %2163, i64 76, i64 10
  %2164 = add i64 %2134, %.v78
  store i64 %2164, i64* %3, align 8
  br i1 %2163, label %block_.L_415455, label %block_415413

block_415413:                                     ; preds = %block_.L_415409
  %2165 = add i64 %2164, ptrtoint (%G_0x3f405__rip__type* @G_0x3f405__rip_ to i64)
  %2166 = add i64 %2164, 8
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  store i64 %2168, i64* %897, align 1
  store double 0.000000e+00, double* %899, align 1
  %2169 = add i64 %2135, -16
  %2170 = add i64 %2164, 12
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i64*
  %2172 = load i64, i64* %2171, align 8
  store i64 %2172, i64* %RAX.i57, align 8
  %2173 = add i64 %2172, 312
  %2174 = add i64 %2164, 19
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i64*
  %2176 = load i64, i64* %2175, align 8
  store i64 %2176, i64* %RAX.i57, align 8
  %2177 = add i64 %2176, 48
  %2178 = add i64 %2164, 23
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i64*
  %2180 = load i64, i64* %2179, align 8
  store i64 %2180, i64* %RAX.i57, align 8
  %2181 = add i64 %2164, 26
  store i64 %2181, i64* %3, align 8
  %2182 = load i32, i32* %2138, align 4
  %2183 = add i32 %2182, -1
  %2184 = zext i32 %2183 to i64
  store i64 %2184, i64* %RCX.i1080, align 8
  %2185 = icmp eq i32 %2182, 0
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %14, align 1
  %2187 = and i32 %2183, 255
  %2188 = tail call i32 @llvm.ctpop.i32(i32 %2187)
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = xor i8 %2190, 1
  store i8 %2191, i8* %21, align 1
  %2192 = xor i32 %2183, %2182
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
  %2200 = lshr i32 %2182, 31
  %2201 = xor i32 %2198, %2200
  %2202 = add nuw nsw i32 %2201, %2200
  %2203 = icmp eq i32 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %38, align 1
  %2205 = sext i32 %2183 to i64
  store i64 %2205, i64* %RDX.i1068, align 8
  %2206 = shl nsw i64 %2205, 2
  %2207 = add i64 %2180, %2206
  %2208 = add i64 %2164, 36
  store i64 %2208, i64* %3, align 8
  %2209 = inttoptr i64 %2207 to i32*
  %2210 = load i32, i32* %2209, align 4
  %2211 = sext i32 %2210 to i64
  %2212 = sub nsw i64 0, %2211
  %2213 = trunc i64 %2212 to i32
  %2214 = and i64 %2212, 4294967295
  store i64 %2214, i64* %RCX.i1080, align 8
  %2215 = shl i64 %2212, 32
  %2216 = ashr exact i64 %2215, 32
  %2217 = icmp ne i64 %2216, %2212
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %14, align 1
  %2219 = and i32 %2213, 255
  %2220 = tail call i32 @llvm.ctpop.i32(i32 %2219)
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = xor i8 %2222, 1
  store i8 %2223, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2224 = lshr i32 %2213, 31
  %2225 = trunc i32 %2224 to i8
  store i8 %2225, i8* %32, align 1
  store i8 %2218, i8* %38, align 1
  %2226 = add i64 %2135, -52
  %2227 = trunc i64 %2212 to i32
  %2228 = add i64 %2164, 39
  store i64 %2228, i64* %3, align 8
  %2229 = inttoptr i64 %2226 to i32*
  store i32 %2227, i32* %2229, align 4
  %2230 = load i64, i64* %RBP.i, align 8
  %2231 = add i64 %2230, -52
  %2232 = load i64, i64* %3, align 8
  %2233 = add i64 %2232, 4
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2231 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = sext i32 %2235 to i64
  %2237 = mul nsw i64 %2236, 100
  %2238 = trunc i64 %2237 to i32
  %2239 = mul i64 %2236, 429496729600
  %2240 = ashr exact i64 %2239, 32
  %2241 = icmp ne i64 %2240, %2237
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %14, align 1
  %2243 = and i32 %2238, 252
  %2244 = tail call i32 @llvm.ctpop.i32(i32 %2243)
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = xor i8 %2246, 1
  store i8 %2247, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2248 = lshr i32 %2238, 31
  %2249 = trunc i32 %2248 to i8
  store i8 %2249, i8* %32, align 1
  store i8 %2242, i8* %38, align 1
  %2250 = trunc i64 %2237 to i32
  %2251 = sitofp i32 %2250 to double
  %2252 = load double, double* %902, align 1
  %2253 = fdiv double %2251, %2252
  store double %2253, double* %901, align 1
  %2254 = tail call double @llvm.trunc.f64(double %2253)
  %2255 = tail call double @llvm.fabs.f64(double %2254)
  %2256 = fcmp ogt double %2255, 0x41DFFFFFFFC00000
  %2257 = fptosi double %2254 to i32
  %2258 = zext i32 %2257 to i64
  %2259 = select i1 %2256, i64 2147483648, i64 %2258
  store i64 %2259, i64* %RCX.i1080, align 8
  %2260 = trunc i64 %2259 to i32
  %2261 = add i64 %2232, 19
  store i64 %2261, i64* %3, align 8
  store i32 %2260, i32* %2234, align 4
  %2262 = load i64, i64* %3, align 8
  %2263 = add i64 %2262, 12
  store i64 %2263, i64* %3, align 8
  br label %block_.L_41545c

block_.L_415455:                                  ; preds = %block_.L_415409
  %2264 = add i64 %2135, -52
  %2265 = add i64 %2164, 7
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i32*
  store i32 100, i32* %2266, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_41545c

block_.L_41545c:                                  ; preds = %block_.L_415455, %block_415413
  %2267 = phi i64 [ %.pre52, %block_.L_415455 ], [ %2263, %block_415413 ]
  %2268 = load i64, i64* %RBP.i, align 8
  %2269 = add i64 %2268, -20
  %2270 = add i64 %2267, 4
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i32*
  %2272 = load i32, i32* %2271, align 4
  store i8 0, i8* %14, align 1
  %2273 = and i32 %2272, 255
  %2274 = tail call i32 @llvm.ctpop.i32(i32 %2273)
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  %2277 = xor i8 %2276, 1
  store i8 %2277, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2278 = icmp eq i32 %2272, 0
  %2279 = zext i1 %2278 to i8
  store i8 %2279, i8* %29, align 1
  %2280 = lshr i32 %2272, 31
  %2281 = trunc i32 %2280 to i8
  store i8 %2281, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v79 = select i1 %2278, i64 56, i64 10
  %2282 = add i64 %2267, %.v79
  %2283 = add i64 %2282, 10
  store i64 %2283, i64* %3, align 8
  br i1 %2278, label %block_.L_415494, label %block_415466

block_415466:                                     ; preds = %block_.L_41545c
  store i64 ptrtoint (%G__0x456842_type* @G__0x456842 to i64), i64* %RSI.i165, align 8
  %2284 = add i64 %2268, -8
  %2285 = add i64 %2282, 14
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i64*
  %2287 = load i64, i64* %2286, align 8
  store i64 %2287, i64* %RDI.i141, align 8
  %2288 = add i64 %2268, -40
  %2289 = add i64 %2282, 17
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = zext i32 %2291 to i64
  store i64 %2292, i64* %RDX.i1068, align 8
  %2293 = add i64 %2268, -44
  %2294 = add i64 %2282, 20
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i32*
  %2296 = load i32, i32* %2295, align 4
  %2297 = zext i32 %2296 to i64
  store i64 %2297, i64* %RCX.i1080, align 8
  %2298 = add i64 %2268, -48
  %2299 = add i64 %2282, 24
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  %2301 = load i32, i32* %2300, align 4
  %2302 = zext i32 %2301 to i64
  store i64 %2302, i64* %R8.i1074, align 8
  %2303 = add i64 %2268, -52
  %2304 = add i64 %2282, 28
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2303 to i32*
  %2306 = load i32, i32* %2305, align 4
  %2307 = zext i32 %2306 to i64
  store i64 %2307, i64* %R9.i, align 8
  store i8 0, i8* %AL.i984, align 1
  %2308 = add i64 %2282, -81654
  %2309 = add i64 %2282, 35
  %2310 = load i64, i64* %6, align 8
  %2311 = add i64 %2310, -8
  %2312 = inttoptr i64 %2311 to i64*
  store i64 %2309, i64* %2312, align 8
  store i64 %2311, i64* %6, align 8
  store i64 %2308, i64* %3, align 8
  %2313 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.12)
  %2314 = load i64, i64* %RBP.i, align 8
  %2315 = add i64 %2314, -220
  %2316 = load i32, i32* %EAX.i611, align 4
  %2317 = load i64, i64* %3, align 8
  %2318 = add i64 %2317, 6
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2315 to i32*
  store i32 %2316, i32* %2319, align 4
  %2320 = load i64, i64* %3, align 8
  %2321 = add i64 %2320, 38
  store i64 %2321, i64* %3, align 8
  br label %block_.L_4154b5

block_.L_415494:                                  ; preds = %block_.L_41545c
  store i64 ptrtoint (%G__0x45684a_type* @G__0x45684a to i64), i64* %RSI.i165, align 8
  %2322 = add i64 %2268, -8
  %2323 = add i64 %2282, 14
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i64*
  %2325 = load i64, i64* %2324, align 8
  store i64 %2325, i64* %RDI.i141, align 8
  %2326 = add i64 %2268, -40
  %2327 = add i64 %2282, 17
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  %2330 = zext i32 %2329 to i64
  store i64 %2330, i64* %RDX.i1068, align 8
  %2331 = add i64 %2268, -44
  %2332 = add i64 %2282, 20
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2331 to i32*
  %2334 = load i32, i32* %2333, align 4
  %2335 = zext i32 %2334 to i64
  store i64 %2335, i64* %RCX.i1080, align 8
  store i8 0, i8* %AL.i984, align 1
  %2336 = add i64 %2282, -81700
  %2337 = add i64 %2282, 27
  %2338 = load i64, i64* %6, align 8
  %2339 = add i64 %2338, -8
  %2340 = inttoptr i64 %2339 to i64*
  store i64 %2337, i64* %2340, align 8
  store i64 %2339, i64* %6, align 8
  store i64 %2336, i64* %3, align 8
  %2341 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.12)
  %2342 = load i64, i64* %RBP.i, align 8
  %2343 = add i64 %2342, -224
  %2344 = load i32, i32* %EAX.i611, align 4
  %2345 = load i64, i64* %3, align 8
  %2346 = add i64 %2345, 6
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2343 to i32*
  store i32 %2344, i32* %2347, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_4154b5

block_.L_4154b5:                                  ; preds = %block_.L_415494, %block_415466
  %2348 = phi i64 [ %.pre53, %block_.L_415494 ], [ %2321, %block_415466 ]
  %MEMORY.18 = phi %struct.Memory* [ %2341, %block_.L_415494 ], [ %2313, %block_415466 ]
  %2349 = load i64, i64* %RBP.i, align 8
  %2350 = add i64 %2349, -24
  %2351 = add i64 %2348, 8
  store i64 %2351, i64* %3, align 8
  %2352 = inttoptr i64 %2350 to i32*
  %2353 = load i32, i32* %2352, align 4
  %2354 = add i32 %2353, 1
  %2355 = zext i32 %2354 to i64
  store i64 %2355, i64* %RAX.i57, align 8
  %2356 = icmp eq i32 %2353, -1
  %2357 = icmp eq i32 %2354, 0
  %2358 = or i1 %2356, %2357
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %14, align 1
  %2360 = and i32 %2354, 255
  %2361 = tail call i32 @llvm.ctpop.i32(i32 %2360)
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  %2364 = xor i8 %2363, 1
  store i8 %2364, i8* %21, align 1
  %2365 = xor i32 %2354, %2353
  %2366 = lshr i32 %2365, 4
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  store i8 %2368, i8* %26, align 1
  %2369 = zext i1 %2357 to i8
  store i8 %2369, i8* %29, align 1
  %2370 = lshr i32 %2354, 31
  %2371 = trunc i32 %2370 to i8
  store i8 %2371, i8* %32, align 1
  %2372 = lshr i32 %2353, 31
  %2373 = xor i32 %2370, %2372
  %2374 = add nuw nsw i32 %2373, %2370
  %2375 = icmp eq i32 %2374, 2
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %38, align 1
  %2377 = add i64 %2348, 14
  store i64 %2377, i64* %3, align 8
  store i32 %2354, i32* %2352, align 4
  %2378 = load i64, i64* %3, align 8
  %2379 = add i64 %2378, -937
  store i64 %2379, i64* %3, align 8
  br label %block_.L_41511a

block_.L_4154c8:                                  ; preds = %block_.L_41511a
  store i64 ptrtoint (%G__0x456853_type* @G__0x456853 to i64), i64* %RSI.i165, align 8
  %2380 = add i64 %904, -8
  %2381 = add i64 %944, 14
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i64*
  %2383 = load i64, i64* %2382, align 8
  store i64 %2383, i64* %RDI.i141, align 8
  store i8 0, i8* %AL.i984, align 1
  %2384 = add i64 %944, -81752
  %2385 = add i64 %944, 21
  %2386 = load i64, i64* %6, align 8
  %2387 = add i64 %2386, -8
  %2388 = inttoptr i64 %2387 to i64*
  store i64 %2385, i64* %2388, align 8
  store i64 %2387, i64* %6, align 8
  store i64 %2384, i64* %3, align 8
  %2389 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.10)
  %2390 = load i64, i64* %RBP.i, align 8
  %2391 = add i64 %2390, -28
  %2392 = load i64, i64* %3, align 8
  %2393 = add i64 %2392, 7
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2391 to i32*
  store i32 0, i32* %2394, align 4
  %2395 = load i64, i64* %RBP.i, align 8
  %2396 = add i64 %2395, -228
  %2397 = load i32, i32* %EAX.i611, align 4
  %2398 = load i64, i64* %3, align 8
  %2399 = add i64 %2398, 6
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2396 to i32*
  store i32 %2397, i32* %2400, align 4
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2402 = bitcast %union.VectorReg* %2401 to i8*
  %2403 = bitcast %union.VectorReg* %2401 to i32*
  %2404 = getelementptr inbounds i8, i8* %2402, i64 4
  %2405 = bitcast i8* %2404 to i32*
  %2406 = bitcast i64* %898 to i32*
  %2407 = getelementptr inbounds i8, i8* %2402, i64 12
  %2408 = bitcast i8* %2407 to i32*
  %2409 = bitcast %union.VectorReg* %2401 to <2 x float>*
  %2410 = bitcast %union.VectorReg* %2401 to float*
  %2411 = bitcast i8* %2404 to float*
  %2412 = bitcast i64* %898 to float*
  %2413 = bitcast i8* %2407 to float*
  %2414 = bitcast i64* %898 to <2 x i32>*
  %2415 = bitcast %union.VectorReg* %2401 to <2 x i32>*
  %.pre56 = load i64, i64* %3, align 8
  %2416 = bitcast %union.VectorReg* %2401 to <4 x i32>*
  br label %block_.L_4154ea

block_.L_4154ea:                                  ; preds = %block_.L_415550, %block_.L_4154c8
  %2417 = phi i64 [ %.pre56, %block_.L_4154c8 ], [ %2661, %block_.L_415550 ]
  %MEMORY.19 = phi %struct.Memory* [ %2389, %block_.L_4154c8 ], [ %2623, %block_.L_415550 ]
  %2418 = load i64, i64* %RBP.i, align 8
  %2419 = add i64 %2418, -28
  %2420 = add i64 %2417, 3
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i32*
  %2422 = load i32, i32* %2421, align 4
  %2423 = zext i32 %2422 to i64
  store i64 %2423, i64* %RAX.i57, align 8
  %2424 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %2425 = sub i32 %2422, %2424
  %2426 = icmp ult i32 %2422, %2424
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %14, align 1
  %2428 = and i32 %2425, 255
  %2429 = tail call i32 @llvm.ctpop.i32(i32 %2428)
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  store i8 %2432, i8* %21, align 1
  %2433 = xor i32 %2424, %2422
  %2434 = xor i32 %2433, %2425
  %2435 = lshr i32 %2434, 4
  %2436 = trunc i32 %2435 to i8
  %2437 = and i8 %2436, 1
  store i8 %2437, i8* %26, align 1
  %2438 = icmp eq i32 %2425, 0
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %29, align 1
  %2440 = lshr i32 %2425, 31
  %2441 = trunc i32 %2440 to i8
  store i8 %2441, i8* %32, align 1
  %2442 = lshr i32 %2422, 31
  %2443 = lshr i32 %2424, 31
  %2444 = xor i32 %2443, %2442
  %2445 = xor i32 %2440, %2442
  %2446 = add nuw nsw i32 %2445, %2444
  %2447 = icmp eq i32 %2446, 2
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %38, align 1
  %2449 = icmp ne i8 %2441, 0
  %2450 = xor i1 %2449, %2447
  %.v70 = select i1 %2450, i64 16, i64 167
  %2451 = add i64 %2417, %.v70
  store i64 %2451, i64* %3, align 8
  br i1 %2450, label %block_4154fa, label %block_.L_415591

block_4154fa:                                     ; preds = %block_.L_4154ea
  store <4 x i32> zeroinitializer, <4 x i32>* %2416, align 1
  %2452 = add i64 %2418, -36
  %2453 = add i64 %2451, 8
  store i64 %2453, i64* %3, align 8
  %2454 = load <2 x float>, <2 x float>* %2409, align 1
  %2455 = extractelement <2 x float> %2454, i32 0
  %2456 = inttoptr i64 %2452 to float*
  store float %2455, float* %2456, align 4
  %2457 = load i64, i64* %RBP.i, align 8
  %2458 = add i64 %2457, -24
  %2459 = load i64, i64* %3, align 8
  %2460 = add i64 %2459, 7
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2458 to i32*
  store i32 1, i32* %2461, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_415509

block_.L_415509:                                  ; preds = %block_41551c, %block_4154fa
  %2462 = phi i64 [ %2574, %block_41551c ], [ %.pre58, %block_4154fa ]
  %2463 = load i64, i64* %RBP.i, align 8
  %2464 = add i64 %2463, -24
  %2465 = add i64 %2462, 3
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = zext i32 %2467 to i64
  store i64 %2468, i64* %RAX.i57, align 8
  %2469 = add i64 %2463, -16
  %2470 = add i64 %2462, 7
  store i64 %2470, i64* %3, align 8
  %2471 = inttoptr i64 %2469 to i64*
  %2472 = load i64, i64* %2471, align 8
  store i64 %2472, i64* %RCX.i1080, align 8
  %2473 = add i64 %2472, 136
  %2474 = add i64 %2462, 13
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i32*
  %2476 = load i32, i32* %2475, align 4
  %2477 = sub i32 %2467, %2476
  %2478 = icmp ult i32 %2467, %2476
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %14, align 1
  %2480 = and i32 %2477, 255
  %2481 = tail call i32 @llvm.ctpop.i32(i32 %2480)
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  %2484 = xor i8 %2483, 1
  store i8 %2484, i8* %21, align 1
  %2485 = xor i32 %2476, %2467
  %2486 = xor i32 %2485, %2477
  %2487 = lshr i32 %2486, 4
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  store i8 %2489, i8* %26, align 1
  %2490 = icmp eq i32 %2477, 0
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %29, align 1
  %2492 = lshr i32 %2477, 31
  %2493 = trunc i32 %2492 to i8
  store i8 %2493, i8* %32, align 1
  %2494 = lshr i32 %2467, 31
  %2495 = lshr i32 %2476, 31
  %2496 = xor i32 %2495, %2494
  %2497 = xor i32 %2492, %2494
  %2498 = add nuw nsw i32 %2497, %2496
  %2499 = icmp eq i32 %2498, 2
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %38, align 1
  %2501 = icmp ne i8 %2493, 0
  %2502 = xor i1 %2501, %2499
  %.demorgan61 = or i1 %2490, %2502
  %.v72 = select i1 %.demorgan61, i64 19, i64 71
  %2503 = add i64 %2462, %.v72
  store i64 %2503, i64* %3, align 8
  br i1 %.demorgan61, label %block_41551c, label %block_.L_415550

block_41551c:                                     ; preds = %block_.L_415509
  %2504 = add i64 %2503, 4
  store i64 %2504, i64* %3, align 8
  %2505 = load i64, i64* %2471, align 8
  store i64 %2505, i64* %RAX.i57, align 8
  %2506 = add i64 %2505, 152
  %2507 = add i64 %2503, 11
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i64*
  %2509 = load i64, i64* %2508, align 8
  store i64 %2509, i64* %RAX.i57, align 8
  %2510 = add i64 %2503, 15
  store i64 %2510, i64* %3, align 8
  %2511 = load i32, i32* %2466, align 4
  %2512 = sext i32 %2511 to i64
  store i64 %2512, i64* %RCX.i1080, align 8
  %2513 = shl nsw i64 %2512, 3
  %2514 = add i64 %2513, %2509
  %2515 = add i64 %2503, 19
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2514 to i64*
  %2517 = load i64, i64* %2516, align 8
  store i64 %2517, i64* %RAX.i57, align 8
  %2518 = add i64 %2463, -28
  %2519 = add i64 %2503, 23
  store i64 %2519, i64* %3, align 8
  %2520 = inttoptr i64 %2518 to i32*
  %2521 = load i32, i32* %2520, align 4
  %2522 = sext i32 %2521 to i64
  store i64 %2522, i64* %RCX.i1080, align 8
  %2523 = shl nsw i64 %2522, 2
  %2524 = add i64 %2523, %2517
  %2525 = add i64 %2503, 28
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i32*
  %2527 = load i32, i32* %2526, align 4
  store i32 %2527, i32* %2403, align 1
  store float 0.000000e+00, float* %2411, align 1
  store float 0.000000e+00, float* %2412, align 1
  store float 0.000000e+00, float* %2413, align 1
  %2528 = add i64 %2463, -36
  %2529 = add i64 %2503, 33
  store i64 %2529, i64* %3, align 8
  %2530 = load <2 x float>, <2 x float>* %2409, align 1
  %2531 = load <2 x i32>, <2 x i32>* %2414, align 1
  %2532 = inttoptr i64 %2528 to float*
  %2533 = load float, float* %2532, align 4
  %2534 = extractelement <2 x float> %2530, i32 0
  %2535 = fadd float %2534, %2533
  store float %2535, float* %2410, align 1
  %2536 = bitcast <2 x float> %2530 to <2 x i32>
  %2537 = extractelement <2 x i32> %2536, i32 1
  store i32 %2537, i32* %2405, align 1
  %2538 = extractelement <2 x i32> %2531, i32 0
  store i32 %2538, i32* %2406, align 1
  %2539 = extractelement <2 x i32> %2531, i32 1
  store i32 %2539, i32* %2408, align 1
  %2540 = add i64 %2503, 38
  store i64 %2540, i64* %3, align 8
  %2541 = load <2 x float>, <2 x float>* %2409, align 1
  %2542 = extractelement <2 x float> %2541, i32 0
  store float %2542, float* %2532, align 4
  %2543 = load i64, i64* %RBP.i, align 8
  %2544 = add i64 %2543, -24
  %2545 = load i64, i64* %3, align 8
  %2546 = add i64 %2545, 3
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2544 to i32*
  %2548 = load i32, i32* %2547, align 4
  %2549 = add i32 %2548, 1
  %2550 = zext i32 %2549 to i64
  store i64 %2550, i64* %RAX.i57, align 8
  %2551 = icmp eq i32 %2548, -1
  %2552 = icmp eq i32 %2549, 0
  %2553 = or i1 %2551, %2552
  %2554 = zext i1 %2553 to i8
  store i8 %2554, i8* %14, align 1
  %2555 = and i32 %2549, 255
  %2556 = tail call i32 @llvm.ctpop.i32(i32 %2555)
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  %2559 = xor i8 %2558, 1
  store i8 %2559, i8* %21, align 1
  %2560 = xor i32 %2549, %2548
  %2561 = lshr i32 %2560, 4
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  store i8 %2563, i8* %26, align 1
  %2564 = zext i1 %2552 to i8
  store i8 %2564, i8* %29, align 1
  %2565 = lshr i32 %2549, 31
  %2566 = trunc i32 %2565 to i8
  store i8 %2566, i8* %32, align 1
  %2567 = lshr i32 %2548, 31
  %2568 = xor i32 %2565, %2567
  %2569 = add nuw nsw i32 %2568, %2565
  %2570 = icmp eq i32 %2569, 2
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %38, align 1
  %2572 = add i64 %2545, 9
  store i64 %2572, i64* %3, align 8
  store i32 %2549, i32* %2547, align 4
  %2573 = load i64, i64* %3, align 8
  %2574 = add i64 %2573, -66
  store i64 %2574, i64* %3, align 8
  br label %block_.L_415509

block_.L_415550:                                  ; preds = %block_.L_415509
  store i64 ptrtoint (%G__0x457b32_type* @G__0x457b32 to i64), i64* %RSI.i165, align 8
  %2575 = add i64 %2503, 14
  store i64 %2575, i64* %3, align 8
  %2576 = load i64, i64* %2471, align 8
  store i64 %2576, i64* %RAX.i57, align 8
  %2577 = add i64 %2576, 56
  %2578 = add i64 %2503, 19
  store i64 %2578, i64* %3, align 8
  %2579 = load <2 x i32>, <2 x i32>* %2415, align 1
  %2580 = load <2 x i32>, <2 x i32>* %2414, align 1
  %2581 = inttoptr i64 %2577 to i32*
  %2582 = load i32, i32* %2581, align 4
  %2583 = sitofp i32 %2582 to float
  store float %2583, float* %2410, align 1
  %2584 = extractelement <2 x i32> %2579, i32 1
  store i32 %2584, i32* %2405, align 1
  %2585 = extractelement <2 x i32> %2580, i32 0
  store i32 %2585, i32* %2406, align 1
  %2586 = extractelement <2 x i32> %2580, i32 1
  store i32 %2586, i32* %2408, align 1
  %2587 = add i64 %2463, -36
  %2588 = add i64 %2503, 24
  store i64 %2588, i64* %3, align 8
  %2589 = load <2 x float>, <2 x float>* %2409, align 1
  %2590 = load <2 x i32>, <2 x i32>* %2414, align 1
  %2591 = inttoptr i64 %2587 to float*
  %2592 = load float, float* %2591, align 4
  %2593 = extractelement <2 x float> %2589, i32 0
  %2594 = fmul float %2593, %2592
  store float %2594, float* %2410, align 1
  %2595 = bitcast <2 x float> %2589 to <2 x i32>
  %2596 = extractelement <2 x i32> %2595, i32 1
  store i32 %2596, i32* %2405, align 1
  %2597 = extractelement <2 x i32> %2590, i32 0
  store i32 %2597, i32* %2406, align 1
  %2598 = extractelement <2 x i32> %2590, i32 1
  store i32 %2598, i32* %2408, align 1
  %2599 = add i64 %2503, 29
  store i64 %2599, i64* %3, align 8
  %2600 = load <2 x float>, <2 x float>* %2409, align 1
  %2601 = extractelement <2 x float> %2600, i32 0
  store float %2601, float* %2591, align 4
  %2602 = load i64, i64* %RBP.i, align 8
  %2603 = add i64 %2602, -8
  %2604 = load i64, i64* %3, align 8
  %2605 = add i64 %2604, 4
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2603 to i64*
  %2607 = load i64, i64* %2606, align 8
  store i64 %2607, i64* %RDI.i141, align 8
  %2608 = add i64 %2602, -36
  %2609 = add i64 %2604, 9
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to float*
  %2611 = load float, float* %2610, align 4
  %2612 = tail call float @llvm.trunc.f32(float %2611)
  %2613 = tail call float @llvm.fabs.f32(float %2612)
  %2614 = fcmp ogt float %2613, 0x41E0000000000000
  %2615 = fptosi float %2612 to i32
  %2616 = zext i32 %2615 to i64
  %2617 = select i1 %2614, i64 2147483648, i64 %2616
  store i64 %2617, i64* %RDX.i1068, align 8
  store i8 0, i8* %AL.i984, align 1
  %2618 = add i64 %2604, -81917
  %2619 = add i64 %2604, 16
  %2620 = load i64, i64* %6, align 8
  %2621 = add i64 %2620, -8
  %2622 = inttoptr i64 %2621 to i64*
  store i64 %2619, i64* %2622, align 8
  store i64 %2621, i64* %6, align 8
  store i64 %2618, i64* %3, align 8
  %2623 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.19)
  %2624 = load i64, i64* %RBP.i, align 8
  %2625 = add i64 %2624, -232
  %2626 = load i32, i32* %EAX.i611, align 4
  %2627 = load i64, i64* %3, align 8
  %2628 = add i64 %2627, 6
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2625 to i32*
  store i32 %2626, i32* %2629, align 4
  %2630 = load i64, i64* %RBP.i, align 8
  %2631 = add i64 %2630, -28
  %2632 = load i64, i64* %3, align 8
  %2633 = add i64 %2632, 3
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2631 to i32*
  %2635 = load i32, i32* %2634, align 4
  %2636 = add i32 %2635, 1
  %2637 = zext i32 %2636 to i64
  store i64 %2637, i64* %RAX.i57, align 8
  %2638 = icmp eq i32 %2635, -1
  %2639 = icmp eq i32 %2636, 0
  %2640 = or i1 %2638, %2639
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %14, align 1
  %2642 = and i32 %2636, 255
  %2643 = tail call i32 @llvm.ctpop.i32(i32 %2642)
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = xor i8 %2645, 1
  store i8 %2646, i8* %21, align 1
  %2647 = xor i32 %2636, %2635
  %2648 = lshr i32 %2647, 4
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  store i8 %2650, i8* %26, align 1
  %2651 = zext i1 %2639 to i8
  store i8 %2651, i8* %29, align 1
  %2652 = lshr i32 %2636, 31
  %2653 = trunc i32 %2652 to i8
  store i8 %2653, i8* %32, align 1
  %2654 = lshr i32 %2635, 31
  %2655 = xor i32 %2652, %2654
  %2656 = add nuw nsw i32 %2655, %2652
  %2657 = icmp eq i32 %2656, 2
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %38, align 1
  %2659 = add i64 %2632, 9
  store i64 %2659, i64* %3, align 8
  store i32 %2636, i32* %2634, align 4
  %2660 = load i64, i64* %3, align 8
  %2661 = add i64 %2660, -162
  store i64 %2661, i64* %3, align 8
  br label %block_.L_4154ea

block_.L_415591:                                  ; preds = %block_.L_4154ea
  %2662 = add i64 %2451, 5
  br label %block_.L_415596

block_.L_415596:                                  ; preds = %block_4155a6, %block_.L_415591
  %2663 = phi i64 [ %2418, %block_.L_415591 ], [ %.pre57, %block_4155a6 ]
  %storemerge28 = phi i64 [ %2662, %block_.L_415591 ], [ %2745, %block_4155a6 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.19, %block_.L_415591 ], [ %2707, %block_4155a6 ]
  %2664 = add i64 %2663, -28
  %2665 = add i64 %storemerge28, 3
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i32*
  %2667 = load i32, i32* %2666, align 4
  %2668 = zext i32 %2667 to i64
  store i64 %2668, i64* %RAX.i57, align 8
  %2669 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
  %2670 = sub i32 %2667, %2669
  %2671 = icmp ult i32 %2667, %2669
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %14, align 1
  %2673 = and i32 %2670, 255
  %2674 = tail call i32 @llvm.ctpop.i32(i32 %2673)
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  %2677 = xor i8 %2676, 1
  store i8 %2677, i8* %21, align 1
  %2678 = xor i32 %2669, %2667
  %2679 = xor i32 %2678, %2670
  %2680 = lshr i32 %2679, 4
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  store i8 %2682, i8* %26, align 1
  %2683 = icmp eq i32 %2670, 0
  %2684 = zext i1 %2683 to i8
  store i8 %2684, i8* %29, align 1
  %2685 = lshr i32 %2670, 31
  %2686 = trunc i32 %2685 to i8
  store i8 %2686, i8* %32, align 1
  %2687 = lshr i32 %2667, 31
  %2688 = lshr i32 %2669, 31
  %2689 = xor i32 %2688, %2687
  %2690 = xor i32 %2685, %2687
  %2691 = add nuw nsw i32 %2690, %2689
  %2692 = icmp eq i32 %2691, 2
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %38, align 1
  %2694 = icmp ne i8 %2686, 0
  %2695 = xor i1 %2694, %2692
  %.v71 = select i1 %2695, i64 16, i64 59
  %2696 = add i64 %storemerge28, %.v71
  %2697 = add i64 %2696, 10
  store i64 %2697, i64* %3, align 8
  br i1 %2695, label %block_4155a6, label %block_.L_4155d1

block_4155a6:                                     ; preds = %block_.L_415596
  store i64 ptrtoint (%G__0x457b32_type* @G__0x457b32 to i64), i64* %RSI.i165, align 8
  store i64 0, i64* %RDX.i1068, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2698 = add i64 %2663, -8
  %2699 = add i64 %2696, 16
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i64*
  %2701 = load i64, i64* %2700, align 8
  store i64 %2701, i64* %RDI.i141, align 8
  store i8 0, i8* %AL.i984, align 1
  %2702 = add i64 %2696, -81974
  %2703 = add i64 %2696, 23
  %2704 = load i64, i64* %6, align 8
  %2705 = add i64 %2704, -8
  %2706 = inttoptr i64 %2705 to i64*
  store i64 %2703, i64* %2706, align 8
  store i64 %2705, i64* %6, align 8
  store i64 %2702, i64* %3, align 8
  %2707 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.21)
  %2708 = load i64, i64* %RBP.i, align 8
  %2709 = add i64 %2708, -236
  %2710 = load i32, i32* %EAX.i611, align 4
  %2711 = load i64, i64* %3, align 8
  %2712 = add i64 %2711, 6
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2709 to i32*
  store i32 %2710, i32* %2713, align 4
  %2714 = load i64, i64* %RBP.i, align 8
  %2715 = add i64 %2714, -28
  %2716 = load i64, i64* %3, align 8
  %2717 = add i64 %2716, 3
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2715 to i32*
  %2719 = load i32, i32* %2718, align 4
  %2720 = add i32 %2719, 1
  %2721 = zext i32 %2720 to i64
  store i64 %2721, i64* %RAX.i57, align 8
  %2722 = icmp eq i32 %2719, -1
  %2723 = icmp eq i32 %2720, 0
  %2724 = or i1 %2722, %2723
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %14, align 1
  %2726 = and i32 %2720, 255
  %2727 = tail call i32 @llvm.ctpop.i32(i32 %2726)
  %2728 = trunc i32 %2727 to i8
  %2729 = and i8 %2728, 1
  %2730 = xor i8 %2729, 1
  store i8 %2730, i8* %21, align 1
  %2731 = xor i32 %2720, %2719
  %2732 = lshr i32 %2731, 4
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  store i8 %2734, i8* %26, align 1
  %2735 = zext i1 %2723 to i8
  store i8 %2735, i8* %29, align 1
  %2736 = lshr i32 %2720, 31
  %2737 = trunc i32 %2736 to i8
  store i8 %2737, i8* %32, align 1
  %2738 = lshr i32 %2719, 31
  %2739 = xor i32 %2736, %2738
  %2740 = add nuw nsw i32 %2739, %2736
  %2741 = icmp eq i32 %2740, 2
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %38, align 1
  %2743 = add i64 %2716, 9
  store i64 %2743, i64* %3, align 8
  store i32 %2720, i32* %2718, align 4
  %2744 = load i64, i64* %3, align 8
  %2745 = add i64 %2744, -54
  %2746 = add i64 %2744, 5
  store i64 %2746, i64* %3, align 8
  %.pre57 = load i64, i64* %RBP.i, align 8
  br label %block_.L_415596

block_.L_4155d1:                                  ; preds = %block_.L_415596
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i165, align 8
  %2747 = add i64 %2663, -8
  %2748 = add i64 %2696, 14
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i64*
  %2750 = load i64, i64* %2749, align 8
  store i64 %2750, i64* %RDI.i141, align 8
  store i8 0, i8* %AL.i984, align 1
  %2751 = add i64 %2696, -82017
  %2752 = add i64 %2696, 21
  %2753 = load i64, i64* %6, align 8
  %2754 = add i64 %2753, -8
  %2755 = inttoptr i64 %2754 to i64*
  store i64 %2752, i64* %2755, align 8
  store i64 %2754, i64* %6, align 8
  store i64 %2751, i64* %3, align 8
  %2756 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.21)
  %2757 = load i64, i64* %RBP.i, align 8
  %2758 = add i64 %2757, -240
  %2759 = load i32, i32* %EAX.i611, align 4
  %2760 = load i64, i64* %3, align 8
  %2761 = add i64 %2760, 6
  store i64 %2761, i64* %3, align 8
  %2762 = inttoptr i64 %2758 to i32*
  store i32 %2759, i32* %2762, align 4
  %2763 = load i64, i64* %6, align 8
  %2764 = load i64, i64* %3, align 8
  %2765 = add i64 %2763, 256
  store i64 %2765, i64* %6, align 8
  %2766 = icmp ugt i64 %2763, -257
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %14, align 1
  %2768 = trunc i64 %2765 to i32
  %2769 = and i32 %2768, 255
  %2770 = tail call i32 @llvm.ctpop.i32(i32 %2769)
  %2771 = trunc i32 %2770 to i8
  %2772 = and i8 %2771, 1
  %2773 = xor i8 %2772, 1
  store i8 %2773, i8* %21, align 1
  %2774 = xor i64 %2765, %2763
  %2775 = lshr i64 %2774, 4
  %2776 = trunc i64 %2775 to i8
  %2777 = and i8 %2776, 1
  store i8 %2777, i8* %26, align 1
  %2778 = icmp eq i64 %2765, 0
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %29, align 1
  %2780 = lshr i64 %2765, 63
  %2781 = trunc i64 %2780 to i8
  store i8 %2781, i8* %32, align 1
  %2782 = lshr i64 %2763, 63
  %2783 = xor i64 %2780, %2782
  %2784 = add nuw nsw i64 %2783, %2780
  %2785 = icmp eq i64 %2784, 2
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %38, align 1
  %2787 = add i64 %2764, 8
  store i64 %2787, i64* %3, align 8
  %2788 = add i64 %2763, 264
  %2789 = inttoptr i64 %2765 to i64*
  %2790 = load i64, i64* %2789, align 8
  store i64 %2790, i64* %RBP.i, align 8
  store i64 %2788, i64* %6, align 8
  %2791 = add i64 %2764, 9
  store i64 %2791, i64* %3, align 8
  %2792 = inttoptr i64 %2788 to i64*
  %2793 = load i64, i64* %2792, align 8
  store i64 %2793, i64* %3, align 8
  %2794 = add i64 %2763, 272
  store i64 %2794, i64* %6, align 8
  ret %struct.Memory* %2756
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
define %struct.Memory* @routine_subq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 256
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
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.P7Logoddsify(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3e8__0x88__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1000
  %10 = icmp ult i32 %8, 1000
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
define %struct.Memory* @routine_jle_.L_414d1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_414d1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456453___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456453_type* @G__0x456453 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq___rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.Warn(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__0x676d90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
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
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_414d47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4564a4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4564a4_type* @G__0x4564a4 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_414d88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x676d90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %6 = add i32 %5, -2
  %7 = icmp ult i32 %5, 2
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
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_414d72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4564b6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4564b6_type* @G__0x4564b6 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_414d83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4564c8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4564c8_type* @G__0x4564c8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Die(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_414db3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4564fe___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4564fe_type* @G__0x4564fe to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_414dde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_414dd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456509___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456509_type* @G__0x456509 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x88__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq___rax____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_andl__0x200___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 512
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 9
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
define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_414e28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414e3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458d45___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x1c8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_andl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_414e6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414e7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456517___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456517_type* @G__0x456517 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45653b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45653b_type* @G__0x45653b to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
define %struct.Memory* @routine_je_.L_414fa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45653f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45653f_type* @G__0x45653f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456583___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456583_type* @G__0x456583 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x4565ad___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4565ad_type* @G__0x4565ad to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4565fe___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4565fe_type* @G__0x4565fe to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456657___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456657_type* @G__0x456657 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456697___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456697_type* @G__0x456697 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4566e3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4566e3_type* @G__0x4566e3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45672d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45672d_type* @G__0x45672d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415067(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45677c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45677c_type* @G__0x45677c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4567c0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4567c0_type* @G__0x4567c0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4567fd___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4567fd_type* @G__0x4567fd to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_cmpl_0x676ffc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_4150ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456802___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456802_type* @G__0x456802 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x676fe0___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6778848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_415089(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4150f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45680a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45680a_type* @G__0x45680a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415113(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456826___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456826_type* @G__0x456826 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 136
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
define %struct.Memory* @routine_jg_.L_4154c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_41517a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_41517a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456836___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456836_type* @G__0x456836 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x677060___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FArgMax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45683c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45683c_type* @G__0x45683c to i64), i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x676fe0___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6778848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41526c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x88__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 136
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
define %struct.Memory* @routine_jge_.L_415225(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__0x457b32___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b32_type* @G__0x457b32 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3f5e9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3f5e9__rip__type* @G_0x3f5e9__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x64__MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 100
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 429496729600
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4151ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_41530a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3f5c2__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3f5c2__rip__type* @G_0x3f5c2__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0xffffffff___ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  %8 = sub nsw i64 0, %7
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967295
  store i64 %10, i64* %RCX, align 8
  %11 = shl i64 %8, 32
  %12 = ashr exact i64 %11, 32
  %13 = icmp ne i64 %12, %8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x64__MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 100
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 429496729600
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %ECX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_jmpq_.L_415311(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_41535d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3f4fd__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3f4fd__rip__type* @G_0x3f4fd__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0xffffffff____rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sub nsw i64 0, %11
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
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
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x64__MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 100
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 429496729600
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415364(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_415402(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3f4ca__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3f4ca__rip__type* @G_0x3f4ca__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x64__MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 100
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 429496729600
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415409(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_415455(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3f405__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3f405__rip__type* @G_0x3f405__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x64__MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 100
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 429496729600
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41545c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_415494(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x456842___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456842_type* @G__0x456842 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4154b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45684a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45684a_type* @G__0x45684a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4154ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41511a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456853___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456853_type* @G__0x456853 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_415591(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_jg_.L_415550(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
  %17 = fadd float %16, %15
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415509(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x38__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 56
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
  %17 = fmul float %16, %15
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
define %struct.Memory* @routine_cvttss2si_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to float*
  %8 = load float, float* %7, align 4
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %10, 0x41E0000000000000
  %12 = fptosi float %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4154ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415596(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4155d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x100___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 256
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -257
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
