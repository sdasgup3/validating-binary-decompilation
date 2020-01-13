; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x603a94_type = type <{ [4 x i8] }>
%G_0x610250_type = type <{ [4 x i8] }>
%G_0x610254_type = type <{ [4 x i8] }>
%G_0x610258_type = type <{ [4 x i8] }>
%G_0x61025c_type = type <{ [4 x i8] }>
%G_0x610260_type = type <{ [4 x i8] }>
%G_0x610264_type = type <{ [4 x i8] }>
%G_0x610268_type = type <{ [4 x i8] }>
%G_0x61026c_type = type <{ [4 x i8] }>
%G_0x610270_type = type <{ [4 x i8] }>
%G_0x610274_type = type <{ [4 x i8] }>
%G_0x610278_type = type <{ [4 x i8] }>
%G_0x61027c_type = type <{ [4 x i8] }>
%G_0x610280_type = type <{ [4 x i8] }>
%G_0x6191c4_type = type <{ [4 x i8] }>
%G_0x6191e0_type = type <{ [4 x i8] }>
%G_0x6191e4_type = type <{ [4 x i8] }>
%G_0x6191e8_type = type <{ [4 x i8] }>
%G_0x6191ec_type = type <{ [4 x i8] }>
%G_0x6191f0_type = type <{ [4 x i8] }>
%G_0x6191f4_type = type <{ [4 x i8] }>
%G_0x6191f8_type = type <{ [4 x i8] }>
%G_0x6191fc_type = type <{ [4 x i8] }>
%G_0x619200_type = type <{ [4 x i8] }>
%G_0x619204_type = type <{ [4 x i8] }>
%G_0x619208_type = type <{ [4 x i8] }>
%G_0x61920c_type = type <{ [4 x i8] }>
%G_0x619210_type = type <{ [4 x i8] }>
%G_0x619214_type = type <{ [4 x i8] }>
%G_0x619218_type = type <{ [4 x i8] }>
%G_0x61921c_type = type <{ [4 x i8] }>
%G_0x619220_type = type <{ [4 x i8] }>
%G__0x401344_type = type <{ [8 x i8] }>
%G__0x401356_type = type <{ [8 x i8] }>
%G__0x401369_type = type <{ [8 x i8] }>
%G__0x40137c_type = type <{ [8 x i8] }>
%G__0x603aa0_type = type <{ [8 x i8] }>
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
@G_0x603a94 = local_unnamed_addr global %G_0x603a94_type zeroinitializer
@G_0x610250 = local_unnamed_addr global %G_0x610250_type zeroinitializer
@G_0x610254 = local_unnamed_addr global %G_0x610254_type zeroinitializer
@G_0x610258 = local_unnamed_addr global %G_0x610258_type zeroinitializer
@G_0x61025c = local_unnamed_addr global %G_0x61025c_type zeroinitializer
@G_0x610260 = local_unnamed_addr global %G_0x610260_type zeroinitializer
@G_0x610264 = local_unnamed_addr global %G_0x610264_type zeroinitializer
@G_0x610268 = local_unnamed_addr global %G_0x610268_type zeroinitializer
@G_0x61026c = local_unnamed_addr global %G_0x61026c_type zeroinitializer
@G_0x610270 = local_unnamed_addr global %G_0x610270_type zeroinitializer
@G_0x610274 = local_unnamed_addr global %G_0x610274_type zeroinitializer
@G_0x610278 = local_unnamed_addr global %G_0x610278_type zeroinitializer
@G_0x61027c = local_unnamed_addr global %G_0x61027c_type zeroinitializer
@G_0x610280 = local_unnamed_addr global %G_0x610280_type zeroinitializer
@G_0x6191c4 = local_unnamed_addr global %G_0x6191c4_type zeroinitializer
@G_0x6191e0 = local_unnamed_addr global %G_0x6191e0_type zeroinitializer
@G_0x6191e4 = local_unnamed_addr global %G_0x6191e4_type zeroinitializer
@G_0x6191e8 = local_unnamed_addr global %G_0x6191e8_type zeroinitializer
@G_0x6191ec = local_unnamed_addr global %G_0x6191ec_type zeroinitializer
@G_0x6191f0 = local_unnamed_addr global %G_0x6191f0_type zeroinitializer
@G_0x6191f4 = local_unnamed_addr global %G_0x6191f4_type zeroinitializer
@G_0x6191f8 = local_unnamed_addr global %G_0x6191f8_type zeroinitializer
@G_0x6191fc = local_unnamed_addr global %G_0x6191fc_type zeroinitializer
@G_0x619200 = local_unnamed_addr global %G_0x619200_type zeroinitializer
@G_0x619204 = local_unnamed_addr global %G_0x619204_type zeroinitializer
@G_0x619208 = local_unnamed_addr global %G_0x619208_type zeroinitializer
@G_0x61920c = local_unnamed_addr global %G_0x61920c_type zeroinitializer
@G_0x619210 = local_unnamed_addr global %G_0x619210_type zeroinitializer
@G_0x619214 = local_unnamed_addr global %G_0x619214_type zeroinitializer
@G_0x619218 = local_unnamed_addr global %G_0x619218_type zeroinitializer
@G_0x61921c = local_unnamed_addr global %G_0x61921c_type zeroinitializer
@G_0x619220 = local_unnamed_addr global %G_0x619220_type zeroinitializer
@G__0x401344 = global %G__0x401344_type zeroinitializer
@G__0x401356 = global %G__0x401356_type zeroinitializer
@G__0x401369 = global %G__0x401369_type zeroinitializer
@G__0x40137c = global %G__0x40137c_type zeroinitializer
@G__0x603aa0 = global %G__0x603aa0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400550.Fit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005e0.Place(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400770.Trial(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Puzzle(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %40 = add i64 %7, -24
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1121 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %EAX.i1111 = bitcast %union.anon* %43 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40084f

block_.L_40084f:                                  ; preds = %block_40085c, %entry
  %44 = phi i64 [ %113, %block_40085c ], [ %.pre, %entry ]
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = add i64 %44, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, -511
  %51 = icmp ult i32 %49, 511
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %14, align 1
  %53 = and i32 %50, 255
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53)
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %21, align 1
  %58 = xor i32 %49, 16
  %59 = xor i32 %58, %50
  %60 = lshr i32 %59, 4
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  store i8 %62, i8* %27, align 1
  %63 = icmp eq i32 %50, 0
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %30, align 1
  %65 = lshr i32 %50, 31
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %33, align 1
  %67 = lshr i32 %49, 31
  %68 = xor i32 %65, %67
  %69 = add nuw nsw i32 %68, %67
  %70 = icmp eq i32 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %39, align 1
  %72 = icmp ne i8 %66, 0
  %73 = xor i1 %72, %70
  %.demorgan = or i1 %63, %73
  %.v = select i1 %.demorgan, i64 13, i64 42
  %74 = add i64 %44, %.v
  store i64 %74, i64* %3, align 8
  br i1 %.demorgan, label %block_40085c, label %block_.L_400879

block_40085c:                                     ; preds = %block_.L_40084f
  %75 = add i64 %74, 4
  store i64 %75, i64* %3, align 8
  %76 = load i32, i32* %48, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %RAX.i1121, align 8
  %78 = shl nsw i64 %77, 2
  %79 = add nsw i64 %78, 6348624
  %80 = add i64 %74, 15
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i32*
  store i32 1, i32* %81, align 4
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -16
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %83 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, 1
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RAX.i1121, align 8
  %90 = icmp eq i32 %87, -1
  %91 = icmp eq i32 %88, 0
  %92 = or i1 %90, %91
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %14, align 1
  %94 = and i32 %88, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %21, align 1
  %99 = xor i32 %87, %88
  %100 = lshr i32 %99, 4
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  store i8 %102, i8* %27, align 1
  %103 = zext i1 %91 to i8
  store i8 %103, i8* %30, align 1
  %104 = lshr i32 %88, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %33, align 1
  %106 = lshr i32 %87, 31
  %107 = xor i32 %104, %106
  %108 = add nuw nsw i32 %107, %104
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %39, align 1
  %111 = add i64 %84, 9
  store i64 %111, i64* %3, align 8
  store i32 %88, i32* %86, align 4
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, -37
  store i64 %113, i64* %3, align 8
  br label %block_.L_40084f

block_.L_400879:                                  ; preds = %block_.L_40084f
  %114 = add i64 %45, -4
  %115 = add i64 %74, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 1, i32* %116, align 4
  %RCX.i1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400880

block_.L_400880:                                  ; preds = %block_.L_4008ee, %block_.L_400879
  %117 = phi i64 [ %357, %block_.L_4008ee ], [ %.pre1, %block_.L_400879 ]
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -4
  %120 = add i64 %117, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, -5
  %124 = icmp ult i32 %122, 5
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %14, align 1
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  %131 = xor i32 %122, %123
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %27, align 1
  %135 = icmp eq i32 %123, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %30, align 1
  %137 = lshr i32 %123, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %33, align 1
  %139 = lshr i32 %122, 31
  %140 = xor i32 %137, %139
  %141 = add nuw nsw i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %39, align 1
  %144 = icmp ne i8 %138, 0
  %145 = xor i1 %144, %142
  %.demorgan53 = or i1 %135, %145
  %.v54 = select i1 %.demorgan53, i64 10, i64 129
  %146 = add i64 %117, %.v54
  store i64 %146, i64* %3, align 8
  br i1 %.demorgan53, label %block_40088a, label %block_.L_400901

block_40088a:                                     ; preds = %block_.L_400880
  %147 = add i64 %118, -8
  %148 = add i64 %146, 7
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  store i32 1, i32* %149, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400891

block_.L_400891:                                  ; preds = %block_.L_4008db, %block_40088a
  %150 = phi i64 [ %327, %block_.L_4008db ], [ %.pre2, %block_40088a ]
  %151 = load i64, i64* %RBP.i, align 8
  %152 = add i64 %151, -8
  %153 = add i64 %150, 4
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, -5
  %157 = icmp ult i32 %155, 5
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %14, align 1
  %159 = and i32 %156, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %21, align 1
  %164 = xor i32 %155, %156
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %27, align 1
  %168 = icmp eq i32 %156, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %30, align 1
  %170 = lshr i32 %156, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %33, align 1
  %172 = lshr i32 %155, 31
  %173 = xor i32 %170, %172
  %174 = add nuw nsw i32 %173, %172
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %39, align 1
  %177 = icmp ne i8 %171, 0
  %178 = xor i1 %177, %175
  %.demorgan55 = or i1 %168, %178
  %.v56 = select i1 %.demorgan55, i64 10, i64 93
  %179 = add i64 %150, %.v56
  store i64 %179, i64* %3, align 8
  br i1 %.demorgan55, label %block_40089b, label %block_.L_4008ee

block_40089b:                                     ; preds = %block_.L_400891
  %180 = add i64 %151, -12
  %181 = add i64 %179, 7
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  store i32 1, i32* %182, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_4008a2

block_.L_4008a2:                                  ; preds = %block_4008ac, %block_40089b
  %183 = phi i64 [ %297, %block_4008ac ], [ %.pre3, %block_40089b ]
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -12
  %186 = add i64 %183, 4
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, -5
  %190 = icmp ult i32 %188, 5
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %14, align 1
  %192 = and i32 %189, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %21, align 1
  %197 = xor i32 %188, %189
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %27, align 1
  %201 = icmp eq i32 %189, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %30, align 1
  %203 = lshr i32 %189, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %33, align 1
  %205 = lshr i32 %188, 31
  %206 = xor i32 %203, %205
  %207 = add nuw nsw i32 %206, %205
  %208 = icmp eq i32 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %39, align 1
  %210 = icmp ne i8 %204, 0
  %211 = xor i1 %210, %208
  %.demorgan57 = or i1 %201, %211
  %.v58 = select i1 %.demorgan57, i64 10, i64 57
  %212 = add i64 %183, %.v58
  store i64 %212, i64* %3, align 8
  br i1 %.demorgan57, label %block_4008ac, label %block_.L_4008db

block_4008ac:                                     ; preds = %block_.L_4008a2
  %213 = add i64 %184, -4
  %214 = add i64 %212, 3
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RAX.i1121, align 8
  %218 = add i64 %184, -8
  %219 = add i64 %212, 6
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RCX.i1089, align 8
  %223 = add i64 %212, 9
  store i64 %223, i64* %3, align 8
  %224 = load i32, i32* %187, align 4
  %225 = shl i32 %224, 3
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RDX.i1086, align 8
  %227 = add i32 %225, %221
  %228 = shl i32 %227, 3
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RCX.i1089, align 8
  %230 = lshr i32 %227, 28
  %231 = and i32 %230, 1
  %232 = load i64, i64* %RAX.i1121, align 8
  %233 = trunc i64 %232 to i32
  %234 = add i32 %228, %233
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RAX.i1121, align 8
  %236 = icmp ult i32 %234, %233
  %237 = icmp ult i32 %234, %228
  %238 = or i1 %236, %237
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %14, align 1
  %240 = and i32 %234, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %21, align 1
  %245 = xor i64 %229, %232
  %246 = trunc i64 %245 to i32
  %247 = xor i32 %246, %234
  %248 = lshr i32 %247, 4
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  store i8 %250, i8* %27, align 1
  %251 = icmp eq i32 %234, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %30, align 1
  %253 = lshr i32 %234, 31
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %33, align 1
  %255 = lshr i32 %233, 31
  %256 = xor i32 %253, %255
  %257 = xor i32 %253, %231
  %258 = add nuw nsw i32 %256, %257
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %39, align 1
  %261 = sext i32 %234 to i64
  store i64 %261, i64* %RSI.i1074, align 8
  %262 = shl nsw i64 %261, 2
  %263 = add nsw i64 %262, 6348624
  %264 = add i64 %212, 33
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i32*
  store i32 0, i32* %265, align 4
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -12
  %268 = load i64, i64* %3, align 8
  %269 = add i64 %268, 3
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, 1
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX.i1121, align 8
  %274 = icmp eq i32 %271, -1
  %275 = icmp eq i32 %272, 0
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %14, align 1
  %278 = and i32 %272, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i32 %271, %272
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %27, align 1
  %287 = zext i1 %275 to i8
  store i8 %287, i8* %30, align 1
  %288 = lshr i32 %272, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %33, align 1
  %290 = lshr i32 %271, 31
  %291 = xor i32 %288, %290
  %292 = add nuw nsw i32 %291, %288
  %293 = icmp eq i32 %292, 2
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %39, align 1
  %295 = add i64 %268, 9
  store i64 %295, i64* %3, align 8
  store i32 %272, i32* %270, align 4
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, -52
  store i64 %297, i64* %3, align 8
  br label %block_.L_4008a2

block_.L_4008db:                                  ; preds = %block_.L_4008a2
  %298 = add i64 %184, -8
  %299 = add i64 %212, 8
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = add i32 %301, 1
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RAX.i1121, align 8
  %304 = icmp eq i32 %301, -1
  %305 = icmp eq i32 %302, 0
  %306 = or i1 %304, %305
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %14, align 1
  %308 = and i32 %302, 255
  %309 = tail call i32 @llvm.ctpop.i32(i32 %308)
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  store i8 %312, i8* %21, align 1
  %313 = xor i32 %301, %302
  %314 = lshr i32 %313, 4
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %27, align 1
  %317 = zext i1 %305 to i8
  store i8 %317, i8* %30, align 1
  %318 = lshr i32 %302, 31
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %33, align 1
  %320 = lshr i32 %301, 31
  %321 = xor i32 %318, %320
  %322 = add nuw nsw i32 %321, %318
  %323 = icmp eq i32 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %39, align 1
  %325 = add i64 %212, 14
  store i64 %325, i64* %3, align 8
  store i32 %302, i32* %300, align 4
  %326 = load i64, i64* %3, align 8
  %327 = add i64 %326, -88
  store i64 %327, i64* %3, align 8
  br label %block_.L_400891

block_.L_4008ee:                                  ; preds = %block_.L_400891
  %328 = add i64 %151, -4
  %329 = add i64 %179, 8
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = add i32 %331, 1
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX.i1121, align 8
  %334 = icmp eq i32 %331, -1
  %335 = icmp eq i32 %332, 0
  %336 = or i1 %334, %335
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %14, align 1
  %338 = and i32 %332, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %21, align 1
  %343 = xor i32 %331, %332
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %27, align 1
  %347 = zext i1 %335 to i8
  store i8 %347, i8* %30, align 1
  %348 = lshr i32 %332, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %33, align 1
  %350 = lshr i32 %331, 31
  %351 = xor i32 %348, %350
  %352 = add nuw nsw i32 %351, %348
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %39, align 1
  %355 = add i64 %179, 14
  store i64 %355, i64* %3, align 8
  store i32 %332, i32* %330, align 4
  %356 = load i64, i64* %3, align 8
  %357 = add i64 %356, -124
  store i64 %357, i64* %3, align 8
  br label %block_.L_400880

block_.L_400901:                                  ; preds = %block_.L_400880
  %358 = add i64 %146, 7
  store i64 %358, i64* %3, align 8
  store i32 0, i32* %121, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400908

block_.L_400908:                                  ; preds = %block_.L_400954, %block_.L_400901
  %359 = phi i64 [ %523, %block_.L_400954 ], [ %.pre4, %block_.L_400901 ]
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -4
  %362 = add i64 %359, 4
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = add i32 %364, -12
  %366 = icmp ult i32 %364, 12
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %14, align 1
  %368 = and i32 %365, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %21, align 1
  %373 = xor i32 %364, %365
  %374 = lshr i32 %373, 4
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  store i8 %376, i8* %27, align 1
  %377 = icmp eq i32 %365, 0
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %30, align 1
  %379 = lshr i32 %365, 31
  %380 = trunc i32 %379 to i8
  store i8 %380, i8* %33, align 1
  %381 = lshr i32 %364, 31
  %382 = xor i32 %379, %381
  %383 = add nuw nsw i32 %382, %381
  %384 = icmp eq i32 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %39, align 1
  %386 = icmp ne i8 %380, 0
  %387 = xor i1 %386, %384
  %.demorgan59 = or i1 %377, %387
  %.v60 = select i1 %.demorgan59, i64 10, i64 95
  %388 = add i64 %359, %.v60
  store i64 %388, i64* %3, align 8
  br i1 %.demorgan59, label %block_400912, label %block_.L_400967

block_400912:                                     ; preds = %block_.L_400908
  %389 = add i64 %360, -16
  %390 = add i64 %388, 7
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  store i32 0, i32* %391, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400919

block_.L_400919:                                  ; preds = %block_400926, %block_400912
  %392 = phi i64 [ %493, %block_400926 ], [ %.pre5, %block_400912 ]
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -16
  %395 = add i64 %392, 7
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = add i32 %397, -511
  %399 = icmp ult i32 %397, 511
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %14, align 1
  %401 = and i32 %398, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %21, align 1
  %406 = xor i32 %397, 16
  %407 = xor i32 %406, %398
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %27, align 1
  %411 = icmp eq i32 %398, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %30, align 1
  %413 = lshr i32 %398, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %33, align 1
  %415 = lshr i32 %397, 31
  %416 = xor i32 %413, %415
  %417 = add nuw nsw i32 %416, %415
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %39, align 1
  %420 = icmp ne i8 %414, 0
  %421 = xor i1 %420, %418
  %.demorgan61 = or i1 %411, %421
  %.v62 = select i1 %.demorgan61, i64 13, i64 59
  %422 = add i64 %392, %.v62
  store i64 %422, i64* %3, align 8
  br i1 %.demorgan61, label %block_400926, label %block_.L_400954

block_400926:                                     ; preds = %block_.L_400919
  store i64 ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64), i64* %RAX.i1121, align 8
  %423 = add i64 %393, -4
  %424 = add i64 %422, 14
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = sext i32 %426 to i64
  %428 = shl nsw i64 %427, 11
  store i64 %428, i64* %RCX.i1089, align 8
  %429 = lshr i64 %427, 52
  %430 = and i64 %429, 1
  %431 = add i64 %428, ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64)
  store i64 %431, i64* %RAX.i1121, align 8
  %432 = icmp ult i64 %431, ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64)
  %433 = icmp ult i64 %431, %428
  %434 = or i1 %432, %433
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %14, align 1
  %436 = trunc i64 %431 to i32
  %437 = and i32 %436, 248
  %438 = tail call i32 @llvm.ctpop.i32(i32 %437)
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = xor i8 %440, 1
  store i8 %441, i8* %21, align 1
  %442 = xor i64 %431, ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64)
  %443 = lshr i64 %442, 4
  %444 = trunc i64 %443 to i8
  %445 = and i8 %444, 1
  store i8 %445, i8* %27, align 1
  %446 = icmp eq i64 %431, 0
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %30, align 1
  %448 = lshr i64 %431, 63
  %449 = trunc i64 %448 to i8
  store i8 %449, i8* %33, align 1
  %450 = xor i64 %448, lshr (i64 ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64), i64 63)
  %451 = xor i64 %448, %430
  %452 = add nuw nsw i64 %450, %451
  %453 = icmp eq i64 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %39, align 1
  %455 = add i64 %422, 25
  store i64 %455, i64* %3, align 8
  %456 = load i32, i32* %396, align 4
  %457 = sext i32 %456 to i64
  store i64 %457, i64* %RCX.i1089, align 8
  %458 = shl nsw i64 %457, 2
  %459 = add i64 %458, %431
  %460 = add i64 %422, 32
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  store i32 0, i32* %461, align 4
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -16
  %464 = load i64, i64* %3, align 8
  %465 = add i64 %464, 3
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %463 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = add i32 %467, 1
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RAX.i1121, align 8
  %470 = icmp eq i32 %467, -1
  %471 = icmp eq i32 %468, 0
  %472 = or i1 %470, %471
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %14, align 1
  %474 = and i32 %468, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %21, align 1
  %479 = xor i32 %467, %468
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %27, align 1
  %483 = zext i1 %471 to i8
  store i8 %483, i8* %30, align 1
  %484 = lshr i32 %468, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %33, align 1
  %486 = lshr i32 %467, 31
  %487 = xor i32 %484, %486
  %488 = add nuw nsw i32 %487, %484
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %39, align 1
  %491 = add i64 %464, 9
  store i64 %491, i64* %3, align 8
  store i32 %468, i32* %466, align 4
  %492 = load i64, i64* %3, align 8
  %493 = add i64 %492, -54
  store i64 %493, i64* %3, align 8
  br label %block_.L_400919

block_.L_400954:                                  ; preds = %block_.L_400919
  %494 = add i64 %393, -4
  %495 = add i64 %422, 8
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = add i32 %497, 1
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RAX.i1121, align 8
  %500 = icmp eq i32 %497, -1
  %501 = icmp eq i32 %498, 0
  %502 = or i1 %500, %501
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %14, align 1
  %504 = and i32 %498, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %21, align 1
  %509 = xor i32 %497, %498
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %27, align 1
  %513 = zext i1 %501 to i8
  store i8 %513, i8* %30, align 1
  %514 = lshr i32 %498, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %33, align 1
  %516 = lshr i32 %497, 31
  %517 = xor i32 %514, %516
  %518 = add nuw nsw i32 %517, %514
  %519 = icmp eq i32 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %39, align 1
  %521 = add i64 %422, 14
  store i64 %521, i64* %3, align 8
  store i32 %498, i32* %496, align 4
  %522 = load i64, i64* %3, align 8
  %523 = add i64 %522, -90
  store i64 %523, i64* %3, align 8
  br label %block_.L_400908

block_.L_400967:                                  ; preds = %block_.L_400908
  %524 = add i64 %388, 7
  store i64 %524, i64* %3, align 8
  store i32 0, i32* %363, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_40096e

block_.L_40096e:                                  ; preds = %block_.L_4009dc, %block_.L_400967
  %525 = phi i64 [ %754, %block_.L_4009dc ], [ %.pre6, %block_.L_400967 ]
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -4
  %528 = add i64 %525, 4
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = add i32 %530, -3
  %532 = icmp ult i32 %530, 3
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %14, align 1
  %534 = and i32 %531, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %21, align 1
  %539 = xor i32 %530, %531
  %540 = lshr i32 %539, 4
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  store i8 %542, i8* %27, align 1
  %543 = icmp eq i32 %531, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %30, align 1
  %545 = lshr i32 %531, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %33, align 1
  %547 = lshr i32 %530, 31
  %548 = xor i32 %545, %547
  %549 = add nuw nsw i32 %548, %547
  %550 = icmp eq i32 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %39, align 1
  %552 = icmp ne i8 %546, 0
  %553 = xor i1 %552, %550
  %.demorgan63 = or i1 %543, %553
  %.v64 = select i1 %.demorgan63, i64 10, i64 129
  %554 = add i64 %525, %.v64
  store i64 %554, i64* %3, align 8
  br i1 %.demorgan63, label %block_400978, label %block_.L_4009ef

block_400978:                                     ; preds = %block_.L_40096e
  %555 = add i64 %526, -8
  %556 = add i64 %554, 7
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  store i32 0, i32* %557, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_40097f

block_.L_40097f:                                  ; preds = %block_.L_4009c9, %block_400978
  %558 = phi i64 [ %724, %block_.L_4009c9 ], [ %.pre7, %block_400978 ]
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -8
  %561 = add i64 %558, 4
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = add i32 %563, -1
  %565 = icmp eq i32 %563, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %14, align 1
  %567 = and i32 %564, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %21, align 1
  %572 = xor i32 %563, %564
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %27, align 1
  %576 = icmp eq i32 %564, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %30, align 1
  %578 = lshr i32 %564, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %33, align 1
  %580 = lshr i32 %563, 31
  %581 = xor i32 %578, %580
  %582 = add nuw nsw i32 %581, %580
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %39, align 1
  %585 = icmp ne i8 %579, 0
  %586 = xor i1 %585, %583
  %.demorgan65 = or i1 %576, %586
  %.v66 = select i1 %.demorgan65, i64 10, i64 93
  %587 = add i64 %558, %.v66
  store i64 %587, i64* %3, align 8
  br i1 %.demorgan65, label %block_400989, label %block_.L_4009dc

block_400989:                                     ; preds = %block_.L_40097f
  %588 = add i64 %559, -12
  %589 = add i64 %587, 7
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  store i32 0, i32* %590, align 4
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_400990

block_.L_400990:                                  ; preds = %block_40099a, %block_400989
  %591 = phi i64 [ %694, %block_40099a ], [ %.pre8, %block_400989 ]
  %592 = load i64, i64* %RBP.i, align 8
  %593 = add i64 %592, -12
  %594 = add i64 %591, 4
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  store i8 0, i8* %14, align 1
  %597 = and i32 %596, 255
  %598 = tail call i32 @llvm.ctpop.i32(i32 %597)
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  store i8 %601, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %602 = icmp eq i32 %596, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %30, align 1
  %604 = lshr i32 %596, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %606 = xor i1 %602, true
  %607 = icmp eq i8 %605, 0
  %608 = and i1 %607, %606
  %.v67 = select i1 %608, i64 57, i64 10
  %609 = add i64 %591, %.v67
  store i64 %609, i64* %3, align 8
  br i1 %608, label %block_.L_4009c9, label %block_40099a

block_40099a:                                     ; preds = %block_.L_400990
  %610 = add i64 %592, -4
  %611 = add i64 %609, 3
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = zext i32 %613 to i64
  store i64 %614, i64* %RAX.i1121, align 8
  %615 = add i64 %592, -8
  %616 = add i64 %609, 6
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = zext i32 %618 to i64
  store i64 %619, i64* %RCX.i1089, align 8
  %620 = add i64 %609, 9
  store i64 %620, i64* %3, align 8
  %621 = load i32, i32* %595, align 4
  %622 = shl i32 %621, 3
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RDX.i1086, align 8
  %624 = add i32 %622, %618
  %625 = shl i32 %624, 3
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RCX.i1089, align 8
  %627 = lshr i32 %624, 28
  %628 = and i32 %627, 1
  %629 = load i64, i64* %RAX.i1121, align 8
  %630 = trunc i64 %629 to i32
  %631 = add i32 %625, %630
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RAX.i1121, align 8
  %633 = icmp ult i32 %631, %630
  %634 = icmp ult i32 %631, %625
  %635 = or i1 %633, %634
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %14, align 1
  %637 = and i32 %631, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637)
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %21, align 1
  %642 = xor i64 %626, %629
  %643 = trunc i64 %642 to i32
  %644 = xor i32 %643, %631
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  store i8 %647, i8* %27, align 1
  %648 = icmp eq i32 %631, 0
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %30, align 1
  %650 = lshr i32 %631, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %33, align 1
  %652 = lshr i32 %630, 31
  %653 = xor i32 %650, %652
  %654 = xor i32 %650, %628
  %655 = add nuw nsw i32 %653, %654
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %39, align 1
  %658 = sext i32 %631 to i64
  store i64 %658, i64* %RSI.i1074, align 8
  %659 = shl nsw i64 %658, 2
  %660 = add nsw i64 %659, 6306464
  %661 = add i64 %609, 33
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  store i32 1, i32* %662, align 4
  %663 = load i64, i64* %RBP.i, align 8
  %664 = add i64 %663, -12
  %665 = load i64, i64* %3, align 8
  %666 = add i64 %665, 3
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %664 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = add i32 %668, 1
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RAX.i1121, align 8
  %671 = icmp eq i32 %668, -1
  %672 = icmp eq i32 %669, 0
  %673 = or i1 %671, %672
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %14, align 1
  %675 = and i32 %669, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  %680 = xor i32 %668, %669
  %681 = lshr i32 %680, 4
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  store i8 %683, i8* %27, align 1
  %684 = zext i1 %672 to i8
  store i8 %684, i8* %30, align 1
  %685 = lshr i32 %669, 31
  %686 = trunc i32 %685 to i8
  store i8 %686, i8* %33, align 1
  %687 = lshr i32 %668, 31
  %688 = xor i32 %685, %687
  %689 = add nuw nsw i32 %688, %685
  %690 = icmp eq i32 %689, 2
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %39, align 1
  %692 = add i64 %665, 9
  store i64 %692, i64* %3, align 8
  store i32 %669, i32* %667, align 4
  %693 = load i64, i64* %3, align 8
  %694 = add i64 %693, -52
  store i64 %694, i64* %3, align 8
  br label %block_.L_400990

block_.L_4009c9:                                  ; preds = %block_.L_400990
  %695 = add i64 %592, -8
  %696 = add i64 %609, 8
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = add i32 %698, 1
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RAX.i1121, align 8
  %701 = icmp eq i32 %698, -1
  %702 = icmp eq i32 %699, 0
  %703 = or i1 %701, %702
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %14, align 1
  %705 = and i32 %699, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %21, align 1
  %710 = xor i32 %698, %699
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %27, align 1
  %714 = zext i1 %702 to i8
  store i8 %714, i8* %30, align 1
  %715 = lshr i32 %699, 31
  %716 = trunc i32 %715 to i8
  store i8 %716, i8* %33, align 1
  %717 = lshr i32 %698, 31
  %718 = xor i32 %715, %717
  %719 = add nuw nsw i32 %718, %715
  %720 = icmp eq i32 %719, 2
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %39, align 1
  %722 = add i64 %609, 14
  store i64 %722, i64* %3, align 8
  store i32 %699, i32* %697, align 4
  %723 = load i64, i64* %3, align 8
  %724 = add i64 %723, -88
  store i64 %724, i64* %3, align 8
  br label %block_.L_40097f

block_.L_4009dc:                                  ; preds = %block_.L_40097f
  %725 = add i64 %559, -4
  %726 = add i64 %587, 8
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = add i32 %728, 1
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RAX.i1121, align 8
  %731 = icmp eq i32 %728, -1
  %732 = icmp eq i32 %729, 0
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %14, align 1
  %735 = and i32 %729, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %21, align 1
  %740 = xor i32 %728, %729
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %27, align 1
  %744 = zext i1 %732 to i8
  store i8 %744, i8* %30, align 1
  %745 = lshr i32 %729, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %33, align 1
  %747 = lshr i32 %728, 31
  %748 = xor i32 %745, %747
  %749 = add nuw nsw i32 %748, %745
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %39, align 1
  %752 = add i64 %587, 14
  store i64 %752, i64* %3, align 8
  store i32 %729, i32* %727, align 4
  %753 = load i64, i64* %3, align 8
  %754 = add i64 %753, -124
  store i64 %754, i64* %3, align 8
  br label %block_.L_40096e

block_.L_4009ef:                                  ; preds = %block_.L_40096e
  store i32 0, i32* bitcast (%G_0x6191f0_type* @G_0x6191f0 to i32*), align 8
  store i32 11, i32* bitcast (%G_0x610250_type* @G_0x610250 to i32*), align 8
  %755 = add i64 %554, 29
  store i64 %755, i64* %3, align 8
  store i32 0, i32* %529, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_400a0c

block_.L_400a0c:                                  ; preds = %block_.L_400a7a, %block_.L_4009ef
  %756 = phi i64 [ %985, %block_.L_400a7a ], [ %.pre9, %block_.L_4009ef ]
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -4
  %759 = add i64 %756, 4
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = add i32 %761, -1
  %763 = icmp eq i32 %761, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %14, align 1
  %765 = and i32 %762, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %21, align 1
  %770 = xor i32 %761, %762
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %27, align 1
  %774 = icmp eq i32 %762, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %30, align 1
  %776 = lshr i32 %762, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %33, align 1
  %778 = lshr i32 %761, 31
  %779 = xor i32 %776, %778
  %780 = add nuw nsw i32 %779, %778
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %39, align 1
  %783 = icmp ne i8 %777, 0
  %784 = xor i1 %783, %781
  %.demorgan68 = or i1 %774, %784
  %.v69 = select i1 %.demorgan68, i64 10, i64 129
  %785 = add i64 %756, %.v69
  store i64 %785, i64* %3, align 8
  br i1 %.demorgan68, label %block_400a16, label %block_.L_400a8d

block_400a16:                                     ; preds = %block_.L_400a0c
  %786 = add i64 %757, -8
  %787 = add i64 %785, 7
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  store i32 0, i32* %788, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_400a1d

block_.L_400a1d:                                  ; preds = %block_.L_400a67, %block_400a16
  %789 = phi i64 [ %955, %block_.L_400a67 ], [ %.pre10, %block_400a16 ]
  %790 = load i64, i64* %RBP.i, align 8
  %791 = add i64 %790, -8
  %792 = add i64 %789, 4
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  store i8 0, i8* %14, align 1
  %795 = and i32 %794, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %800 = icmp eq i32 %794, 0
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %30, align 1
  %802 = lshr i32 %794, 31
  %803 = trunc i32 %802 to i8
  store i8 %803, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %804 = xor i1 %800, true
  %805 = icmp eq i8 %803, 0
  %806 = and i1 %805, %804
  %.v70 = select i1 %806, i64 93, i64 10
  %807 = add i64 %789, %.v70
  store i64 %807, i64* %3, align 8
  br i1 %806, label %block_.L_400a7a, label %block_400a27

block_400a27:                                     ; preds = %block_.L_400a1d
  %808 = add i64 %790, -12
  %809 = add i64 %807, 7
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  store i32 0, i32* %810, align 4
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_400a2e

block_.L_400a2e:                                  ; preds = %block_400a38, %block_400a27
  %811 = phi i64 [ %925, %block_400a38 ], [ %.pre11, %block_400a27 ]
  %812 = load i64, i64* %RBP.i, align 8
  %813 = add i64 %812, -12
  %814 = add i64 %811, 4
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = add i32 %816, -3
  %818 = icmp ult i32 %816, 3
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %14, align 1
  %820 = and i32 %817, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %21, align 1
  %825 = xor i32 %816, %817
  %826 = lshr i32 %825, 4
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %27, align 1
  %829 = icmp eq i32 %817, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %30, align 1
  %831 = lshr i32 %817, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %33, align 1
  %833 = lshr i32 %816, 31
  %834 = xor i32 %831, %833
  %835 = add nuw nsw i32 %834, %833
  %836 = icmp eq i32 %835, 2
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %39, align 1
  %838 = icmp ne i8 %832, 0
  %839 = xor i1 %838, %836
  %.demorgan71 = or i1 %829, %839
  %.v72 = select i1 %.demorgan71, i64 10, i64 57
  %840 = add i64 %811, %.v72
  store i64 %840, i64* %3, align 8
  br i1 %.demorgan71, label %block_400a38, label %block_.L_400a67

block_400a38:                                     ; preds = %block_.L_400a2e
  %841 = add i64 %812, -4
  %842 = add i64 %840, 3
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = zext i32 %844 to i64
  store i64 %845, i64* %RAX.i1121, align 8
  %846 = add i64 %812, -8
  %847 = add i64 %840, 6
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RCX.i1089, align 8
  %851 = add i64 %840, 9
  store i64 %851, i64* %3, align 8
  %852 = load i32, i32* %815, align 4
  %853 = shl i32 %852, 3
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RDX.i1086, align 8
  %855 = add i32 %853, %849
  %856 = shl i32 %855, 3
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RCX.i1089, align 8
  %858 = lshr i32 %855, 28
  %859 = and i32 %858, 1
  %860 = load i64, i64* %RAX.i1121, align 8
  %861 = trunc i64 %860 to i32
  %862 = add i32 %856, %861
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RAX.i1121, align 8
  %864 = icmp ult i32 %862, %861
  %865 = icmp ult i32 %862, %856
  %866 = or i1 %864, %865
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %14, align 1
  %868 = and i32 %862, 255
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %21, align 1
  %873 = xor i64 %857, %860
  %874 = trunc i64 %873 to i32
  %875 = xor i32 %874, %862
  %876 = lshr i32 %875, 4
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  store i8 %878, i8* %27, align 1
  %879 = icmp eq i32 %862, 0
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %30, align 1
  %881 = lshr i32 %862, 31
  %882 = trunc i32 %881 to i8
  store i8 %882, i8* %33, align 1
  %883 = lshr i32 %861, 31
  %884 = xor i32 %881, %883
  %885 = xor i32 %881, %859
  %886 = add nuw nsw i32 %884, %885
  %887 = icmp eq i32 %886, 2
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %39, align 1
  %889 = sext i32 %862 to i64
  store i64 %889, i64* %RSI.i1074, align 8
  %890 = shl nsw i64 %889, 2
  %891 = add nsw i64 %890, 6308512
  %892 = add i64 %840, 33
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i32*
  store i32 1, i32* %893, align 4
  %894 = load i64, i64* %RBP.i, align 8
  %895 = add i64 %894, -12
  %896 = load i64, i64* %3, align 8
  %897 = add i64 %896, 3
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %895 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = add i32 %899, 1
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RAX.i1121, align 8
  %902 = icmp eq i32 %899, -1
  %903 = icmp eq i32 %900, 0
  %904 = or i1 %902, %903
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %14, align 1
  %906 = and i32 %900, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %21, align 1
  %911 = xor i32 %899, %900
  %912 = lshr i32 %911, 4
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %27, align 1
  %915 = zext i1 %903 to i8
  store i8 %915, i8* %30, align 1
  %916 = lshr i32 %900, 31
  %917 = trunc i32 %916 to i8
  store i8 %917, i8* %33, align 1
  %918 = lshr i32 %899, 31
  %919 = xor i32 %916, %918
  %920 = add nuw nsw i32 %919, %916
  %921 = icmp eq i32 %920, 2
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %39, align 1
  %923 = add i64 %896, 9
  store i64 %923, i64* %3, align 8
  store i32 %900, i32* %898, align 4
  %924 = load i64, i64* %3, align 8
  %925 = add i64 %924, -52
  store i64 %925, i64* %3, align 8
  br label %block_.L_400a2e

block_.L_400a67:                                  ; preds = %block_.L_400a2e
  %926 = add i64 %812, -8
  %927 = add i64 %840, 8
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i32*
  %929 = load i32, i32* %928, align 4
  %930 = add i32 %929, 1
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RAX.i1121, align 8
  %932 = icmp eq i32 %929, -1
  %933 = icmp eq i32 %930, 0
  %934 = or i1 %932, %933
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %14, align 1
  %936 = and i32 %930, 255
  %937 = tail call i32 @llvm.ctpop.i32(i32 %936)
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  store i8 %940, i8* %21, align 1
  %941 = xor i32 %929, %930
  %942 = lshr i32 %941, 4
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  store i8 %944, i8* %27, align 1
  %945 = zext i1 %933 to i8
  store i8 %945, i8* %30, align 1
  %946 = lshr i32 %930, 31
  %947 = trunc i32 %946 to i8
  store i8 %947, i8* %33, align 1
  %948 = lshr i32 %929, 31
  %949 = xor i32 %946, %948
  %950 = add nuw nsw i32 %949, %946
  %951 = icmp eq i32 %950, 2
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %39, align 1
  %953 = add i64 %840, 14
  store i64 %953, i64* %3, align 8
  store i32 %930, i32* %928, align 4
  %954 = load i64, i64* %3, align 8
  %955 = add i64 %954, -88
  store i64 %955, i64* %3, align 8
  br label %block_.L_400a1d

block_.L_400a7a:                                  ; preds = %block_.L_400a1d
  %956 = add i64 %790, -4
  %957 = add i64 %807, 8
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = add i32 %959, 1
  %961 = zext i32 %960 to i64
  store i64 %961, i64* %RAX.i1121, align 8
  %962 = icmp eq i32 %959, -1
  %963 = icmp eq i32 %960, 0
  %964 = or i1 %962, %963
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %14, align 1
  %966 = and i32 %960, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %21, align 1
  %971 = xor i32 %959, %960
  %972 = lshr i32 %971, 4
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  store i8 %974, i8* %27, align 1
  %975 = zext i1 %963 to i8
  store i8 %975, i8* %30, align 1
  %976 = lshr i32 %960, 31
  %977 = trunc i32 %976 to i8
  store i8 %977, i8* %33, align 1
  %978 = lshr i32 %959, 31
  %979 = xor i32 %976, %978
  %980 = add nuw nsw i32 %979, %976
  %981 = icmp eq i32 %980, 2
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %39, align 1
  %983 = add i64 %807, 14
  store i64 %983, i64* %3, align 8
  store i32 %960, i32* %958, align 4
  %984 = load i64, i64* %3, align 8
  %985 = add i64 %984, -124
  store i64 %985, i64* %3, align 8
  br label %block_.L_400a0c

block_.L_400a8d:                                  ; preds = %block_.L_400a0c
  store i32 0, i32* bitcast (%G_0x6191f4_type* @G_0x6191f4 to i32*), align 8
  store i32 193, i32* bitcast (%G_0x610254_type* @G_0x610254 to i32*), align 8
  %986 = add i64 %785, 29
  store i64 %986, i64* %3, align 8
  store i32 0, i32* %760, align 4
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_400aaa

block_.L_400aaa:                                  ; preds = %block_.L_400b18, %block_.L_400a8d
  %987 = phi i64 [ %1216, %block_.L_400b18 ], [ %.pre12, %block_.L_400a8d ]
  %988 = load i64, i64* %RBP.i, align 8
  %989 = add i64 %988, -4
  %990 = add i64 %987, 4
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  store i8 0, i8* %14, align 1
  %993 = and i32 %992, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %998 = icmp eq i32 %992, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %30, align 1
  %1000 = lshr i32 %992, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1002 = xor i1 %998, true
  %1003 = icmp eq i8 %1001, 0
  %1004 = and i1 %1003, %1002
  %.v73 = select i1 %1004, i64 129, i64 10
  %1005 = add i64 %987, %.v73
  store i64 %1005, i64* %3, align 8
  br i1 %1004, label %block_.L_400b2b, label %block_400ab4

block_400ab4:                                     ; preds = %block_.L_400aaa
  %1006 = add i64 %988, -8
  %1007 = add i64 %1005, 7
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  store i32 0, i32* %1008, align 4
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400abb

block_.L_400abb:                                  ; preds = %block_.L_400b05, %block_400ab4
  %1009 = phi i64 [ %1186, %block_.L_400b05 ], [ %.pre13, %block_400ab4 ]
  %1010 = load i64, i64* %RBP.i, align 8
  %1011 = add i64 %1010, -8
  %1012 = add i64 %1009, 4
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = add i32 %1014, -3
  %1016 = icmp ult i32 %1014, 3
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %14, align 1
  %1018 = and i32 %1015, 255
  %1019 = tail call i32 @llvm.ctpop.i32(i32 %1018)
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = xor i8 %1021, 1
  store i8 %1022, i8* %21, align 1
  %1023 = xor i32 %1014, %1015
  %1024 = lshr i32 %1023, 4
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  store i8 %1026, i8* %27, align 1
  %1027 = icmp eq i32 %1015, 0
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %30, align 1
  %1029 = lshr i32 %1015, 31
  %1030 = trunc i32 %1029 to i8
  store i8 %1030, i8* %33, align 1
  %1031 = lshr i32 %1014, 31
  %1032 = xor i32 %1029, %1031
  %1033 = add nuw nsw i32 %1032, %1031
  %1034 = icmp eq i32 %1033, 2
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %39, align 1
  %1036 = icmp ne i8 %1030, 0
  %1037 = xor i1 %1036, %1034
  %.demorgan74 = or i1 %1027, %1037
  %.v75 = select i1 %.demorgan74, i64 10, i64 93
  %1038 = add i64 %1009, %.v75
  store i64 %1038, i64* %3, align 8
  br i1 %.demorgan74, label %block_400ac5, label %block_.L_400b18

block_400ac5:                                     ; preds = %block_.L_400abb
  %1039 = add i64 %1010, -12
  %1040 = add i64 %1038, 7
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  store i32 0, i32* %1041, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_400acc

block_.L_400acc:                                  ; preds = %block_400ad6, %block_400ac5
  %1042 = phi i64 [ %1156, %block_400ad6 ], [ %.pre14, %block_400ac5 ]
  %1043 = load i64, i64* %RBP.i, align 8
  %1044 = add i64 %1043, -12
  %1045 = add i64 %1042, 4
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = add i32 %1047, -1
  %1049 = icmp eq i32 %1047, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %14, align 1
  %1051 = and i32 %1048, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %21, align 1
  %1056 = xor i32 %1047, %1048
  %1057 = lshr i32 %1056, 4
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  store i8 %1059, i8* %27, align 1
  %1060 = icmp eq i32 %1048, 0
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %30, align 1
  %1062 = lshr i32 %1048, 31
  %1063 = trunc i32 %1062 to i8
  store i8 %1063, i8* %33, align 1
  %1064 = lshr i32 %1047, 31
  %1065 = xor i32 %1062, %1064
  %1066 = add nuw nsw i32 %1065, %1064
  %1067 = icmp eq i32 %1066, 2
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %39, align 1
  %1069 = icmp ne i8 %1063, 0
  %1070 = xor i1 %1069, %1067
  %.demorgan76 = or i1 %1060, %1070
  %.v77 = select i1 %.demorgan76, i64 10, i64 57
  %1071 = add i64 %1042, %.v77
  store i64 %1071, i64* %3, align 8
  br i1 %.demorgan76, label %block_400ad6, label %block_.L_400b05

block_400ad6:                                     ; preds = %block_.L_400acc
  %1072 = add i64 %1043, -4
  %1073 = add i64 %1071, 3
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %RAX.i1121, align 8
  %1077 = add i64 %1043, -8
  %1078 = add i64 %1071, 6
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i32*
  %1080 = load i32, i32* %1079, align 4
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RCX.i1089, align 8
  %1082 = add i64 %1071, 9
  store i64 %1082, i64* %3, align 8
  %1083 = load i32, i32* %1046, align 4
  %1084 = shl i32 %1083, 3
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %RDX.i1086, align 8
  %1086 = add i32 %1084, %1080
  %1087 = shl i32 %1086, 3
  %1088 = zext i32 %1087 to i64
  store i64 %1088, i64* %RCX.i1089, align 8
  %1089 = lshr i32 %1086, 28
  %1090 = and i32 %1089, 1
  %1091 = load i64, i64* %RAX.i1121, align 8
  %1092 = trunc i64 %1091 to i32
  %1093 = add i32 %1087, %1092
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RAX.i1121, align 8
  %1095 = icmp ult i32 %1093, %1092
  %1096 = icmp ult i32 %1093, %1087
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %14, align 1
  %1099 = and i32 %1093, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %21, align 1
  %1104 = xor i64 %1088, %1091
  %1105 = trunc i64 %1104 to i32
  %1106 = xor i32 %1105, %1093
  %1107 = lshr i32 %1106, 4
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  store i8 %1109, i8* %27, align 1
  %1110 = icmp eq i32 %1093, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %30, align 1
  %1112 = lshr i32 %1093, 31
  %1113 = trunc i32 %1112 to i8
  store i8 %1113, i8* %33, align 1
  %1114 = lshr i32 %1092, 31
  %1115 = xor i32 %1112, %1114
  %1116 = xor i32 %1112, %1090
  %1117 = add nuw nsw i32 %1115, %1116
  %1118 = icmp eq i32 %1117, 2
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %39, align 1
  %1120 = sext i32 %1093 to i64
  store i64 %1120, i64* %RSI.i1074, align 8
  %1121 = shl nsw i64 %1120, 2
  %1122 = add nsw i64 %1121, 6310560
  %1123 = add i64 %1071, 33
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  store i32 1, i32* %1124, align 4
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -12
  %1127 = load i64, i64* %3, align 8
  %1128 = add i64 %1127, 3
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1126 to i32*
  %1130 = load i32, i32* %1129, align 4
  %1131 = add i32 %1130, 1
  %1132 = zext i32 %1131 to i64
  store i64 %1132, i64* %RAX.i1121, align 8
  %1133 = icmp eq i32 %1130, -1
  %1134 = icmp eq i32 %1131, 0
  %1135 = or i1 %1133, %1134
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %14, align 1
  %1137 = and i32 %1131, 255
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %21, align 1
  %1142 = xor i32 %1130, %1131
  %1143 = lshr i32 %1142, 4
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  store i8 %1145, i8* %27, align 1
  %1146 = zext i1 %1134 to i8
  store i8 %1146, i8* %30, align 1
  %1147 = lshr i32 %1131, 31
  %1148 = trunc i32 %1147 to i8
  store i8 %1148, i8* %33, align 1
  %1149 = lshr i32 %1130, 31
  %1150 = xor i32 %1147, %1149
  %1151 = add nuw nsw i32 %1150, %1147
  %1152 = icmp eq i32 %1151, 2
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %39, align 1
  %1154 = add i64 %1127, 9
  store i64 %1154, i64* %3, align 8
  store i32 %1131, i32* %1129, align 4
  %1155 = load i64, i64* %3, align 8
  %1156 = add i64 %1155, -52
  store i64 %1156, i64* %3, align 8
  br label %block_.L_400acc

block_.L_400b05:                                  ; preds = %block_.L_400acc
  %1157 = add i64 %1043, -8
  %1158 = add i64 %1071, 8
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = add i32 %1160, 1
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RAX.i1121, align 8
  %1163 = icmp eq i32 %1160, -1
  %1164 = icmp eq i32 %1161, 0
  %1165 = or i1 %1163, %1164
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %14, align 1
  %1167 = and i32 %1161, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %21, align 1
  %1172 = xor i32 %1160, %1161
  %1173 = lshr i32 %1172, 4
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  store i8 %1175, i8* %27, align 1
  %1176 = zext i1 %1164 to i8
  store i8 %1176, i8* %30, align 1
  %1177 = lshr i32 %1161, 31
  %1178 = trunc i32 %1177 to i8
  store i8 %1178, i8* %33, align 1
  %1179 = lshr i32 %1160, 31
  %1180 = xor i32 %1177, %1179
  %1181 = add nuw nsw i32 %1180, %1177
  %1182 = icmp eq i32 %1181, 2
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %39, align 1
  %1184 = add i64 %1071, 14
  store i64 %1184, i64* %3, align 8
  store i32 %1161, i32* %1159, align 4
  %1185 = load i64, i64* %3, align 8
  %1186 = add i64 %1185, -88
  store i64 %1186, i64* %3, align 8
  br label %block_.L_400abb

block_.L_400b18:                                  ; preds = %block_.L_400abb
  %1187 = add i64 %1010, -4
  %1188 = add i64 %1038, 8
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = add i32 %1190, 1
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RAX.i1121, align 8
  %1193 = icmp eq i32 %1190, -1
  %1194 = icmp eq i32 %1191, 0
  %1195 = or i1 %1193, %1194
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %14, align 1
  %1197 = and i32 %1191, 255
  %1198 = tail call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  store i8 %1201, i8* %21, align 1
  %1202 = xor i32 %1190, %1191
  %1203 = lshr i32 %1202, 4
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  store i8 %1205, i8* %27, align 1
  %1206 = zext i1 %1194 to i8
  store i8 %1206, i8* %30, align 1
  %1207 = lshr i32 %1191, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %33, align 1
  %1209 = lshr i32 %1190, 31
  %1210 = xor i32 %1207, %1209
  %1211 = add nuw nsw i32 %1210, %1207
  %1212 = icmp eq i32 %1211, 2
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %39, align 1
  %1214 = add i64 %1038, 14
  store i64 %1214, i64* %3, align 8
  store i32 %1191, i32* %1189, align 4
  %1215 = load i64, i64* %3, align 8
  %1216 = add i64 %1215, -124
  store i64 %1216, i64* %3, align 8
  br label %block_.L_400aaa

block_.L_400b2b:                                  ; preds = %block_.L_400aaa
  store i32 0, i32* bitcast (%G_0x6191f8_type* @G_0x6191f8 to i32*), align 8
  store i32 88, i32* bitcast (%G_0x610258_type* @G_0x610258 to i32*), align 8
  %1217 = add i64 %1005, 29
  store i64 %1217, i64* %3, align 8
  store i32 0, i32* %991, align 4
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_400b48

block_.L_400b48:                                  ; preds = %block_.L_400bb6, %block_.L_400b2b
  %1218 = phi i64 [ %1447, %block_.L_400bb6 ], [ %.pre15, %block_.L_400b2b ]
  %1219 = load i64, i64* %RBP.i, align 8
  %1220 = add i64 %1219, -4
  %1221 = add i64 %1218, 4
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  %1223 = load i32, i32* %1222, align 4
  %1224 = add i32 %1223, -1
  %1225 = icmp eq i32 %1223, 0
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %14, align 1
  %1227 = and i32 %1224, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %21, align 1
  %1232 = xor i32 %1223, %1224
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  store i8 %1235, i8* %27, align 1
  %1236 = icmp eq i32 %1224, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %30, align 1
  %1238 = lshr i32 %1224, 31
  %1239 = trunc i32 %1238 to i8
  store i8 %1239, i8* %33, align 1
  %1240 = lshr i32 %1223, 31
  %1241 = xor i32 %1238, %1240
  %1242 = add nuw nsw i32 %1241, %1240
  %1243 = icmp eq i32 %1242, 2
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %39, align 1
  %1245 = icmp ne i8 %1239, 0
  %1246 = xor i1 %1245, %1243
  %.demorgan78 = or i1 %1236, %1246
  %.v79 = select i1 %.demorgan78, i64 10, i64 129
  %1247 = add i64 %1218, %.v79
  store i64 %1247, i64* %3, align 8
  br i1 %.demorgan78, label %block_400b52, label %block_.L_400bc9

block_400b52:                                     ; preds = %block_.L_400b48
  %1248 = add i64 %1219, -8
  %1249 = add i64 %1247, 7
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  store i32 0, i32* %1250, align 4
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_400b59

block_.L_400b59:                                  ; preds = %block_.L_400ba3, %block_400b52
  %1251 = phi i64 [ %1417, %block_.L_400ba3 ], [ %.pre16, %block_400b52 ]
  %1252 = load i64, i64* %RBP.i, align 8
  %1253 = add i64 %1252, -8
  %1254 = add i64 %1251, 4
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = add i32 %1256, -3
  %1258 = icmp ult i32 %1256, 3
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %14, align 1
  %1260 = and i32 %1257, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %21, align 1
  %1265 = xor i32 %1256, %1257
  %1266 = lshr i32 %1265, 4
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %27, align 1
  %1269 = icmp eq i32 %1257, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %30, align 1
  %1271 = lshr i32 %1257, 31
  %1272 = trunc i32 %1271 to i8
  store i8 %1272, i8* %33, align 1
  %1273 = lshr i32 %1256, 31
  %1274 = xor i32 %1271, %1273
  %1275 = add nuw nsw i32 %1274, %1273
  %1276 = icmp eq i32 %1275, 2
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %39, align 1
  %1278 = icmp ne i8 %1272, 0
  %1279 = xor i1 %1278, %1276
  %.demorgan80 = or i1 %1269, %1279
  %.v81 = select i1 %.demorgan80, i64 10, i64 93
  %1280 = add i64 %1251, %.v81
  store i64 %1280, i64* %3, align 8
  br i1 %.demorgan80, label %block_400b63, label %block_.L_400bb6

block_400b63:                                     ; preds = %block_.L_400b59
  %1281 = add i64 %1252, -12
  %1282 = add i64 %1280, 7
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  store i32 0, i32* %1283, align 4
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_400b6a

block_.L_400b6a:                                  ; preds = %block_400b74, %block_400b63
  %1284 = phi i64 [ %1387, %block_400b74 ], [ %.pre17, %block_400b63 ]
  %1285 = load i64, i64* %RBP.i, align 8
  %1286 = add i64 %1285, -12
  %1287 = add i64 %1284, 4
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  store i8 0, i8* %14, align 1
  %1290 = and i32 %1289, 255
  %1291 = tail call i32 @llvm.ctpop.i32(i32 %1290)
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  %1294 = xor i8 %1293, 1
  store i8 %1294, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1295 = icmp eq i32 %1289, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %30, align 1
  %1297 = lshr i32 %1289, 31
  %1298 = trunc i32 %1297 to i8
  store i8 %1298, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1299 = xor i1 %1295, true
  %1300 = icmp eq i8 %1298, 0
  %1301 = and i1 %1300, %1299
  %.v82 = select i1 %1301, i64 57, i64 10
  %1302 = add i64 %1284, %.v82
  store i64 %1302, i64* %3, align 8
  br i1 %1301, label %block_.L_400ba3, label %block_400b74

block_400b74:                                     ; preds = %block_.L_400b6a
  %1303 = add i64 %1285, -4
  %1304 = add i64 %1302, 3
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %RAX.i1121, align 8
  %1308 = add i64 %1285, -8
  %1309 = add i64 %1302, 6
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RCX.i1089, align 8
  %1313 = add i64 %1302, 9
  store i64 %1313, i64* %3, align 8
  %1314 = load i32, i32* %1288, align 4
  %1315 = shl i32 %1314, 3
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %RDX.i1086, align 8
  %1317 = add i32 %1315, %1311
  %1318 = shl i32 %1317, 3
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RCX.i1089, align 8
  %1320 = lshr i32 %1317, 28
  %1321 = and i32 %1320, 1
  %1322 = load i64, i64* %RAX.i1121, align 8
  %1323 = trunc i64 %1322 to i32
  %1324 = add i32 %1318, %1323
  %1325 = zext i32 %1324 to i64
  store i64 %1325, i64* %RAX.i1121, align 8
  %1326 = icmp ult i32 %1324, %1323
  %1327 = icmp ult i32 %1324, %1318
  %1328 = or i1 %1326, %1327
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %14, align 1
  %1330 = and i32 %1324, 255
  %1331 = tail call i32 @llvm.ctpop.i32(i32 %1330)
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  store i8 %1334, i8* %21, align 1
  %1335 = xor i64 %1319, %1322
  %1336 = trunc i64 %1335 to i32
  %1337 = xor i32 %1336, %1324
  %1338 = lshr i32 %1337, 4
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  store i8 %1340, i8* %27, align 1
  %1341 = icmp eq i32 %1324, 0
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %30, align 1
  %1343 = lshr i32 %1324, 31
  %1344 = trunc i32 %1343 to i8
  store i8 %1344, i8* %33, align 1
  %1345 = lshr i32 %1323, 31
  %1346 = xor i32 %1343, %1345
  %1347 = xor i32 %1343, %1321
  %1348 = add nuw nsw i32 %1346, %1347
  %1349 = icmp eq i32 %1348, 2
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %39, align 1
  %1351 = sext i32 %1324 to i64
  store i64 %1351, i64* %RSI.i1074, align 8
  %1352 = shl nsw i64 %1351, 2
  %1353 = add nsw i64 %1352, 6312608
  %1354 = add i64 %1302, 33
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  store i32 1, i32* %1355, align 4
  %1356 = load i64, i64* %RBP.i, align 8
  %1357 = add i64 %1356, -12
  %1358 = load i64, i64* %3, align 8
  %1359 = add i64 %1358, 3
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1357 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = add i32 %1361, 1
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RAX.i1121, align 8
  %1364 = icmp eq i32 %1361, -1
  %1365 = icmp eq i32 %1362, 0
  %1366 = or i1 %1364, %1365
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %14, align 1
  %1368 = and i32 %1362, 255
  %1369 = tail call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  store i8 %1372, i8* %21, align 1
  %1373 = xor i32 %1361, %1362
  %1374 = lshr i32 %1373, 4
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  store i8 %1376, i8* %27, align 1
  %1377 = zext i1 %1365 to i8
  store i8 %1377, i8* %30, align 1
  %1378 = lshr i32 %1362, 31
  %1379 = trunc i32 %1378 to i8
  store i8 %1379, i8* %33, align 1
  %1380 = lshr i32 %1361, 31
  %1381 = xor i32 %1378, %1380
  %1382 = add nuw nsw i32 %1381, %1378
  %1383 = icmp eq i32 %1382, 2
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %39, align 1
  %1385 = add i64 %1358, 9
  store i64 %1385, i64* %3, align 8
  store i32 %1362, i32* %1360, align 4
  %1386 = load i64, i64* %3, align 8
  %1387 = add i64 %1386, -52
  store i64 %1387, i64* %3, align 8
  br label %block_.L_400b6a

block_.L_400ba3:                                  ; preds = %block_.L_400b6a
  %1388 = add i64 %1285, -8
  %1389 = add i64 %1302, 8
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i32*
  %1391 = load i32, i32* %1390, align 4
  %1392 = add i32 %1391, 1
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RAX.i1121, align 8
  %1394 = icmp eq i32 %1391, -1
  %1395 = icmp eq i32 %1392, 0
  %1396 = or i1 %1394, %1395
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %14, align 1
  %1398 = and i32 %1392, 255
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398)
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %21, align 1
  %1403 = xor i32 %1391, %1392
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %27, align 1
  %1407 = zext i1 %1395 to i8
  store i8 %1407, i8* %30, align 1
  %1408 = lshr i32 %1392, 31
  %1409 = trunc i32 %1408 to i8
  store i8 %1409, i8* %33, align 1
  %1410 = lshr i32 %1391, 31
  %1411 = xor i32 %1408, %1410
  %1412 = add nuw nsw i32 %1411, %1408
  %1413 = icmp eq i32 %1412, 2
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %39, align 1
  %1415 = add i64 %1302, 14
  store i64 %1415, i64* %3, align 8
  store i32 %1392, i32* %1390, align 4
  %1416 = load i64, i64* %3, align 8
  %1417 = add i64 %1416, -88
  store i64 %1417, i64* %3, align 8
  br label %block_.L_400b59

block_.L_400bb6:                                  ; preds = %block_.L_400b59
  %1418 = add i64 %1252, -4
  %1419 = add i64 %1280, 8
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = add i32 %1421, 1
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RAX.i1121, align 8
  %1424 = icmp eq i32 %1421, -1
  %1425 = icmp eq i32 %1422, 0
  %1426 = or i1 %1424, %1425
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %14, align 1
  %1428 = and i32 %1422, 255
  %1429 = tail call i32 @llvm.ctpop.i32(i32 %1428)
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  store i8 %1432, i8* %21, align 1
  %1433 = xor i32 %1421, %1422
  %1434 = lshr i32 %1433, 4
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  store i8 %1436, i8* %27, align 1
  %1437 = zext i1 %1425 to i8
  store i8 %1437, i8* %30, align 1
  %1438 = lshr i32 %1422, 31
  %1439 = trunc i32 %1438 to i8
  store i8 %1439, i8* %33, align 1
  %1440 = lshr i32 %1421, 31
  %1441 = xor i32 %1438, %1440
  %1442 = add nuw nsw i32 %1441, %1438
  %1443 = icmp eq i32 %1442, 2
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %39, align 1
  %1445 = add i64 %1280, 14
  store i64 %1445, i64* %3, align 8
  store i32 %1422, i32* %1420, align 4
  %1446 = load i64, i64* %3, align 8
  %1447 = add i64 %1446, -124
  store i64 %1447, i64* %3, align 8
  br label %block_.L_400b48

block_.L_400bc9:                                  ; preds = %block_.L_400b48
  store i32 0, i32* bitcast (%G_0x6191fc_type* @G_0x6191fc to i32*), align 8
  store i32 25, i32* bitcast (%G_0x61025c_type* @G_0x61025c to i32*), align 8
  %1448 = add i64 %1247, 29
  store i64 %1448, i64* %3, align 8
  store i32 0, i32* %1222, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_400be6

block_.L_400be6:                                  ; preds = %block_.L_400c54, %block_.L_400bc9
  %1449 = phi i64 [ %1678, %block_.L_400c54 ], [ %.pre18, %block_.L_400bc9 ]
  %1450 = load i64, i64* %RBP.i, align 8
  %1451 = add i64 %1450, -4
  %1452 = add i64 %1449, 4
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = add i32 %1454, -3
  %1456 = icmp ult i32 %1454, 3
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %14, align 1
  %1458 = and i32 %1455, 255
  %1459 = tail call i32 @llvm.ctpop.i32(i32 %1458)
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = xor i8 %1461, 1
  store i8 %1462, i8* %21, align 1
  %1463 = xor i32 %1454, %1455
  %1464 = lshr i32 %1463, 4
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  store i8 %1466, i8* %27, align 1
  %1467 = icmp eq i32 %1455, 0
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %30, align 1
  %1469 = lshr i32 %1455, 31
  %1470 = trunc i32 %1469 to i8
  store i8 %1470, i8* %33, align 1
  %1471 = lshr i32 %1454, 31
  %1472 = xor i32 %1469, %1471
  %1473 = add nuw nsw i32 %1472, %1471
  %1474 = icmp eq i32 %1473, 2
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %39, align 1
  %1476 = icmp ne i8 %1470, 0
  %1477 = xor i1 %1476, %1474
  %.demorgan83 = or i1 %1467, %1477
  %.v84 = select i1 %.demorgan83, i64 10, i64 129
  %1478 = add i64 %1449, %.v84
  store i64 %1478, i64* %3, align 8
  br i1 %.demorgan83, label %block_400bf0, label %block_.L_400c67

block_400bf0:                                     ; preds = %block_.L_400be6
  %1479 = add i64 %1450, -8
  %1480 = add i64 %1478, 7
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  store i32 0, i32* %1481, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_400bf7

block_.L_400bf7:                                  ; preds = %block_.L_400c41, %block_400bf0
  %1482 = phi i64 [ %1648, %block_.L_400c41 ], [ %.pre19, %block_400bf0 ]
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -8
  %1485 = add i64 %1482, 4
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  store i8 0, i8* %14, align 1
  %1488 = and i32 %1487, 255
  %1489 = tail call i32 @llvm.ctpop.i32(i32 %1488)
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  store i8 %1492, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1493 = icmp eq i32 %1487, 0
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %30, align 1
  %1495 = lshr i32 %1487, 31
  %1496 = trunc i32 %1495 to i8
  store i8 %1496, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1497 = xor i1 %1493, true
  %1498 = icmp eq i8 %1496, 0
  %1499 = and i1 %1498, %1497
  %.v85 = select i1 %1499, i64 93, i64 10
  %1500 = add i64 %1482, %.v85
  store i64 %1500, i64* %3, align 8
  br i1 %1499, label %block_.L_400c54, label %block_400c01

block_400c01:                                     ; preds = %block_.L_400bf7
  %1501 = add i64 %1483, -12
  %1502 = add i64 %1500, 7
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  store i32 0, i32* %1503, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_400c08

block_.L_400c08:                                  ; preds = %block_400c12, %block_400c01
  %1504 = phi i64 [ %1618, %block_400c12 ], [ %.pre20, %block_400c01 ]
  %1505 = load i64, i64* %RBP.i, align 8
  %1506 = add i64 %1505, -12
  %1507 = add i64 %1504, 4
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = add i32 %1509, -1
  %1511 = icmp eq i32 %1509, 0
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %14, align 1
  %1513 = and i32 %1510, 255
  %1514 = tail call i32 @llvm.ctpop.i32(i32 %1513)
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  store i8 %1517, i8* %21, align 1
  %1518 = xor i32 %1509, %1510
  %1519 = lshr i32 %1518, 4
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  store i8 %1521, i8* %27, align 1
  %1522 = icmp eq i32 %1510, 0
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %30, align 1
  %1524 = lshr i32 %1510, 31
  %1525 = trunc i32 %1524 to i8
  store i8 %1525, i8* %33, align 1
  %1526 = lshr i32 %1509, 31
  %1527 = xor i32 %1524, %1526
  %1528 = add nuw nsw i32 %1527, %1526
  %1529 = icmp eq i32 %1528, 2
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %39, align 1
  %1531 = icmp ne i8 %1525, 0
  %1532 = xor i1 %1531, %1529
  %.demorgan86 = or i1 %1522, %1532
  %.v87 = select i1 %.demorgan86, i64 10, i64 57
  %1533 = add i64 %1504, %.v87
  store i64 %1533, i64* %3, align 8
  br i1 %.demorgan86, label %block_400c12, label %block_.L_400c41

block_400c12:                                     ; preds = %block_.L_400c08
  %1534 = add i64 %1505, -4
  %1535 = add i64 %1533, 3
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RAX.i1121, align 8
  %1539 = add i64 %1505, -8
  %1540 = add i64 %1533, 6
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RCX.i1089, align 8
  %1544 = add i64 %1533, 9
  store i64 %1544, i64* %3, align 8
  %1545 = load i32, i32* %1508, align 4
  %1546 = shl i32 %1545, 3
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RDX.i1086, align 8
  %1548 = add i32 %1546, %1542
  %1549 = shl i32 %1548, 3
  %1550 = zext i32 %1549 to i64
  store i64 %1550, i64* %RCX.i1089, align 8
  %1551 = lshr i32 %1548, 28
  %1552 = and i32 %1551, 1
  %1553 = load i64, i64* %RAX.i1121, align 8
  %1554 = trunc i64 %1553 to i32
  %1555 = add i32 %1549, %1554
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RAX.i1121, align 8
  %1557 = icmp ult i32 %1555, %1554
  %1558 = icmp ult i32 %1555, %1549
  %1559 = or i1 %1557, %1558
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %14, align 1
  %1561 = and i32 %1555, 255
  %1562 = tail call i32 @llvm.ctpop.i32(i32 %1561)
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = xor i8 %1564, 1
  store i8 %1565, i8* %21, align 1
  %1566 = xor i64 %1550, %1553
  %1567 = trunc i64 %1566 to i32
  %1568 = xor i32 %1567, %1555
  %1569 = lshr i32 %1568, 4
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  store i8 %1571, i8* %27, align 1
  %1572 = icmp eq i32 %1555, 0
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %30, align 1
  %1574 = lshr i32 %1555, 31
  %1575 = trunc i32 %1574 to i8
  store i8 %1575, i8* %33, align 1
  %1576 = lshr i32 %1554, 31
  %1577 = xor i32 %1574, %1576
  %1578 = xor i32 %1574, %1552
  %1579 = add nuw nsw i32 %1577, %1578
  %1580 = icmp eq i32 %1579, 2
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %39, align 1
  %1582 = sext i32 %1555 to i64
  store i64 %1582, i64* %RSI.i1074, align 8
  %1583 = shl nsw i64 %1582, 2
  %1584 = add nsw i64 %1583, 6314656
  %1585 = add i64 %1533, 33
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i32*
  store i32 1, i32* %1586, align 4
  %1587 = load i64, i64* %RBP.i, align 8
  %1588 = add i64 %1587, -12
  %1589 = load i64, i64* %3, align 8
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1588 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = add i32 %1592, 1
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RAX.i1121, align 8
  %1595 = icmp eq i32 %1592, -1
  %1596 = icmp eq i32 %1593, 0
  %1597 = or i1 %1595, %1596
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %14, align 1
  %1599 = and i32 %1593, 255
  %1600 = tail call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %21, align 1
  %1604 = xor i32 %1592, %1593
  %1605 = lshr i32 %1604, 4
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %27, align 1
  %1608 = zext i1 %1596 to i8
  store i8 %1608, i8* %30, align 1
  %1609 = lshr i32 %1593, 31
  %1610 = trunc i32 %1609 to i8
  store i8 %1610, i8* %33, align 1
  %1611 = lshr i32 %1592, 31
  %1612 = xor i32 %1609, %1611
  %1613 = add nuw nsw i32 %1612, %1609
  %1614 = icmp eq i32 %1613, 2
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %39, align 1
  %1616 = add i64 %1589, 9
  store i64 %1616, i64* %3, align 8
  store i32 %1593, i32* %1591, align 4
  %1617 = load i64, i64* %3, align 8
  %1618 = add i64 %1617, -52
  store i64 %1618, i64* %3, align 8
  br label %block_.L_400c08

block_.L_400c41:                                  ; preds = %block_.L_400c08
  %1619 = add i64 %1505, -8
  %1620 = add i64 %1533, 8
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = add i32 %1622, 1
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RAX.i1121, align 8
  %1625 = icmp eq i32 %1622, -1
  %1626 = icmp eq i32 %1623, 0
  %1627 = or i1 %1625, %1626
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %14, align 1
  %1629 = and i32 %1623, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  %1634 = xor i32 %1622, %1623
  %1635 = lshr i32 %1634, 4
  %1636 = trunc i32 %1635 to i8
  %1637 = and i8 %1636, 1
  store i8 %1637, i8* %27, align 1
  %1638 = zext i1 %1626 to i8
  store i8 %1638, i8* %30, align 1
  %1639 = lshr i32 %1623, 31
  %1640 = trunc i32 %1639 to i8
  store i8 %1640, i8* %33, align 1
  %1641 = lshr i32 %1622, 31
  %1642 = xor i32 %1639, %1641
  %1643 = add nuw nsw i32 %1642, %1639
  %1644 = icmp eq i32 %1643, 2
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %39, align 1
  %1646 = add i64 %1533, 14
  store i64 %1646, i64* %3, align 8
  store i32 %1623, i32* %1621, align 4
  %1647 = load i64, i64* %3, align 8
  %1648 = add i64 %1647, -88
  store i64 %1648, i64* %3, align 8
  br label %block_.L_400bf7

block_.L_400c54:                                  ; preds = %block_.L_400bf7
  %1649 = add i64 %1483, -4
  %1650 = add i64 %1500, 8
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i32*
  %1652 = load i32, i32* %1651, align 4
  %1653 = add i32 %1652, 1
  %1654 = zext i32 %1653 to i64
  store i64 %1654, i64* %RAX.i1121, align 8
  %1655 = icmp eq i32 %1652, -1
  %1656 = icmp eq i32 %1653, 0
  %1657 = or i1 %1655, %1656
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %14, align 1
  %1659 = and i32 %1653, 255
  %1660 = tail call i32 @llvm.ctpop.i32(i32 %1659)
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  store i8 %1663, i8* %21, align 1
  %1664 = xor i32 %1652, %1653
  %1665 = lshr i32 %1664, 4
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  store i8 %1667, i8* %27, align 1
  %1668 = zext i1 %1656 to i8
  store i8 %1668, i8* %30, align 1
  %1669 = lshr i32 %1653, 31
  %1670 = trunc i32 %1669 to i8
  store i8 %1670, i8* %33, align 1
  %1671 = lshr i32 %1652, 31
  %1672 = xor i32 %1669, %1671
  %1673 = add nuw nsw i32 %1672, %1669
  %1674 = icmp eq i32 %1673, 2
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %39, align 1
  %1676 = add i64 %1500, 14
  store i64 %1676, i64* %3, align 8
  store i32 %1653, i32* %1651, align 4
  %1677 = load i64, i64* %3, align 8
  %1678 = add i64 %1677, -124
  store i64 %1678, i64* %3, align 8
  br label %block_.L_400be6

block_.L_400c67:                                  ; preds = %block_.L_400be6
  store i32 0, i32* bitcast (%G_0x619200_type* @G_0x619200 to i32*), align 8
  store i32 67, i32* bitcast (%G_0x610260_type* @G_0x610260 to i32*), align 8
  %1679 = add i64 %1478, 29
  store i64 %1679, i64* %3, align 8
  store i32 0, i32* %1453, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_400c84

block_.L_400c84:                                  ; preds = %block_.L_400cf2, %block_.L_400c67
  %1680 = phi i64 [ %1909, %block_.L_400cf2 ], [ %.pre21, %block_.L_400c67 ]
  %1681 = load i64, i64* %RBP.i, align 8
  %1682 = add i64 %1681, -4
  %1683 = add i64 %1680, 4
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  store i8 0, i8* %14, align 1
  %1686 = and i32 %1685, 255
  %1687 = tail call i32 @llvm.ctpop.i32(i32 %1686)
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  store i8 %1690, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1691 = icmp eq i32 %1685, 0
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %30, align 1
  %1693 = lshr i32 %1685, 31
  %1694 = trunc i32 %1693 to i8
  store i8 %1694, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1695 = xor i1 %1691, true
  %1696 = icmp eq i8 %1694, 0
  %1697 = and i1 %1696, %1695
  %.v88 = select i1 %1697, i64 129, i64 10
  %1698 = add i64 %1680, %.v88
  store i64 %1698, i64* %3, align 8
  br i1 %1697, label %block_.L_400d05, label %block_400c8e

block_400c8e:                                     ; preds = %block_.L_400c84
  %1699 = add i64 %1681, -8
  %1700 = add i64 %1698, 7
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i32*
  store i32 0, i32* %1701, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_400c95

block_.L_400c95:                                  ; preds = %block_.L_400cdf, %block_400c8e
  %1702 = phi i64 [ %1879, %block_.L_400cdf ], [ %.pre22, %block_400c8e ]
  %1703 = load i64, i64* %RBP.i, align 8
  %1704 = add i64 %1703, -8
  %1705 = add i64 %1702, 4
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i32*
  %1707 = load i32, i32* %1706, align 4
  %1708 = add i32 %1707, -1
  %1709 = icmp eq i32 %1707, 0
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %14, align 1
  %1711 = and i32 %1708, 255
  %1712 = tail call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  store i8 %1715, i8* %21, align 1
  %1716 = xor i32 %1707, %1708
  %1717 = lshr i32 %1716, 4
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  store i8 %1719, i8* %27, align 1
  %1720 = icmp eq i32 %1708, 0
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %30, align 1
  %1722 = lshr i32 %1708, 31
  %1723 = trunc i32 %1722 to i8
  store i8 %1723, i8* %33, align 1
  %1724 = lshr i32 %1707, 31
  %1725 = xor i32 %1722, %1724
  %1726 = add nuw nsw i32 %1725, %1724
  %1727 = icmp eq i32 %1726, 2
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %39, align 1
  %1729 = icmp ne i8 %1723, 0
  %1730 = xor i1 %1729, %1727
  %.demorgan89 = or i1 %1720, %1730
  %.v90 = select i1 %.demorgan89, i64 10, i64 93
  %1731 = add i64 %1702, %.v90
  store i64 %1731, i64* %3, align 8
  br i1 %.demorgan89, label %block_400c9f, label %block_.L_400cf2

block_400c9f:                                     ; preds = %block_.L_400c95
  %1732 = add i64 %1703, -12
  %1733 = add i64 %1731, 7
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  store i32 0, i32* %1734, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_400ca6

block_.L_400ca6:                                  ; preds = %block_400cb0, %block_400c9f
  %1735 = phi i64 [ %1849, %block_400cb0 ], [ %.pre23, %block_400c9f ]
  %1736 = load i64, i64* %RBP.i, align 8
  %1737 = add i64 %1736, -12
  %1738 = add i64 %1735, 4
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i32*
  %1740 = load i32, i32* %1739, align 4
  %1741 = add i32 %1740, -3
  %1742 = icmp ult i32 %1740, 3
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %14, align 1
  %1744 = and i32 %1741, 255
  %1745 = tail call i32 @llvm.ctpop.i32(i32 %1744)
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  store i8 %1748, i8* %21, align 1
  %1749 = xor i32 %1740, %1741
  %1750 = lshr i32 %1749, 4
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  store i8 %1752, i8* %27, align 1
  %1753 = icmp eq i32 %1741, 0
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %30, align 1
  %1755 = lshr i32 %1741, 31
  %1756 = trunc i32 %1755 to i8
  store i8 %1756, i8* %33, align 1
  %1757 = lshr i32 %1740, 31
  %1758 = xor i32 %1755, %1757
  %1759 = add nuw nsw i32 %1758, %1757
  %1760 = icmp eq i32 %1759, 2
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %39, align 1
  %1762 = icmp ne i8 %1756, 0
  %1763 = xor i1 %1762, %1760
  %.demorgan91 = or i1 %1753, %1763
  %.v92 = select i1 %.demorgan91, i64 10, i64 57
  %1764 = add i64 %1735, %.v92
  store i64 %1764, i64* %3, align 8
  br i1 %.demorgan91, label %block_400cb0, label %block_.L_400cdf

block_400cb0:                                     ; preds = %block_.L_400ca6
  %1765 = add i64 %1736, -4
  %1766 = add i64 %1764, 3
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i32*
  %1768 = load i32, i32* %1767, align 4
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RAX.i1121, align 8
  %1770 = add i64 %1736, -8
  %1771 = add i64 %1764, 6
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = zext i32 %1773 to i64
  store i64 %1774, i64* %RCX.i1089, align 8
  %1775 = add i64 %1764, 9
  store i64 %1775, i64* %3, align 8
  %1776 = load i32, i32* %1739, align 4
  %1777 = shl i32 %1776, 3
  %1778 = zext i32 %1777 to i64
  store i64 %1778, i64* %RDX.i1086, align 8
  %1779 = add i32 %1777, %1773
  %1780 = shl i32 %1779, 3
  %1781 = zext i32 %1780 to i64
  store i64 %1781, i64* %RCX.i1089, align 8
  %1782 = lshr i32 %1779, 28
  %1783 = and i32 %1782, 1
  %1784 = load i64, i64* %RAX.i1121, align 8
  %1785 = trunc i64 %1784 to i32
  %1786 = add i32 %1780, %1785
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RAX.i1121, align 8
  %1788 = icmp ult i32 %1786, %1785
  %1789 = icmp ult i32 %1786, %1780
  %1790 = or i1 %1788, %1789
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %14, align 1
  %1792 = and i32 %1786, 255
  %1793 = tail call i32 @llvm.ctpop.i32(i32 %1792)
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  store i8 %1796, i8* %21, align 1
  %1797 = xor i64 %1781, %1784
  %1798 = trunc i64 %1797 to i32
  %1799 = xor i32 %1798, %1786
  %1800 = lshr i32 %1799, 4
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  store i8 %1802, i8* %27, align 1
  %1803 = icmp eq i32 %1786, 0
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %30, align 1
  %1805 = lshr i32 %1786, 31
  %1806 = trunc i32 %1805 to i8
  store i8 %1806, i8* %33, align 1
  %1807 = lshr i32 %1785, 31
  %1808 = xor i32 %1805, %1807
  %1809 = xor i32 %1805, %1783
  %1810 = add nuw nsw i32 %1808, %1809
  %1811 = icmp eq i32 %1810, 2
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %39, align 1
  %1813 = sext i32 %1786 to i64
  store i64 %1813, i64* %RSI.i1074, align 8
  %1814 = shl nsw i64 %1813, 2
  %1815 = add nsw i64 %1814, 6316704
  %1816 = add i64 %1764, 33
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1815 to i32*
  store i32 1, i32* %1817, align 4
  %1818 = load i64, i64* %RBP.i, align 8
  %1819 = add i64 %1818, -12
  %1820 = load i64, i64* %3, align 8
  %1821 = add i64 %1820, 3
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1819 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = add i32 %1823, 1
  %1825 = zext i32 %1824 to i64
  store i64 %1825, i64* %RAX.i1121, align 8
  %1826 = icmp eq i32 %1823, -1
  %1827 = icmp eq i32 %1824, 0
  %1828 = or i1 %1826, %1827
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %14, align 1
  %1830 = and i32 %1824, 255
  %1831 = tail call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  store i8 %1834, i8* %21, align 1
  %1835 = xor i32 %1823, %1824
  %1836 = lshr i32 %1835, 4
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  store i8 %1838, i8* %27, align 1
  %1839 = zext i1 %1827 to i8
  store i8 %1839, i8* %30, align 1
  %1840 = lshr i32 %1824, 31
  %1841 = trunc i32 %1840 to i8
  store i8 %1841, i8* %33, align 1
  %1842 = lshr i32 %1823, 31
  %1843 = xor i32 %1840, %1842
  %1844 = add nuw nsw i32 %1843, %1840
  %1845 = icmp eq i32 %1844, 2
  %1846 = zext i1 %1845 to i8
  store i8 %1846, i8* %39, align 1
  %1847 = add i64 %1820, 9
  store i64 %1847, i64* %3, align 8
  store i32 %1824, i32* %1822, align 4
  %1848 = load i64, i64* %3, align 8
  %1849 = add i64 %1848, -52
  store i64 %1849, i64* %3, align 8
  br label %block_.L_400ca6

block_.L_400cdf:                                  ; preds = %block_.L_400ca6
  %1850 = add i64 %1736, -8
  %1851 = add i64 %1764, 8
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1850 to i32*
  %1853 = load i32, i32* %1852, align 4
  %1854 = add i32 %1853, 1
  %1855 = zext i32 %1854 to i64
  store i64 %1855, i64* %RAX.i1121, align 8
  %1856 = icmp eq i32 %1853, -1
  %1857 = icmp eq i32 %1854, 0
  %1858 = or i1 %1856, %1857
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %14, align 1
  %1860 = and i32 %1854, 255
  %1861 = tail call i32 @llvm.ctpop.i32(i32 %1860)
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  %1864 = xor i8 %1863, 1
  store i8 %1864, i8* %21, align 1
  %1865 = xor i32 %1853, %1854
  %1866 = lshr i32 %1865, 4
  %1867 = trunc i32 %1866 to i8
  %1868 = and i8 %1867, 1
  store i8 %1868, i8* %27, align 1
  %1869 = zext i1 %1857 to i8
  store i8 %1869, i8* %30, align 1
  %1870 = lshr i32 %1854, 31
  %1871 = trunc i32 %1870 to i8
  store i8 %1871, i8* %33, align 1
  %1872 = lshr i32 %1853, 31
  %1873 = xor i32 %1870, %1872
  %1874 = add nuw nsw i32 %1873, %1870
  %1875 = icmp eq i32 %1874, 2
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %39, align 1
  %1877 = add i64 %1764, 14
  store i64 %1877, i64* %3, align 8
  store i32 %1854, i32* %1852, align 4
  %1878 = load i64, i64* %3, align 8
  %1879 = add i64 %1878, -88
  store i64 %1879, i64* %3, align 8
  br label %block_.L_400c95

block_.L_400cf2:                                  ; preds = %block_.L_400c95
  %1880 = add i64 %1703, -4
  %1881 = add i64 %1731, 8
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  %1884 = add i32 %1883, 1
  %1885 = zext i32 %1884 to i64
  store i64 %1885, i64* %RAX.i1121, align 8
  %1886 = icmp eq i32 %1883, -1
  %1887 = icmp eq i32 %1884, 0
  %1888 = or i1 %1886, %1887
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %14, align 1
  %1890 = and i32 %1884, 255
  %1891 = tail call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  store i8 %1894, i8* %21, align 1
  %1895 = xor i32 %1883, %1884
  %1896 = lshr i32 %1895, 4
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  store i8 %1898, i8* %27, align 1
  %1899 = zext i1 %1887 to i8
  store i8 %1899, i8* %30, align 1
  %1900 = lshr i32 %1884, 31
  %1901 = trunc i32 %1900 to i8
  store i8 %1901, i8* %33, align 1
  %1902 = lshr i32 %1883, 31
  %1903 = xor i32 %1900, %1902
  %1904 = add nuw nsw i32 %1903, %1900
  %1905 = icmp eq i32 %1904, 2
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %39, align 1
  %1907 = add i64 %1731, 14
  store i64 %1907, i64* %3, align 8
  store i32 %1884, i32* %1882, align 4
  %1908 = load i64, i64* %3, align 8
  %1909 = add i64 %1908, -124
  store i64 %1909, i64* %3, align 8
  br label %block_.L_400c84

block_.L_400d05:                                  ; preds = %block_.L_400c84
  store i32 0, i32* bitcast (%G_0x619204_type* @G_0x619204 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x610264_type* @G_0x610264 to i32*), align 8
  %1910 = add i64 %1698, 29
  store i64 %1910, i64* %3, align 8
  store i32 0, i32* %1684, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_400d22

block_.L_400d22:                                  ; preds = %block_.L_400d90, %block_.L_400d05
  %1911 = phi i64 [ %2129, %block_.L_400d90 ], [ %.pre24, %block_.L_400d05 ]
  %1912 = load i64, i64* %RBP.i, align 8
  %1913 = add i64 %1912, -4
  %1914 = add i64 %1911, 4
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1913 to i32*
  %1916 = load i32, i32* %1915, align 4
  %1917 = add i32 %1916, -2
  %1918 = icmp ult i32 %1916, 2
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %14, align 1
  %1920 = and i32 %1917, 255
  %1921 = tail call i32 @llvm.ctpop.i32(i32 %1920)
  %1922 = trunc i32 %1921 to i8
  %1923 = and i8 %1922, 1
  %1924 = xor i8 %1923, 1
  store i8 %1924, i8* %21, align 1
  %1925 = xor i32 %1916, %1917
  %1926 = lshr i32 %1925, 4
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  store i8 %1928, i8* %27, align 1
  %1929 = icmp eq i32 %1917, 0
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %30, align 1
  %1931 = lshr i32 %1917, 31
  %1932 = trunc i32 %1931 to i8
  store i8 %1932, i8* %33, align 1
  %1933 = lshr i32 %1916, 31
  %1934 = xor i32 %1931, %1933
  %1935 = add nuw nsw i32 %1934, %1933
  %1936 = icmp eq i32 %1935, 2
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %39, align 1
  %1938 = icmp ne i8 %1932, 0
  %1939 = xor i1 %1938, %1936
  %.demorgan93 = or i1 %1929, %1939
  %.v94 = select i1 %.demorgan93, i64 10, i64 129
  %1940 = add i64 %1911, %.v94
  store i64 %1940, i64* %3, align 8
  br i1 %.demorgan93, label %block_400d2c, label %block_.L_400da3

block_400d2c:                                     ; preds = %block_.L_400d22
  %1941 = add i64 %1912, -8
  %1942 = add i64 %1940, 7
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  store i32 0, i32* %1943, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_400d33

block_.L_400d33:                                  ; preds = %block_.L_400d7d, %block_400d2c
  %1944 = phi i64 [ %2099, %block_.L_400d7d ], [ %.pre25, %block_400d2c ]
  %1945 = load i64, i64* %RBP.i, align 8
  %1946 = add i64 %1945, -8
  %1947 = add i64 %1944, 4
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  store i8 0, i8* %14, align 1
  %1950 = and i32 %1949, 255
  %1951 = tail call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  store i8 %1954, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1955 = icmp eq i32 %1949, 0
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %30, align 1
  %1957 = lshr i32 %1949, 31
  %1958 = trunc i32 %1957 to i8
  store i8 %1958, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1959 = xor i1 %1955, true
  %1960 = icmp eq i8 %1958, 0
  %1961 = and i1 %1960, %1959
  %.v95 = select i1 %1961, i64 93, i64 10
  %1962 = add i64 %1944, %.v95
  store i64 %1962, i64* %3, align 8
  br i1 %1961, label %block_.L_400d90, label %block_400d3d

block_400d3d:                                     ; preds = %block_.L_400d33
  %1963 = add i64 %1945, -12
  %1964 = add i64 %1962, 7
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i32*
  store i32 0, i32* %1965, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_400d44

block_.L_400d44:                                  ; preds = %block_400d4e, %block_400d3d
  %1966 = phi i64 [ %2069, %block_400d4e ], [ %.pre26, %block_400d3d ]
  %1967 = load i64, i64* %RBP.i, align 8
  %1968 = add i64 %1967, -12
  %1969 = add i64 %1966, 4
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i32*
  %1971 = load i32, i32* %1970, align 4
  store i8 0, i8* %14, align 1
  %1972 = and i32 %1971, 255
  %1973 = tail call i32 @llvm.ctpop.i32(i32 %1972)
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  %1976 = xor i8 %1975, 1
  store i8 %1976, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1977 = icmp eq i32 %1971, 0
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %30, align 1
  %1979 = lshr i32 %1971, 31
  %1980 = trunc i32 %1979 to i8
  store i8 %1980, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1981 = xor i1 %1977, true
  %1982 = icmp eq i8 %1980, 0
  %1983 = and i1 %1982, %1981
  %.v96 = select i1 %1983, i64 57, i64 10
  %1984 = add i64 %1966, %.v96
  store i64 %1984, i64* %3, align 8
  br i1 %1983, label %block_.L_400d7d, label %block_400d4e

block_400d4e:                                     ; preds = %block_.L_400d44
  %1985 = add i64 %1967, -4
  %1986 = add i64 %1984, 3
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i32*
  %1988 = load i32, i32* %1987, align 4
  %1989 = zext i32 %1988 to i64
  store i64 %1989, i64* %RAX.i1121, align 8
  %1990 = add i64 %1967, -8
  %1991 = add i64 %1984, 6
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i32*
  %1993 = load i32, i32* %1992, align 4
  %1994 = zext i32 %1993 to i64
  store i64 %1994, i64* %RCX.i1089, align 8
  %1995 = add i64 %1984, 9
  store i64 %1995, i64* %3, align 8
  %1996 = load i32, i32* %1970, align 4
  %1997 = shl i32 %1996, 3
  %1998 = zext i32 %1997 to i64
  store i64 %1998, i64* %RDX.i1086, align 8
  %1999 = add i32 %1997, %1993
  %2000 = shl i32 %1999, 3
  %2001 = zext i32 %2000 to i64
  store i64 %2001, i64* %RCX.i1089, align 8
  %2002 = lshr i32 %1999, 28
  %2003 = and i32 %2002, 1
  %2004 = load i64, i64* %RAX.i1121, align 8
  %2005 = trunc i64 %2004 to i32
  %2006 = add i32 %2000, %2005
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RAX.i1121, align 8
  %2008 = icmp ult i32 %2006, %2005
  %2009 = icmp ult i32 %2006, %2000
  %2010 = or i1 %2008, %2009
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %14, align 1
  %2012 = and i32 %2006, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %21, align 1
  %2017 = xor i64 %2001, %2004
  %2018 = trunc i64 %2017 to i32
  %2019 = xor i32 %2018, %2006
  %2020 = lshr i32 %2019, 4
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  store i8 %2022, i8* %27, align 1
  %2023 = icmp eq i32 %2006, 0
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %30, align 1
  %2025 = lshr i32 %2006, 31
  %2026 = trunc i32 %2025 to i8
  store i8 %2026, i8* %33, align 1
  %2027 = lshr i32 %2005, 31
  %2028 = xor i32 %2025, %2027
  %2029 = xor i32 %2025, %2003
  %2030 = add nuw nsw i32 %2028, %2029
  %2031 = icmp eq i32 %2030, 2
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %39, align 1
  %2033 = sext i32 %2006 to i64
  store i64 %2033, i64* %RSI.i1074, align 8
  %2034 = shl nsw i64 %2033, 2
  %2035 = add nsw i64 %2034, 6318752
  %2036 = add i64 %1984, 33
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i32*
  store i32 1, i32* %2037, align 4
  %2038 = load i64, i64* %RBP.i, align 8
  %2039 = add i64 %2038, -12
  %2040 = load i64, i64* %3, align 8
  %2041 = add i64 %2040, 3
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2039 to i32*
  %2043 = load i32, i32* %2042, align 4
  %2044 = add i32 %2043, 1
  %2045 = zext i32 %2044 to i64
  store i64 %2045, i64* %RAX.i1121, align 8
  %2046 = icmp eq i32 %2043, -1
  %2047 = icmp eq i32 %2044, 0
  %2048 = or i1 %2046, %2047
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %14, align 1
  %2050 = and i32 %2044, 255
  %2051 = tail call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  store i8 %2054, i8* %21, align 1
  %2055 = xor i32 %2043, %2044
  %2056 = lshr i32 %2055, 4
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  store i8 %2058, i8* %27, align 1
  %2059 = zext i1 %2047 to i8
  store i8 %2059, i8* %30, align 1
  %2060 = lshr i32 %2044, 31
  %2061 = trunc i32 %2060 to i8
  store i8 %2061, i8* %33, align 1
  %2062 = lshr i32 %2043, 31
  %2063 = xor i32 %2060, %2062
  %2064 = add nuw nsw i32 %2063, %2060
  %2065 = icmp eq i32 %2064, 2
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %39, align 1
  %2067 = add i64 %2040, 9
  store i64 %2067, i64* %3, align 8
  store i32 %2044, i32* %2042, align 4
  %2068 = load i64, i64* %3, align 8
  %2069 = add i64 %2068, -52
  store i64 %2069, i64* %3, align 8
  br label %block_.L_400d44

block_.L_400d7d:                                  ; preds = %block_.L_400d44
  %2070 = add i64 %1967, -8
  %2071 = add i64 %1984, 8
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = add i32 %2073, 1
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RAX.i1121, align 8
  %2076 = icmp eq i32 %2073, -1
  %2077 = icmp eq i32 %2074, 0
  %2078 = or i1 %2076, %2077
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %14, align 1
  %2080 = and i32 %2074, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %21, align 1
  %2085 = xor i32 %2073, %2074
  %2086 = lshr i32 %2085, 4
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %27, align 1
  %2089 = zext i1 %2077 to i8
  store i8 %2089, i8* %30, align 1
  %2090 = lshr i32 %2074, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %33, align 1
  %2092 = lshr i32 %2073, 31
  %2093 = xor i32 %2090, %2092
  %2094 = add nuw nsw i32 %2093, %2090
  %2095 = icmp eq i32 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %39, align 1
  %2097 = add i64 %1984, 14
  store i64 %2097, i64* %3, align 8
  store i32 %2074, i32* %2072, align 4
  %2098 = load i64, i64* %3, align 8
  %2099 = add i64 %2098, -88
  store i64 %2099, i64* %3, align 8
  br label %block_.L_400d33

block_.L_400d90:                                  ; preds = %block_.L_400d33
  %2100 = add i64 %1945, -4
  %2101 = add i64 %1962, 8
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = add i32 %2103, 1
  %2105 = zext i32 %2104 to i64
  store i64 %2105, i64* %RAX.i1121, align 8
  %2106 = icmp eq i32 %2103, -1
  %2107 = icmp eq i32 %2104, 0
  %2108 = or i1 %2106, %2107
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %14, align 1
  %2110 = and i32 %2104, 255
  %2111 = tail call i32 @llvm.ctpop.i32(i32 %2110)
  %2112 = trunc i32 %2111 to i8
  %2113 = and i8 %2112, 1
  %2114 = xor i8 %2113, 1
  store i8 %2114, i8* %21, align 1
  %2115 = xor i32 %2103, %2104
  %2116 = lshr i32 %2115, 4
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  store i8 %2118, i8* %27, align 1
  %2119 = zext i1 %2107 to i8
  store i8 %2119, i8* %30, align 1
  %2120 = lshr i32 %2104, 31
  %2121 = trunc i32 %2120 to i8
  store i8 %2121, i8* %33, align 1
  %2122 = lshr i32 %2103, 31
  %2123 = xor i32 %2120, %2122
  %2124 = add nuw nsw i32 %2123, %2120
  %2125 = icmp eq i32 %2124, 2
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %39, align 1
  %2127 = add i64 %1962, 14
  store i64 %2127, i64* %3, align 8
  store i32 %2104, i32* %2102, align 4
  %2128 = load i64, i64* %3, align 8
  %2129 = add i64 %2128, -124
  store i64 %2129, i64* %3, align 8
  br label %block_.L_400d22

block_.L_400da3:                                  ; preds = %block_.L_400d22
  store i32 1, i32* bitcast (%G_0x619208_type* @G_0x619208 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x610268_type* @G_0x610268 to i32*), align 8
  %2130 = add i64 %1940, 29
  store i64 %2130, i64* %3, align 8
  store i32 0, i32* %1915, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_400dc0

block_.L_400dc0:                                  ; preds = %block_.L_400e2e, %block_.L_400da3
  %2131 = phi i64 [ %2349, %block_.L_400e2e ], [ %.pre27, %block_.L_400da3 ]
  %2132 = load i64, i64* %RBP.i, align 8
  %2133 = add i64 %2132, -4
  %2134 = add i64 %2131, 4
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i32*
  %2136 = load i32, i32* %2135, align 4
  store i8 0, i8* %14, align 1
  %2137 = and i32 %2136, 255
  %2138 = tail call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  store i8 %2141, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2142 = icmp eq i32 %2136, 0
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %30, align 1
  %2144 = lshr i32 %2136, 31
  %2145 = trunc i32 %2144 to i8
  store i8 %2145, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2146 = xor i1 %2142, true
  %2147 = icmp eq i8 %2145, 0
  %2148 = and i1 %2147, %2146
  %.v97 = select i1 %2148, i64 129, i64 10
  %2149 = add i64 %2131, %.v97
  store i64 %2149, i64* %3, align 8
  br i1 %2148, label %block_.L_400e41, label %block_400dca

block_400dca:                                     ; preds = %block_.L_400dc0
  %2150 = add i64 %2132, -8
  %2151 = add i64 %2149, 7
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i32*
  store i32 0, i32* %2152, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_400dd1

block_.L_400dd1:                                  ; preds = %block_.L_400e1b, %block_400dca
  %2153 = phi i64 [ %2319, %block_.L_400e1b ], [ %.pre28, %block_400dca ]
  %2154 = load i64, i64* %RBP.i, align 8
  %2155 = add i64 %2154, -8
  %2156 = add i64 %2153, 4
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i32*
  %2158 = load i32, i32* %2157, align 4
  %2159 = add i32 %2158, -2
  %2160 = icmp ult i32 %2158, 2
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %14, align 1
  %2162 = and i32 %2159, 255
  %2163 = tail call i32 @llvm.ctpop.i32(i32 %2162)
  %2164 = trunc i32 %2163 to i8
  %2165 = and i8 %2164, 1
  %2166 = xor i8 %2165, 1
  store i8 %2166, i8* %21, align 1
  %2167 = xor i32 %2158, %2159
  %2168 = lshr i32 %2167, 4
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  store i8 %2170, i8* %27, align 1
  %2171 = icmp eq i32 %2159, 0
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %30, align 1
  %2173 = lshr i32 %2159, 31
  %2174 = trunc i32 %2173 to i8
  store i8 %2174, i8* %33, align 1
  %2175 = lshr i32 %2158, 31
  %2176 = xor i32 %2173, %2175
  %2177 = add nuw nsw i32 %2176, %2175
  %2178 = icmp eq i32 %2177, 2
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %39, align 1
  %2180 = icmp ne i8 %2174, 0
  %2181 = xor i1 %2180, %2178
  %.demorgan98 = or i1 %2171, %2181
  %.v99 = select i1 %.demorgan98, i64 10, i64 93
  %2182 = add i64 %2153, %.v99
  store i64 %2182, i64* %3, align 8
  br i1 %.demorgan98, label %block_400ddb, label %block_.L_400e2e

block_400ddb:                                     ; preds = %block_.L_400dd1
  %2183 = add i64 %2154, -12
  %2184 = add i64 %2182, 7
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i32*
  store i32 0, i32* %2185, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_400de2

block_.L_400de2:                                  ; preds = %block_400dec, %block_400ddb
  %2186 = phi i64 [ %2289, %block_400dec ], [ %.pre29, %block_400ddb ]
  %2187 = load i64, i64* %RBP.i, align 8
  %2188 = add i64 %2187, -12
  %2189 = add i64 %2186, 4
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2188 to i32*
  %2191 = load i32, i32* %2190, align 4
  store i8 0, i8* %14, align 1
  %2192 = and i32 %2191, 255
  %2193 = tail call i32 @llvm.ctpop.i32(i32 %2192)
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  store i8 %2196, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2197 = icmp eq i32 %2191, 0
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %30, align 1
  %2199 = lshr i32 %2191, 31
  %2200 = trunc i32 %2199 to i8
  store i8 %2200, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2201 = xor i1 %2197, true
  %2202 = icmp eq i8 %2200, 0
  %2203 = and i1 %2202, %2201
  %.v100 = select i1 %2203, i64 57, i64 10
  %2204 = add i64 %2186, %.v100
  store i64 %2204, i64* %3, align 8
  br i1 %2203, label %block_.L_400e1b, label %block_400dec

block_400dec:                                     ; preds = %block_.L_400de2
  %2205 = add i64 %2187, -4
  %2206 = add i64 %2204, 3
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RAX.i1121, align 8
  %2210 = add i64 %2187, -8
  %2211 = add i64 %2204, 6
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %RCX.i1089, align 8
  %2215 = add i64 %2204, 9
  store i64 %2215, i64* %3, align 8
  %2216 = load i32, i32* %2190, align 4
  %2217 = shl i32 %2216, 3
  %2218 = zext i32 %2217 to i64
  store i64 %2218, i64* %RDX.i1086, align 8
  %2219 = add i32 %2217, %2213
  %2220 = shl i32 %2219, 3
  %2221 = zext i32 %2220 to i64
  store i64 %2221, i64* %RCX.i1089, align 8
  %2222 = lshr i32 %2219, 28
  %2223 = and i32 %2222, 1
  %2224 = load i64, i64* %RAX.i1121, align 8
  %2225 = trunc i64 %2224 to i32
  %2226 = add i32 %2220, %2225
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RAX.i1121, align 8
  %2228 = icmp ult i32 %2226, %2225
  %2229 = icmp ult i32 %2226, %2220
  %2230 = or i1 %2228, %2229
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %14, align 1
  %2232 = and i32 %2226, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %21, align 1
  %2237 = xor i64 %2221, %2224
  %2238 = trunc i64 %2237 to i32
  %2239 = xor i32 %2238, %2226
  %2240 = lshr i32 %2239, 4
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  store i8 %2242, i8* %27, align 1
  %2243 = icmp eq i32 %2226, 0
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %30, align 1
  %2245 = lshr i32 %2226, 31
  %2246 = trunc i32 %2245 to i8
  store i8 %2246, i8* %33, align 1
  %2247 = lshr i32 %2225, 31
  %2248 = xor i32 %2245, %2247
  %2249 = xor i32 %2245, %2223
  %2250 = add nuw nsw i32 %2248, %2249
  %2251 = icmp eq i32 %2250, 2
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %39, align 1
  %2253 = sext i32 %2226 to i64
  store i64 %2253, i64* %RSI.i1074, align 8
  %2254 = shl nsw i64 %2253, 2
  %2255 = add nsw i64 %2254, 6320800
  %2256 = add i64 %2204, 33
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  store i32 1, i32* %2257, align 4
  %2258 = load i64, i64* %RBP.i, align 8
  %2259 = add i64 %2258, -12
  %2260 = load i64, i64* %3, align 8
  %2261 = add i64 %2260, 3
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2259 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = add i32 %2263, 1
  %2265 = zext i32 %2264 to i64
  store i64 %2265, i64* %RAX.i1121, align 8
  %2266 = icmp eq i32 %2263, -1
  %2267 = icmp eq i32 %2264, 0
  %2268 = or i1 %2266, %2267
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %14, align 1
  %2270 = and i32 %2264, 255
  %2271 = tail call i32 @llvm.ctpop.i32(i32 %2270)
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  %2274 = xor i8 %2273, 1
  store i8 %2274, i8* %21, align 1
  %2275 = xor i32 %2263, %2264
  %2276 = lshr i32 %2275, 4
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  store i8 %2278, i8* %27, align 1
  %2279 = zext i1 %2267 to i8
  store i8 %2279, i8* %30, align 1
  %2280 = lshr i32 %2264, 31
  %2281 = trunc i32 %2280 to i8
  store i8 %2281, i8* %33, align 1
  %2282 = lshr i32 %2263, 31
  %2283 = xor i32 %2280, %2282
  %2284 = add nuw nsw i32 %2283, %2280
  %2285 = icmp eq i32 %2284, 2
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %39, align 1
  %2287 = add i64 %2260, 9
  store i64 %2287, i64* %3, align 8
  store i32 %2264, i32* %2262, align 4
  %2288 = load i64, i64* %3, align 8
  %2289 = add i64 %2288, -52
  store i64 %2289, i64* %3, align 8
  br label %block_.L_400de2

block_.L_400e1b:                                  ; preds = %block_.L_400de2
  %2290 = add i64 %2187, -8
  %2291 = add i64 %2204, 8
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i32*
  %2293 = load i32, i32* %2292, align 4
  %2294 = add i32 %2293, 1
  %2295 = zext i32 %2294 to i64
  store i64 %2295, i64* %RAX.i1121, align 8
  %2296 = icmp eq i32 %2293, -1
  %2297 = icmp eq i32 %2294, 0
  %2298 = or i1 %2296, %2297
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %14, align 1
  %2300 = and i32 %2294, 255
  %2301 = tail call i32 @llvm.ctpop.i32(i32 %2300)
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = xor i8 %2303, 1
  store i8 %2304, i8* %21, align 1
  %2305 = xor i32 %2293, %2294
  %2306 = lshr i32 %2305, 4
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  store i8 %2308, i8* %27, align 1
  %2309 = zext i1 %2297 to i8
  store i8 %2309, i8* %30, align 1
  %2310 = lshr i32 %2294, 31
  %2311 = trunc i32 %2310 to i8
  store i8 %2311, i8* %33, align 1
  %2312 = lshr i32 %2293, 31
  %2313 = xor i32 %2310, %2312
  %2314 = add nuw nsw i32 %2313, %2310
  %2315 = icmp eq i32 %2314, 2
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %39, align 1
  %2317 = add i64 %2204, 14
  store i64 %2317, i64* %3, align 8
  store i32 %2294, i32* %2292, align 4
  %2318 = load i64, i64* %3, align 8
  %2319 = add i64 %2318, -88
  store i64 %2319, i64* %3, align 8
  br label %block_.L_400dd1

block_.L_400e2e:                                  ; preds = %block_.L_400dd1
  %2320 = add i64 %2154, -4
  %2321 = add i64 %2182, 8
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  %2324 = add i32 %2323, 1
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %RAX.i1121, align 8
  %2326 = icmp eq i32 %2323, -1
  %2327 = icmp eq i32 %2324, 0
  %2328 = or i1 %2326, %2327
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %14, align 1
  %2330 = and i32 %2324, 255
  %2331 = tail call i32 @llvm.ctpop.i32(i32 %2330)
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  store i8 %2334, i8* %21, align 1
  %2335 = xor i32 %2323, %2324
  %2336 = lshr i32 %2335, 4
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  store i8 %2338, i8* %27, align 1
  %2339 = zext i1 %2327 to i8
  store i8 %2339, i8* %30, align 1
  %2340 = lshr i32 %2324, 31
  %2341 = trunc i32 %2340 to i8
  store i8 %2341, i8* %33, align 1
  %2342 = lshr i32 %2323, 31
  %2343 = xor i32 %2340, %2342
  %2344 = add nuw nsw i32 %2343, %2340
  %2345 = icmp eq i32 %2344, 2
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %39, align 1
  %2347 = add i64 %2182, 14
  store i64 %2347, i64* %3, align 8
  store i32 %2324, i32* %2322, align 4
  %2348 = load i64, i64* %3, align 8
  %2349 = add i64 %2348, -124
  store i64 %2349, i64* %3, align 8
  br label %block_.L_400dc0

block_.L_400e41:                                  ; preds = %block_.L_400dc0
  store i32 1, i32* bitcast (%G_0x61920c_type* @G_0x61920c to i32*), align 8
  store i32 16, i32* bitcast (%G_0x61026c_type* @G_0x61026c to i32*), align 8
  %2350 = add i64 %2149, 29
  store i64 %2350, i64* %3, align 8
  store i32 0, i32* %2135, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_400e5e

block_.L_400e5e:                                  ; preds = %block_.L_400ecc, %block_.L_400e41
  %2351 = phi i64 [ %2569, %block_.L_400ecc ], [ %.pre30, %block_.L_400e41 ]
  %2352 = load i64, i64* %RBP.i, align 8
  %2353 = add i64 %2352, -4
  %2354 = add i64 %2351, 4
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i32*
  %2356 = load i32, i32* %2355, align 4
  store i8 0, i8* %14, align 1
  %2357 = and i32 %2356, 255
  %2358 = tail call i32 @llvm.ctpop.i32(i32 %2357)
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = xor i8 %2360, 1
  store i8 %2361, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2362 = icmp eq i32 %2356, 0
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %30, align 1
  %2364 = lshr i32 %2356, 31
  %2365 = trunc i32 %2364 to i8
  store i8 %2365, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2366 = xor i1 %2362, true
  %2367 = icmp eq i8 %2365, 0
  %2368 = and i1 %2367, %2366
  %.v101 = select i1 %2368, i64 129, i64 10
  %2369 = add i64 %2351, %.v101
  store i64 %2369, i64* %3, align 8
  br i1 %2368, label %block_.L_400edf, label %block_400e68

block_400e68:                                     ; preds = %block_.L_400e5e
  %2370 = add i64 %2352, -8
  %2371 = add i64 %2369, 7
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  store i32 0, i32* %2372, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_400e6f

block_.L_400e6f:                                  ; preds = %block_.L_400eb9, %block_400e68
  %2373 = phi i64 [ %2539, %block_.L_400eb9 ], [ %.pre31, %block_400e68 ]
  %2374 = load i64, i64* %RBP.i, align 8
  %2375 = add i64 %2374, -8
  %2376 = add i64 %2373, 4
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i32*
  %2378 = load i32, i32* %2377, align 4
  store i8 0, i8* %14, align 1
  %2379 = and i32 %2378, 255
  %2380 = tail call i32 @llvm.ctpop.i32(i32 %2379)
  %2381 = trunc i32 %2380 to i8
  %2382 = and i8 %2381, 1
  %2383 = xor i8 %2382, 1
  store i8 %2383, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2384 = icmp eq i32 %2378, 0
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %30, align 1
  %2386 = lshr i32 %2378, 31
  %2387 = trunc i32 %2386 to i8
  store i8 %2387, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2388 = xor i1 %2384, true
  %2389 = icmp eq i8 %2387, 0
  %2390 = and i1 %2389, %2388
  %.v102 = select i1 %2390, i64 93, i64 10
  %2391 = add i64 %2373, %.v102
  store i64 %2391, i64* %3, align 8
  br i1 %2390, label %block_.L_400ecc, label %block_400e79

block_400e79:                                     ; preds = %block_.L_400e6f
  %2392 = add i64 %2374, -12
  %2393 = add i64 %2391, 7
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to i32*
  store i32 0, i32* %2394, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_400e80

block_.L_400e80:                                  ; preds = %block_400e8a, %block_400e79
  %2395 = phi i64 [ %2509, %block_400e8a ], [ %.pre32, %block_400e79 ]
  %2396 = load i64, i64* %RBP.i, align 8
  %2397 = add i64 %2396, -12
  %2398 = add i64 %2395, 4
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i32*
  %2400 = load i32, i32* %2399, align 4
  %2401 = add i32 %2400, -2
  %2402 = icmp ult i32 %2400, 2
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %14, align 1
  %2404 = and i32 %2401, 255
  %2405 = tail call i32 @llvm.ctpop.i32(i32 %2404)
  %2406 = trunc i32 %2405 to i8
  %2407 = and i8 %2406, 1
  %2408 = xor i8 %2407, 1
  store i8 %2408, i8* %21, align 1
  %2409 = xor i32 %2400, %2401
  %2410 = lshr i32 %2409, 4
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  store i8 %2412, i8* %27, align 1
  %2413 = icmp eq i32 %2401, 0
  %2414 = zext i1 %2413 to i8
  store i8 %2414, i8* %30, align 1
  %2415 = lshr i32 %2401, 31
  %2416 = trunc i32 %2415 to i8
  store i8 %2416, i8* %33, align 1
  %2417 = lshr i32 %2400, 31
  %2418 = xor i32 %2415, %2417
  %2419 = add nuw nsw i32 %2418, %2417
  %2420 = icmp eq i32 %2419, 2
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %39, align 1
  %2422 = icmp ne i8 %2416, 0
  %2423 = xor i1 %2422, %2420
  %.demorgan103 = or i1 %2413, %2423
  %.v104 = select i1 %.demorgan103, i64 10, i64 57
  %2424 = add i64 %2395, %.v104
  store i64 %2424, i64* %3, align 8
  br i1 %.demorgan103, label %block_400e8a, label %block_.L_400eb9

block_400e8a:                                     ; preds = %block_.L_400e80
  %2425 = add i64 %2396, -4
  %2426 = add i64 %2424, 3
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i32*
  %2428 = load i32, i32* %2427, align 4
  %2429 = zext i32 %2428 to i64
  store i64 %2429, i64* %RAX.i1121, align 8
  %2430 = add i64 %2396, -8
  %2431 = add i64 %2424, 6
  store i64 %2431, i64* %3, align 8
  %2432 = inttoptr i64 %2430 to i32*
  %2433 = load i32, i32* %2432, align 4
  %2434 = zext i32 %2433 to i64
  store i64 %2434, i64* %RCX.i1089, align 8
  %2435 = add i64 %2424, 9
  store i64 %2435, i64* %3, align 8
  %2436 = load i32, i32* %2399, align 4
  %2437 = shl i32 %2436, 3
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RDX.i1086, align 8
  %2439 = add i32 %2437, %2433
  %2440 = shl i32 %2439, 3
  %2441 = zext i32 %2440 to i64
  store i64 %2441, i64* %RCX.i1089, align 8
  %2442 = lshr i32 %2439, 28
  %2443 = and i32 %2442, 1
  %2444 = load i64, i64* %RAX.i1121, align 8
  %2445 = trunc i64 %2444 to i32
  %2446 = add i32 %2440, %2445
  %2447 = zext i32 %2446 to i64
  store i64 %2447, i64* %RAX.i1121, align 8
  %2448 = icmp ult i32 %2446, %2445
  %2449 = icmp ult i32 %2446, %2440
  %2450 = or i1 %2448, %2449
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %14, align 1
  %2452 = and i32 %2446, 255
  %2453 = tail call i32 @llvm.ctpop.i32(i32 %2452)
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = xor i8 %2455, 1
  store i8 %2456, i8* %21, align 1
  %2457 = xor i64 %2441, %2444
  %2458 = trunc i64 %2457 to i32
  %2459 = xor i32 %2458, %2446
  %2460 = lshr i32 %2459, 4
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  store i8 %2462, i8* %27, align 1
  %2463 = icmp eq i32 %2446, 0
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %30, align 1
  %2465 = lshr i32 %2446, 31
  %2466 = trunc i32 %2465 to i8
  store i8 %2466, i8* %33, align 1
  %2467 = lshr i32 %2445, 31
  %2468 = xor i32 %2465, %2467
  %2469 = xor i32 %2465, %2443
  %2470 = add nuw nsw i32 %2468, %2469
  %2471 = icmp eq i32 %2470, 2
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %39, align 1
  %2473 = sext i32 %2446 to i64
  store i64 %2473, i64* %RSI.i1074, align 8
  %2474 = shl nsw i64 %2473, 2
  %2475 = add nsw i64 %2474, 6322848
  %2476 = add i64 %2424, 33
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i32*
  store i32 1, i32* %2477, align 4
  %2478 = load i64, i64* %RBP.i, align 8
  %2479 = add i64 %2478, -12
  %2480 = load i64, i64* %3, align 8
  %2481 = add i64 %2480, 3
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2479 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = add i32 %2483, 1
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %RAX.i1121, align 8
  %2486 = icmp eq i32 %2483, -1
  %2487 = icmp eq i32 %2484, 0
  %2488 = or i1 %2486, %2487
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %14, align 1
  %2490 = and i32 %2484, 255
  %2491 = tail call i32 @llvm.ctpop.i32(i32 %2490)
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  store i8 %2494, i8* %21, align 1
  %2495 = xor i32 %2483, %2484
  %2496 = lshr i32 %2495, 4
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  store i8 %2498, i8* %27, align 1
  %2499 = zext i1 %2487 to i8
  store i8 %2499, i8* %30, align 1
  %2500 = lshr i32 %2484, 31
  %2501 = trunc i32 %2500 to i8
  store i8 %2501, i8* %33, align 1
  %2502 = lshr i32 %2483, 31
  %2503 = xor i32 %2500, %2502
  %2504 = add nuw nsw i32 %2503, %2500
  %2505 = icmp eq i32 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %39, align 1
  %2507 = add i64 %2480, 9
  store i64 %2507, i64* %3, align 8
  store i32 %2484, i32* %2482, align 4
  %2508 = load i64, i64* %3, align 8
  %2509 = add i64 %2508, -52
  store i64 %2509, i64* %3, align 8
  br label %block_.L_400e80

block_.L_400eb9:                                  ; preds = %block_.L_400e80
  %2510 = add i64 %2396, -8
  %2511 = add i64 %2424, 8
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = add i32 %2513, 1
  %2515 = zext i32 %2514 to i64
  store i64 %2515, i64* %RAX.i1121, align 8
  %2516 = icmp eq i32 %2513, -1
  %2517 = icmp eq i32 %2514, 0
  %2518 = or i1 %2516, %2517
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %14, align 1
  %2520 = and i32 %2514, 255
  %2521 = tail call i32 @llvm.ctpop.i32(i32 %2520)
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  %2524 = xor i8 %2523, 1
  store i8 %2524, i8* %21, align 1
  %2525 = xor i32 %2513, %2514
  %2526 = lshr i32 %2525, 4
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  store i8 %2528, i8* %27, align 1
  %2529 = zext i1 %2517 to i8
  store i8 %2529, i8* %30, align 1
  %2530 = lshr i32 %2514, 31
  %2531 = trunc i32 %2530 to i8
  store i8 %2531, i8* %33, align 1
  %2532 = lshr i32 %2513, 31
  %2533 = xor i32 %2530, %2532
  %2534 = add nuw nsw i32 %2533, %2530
  %2535 = icmp eq i32 %2534, 2
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %39, align 1
  %2537 = add i64 %2424, 14
  store i64 %2537, i64* %3, align 8
  store i32 %2514, i32* %2512, align 4
  %2538 = load i64, i64* %3, align 8
  %2539 = add i64 %2538, -88
  store i64 %2539, i64* %3, align 8
  br label %block_.L_400e6f

block_.L_400ecc:                                  ; preds = %block_.L_400e6f
  %2540 = add i64 %2374, -4
  %2541 = add i64 %2391, 8
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i32*
  %2543 = load i32, i32* %2542, align 4
  %2544 = add i32 %2543, 1
  %2545 = zext i32 %2544 to i64
  store i64 %2545, i64* %RAX.i1121, align 8
  %2546 = icmp eq i32 %2543, -1
  %2547 = icmp eq i32 %2544, 0
  %2548 = or i1 %2546, %2547
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %14, align 1
  %2550 = and i32 %2544, 255
  %2551 = tail call i32 @llvm.ctpop.i32(i32 %2550)
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  %2554 = xor i8 %2553, 1
  store i8 %2554, i8* %21, align 1
  %2555 = xor i32 %2543, %2544
  %2556 = lshr i32 %2555, 4
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  store i8 %2558, i8* %27, align 1
  %2559 = zext i1 %2547 to i8
  store i8 %2559, i8* %30, align 1
  %2560 = lshr i32 %2544, 31
  %2561 = trunc i32 %2560 to i8
  store i8 %2561, i8* %33, align 1
  %2562 = lshr i32 %2543, 31
  %2563 = xor i32 %2560, %2562
  %2564 = add nuw nsw i32 %2563, %2560
  %2565 = icmp eq i32 %2564, 2
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %39, align 1
  %2567 = add i64 %2391, 14
  store i64 %2567, i64* %3, align 8
  store i32 %2544, i32* %2542, align 4
  %2568 = load i64, i64* %3, align 8
  %2569 = add i64 %2568, -124
  store i64 %2569, i64* %3, align 8
  br label %block_.L_400e5e

block_.L_400edf:                                  ; preds = %block_.L_400e5e
  store i32 1, i32* bitcast (%G_0x619210_type* @G_0x619210 to i32*), align 8
  store i32 128, i32* bitcast (%G_0x610270_type* @G_0x610270 to i32*), align 8
  %2570 = add i64 %2369, 29
  store i64 %2570, i64* %3, align 8
  store i32 0, i32* %2355, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_400efc

block_.L_400efc:                                  ; preds = %block_.L_400f6a, %block_.L_400edf
  %2571 = phi i64 [ %2800, %block_.L_400f6a ], [ %.pre33, %block_.L_400edf ]
  %2572 = load i64, i64* %RBP.i, align 8
  %2573 = add i64 %2572, -4
  %2574 = add i64 %2571, 4
  store i64 %2574, i64* %3, align 8
  %2575 = inttoptr i64 %2573 to i32*
  %2576 = load i32, i32* %2575, align 4
  %2577 = add i32 %2576, -1
  %2578 = icmp eq i32 %2576, 0
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %14, align 1
  %2580 = and i32 %2577, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %21, align 1
  %2585 = xor i32 %2576, %2577
  %2586 = lshr i32 %2585, 4
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  store i8 %2588, i8* %27, align 1
  %2589 = icmp eq i32 %2577, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %30, align 1
  %2591 = lshr i32 %2577, 31
  %2592 = trunc i32 %2591 to i8
  store i8 %2592, i8* %33, align 1
  %2593 = lshr i32 %2576, 31
  %2594 = xor i32 %2591, %2593
  %2595 = add nuw nsw i32 %2594, %2593
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %39, align 1
  %2598 = icmp ne i8 %2592, 0
  %2599 = xor i1 %2598, %2596
  %.demorgan105 = or i1 %2589, %2599
  %.v106 = select i1 %.demorgan105, i64 10, i64 129
  %2600 = add i64 %2571, %.v106
  store i64 %2600, i64* %3, align 8
  br i1 %.demorgan105, label %block_400f06, label %block_.L_400f7d

block_400f06:                                     ; preds = %block_.L_400efc
  %2601 = add i64 %2572, -8
  %2602 = add i64 %2600, 7
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i32*
  store i32 0, i32* %2603, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_400f0d

block_.L_400f0d:                                  ; preds = %block_.L_400f57, %block_400f06
  %2604 = phi i64 [ %2770, %block_.L_400f57 ], [ %.pre34, %block_400f06 ]
  %2605 = load i64, i64* %RBP.i, align 8
  %2606 = add i64 %2605, -8
  %2607 = add i64 %2604, 4
  store i64 %2607, i64* %3, align 8
  %2608 = inttoptr i64 %2606 to i32*
  %2609 = load i32, i32* %2608, align 4
  %2610 = add i32 %2609, -1
  %2611 = icmp eq i32 %2609, 0
  %2612 = zext i1 %2611 to i8
  store i8 %2612, i8* %14, align 1
  %2613 = and i32 %2610, 255
  %2614 = tail call i32 @llvm.ctpop.i32(i32 %2613)
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  %2617 = xor i8 %2616, 1
  store i8 %2617, i8* %21, align 1
  %2618 = xor i32 %2609, %2610
  %2619 = lshr i32 %2618, 4
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  store i8 %2621, i8* %27, align 1
  %2622 = icmp eq i32 %2610, 0
  %2623 = zext i1 %2622 to i8
  store i8 %2623, i8* %30, align 1
  %2624 = lshr i32 %2610, 31
  %2625 = trunc i32 %2624 to i8
  store i8 %2625, i8* %33, align 1
  %2626 = lshr i32 %2609, 31
  %2627 = xor i32 %2624, %2626
  %2628 = add nuw nsw i32 %2627, %2626
  %2629 = icmp eq i32 %2628, 2
  %2630 = zext i1 %2629 to i8
  store i8 %2630, i8* %39, align 1
  %2631 = icmp ne i8 %2625, 0
  %2632 = xor i1 %2631, %2629
  %.demorgan107 = or i1 %2622, %2632
  %.v108 = select i1 %.demorgan107, i64 10, i64 93
  %2633 = add i64 %2604, %.v108
  store i64 %2633, i64* %3, align 8
  br i1 %.demorgan107, label %block_400f17, label %block_.L_400f6a

block_400f17:                                     ; preds = %block_.L_400f0d
  %2634 = add i64 %2605, -12
  %2635 = add i64 %2633, 7
  store i64 %2635, i64* %3, align 8
  %2636 = inttoptr i64 %2634 to i32*
  store i32 0, i32* %2636, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_400f1e

block_.L_400f1e:                                  ; preds = %block_400f28, %block_400f17
  %2637 = phi i64 [ %2740, %block_400f28 ], [ %.pre35, %block_400f17 ]
  %2638 = load i64, i64* %RBP.i, align 8
  %2639 = add i64 %2638, -12
  %2640 = add i64 %2637, 4
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  store i8 0, i8* %14, align 1
  %2643 = and i32 %2642, 255
  %2644 = tail call i32 @llvm.ctpop.i32(i32 %2643)
  %2645 = trunc i32 %2644 to i8
  %2646 = and i8 %2645, 1
  %2647 = xor i8 %2646, 1
  store i8 %2647, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2648 = icmp eq i32 %2642, 0
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %30, align 1
  %2650 = lshr i32 %2642, 31
  %2651 = trunc i32 %2650 to i8
  store i8 %2651, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2652 = xor i1 %2648, true
  %2653 = icmp eq i8 %2651, 0
  %2654 = and i1 %2653, %2652
  %.v109 = select i1 %2654, i64 57, i64 10
  %2655 = add i64 %2637, %.v109
  store i64 %2655, i64* %3, align 8
  br i1 %2654, label %block_.L_400f57, label %block_400f28

block_400f28:                                     ; preds = %block_.L_400f1e
  %2656 = add i64 %2638, -4
  %2657 = add i64 %2655, 3
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2656 to i32*
  %2659 = load i32, i32* %2658, align 4
  %2660 = zext i32 %2659 to i64
  store i64 %2660, i64* %RAX.i1121, align 8
  %2661 = add i64 %2638, -8
  %2662 = add i64 %2655, 6
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i32*
  %2664 = load i32, i32* %2663, align 4
  %2665 = zext i32 %2664 to i64
  store i64 %2665, i64* %RCX.i1089, align 8
  %2666 = add i64 %2655, 9
  store i64 %2666, i64* %3, align 8
  %2667 = load i32, i32* %2641, align 4
  %2668 = shl i32 %2667, 3
  %2669 = zext i32 %2668 to i64
  store i64 %2669, i64* %RDX.i1086, align 8
  %2670 = add i32 %2668, %2664
  %2671 = shl i32 %2670, 3
  %2672 = zext i32 %2671 to i64
  store i64 %2672, i64* %RCX.i1089, align 8
  %2673 = lshr i32 %2670, 28
  %2674 = and i32 %2673, 1
  %2675 = load i64, i64* %RAX.i1121, align 8
  %2676 = trunc i64 %2675 to i32
  %2677 = add i32 %2671, %2676
  %2678 = zext i32 %2677 to i64
  store i64 %2678, i64* %RAX.i1121, align 8
  %2679 = icmp ult i32 %2677, %2676
  %2680 = icmp ult i32 %2677, %2671
  %2681 = or i1 %2679, %2680
  %2682 = zext i1 %2681 to i8
  store i8 %2682, i8* %14, align 1
  %2683 = and i32 %2677, 255
  %2684 = tail call i32 @llvm.ctpop.i32(i32 %2683)
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = xor i8 %2686, 1
  store i8 %2687, i8* %21, align 1
  %2688 = xor i64 %2672, %2675
  %2689 = trunc i64 %2688 to i32
  %2690 = xor i32 %2689, %2677
  %2691 = lshr i32 %2690, 4
  %2692 = trunc i32 %2691 to i8
  %2693 = and i8 %2692, 1
  store i8 %2693, i8* %27, align 1
  %2694 = icmp eq i32 %2677, 0
  %2695 = zext i1 %2694 to i8
  store i8 %2695, i8* %30, align 1
  %2696 = lshr i32 %2677, 31
  %2697 = trunc i32 %2696 to i8
  store i8 %2697, i8* %33, align 1
  %2698 = lshr i32 %2676, 31
  %2699 = xor i32 %2696, %2698
  %2700 = xor i32 %2696, %2674
  %2701 = add nuw nsw i32 %2699, %2700
  %2702 = icmp eq i32 %2701, 2
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %39, align 1
  %2704 = sext i32 %2677 to i64
  store i64 %2704, i64* %RSI.i1074, align 8
  %2705 = shl nsw i64 %2704, 2
  %2706 = add nsw i64 %2705, 6324896
  %2707 = add i64 %2655, 33
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  store i32 1, i32* %2708, align 4
  %2709 = load i64, i64* %RBP.i, align 8
  %2710 = add i64 %2709, -12
  %2711 = load i64, i64* %3, align 8
  %2712 = add i64 %2711, 3
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2710 to i32*
  %2714 = load i32, i32* %2713, align 4
  %2715 = add i32 %2714, 1
  %2716 = zext i32 %2715 to i64
  store i64 %2716, i64* %RAX.i1121, align 8
  %2717 = icmp eq i32 %2714, -1
  %2718 = icmp eq i32 %2715, 0
  %2719 = or i1 %2717, %2718
  %2720 = zext i1 %2719 to i8
  store i8 %2720, i8* %14, align 1
  %2721 = and i32 %2715, 255
  %2722 = tail call i32 @llvm.ctpop.i32(i32 %2721)
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  store i8 %2725, i8* %21, align 1
  %2726 = xor i32 %2714, %2715
  %2727 = lshr i32 %2726, 4
  %2728 = trunc i32 %2727 to i8
  %2729 = and i8 %2728, 1
  store i8 %2729, i8* %27, align 1
  %2730 = zext i1 %2718 to i8
  store i8 %2730, i8* %30, align 1
  %2731 = lshr i32 %2715, 31
  %2732 = trunc i32 %2731 to i8
  store i8 %2732, i8* %33, align 1
  %2733 = lshr i32 %2714, 31
  %2734 = xor i32 %2731, %2733
  %2735 = add nuw nsw i32 %2734, %2731
  %2736 = icmp eq i32 %2735, 2
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %39, align 1
  %2738 = add i64 %2711, 9
  store i64 %2738, i64* %3, align 8
  store i32 %2715, i32* %2713, align 4
  %2739 = load i64, i64* %3, align 8
  %2740 = add i64 %2739, -52
  store i64 %2740, i64* %3, align 8
  br label %block_.L_400f1e

block_.L_400f57:                                  ; preds = %block_.L_400f1e
  %2741 = add i64 %2638, -8
  %2742 = add i64 %2655, 8
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2741 to i32*
  %2744 = load i32, i32* %2743, align 4
  %2745 = add i32 %2744, 1
  %2746 = zext i32 %2745 to i64
  store i64 %2746, i64* %RAX.i1121, align 8
  %2747 = icmp eq i32 %2744, -1
  %2748 = icmp eq i32 %2745, 0
  %2749 = or i1 %2747, %2748
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %14, align 1
  %2751 = and i32 %2745, 255
  %2752 = tail call i32 @llvm.ctpop.i32(i32 %2751)
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  store i8 %2755, i8* %21, align 1
  %2756 = xor i32 %2744, %2745
  %2757 = lshr i32 %2756, 4
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  store i8 %2759, i8* %27, align 1
  %2760 = zext i1 %2748 to i8
  store i8 %2760, i8* %30, align 1
  %2761 = lshr i32 %2745, 31
  %2762 = trunc i32 %2761 to i8
  store i8 %2762, i8* %33, align 1
  %2763 = lshr i32 %2744, 31
  %2764 = xor i32 %2761, %2763
  %2765 = add nuw nsw i32 %2764, %2761
  %2766 = icmp eq i32 %2765, 2
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %39, align 1
  %2768 = add i64 %2655, 14
  store i64 %2768, i64* %3, align 8
  store i32 %2745, i32* %2743, align 4
  %2769 = load i64, i64* %3, align 8
  %2770 = add i64 %2769, -88
  store i64 %2770, i64* %3, align 8
  br label %block_.L_400f0d

block_.L_400f6a:                                  ; preds = %block_.L_400f0d
  %2771 = add i64 %2605, -4
  %2772 = add i64 %2633, 8
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2771 to i32*
  %2774 = load i32, i32* %2773, align 4
  %2775 = add i32 %2774, 1
  %2776 = zext i32 %2775 to i64
  store i64 %2776, i64* %RAX.i1121, align 8
  %2777 = icmp eq i32 %2774, -1
  %2778 = icmp eq i32 %2775, 0
  %2779 = or i1 %2777, %2778
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %14, align 1
  %2781 = and i32 %2775, 255
  %2782 = tail call i32 @llvm.ctpop.i32(i32 %2781)
  %2783 = trunc i32 %2782 to i8
  %2784 = and i8 %2783, 1
  %2785 = xor i8 %2784, 1
  store i8 %2785, i8* %21, align 1
  %2786 = xor i32 %2774, %2775
  %2787 = lshr i32 %2786, 4
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  store i8 %2789, i8* %27, align 1
  %2790 = zext i1 %2778 to i8
  store i8 %2790, i8* %30, align 1
  %2791 = lshr i32 %2775, 31
  %2792 = trunc i32 %2791 to i8
  store i8 %2792, i8* %33, align 1
  %2793 = lshr i32 %2774, 31
  %2794 = xor i32 %2791, %2793
  %2795 = add nuw nsw i32 %2794, %2791
  %2796 = icmp eq i32 %2795, 2
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %39, align 1
  %2798 = add i64 %2633, 14
  store i64 %2798, i64* %3, align 8
  store i32 %2775, i32* %2773, align 4
  %2799 = load i64, i64* %3, align 8
  %2800 = add i64 %2799, -124
  store i64 %2800, i64* %3, align 8
  br label %block_.L_400efc

block_.L_400f7d:                                  ; preds = %block_.L_400efc
  store i32 2, i32* bitcast (%G_0x619214_type* @G_0x619214 to i32*), align 8
  store i32 9, i32* bitcast (%G_0x610274_type* @G_0x610274 to i32*), align 8
  %2801 = add i64 %2600, 29
  store i64 %2801, i64* %3, align 8
  store i32 0, i32* %2575, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_400f9a

block_.L_400f9a:                                  ; preds = %block_.L_401008, %block_.L_400f7d
  %2802 = phi i64 [ %3031, %block_.L_401008 ], [ %.pre36, %block_.L_400f7d ]
  %2803 = load i64, i64* %RBP.i, align 8
  %2804 = add i64 %2803, -4
  %2805 = add i64 %2802, 4
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i32*
  %2807 = load i32, i32* %2806, align 4
  %2808 = add i32 %2807, -1
  %2809 = icmp eq i32 %2807, 0
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %14, align 1
  %2811 = and i32 %2808, 255
  %2812 = tail call i32 @llvm.ctpop.i32(i32 %2811)
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  %2815 = xor i8 %2814, 1
  store i8 %2815, i8* %21, align 1
  %2816 = xor i32 %2807, %2808
  %2817 = lshr i32 %2816, 4
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  store i8 %2819, i8* %27, align 1
  %2820 = icmp eq i32 %2808, 0
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %30, align 1
  %2822 = lshr i32 %2808, 31
  %2823 = trunc i32 %2822 to i8
  store i8 %2823, i8* %33, align 1
  %2824 = lshr i32 %2807, 31
  %2825 = xor i32 %2822, %2824
  %2826 = add nuw nsw i32 %2825, %2824
  %2827 = icmp eq i32 %2826, 2
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %39, align 1
  %2829 = icmp ne i8 %2823, 0
  %2830 = xor i1 %2829, %2827
  %.demorgan110 = or i1 %2820, %2830
  %.v111 = select i1 %.demorgan110, i64 10, i64 129
  %2831 = add i64 %2802, %.v111
  store i64 %2831, i64* %3, align 8
  br i1 %.demorgan110, label %block_400fa4, label %block_.L_40101b

block_400fa4:                                     ; preds = %block_.L_400f9a
  %2832 = add i64 %2803, -8
  %2833 = add i64 %2831, 7
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  store i32 0, i32* %2834, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_400fab

block_.L_400fab:                                  ; preds = %block_.L_400ff5, %block_400fa4
  %2835 = phi i64 [ %3001, %block_.L_400ff5 ], [ %.pre37, %block_400fa4 ]
  %2836 = load i64, i64* %RBP.i, align 8
  %2837 = add i64 %2836, -8
  %2838 = add i64 %2835, 4
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2837 to i32*
  %2840 = load i32, i32* %2839, align 4
  store i8 0, i8* %14, align 1
  %2841 = and i32 %2840, 255
  %2842 = tail call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  store i8 %2845, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2846 = icmp eq i32 %2840, 0
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %30, align 1
  %2848 = lshr i32 %2840, 31
  %2849 = trunc i32 %2848 to i8
  store i8 %2849, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2850 = xor i1 %2846, true
  %2851 = icmp eq i8 %2849, 0
  %2852 = and i1 %2851, %2850
  %.v112 = select i1 %2852, i64 93, i64 10
  %2853 = add i64 %2835, %.v112
  store i64 %2853, i64* %3, align 8
  br i1 %2852, label %block_.L_401008, label %block_400fb5

block_400fb5:                                     ; preds = %block_.L_400fab
  %2854 = add i64 %2836, -12
  %2855 = add i64 %2853, 7
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2854 to i32*
  store i32 0, i32* %2856, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_400fbc

block_.L_400fbc:                                  ; preds = %block_400fc6, %block_400fb5
  %2857 = phi i64 [ %2971, %block_400fc6 ], [ %.pre38, %block_400fb5 ]
  %2858 = load i64, i64* %RBP.i, align 8
  %2859 = add i64 %2858, -12
  %2860 = add i64 %2857, 4
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = add i32 %2862, -1
  %2864 = icmp eq i32 %2862, 0
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %14, align 1
  %2866 = and i32 %2863, 255
  %2867 = tail call i32 @llvm.ctpop.i32(i32 %2866)
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  store i8 %2870, i8* %21, align 1
  %2871 = xor i32 %2862, %2863
  %2872 = lshr i32 %2871, 4
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  store i8 %2874, i8* %27, align 1
  %2875 = icmp eq i32 %2863, 0
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %30, align 1
  %2877 = lshr i32 %2863, 31
  %2878 = trunc i32 %2877 to i8
  store i8 %2878, i8* %33, align 1
  %2879 = lshr i32 %2862, 31
  %2880 = xor i32 %2877, %2879
  %2881 = add nuw nsw i32 %2880, %2879
  %2882 = icmp eq i32 %2881, 2
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %39, align 1
  %2884 = icmp ne i8 %2878, 0
  %2885 = xor i1 %2884, %2882
  %.demorgan113 = or i1 %2875, %2885
  %.v114 = select i1 %.demorgan113, i64 10, i64 57
  %2886 = add i64 %2857, %.v114
  store i64 %2886, i64* %3, align 8
  br i1 %.demorgan113, label %block_400fc6, label %block_.L_400ff5

block_400fc6:                                     ; preds = %block_.L_400fbc
  %2887 = add i64 %2858, -4
  %2888 = add i64 %2886, 3
  store i64 %2888, i64* %3, align 8
  %2889 = inttoptr i64 %2887 to i32*
  %2890 = load i32, i32* %2889, align 4
  %2891 = zext i32 %2890 to i64
  store i64 %2891, i64* %RAX.i1121, align 8
  %2892 = add i64 %2858, -8
  %2893 = add i64 %2886, 6
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RCX.i1089, align 8
  %2897 = add i64 %2886, 9
  store i64 %2897, i64* %3, align 8
  %2898 = load i32, i32* %2861, align 4
  %2899 = shl i32 %2898, 3
  %2900 = zext i32 %2899 to i64
  store i64 %2900, i64* %RDX.i1086, align 8
  %2901 = add i32 %2899, %2895
  %2902 = shl i32 %2901, 3
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %RCX.i1089, align 8
  %2904 = lshr i32 %2901, 28
  %2905 = and i32 %2904, 1
  %2906 = load i64, i64* %RAX.i1121, align 8
  %2907 = trunc i64 %2906 to i32
  %2908 = add i32 %2902, %2907
  %2909 = zext i32 %2908 to i64
  store i64 %2909, i64* %RAX.i1121, align 8
  %2910 = icmp ult i32 %2908, %2907
  %2911 = icmp ult i32 %2908, %2902
  %2912 = or i1 %2910, %2911
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %14, align 1
  %2914 = and i32 %2908, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %21, align 1
  %2919 = xor i64 %2903, %2906
  %2920 = trunc i64 %2919 to i32
  %2921 = xor i32 %2920, %2908
  %2922 = lshr i32 %2921, 4
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  store i8 %2924, i8* %27, align 1
  %2925 = icmp eq i32 %2908, 0
  %2926 = zext i1 %2925 to i8
  store i8 %2926, i8* %30, align 1
  %2927 = lshr i32 %2908, 31
  %2928 = trunc i32 %2927 to i8
  store i8 %2928, i8* %33, align 1
  %2929 = lshr i32 %2907, 31
  %2930 = xor i32 %2927, %2929
  %2931 = xor i32 %2927, %2905
  %2932 = add nuw nsw i32 %2930, %2931
  %2933 = icmp eq i32 %2932, 2
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %39, align 1
  %2935 = sext i32 %2908 to i64
  store i64 %2935, i64* %RSI.i1074, align 8
  %2936 = shl nsw i64 %2935, 2
  %2937 = add nsw i64 %2936, 6326944
  %2938 = add i64 %2886, 33
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i32*
  store i32 1, i32* %2939, align 4
  %2940 = load i64, i64* %RBP.i, align 8
  %2941 = add i64 %2940, -12
  %2942 = load i64, i64* %3, align 8
  %2943 = add i64 %2942, 3
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2941 to i32*
  %2945 = load i32, i32* %2944, align 4
  %2946 = add i32 %2945, 1
  %2947 = zext i32 %2946 to i64
  store i64 %2947, i64* %RAX.i1121, align 8
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
  %2957 = xor i32 %2945, %2946
  %2958 = lshr i32 %2957, 4
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  store i8 %2960, i8* %27, align 1
  %2961 = zext i1 %2949 to i8
  store i8 %2961, i8* %30, align 1
  %2962 = lshr i32 %2946, 31
  %2963 = trunc i32 %2962 to i8
  store i8 %2963, i8* %33, align 1
  %2964 = lshr i32 %2945, 31
  %2965 = xor i32 %2962, %2964
  %2966 = add nuw nsw i32 %2965, %2962
  %2967 = icmp eq i32 %2966, 2
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %39, align 1
  %2969 = add i64 %2942, 9
  store i64 %2969, i64* %3, align 8
  store i32 %2946, i32* %2944, align 4
  %2970 = load i64, i64* %3, align 8
  %2971 = add i64 %2970, -52
  store i64 %2971, i64* %3, align 8
  br label %block_.L_400fbc

block_.L_400ff5:                                  ; preds = %block_.L_400fbc
  %2972 = add i64 %2858, -8
  %2973 = add i64 %2886, 8
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i32*
  %2975 = load i32, i32* %2974, align 4
  %2976 = add i32 %2975, 1
  %2977 = zext i32 %2976 to i64
  store i64 %2977, i64* %RAX.i1121, align 8
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
  %2987 = xor i32 %2975, %2976
  %2988 = lshr i32 %2987, 4
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  store i8 %2990, i8* %27, align 1
  %2991 = zext i1 %2979 to i8
  store i8 %2991, i8* %30, align 1
  %2992 = lshr i32 %2976, 31
  %2993 = trunc i32 %2992 to i8
  store i8 %2993, i8* %33, align 1
  %2994 = lshr i32 %2975, 31
  %2995 = xor i32 %2992, %2994
  %2996 = add nuw nsw i32 %2995, %2992
  %2997 = icmp eq i32 %2996, 2
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %39, align 1
  %2999 = add i64 %2886, 14
  store i64 %2999, i64* %3, align 8
  store i32 %2976, i32* %2974, align 4
  %3000 = load i64, i64* %3, align 8
  %3001 = add i64 %3000, -88
  store i64 %3001, i64* %3, align 8
  br label %block_.L_400fab

block_.L_401008:                                  ; preds = %block_.L_400fab
  %3002 = add i64 %2836, -4
  %3003 = add i64 %2853, 8
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = add i32 %3005, 1
  %3007 = zext i32 %3006 to i64
  store i64 %3007, i64* %RAX.i1121, align 8
  %3008 = icmp eq i32 %3005, -1
  %3009 = icmp eq i32 %3006, 0
  %3010 = or i1 %3008, %3009
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %14, align 1
  %3012 = and i32 %3006, 255
  %3013 = tail call i32 @llvm.ctpop.i32(i32 %3012)
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  %3016 = xor i8 %3015, 1
  store i8 %3016, i8* %21, align 1
  %3017 = xor i32 %3005, %3006
  %3018 = lshr i32 %3017, 4
  %3019 = trunc i32 %3018 to i8
  %3020 = and i8 %3019, 1
  store i8 %3020, i8* %27, align 1
  %3021 = zext i1 %3009 to i8
  store i8 %3021, i8* %30, align 1
  %3022 = lshr i32 %3006, 31
  %3023 = trunc i32 %3022 to i8
  store i8 %3023, i8* %33, align 1
  %3024 = lshr i32 %3005, 31
  %3025 = xor i32 %3022, %3024
  %3026 = add nuw nsw i32 %3025, %3022
  %3027 = icmp eq i32 %3026, 2
  %3028 = zext i1 %3027 to i8
  store i8 %3028, i8* %39, align 1
  %3029 = add i64 %2853, 14
  store i64 %3029, i64* %3, align 8
  store i32 %3006, i32* %3004, align 4
  %3030 = load i64, i64* %3, align 8
  %3031 = add i64 %3030, -124
  store i64 %3031, i64* %3, align 8
  br label %block_.L_400f9a

block_.L_40101b:                                  ; preds = %block_.L_400f9a
  store i32 2, i32* bitcast (%G_0x619218_type* @G_0x619218 to i32*), align 8
  store i32 65, i32* bitcast (%G_0x610278_type* @G_0x610278 to i32*), align 8
  %3032 = add i64 %2831, 29
  store i64 %3032, i64* %3, align 8
  store i32 0, i32* %2806, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_401038

block_.L_401038:                                  ; preds = %block_.L_4010a6, %block_.L_40101b
  %3033 = phi i64 [ %3262, %block_.L_4010a6 ], [ %.pre39, %block_.L_40101b ]
  %3034 = load i64, i64* %RBP.i, align 8
  %3035 = add i64 %3034, -4
  %3036 = add i64 %3033, 4
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3035 to i32*
  %3038 = load i32, i32* %3037, align 4
  store i8 0, i8* %14, align 1
  %3039 = and i32 %3038, 255
  %3040 = tail call i32 @llvm.ctpop.i32(i32 %3039)
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  %3043 = xor i8 %3042, 1
  store i8 %3043, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3044 = icmp eq i32 %3038, 0
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %30, align 1
  %3046 = lshr i32 %3038, 31
  %3047 = trunc i32 %3046 to i8
  store i8 %3047, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3048 = xor i1 %3044, true
  %3049 = icmp eq i8 %3047, 0
  %3050 = and i1 %3049, %3048
  %.v115 = select i1 %3050, i64 129, i64 10
  %3051 = add i64 %3033, %.v115
  store i64 %3051, i64* %3, align 8
  br i1 %3050, label %block_.L_4010b9, label %block_401042

block_401042:                                     ; preds = %block_.L_401038
  %3052 = add i64 %3034, -8
  %3053 = add i64 %3051, 7
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i32*
  store i32 0, i32* %3054, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_401049

block_.L_401049:                                  ; preds = %block_.L_401093, %block_401042
  %3055 = phi i64 [ %3232, %block_.L_401093 ], [ %.pre40, %block_401042 ]
  %3056 = load i64, i64* %RBP.i, align 8
  %3057 = add i64 %3056, -8
  %3058 = add i64 %3055, 4
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to i32*
  %3060 = load i32, i32* %3059, align 4
  %3061 = add i32 %3060, -1
  %3062 = icmp eq i32 %3060, 0
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %14, align 1
  %3064 = and i32 %3061, 255
  %3065 = tail call i32 @llvm.ctpop.i32(i32 %3064)
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  %3068 = xor i8 %3067, 1
  store i8 %3068, i8* %21, align 1
  %3069 = xor i32 %3060, %3061
  %3070 = lshr i32 %3069, 4
  %3071 = trunc i32 %3070 to i8
  %3072 = and i8 %3071, 1
  store i8 %3072, i8* %27, align 1
  %3073 = icmp eq i32 %3061, 0
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %30, align 1
  %3075 = lshr i32 %3061, 31
  %3076 = trunc i32 %3075 to i8
  store i8 %3076, i8* %33, align 1
  %3077 = lshr i32 %3060, 31
  %3078 = xor i32 %3075, %3077
  %3079 = add nuw nsw i32 %3078, %3077
  %3080 = icmp eq i32 %3079, 2
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %39, align 1
  %3082 = icmp ne i8 %3076, 0
  %3083 = xor i1 %3082, %3080
  %.demorgan116 = or i1 %3073, %3083
  %.v117 = select i1 %.demorgan116, i64 10, i64 93
  %3084 = add i64 %3055, %.v117
  store i64 %3084, i64* %3, align 8
  br i1 %.demorgan116, label %block_401053, label %block_.L_4010a6

block_401053:                                     ; preds = %block_.L_401049
  %3085 = add i64 %3056, -12
  %3086 = add i64 %3084, 7
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i32*
  store i32 0, i32* %3087, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_40105a

block_.L_40105a:                                  ; preds = %block_401064, %block_401053
  %3088 = phi i64 [ %3202, %block_401064 ], [ %.pre41, %block_401053 ]
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -12
  %3091 = add i64 %3088, 4
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  %3093 = load i32, i32* %3092, align 4
  %3094 = add i32 %3093, -1
  %3095 = icmp eq i32 %3093, 0
  %3096 = zext i1 %3095 to i8
  store i8 %3096, i8* %14, align 1
  %3097 = and i32 %3094, 255
  %3098 = tail call i32 @llvm.ctpop.i32(i32 %3097)
  %3099 = trunc i32 %3098 to i8
  %3100 = and i8 %3099, 1
  %3101 = xor i8 %3100, 1
  store i8 %3101, i8* %21, align 1
  %3102 = xor i32 %3093, %3094
  %3103 = lshr i32 %3102, 4
  %3104 = trunc i32 %3103 to i8
  %3105 = and i8 %3104, 1
  store i8 %3105, i8* %27, align 1
  %3106 = icmp eq i32 %3094, 0
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %30, align 1
  %3108 = lshr i32 %3094, 31
  %3109 = trunc i32 %3108 to i8
  store i8 %3109, i8* %33, align 1
  %3110 = lshr i32 %3093, 31
  %3111 = xor i32 %3108, %3110
  %3112 = add nuw nsw i32 %3111, %3110
  %3113 = icmp eq i32 %3112, 2
  %3114 = zext i1 %3113 to i8
  store i8 %3114, i8* %39, align 1
  %3115 = icmp ne i8 %3109, 0
  %3116 = xor i1 %3115, %3113
  %.demorgan118 = or i1 %3106, %3116
  %.v119 = select i1 %.demorgan118, i64 10, i64 57
  %3117 = add i64 %3088, %.v119
  store i64 %3117, i64* %3, align 8
  br i1 %.demorgan118, label %block_401064, label %block_.L_401093

block_401064:                                     ; preds = %block_.L_40105a
  %3118 = add i64 %3089, -4
  %3119 = add i64 %3117, 3
  store i64 %3119, i64* %3, align 8
  %3120 = inttoptr i64 %3118 to i32*
  %3121 = load i32, i32* %3120, align 4
  %3122 = zext i32 %3121 to i64
  store i64 %3122, i64* %RAX.i1121, align 8
  %3123 = add i64 %3089, -8
  %3124 = add i64 %3117, 6
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i32*
  %3126 = load i32, i32* %3125, align 4
  %3127 = zext i32 %3126 to i64
  store i64 %3127, i64* %RCX.i1089, align 8
  %3128 = add i64 %3117, 9
  store i64 %3128, i64* %3, align 8
  %3129 = load i32, i32* %3092, align 4
  %3130 = shl i32 %3129, 3
  %3131 = zext i32 %3130 to i64
  store i64 %3131, i64* %RDX.i1086, align 8
  %3132 = add i32 %3130, %3126
  %3133 = shl i32 %3132, 3
  %3134 = zext i32 %3133 to i64
  store i64 %3134, i64* %RCX.i1089, align 8
  %3135 = lshr i32 %3132, 28
  %3136 = and i32 %3135, 1
  %3137 = load i64, i64* %RAX.i1121, align 8
  %3138 = trunc i64 %3137 to i32
  %3139 = add i32 %3133, %3138
  %3140 = zext i32 %3139 to i64
  store i64 %3140, i64* %RAX.i1121, align 8
  %3141 = icmp ult i32 %3139, %3138
  %3142 = icmp ult i32 %3139, %3133
  %3143 = or i1 %3141, %3142
  %3144 = zext i1 %3143 to i8
  store i8 %3144, i8* %14, align 1
  %3145 = and i32 %3139, 255
  %3146 = tail call i32 @llvm.ctpop.i32(i32 %3145)
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  %3149 = xor i8 %3148, 1
  store i8 %3149, i8* %21, align 1
  %3150 = xor i64 %3134, %3137
  %3151 = trunc i64 %3150 to i32
  %3152 = xor i32 %3151, %3139
  %3153 = lshr i32 %3152, 4
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  store i8 %3155, i8* %27, align 1
  %3156 = icmp eq i32 %3139, 0
  %3157 = zext i1 %3156 to i8
  store i8 %3157, i8* %30, align 1
  %3158 = lshr i32 %3139, 31
  %3159 = trunc i32 %3158 to i8
  store i8 %3159, i8* %33, align 1
  %3160 = lshr i32 %3138, 31
  %3161 = xor i32 %3158, %3160
  %3162 = xor i32 %3158, %3136
  %3163 = add nuw nsw i32 %3161, %3162
  %3164 = icmp eq i32 %3163, 2
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %39, align 1
  %3166 = sext i32 %3139 to i64
  store i64 %3166, i64* %RSI.i1074, align 8
  %3167 = shl nsw i64 %3166, 2
  %3168 = add nsw i64 %3167, 6328992
  %3169 = add i64 %3117, 33
  store i64 %3169, i64* %3, align 8
  %3170 = inttoptr i64 %3168 to i32*
  store i32 1, i32* %3170, align 4
  %3171 = load i64, i64* %RBP.i, align 8
  %3172 = add i64 %3171, -12
  %3173 = load i64, i64* %3, align 8
  %3174 = add i64 %3173, 3
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3172 to i32*
  %3176 = load i32, i32* %3175, align 4
  %3177 = add i32 %3176, 1
  %3178 = zext i32 %3177 to i64
  store i64 %3178, i64* %RAX.i1121, align 8
  %3179 = icmp eq i32 %3176, -1
  %3180 = icmp eq i32 %3177, 0
  %3181 = or i1 %3179, %3180
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %14, align 1
  %3183 = and i32 %3177, 255
  %3184 = tail call i32 @llvm.ctpop.i32(i32 %3183)
  %3185 = trunc i32 %3184 to i8
  %3186 = and i8 %3185, 1
  %3187 = xor i8 %3186, 1
  store i8 %3187, i8* %21, align 1
  %3188 = xor i32 %3176, %3177
  %3189 = lshr i32 %3188, 4
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  store i8 %3191, i8* %27, align 1
  %3192 = zext i1 %3180 to i8
  store i8 %3192, i8* %30, align 1
  %3193 = lshr i32 %3177, 31
  %3194 = trunc i32 %3193 to i8
  store i8 %3194, i8* %33, align 1
  %3195 = lshr i32 %3176, 31
  %3196 = xor i32 %3193, %3195
  %3197 = add nuw nsw i32 %3196, %3193
  %3198 = icmp eq i32 %3197, 2
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %39, align 1
  %3200 = add i64 %3173, 9
  store i64 %3200, i64* %3, align 8
  store i32 %3177, i32* %3175, align 4
  %3201 = load i64, i64* %3, align 8
  %3202 = add i64 %3201, -52
  store i64 %3202, i64* %3, align 8
  br label %block_.L_40105a

block_.L_401093:                                  ; preds = %block_.L_40105a
  %3203 = add i64 %3089, -8
  %3204 = add i64 %3117, 8
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to i32*
  %3206 = load i32, i32* %3205, align 4
  %3207 = add i32 %3206, 1
  %3208 = zext i32 %3207 to i64
  store i64 %3208, i64* %RAX.i1121, align 8
  %3209 = icmp eq i32 %3206, -1
  %3210 = icmp eq i32 %3207, 0
  %3211 = or i1 %3209, %3210
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %14, align 1
  %3213 = and i32 %3207, 255
  %3214 = tail call i32 @llvm.ctpop.i32(i32 %3213)
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  store i8 %3217, i8* %21, align 1
  %3218 = xor i32 %3206, %3207
  %3219 = lshr i32 %3218, 4
  %3220 = trunc i32 %3219 to i8
  %3221 = and i8 %3220, 1
  store i8 %3221, i8* %27, align 1
  %3222 = zext i1 %3210 to i8
  store i8 %3222, i8* %30, align 1
  %3223 = lshr i32 %3207, 31
  %3224 = trunc i32 %3223 to i8
  store i8 %3224, i8* %33, align 1
  %3225 = lshr i32 %3206, 31
  %3226 = xor i32 %3223, %3225
  %3227 = add nuw nsw i32 %3226, %3223
  %3228 = icmp eq i32 %3227, 2
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %39, align 1
  %3230 = add i64 %3117, 14
  store i64 %3230, i64* %3, align 8
  store i32 %3207, i32* %3205, align 4
  %3231 = load i64, i64* %3, align 8
  %3232 = add i64 %3231, -88
  store i64 %3232, i64* %3, align 8
  br label %block_.L_401049

block_.L_4010a6:                                  ; preds = %block_.L_401049
  %3233 = add i64 %3056, -4
  %3234 = add i64 %3084, 8
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i32*
  %3236 = load i32, i32* %3235, align 4
  %3237 = add i32 %3236, 1
  %3238 = zext i32 %3237 to i64
  store i64 %3238, i64* %RAX.i1121, align 8
  %3239 = icmp eq i32 %3236, -1
  %3240 = icmp eq i32 %3237, 0
  %3241 = or i1 %3239, %3240
  %3242 = zext i1 %3241 to i8
  store i8 %3242, i8* %14, align 1
  %3243 = and i32 %3237, 255
  %3244 = tail call i32 @llvm.ctpop.i32(i32 %3243)
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  %3247 = xor i8 %3246, 1
  store i8 %3247, i8* %21, align 1
  %3248 = xor i32 %3236, %3237
  %3249 = lshr i32 %3248, 4
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  store i8 %3251, i8* %27, align 1
  %3252 = zext i1 %3240 to i8
  store i8 %3252, i8* %30, align 1
  %3253 = lshr i32 %3237, 31
  %3254 = trunc i32 %3253 to i8
  store i8 %3254, i8* %33, align 1
  %3255 = lshr i32 %3236, 31
  %3256 = xor i32 %3253, %3255
  %3257 = add nuw nsw i32 %3256, %3253
  %3258 = icmp eq i32 %3257, 2
  %3259 = zext i1 %3258 to i8
  store i8 %3259, i8* %39, align 1
  %3260 = add i64 %3084, 14
  store i64 %3260, i64* %3, align 8
  store i32 %3237, i32* %3235, align 4
  %3261 = load i64, i64* %3, align 8
  %3262 = add i64 %3261, -124
  store i64 %3262, i64* %3, align 8
  br label %block_.L_401038

block_.L_4010b9:                                  ; preds = %block_.L_401038
  store i32 2, i32* bitcast (%G_0x61921c_type* @G_0x61921c to i32*), align 8
  store i32 72, i32* bitcast (%G_0x61027c_type* @G_0x61027c to i32*), align 8
  %3263 = add i64 %3051, 29
  store i64 %3263, i64* %3, align 8
  store i32 0, i32* %3037, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_4010d6

block_.L_4010d6:                                  ; preds = %block_.L_401144, %block_.L_4010b9
  %3264 = phi i64 [ %3504, %block_.L_401144 ], [ %.pre42, %block_.L_4010b9 ]
  %3265 = load i64, i64* %RBP.i, align 8
  %3266 = add i64 %3265, -4
  %3267 = add i64 %3264, 4
  store i64 %3267, i64* %3, align 8
  %3268 = inttoptr i64 %3266 to i32*
  %3269 = load i32, i32* %3268, align 4
  %3270 = add i32 %3269, -1
  %3271 = icmp eq i32 %3269, 0
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %14, align 1
  %3273 = and i32 %3270, 255
  %3274 = tail call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  store i8 %3277, i8* %21, align 1
  %3278 = xor i32 %3269, %3270
  %3279 = lshr i32 %3278, 4
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  store i8 %3281, i8* %27, align 1
  %3282 = icmp eq i32 %3270, 0
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %30, align 1
  %3284 = lshr i32 %3270, 31
  %3285 = trunc i32 %3284 to i8
  store i8 %3285, i8* %33, align 1
  %3286 = lshr i32 %3269, 31
  %3287 = xor i32 %3284, %3286
  %3288 = add nuw nsw i32 %3287, %3286
  %3289 = icmp eq i32 %3288, 2
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %39, align 1
  %3291 = icmp ne i8 %3285, 0
  %3292 = xor i1 %3291, %3289
  %.demorgan120 = or i1 %3282, %3292
  %.v121 = select i1 %.demorgan120, i64 10, i64 129
  %3293 = add i64 %3264, %.v121
  store i64 %3293, i64* %3, align 8
  br i1 %.demorgan120, label %block_4010e0, label %block_.L_401157

block_4010e0:                                     ; preds = %block_.L_4010d6
  %3294 = add i64 %3265, -8
  %3295 = add i64 %3293, 7
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i32*
  store i32 0, i32* %3296, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_4010e7

block_.L_4010e7:                                  ; preds = %block_.L_401131, %block_4010e0
  %3297 = phi i64 [ %3474, %block_.L_401131 ], [ %.pre43, %block_4010e0 ]
  %3298 = load i64, i64* %RBP.i, align 8
  %3299 = add i64 %3298, -8
  %3300 = add i64 %3297, 4
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to i32*
  %3302 = load i32, i32* %3301, align 4
  %3303 = add i32 %3302, -1
  %3304 = icmp eq i32 %3302, 0
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %14, align 1
  %3306 = and i32 %3303, 255
  %3307 = tail call i32 @llvm.ctpop.i32(i32 %3306)
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = xor i8 %3309, 1
  store i8 %3310, i8* %21, align 1
  %3311 = xor i32 %3302, %3303
  %3312 = lshr i32 %3311, 4
  %3313 = trunc i32 %3312 to i8
  %3314 = and i8 %3313, 1
  store i8 %3314, i8* %27, align 1
  %3315 = icmp eq i32 %3303, 0
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %30, align 1
  %3317 = lshr i32 %3303, 31
  %3318 = trunc i32 %3317 to i8
  store i8 %3318, i8* %33, align 1
  %3319 = lshr i32 %3302, 31
  %3320 = xor i32 %3317, %3319
  %3321 = add nuw nsw i32 %3320, %3319
  %3322 = icmp eq i32 %3321, 2
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %39, align 1
  %3324 = icmp ne i8 %3318, 0
  %3325 = xor i1 %3324, %3322
  %.demorgan122 = or i1 %3315, %3325
  %.v123 = select i1 %.demorgan122, i64 10, i64 93
  %3326 = add i64 %3297, %.v123
  store i64 %3326, i64* %3, align 8
  br i1 %.demorgan122, label %block_4010f1, label %block_.L_401144

block_4010f1:                                     ; preds = %block_.L_4010e7
  %3327 = add i64 %3298, -12
  %3328 = add i64 %3326, 7
  store i64 %3328, i64* %3, align 8
  %3329 = inttoptr i64 %3327 to i32*
  store i32 0, i32* %3329, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_4010f8

block_.L_4010f8:                                  ; preds = %block_401102, %block_4010f1
  %3330 = phi i64 [ %3444, %block_401102 ], [ %.pre44, %block_4010f1 ]
  %3331 = load i64, i64* %RBP.i, align 8
  %3332 = add i64 %3331, -12
  %3333 = add i64 %3330, 4
  store i64 %3333, i64* %3, align 8
  %3334 = inttoptr i64 %3332 to i32*
  %3335 = load i32, i32* %3334, align 4
  %3336 = add i32 %3335, -1
  %3337 = icmp eq i32 %3335, 0
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %14, align 1
  %3339 = and i32 %3336, 255
  %3340 = tail call i32 @llvm.ctpop.i32(i32 %3339)
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  %3343 = xor i8 %3342, 1
  store i8 %3343, i8* %21, align 1
  %3344 = xor i32 %3335, %3336
  %3345 = lshr i32 %3344, 4
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  store i8 %3347, i8* %27, align 1
  %3348 = icmp eq i32 %3336, 0
  %3349 = zext i1 %3348 to i8
  store i8 %3349, i8* %30, align 1
  %3350 = lshr i32 %3336, 31
  %3351 = trunc i32 %3350 to i8
  store i8 %3351, i8* %33, align 1
  %3352 = lshr i32 %3335, 31
  %3353 = xor i32 %3350, %3352
  %3354 = add nuw nsw i32 %3353, %3352
  %3355 = icmp eq i32 %3354, 2
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %39, align 1
  %3357 = icmp ne i8 %3351, 0
  %3358 = xor i1 %3357, %3355
  %.demorgan124 = or i1 %3348, %3358
  %.v125 = select i1 %.demorgan124, i64 10, i64 57
  %3359 = add i64 %3330, %.v125
  store i64 %3359, i64* %3, align 8
  br i1 %.demorgan124, label %block_401102, label %block_.L_401131

block_401102:                                     ; preds = %block_.L_4010f8
  %3360 = add i64 %3331, -4
  %3361 = add i64 %3359, 3
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3360 to i32*
  %3363 = load i32, i32* %3362, align 4
  %3364 = zext i32 %3363 to i64
  store i64 %3364, i64* %RAX.i1121, align 8
  %3365 = add i64 %3331, -8
  %3366 = add i64 %3359, 6
  store i64 %3366, i64* %3, align 8
  %3367 = inttoptr i64 %3365 to i32*
  %3368 = load i32, i32* %3367, align 4
  %3369 = zext i32 %3368 to i64
  store i64 %3369, i64* %RCX.i1089, align 8
  %3370 = add i64 %3359, 9
  store i64 %3370, i64* %3, align 8
  %3371 = load i32, i32* %3334, align 4
  %3372 = shl i32 %3371, 3
  %3373 = zext i32 %3372 to i64
  store i64 %3373, i64* %RDX.i1086, align 8
  %3374 = add i32 %3372, %3368
  %3375 = shl i32 %3374, 3
  %3376 = zext i32 %3375 to i64
  store i64 %3376, i64* %RCX.i1089, align 8
  %3377 = lshr i32 %3374, 28
  %3378 = and i32 %3377, 1
  %3379 = load i64, i64* %RAX.i1121, align 8
  %3380 = trunc i64 %3379 to i32
  %3381 = add i32 %3375, %3380
  %3382 = zext i32 %3381 to i64
  store i64 %3382, i64* %RAX.i1121, align 8
  %3383 = icmp ult i32 %3381, %3380
  %3384 = icmp ult i32 %3381, %3375
  %3385 = or i1 %3383, %3384
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %14, align 1
  %3387 = and i32 %3381, 255
  %3388 = tail call i32 @llvm.ctpop.i32(i32 %3387)
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  store i8 %3391, i8* %21, align 1
  %3392 = xor i64 %3376, %3379
  %3393 = trunc i64 %3392 to i32
  %3394 = xor i32 %3393, %3381
  %3395 = lshr i32 %3394, 4
  %3396 = trunc i32 %3395 to i8
  %3397 = and i8 %3396, 1
  store i8 %3397, i8* %27, align 1
  %3398 = icmp eq i32 %3381, 0
  %3399 = zext i1 %3398 to i8
  store i8 %3399, i8* %30, align 1
  %3400 = lshr i32 %3381, 31
  %3401 = trunc i32 %3400 to i8
  store i8 %3401, i8* %33, align 1
  %3402 = lshr i32 %3380, 31
  %3403 = xor i32 %3400, %3402
  %3404 = xor i32 %3400, %3378
  %3405 = add nuw nsw i32 %3403, %3404
  %3406 = icmp eq i32 %3405, 2
  %3407 = zext i1 %3406 to i8
  store i8 %3407, i8* %39, align 1
  %3408 = sext i32 %3381 to i64
  store i64 %3408, i64* %RSI.i1074, align 8
  %3409 = shl nsw i64 %3408, 2
  %3410 = add nsw i64 %3409, 6331040
  %3411 = add i64 %3359, 33
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3410 to i32*
  store i32 1, i32* %3412, align 4
  %3413 = load i64, i64* %RBP.i, align 8
  %3414 = add i64 %3413, -12
  %3415 = load i64, i64* %3, align 8
  %3416 = add i64 %3415, 3
  store i64 %3416, i64* %3, align 8
  %3417 = inttoptr i64 %3414 to i32*
  %3418 = load i32, i32* %3417, align 4
  %3419 = add i32 %3418, 1
  %3420 = zext i32 %3419 to i64
  store i64 %3420, i64* %RAX.i1121, align 8
  %3421 = icmp eq i32 %3418, -1
  %3422 = icmp eq i32 %3419, 0
  %3423 = or i1 %3421, %3422
  %3424 = zext i1 %3423 to i8
  store i8 %3424, i8* %14, align 1
  %3425 = and i32 %3419, 255
  %3426 = tail call i32 @llvm.ctpop.i32(i32 %3425)
  %3427 = trunc i32 %3426 to i8
  %3428 = and i8 %3427, 1
  %3429 = xor i8 %3428, 1
  store i8 %3429, i8* %21, align 1
  %3430 = xor i32 %3418, %3419
  %3431 = lshr i32 %3430, 4
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  store i8 %3433, i8* %27, align 1
  %3434 = zext i1 %3422 to i8
  store i8 %3434, i8* %30, align 1
  %3435 = lshr i32 %3419, 31
  %3436 = trunc i32 %3435 to i8
  store i8 %3436, i8* %33, align 1
  %3437 = lshr i32 %3418, 31
  %3438 = xor i32 %3435, %3437
  %3439 = add nuw nsw i32 %3438, %3435
  %3440 = icmp eq i32 %3439, 2
  %3441 = zext i1 %3440 to i8
  store i8 %3441, i8* %39, align 1
  %3442 = add i64 %3415, 9
  store i64 %3442, i64* %3, align 8
  store i32 %3419, i32* %3417, align 4
  %3443 = load i64, i64* %3, align 8
  %3444 = add i64 %3443, -52
  store i64 %3444, i64* %3, align 8
  br label %block_.L_4010f8

block_.L_401131:                                  ; preds = %block_.L_4010f8
  %3445 = add i64 %3331, -8
  %3446 = add i64 %3359, 8
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i32*
  %3448 = load i32, i32* %3447, align 4
  %3449 = add i32 %3448, 1
  %3450 = zext i32 %3449 to i64
  store i64 %3450, i64* %RAX.i1121, align 8
  %3451 = icmp eq i32 %3448, -1
  %3452 = icmp eq i32 %3449, 0
  %3453 = or i1 %3451, %3452
  %3454 = zext i1 %3453 to i8
  store i8 %3454, i8* %14, align 1
  %3455 = and i32 %3449, 255
  %3456 = tail call i32 @llvm.ctpop.i32(i32 %3455)
  %3457 = trunc i32 %3456 to i8
  %3458 = and i8 %3457, 1
  %3459 = xor i8 %3458, 1
  store i8 %3459, i8* %21, align 1
  %3460 = xor i32 %3448, %3449
  %3461 = lshr i32 %3460, 4
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  store i8 %3463, i8* %27, align 1
  %3464 = zext i1 %3452 to i8
  store i8 %3464, i8* %30, align 1
  %3465 = lshr i32 %3449, 31
  %3466 = trunc i32 %3465 to i8
  store i8 %3466, i8* %33, align 1
  %3467 = lshr i32 %3448, 31
  %3468 = xor i32 %3465, %3467
  %3469 = add nuw nsw i32 %3468, %3465
  %3470 = icmp eq i32 %3469, 2
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %39, align 1
  %3472 = add i64 %3359, 14
  store i64 %3472, i64* %3, align 8
  store i32 %3449, i32* %3447, align 4
  %3473 = load i64, i64* %3, align 8
  %3474 = add i64 %3473, -88
  store i64 %3474, i64* %3, align 8
  br label %block_.L_4010e7

block_.L_401144:                                  ; preds = %block_.L_4010e7
  %3475 = add i64 %3298, -4
  %3476 = add i64 %3326, 8
  store i64 %3476, i64* %3, align 8
  %3477 = inttoptr i64 %3475 to i32*
  %3478 = load i32, i32* %3477, align 4
  %3479 = add i32 %3478, 1
  %3480 = zext i32 %3479 to i64
  store i64 %3480, i64* %RAX.i1121, align 8
  %3481 = icmp eq i32 %3478, -1
  %3482 = icmp eq i32 %3479, 0
  %3483 = or i1 %3481, %3482
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %14, align 1
  %3485 = and i32 %3479, 255
  %3486 = tail call i32 @llvm.ctpop.i32(i32 %3485)
  %3487 = trunc i32 %3486 to i8
  %3488 = and i8 %3487, 1
  %3489 = xor i8 %3488, 1
  store i8 %3489, i8* %21, align 1
  %3490 = xor i32 %3478, %3479
  %3491 = lshr i32 %3490, 4
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  store i8 %3493, i8* %27, align 1
  %3494 = zext i1 %3482 to i8
  store i8 %3494, i8* %30, align 1
  %3495 = lshr i32 %3479, 31
  %3496 = trunc i32 %3495 to i8
  store i8 %3496, i8* %33, align 1
  %3497 = lshr i32 %3478, 31
  %3498 = xor i32 %3495, %3497
  %3499 = add nuw nsw i32 %3498, %3495
  %3500 = icmp eq i32 %3499, 2
  %3501 = zext i1 %3500 to i8
  store i8 %3501, i8* %39, align 1
  %3502 = add i64 %3326, 14
  store i64 %3502, i64* %3, align 8
  store i32 %3479, i32* %3477, align 4
  %3503 = load i64, i64* %3, align 8
  %3504 = add i64 %3503, -124
  store i64 %3504, i64* %3, align 8
  br label %block_.L_4010d6

block_.L_401157:                                  ; preds = %block_.L_4010d6
  %RDI.i92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 0, i64* %RDI.i92, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i32 3, i32* bitcast (%G_0x619220_type* @G_0x619220 to i32*), align 8
  store i32 73, i32* bitcast (%G_0x610280_type* @G_0x610280 to i32*), align 8
  store i32 13, i32* bitcast (%G_0x6191e0_type* @G_0x6191e0 to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6191e4_type* @G_0x6191e4 to i32*), align 8
  store i32 1, i32* bitcast (%G_0x6191e8_type* @G_0x6191e8 to i32*), align 8
  store i32 1, i32* bitcast (%G_0x6191ec_type* @G_0x6191ec to i32*), align 8
  %3505 = add i64 %3265, -16
  %3506 = add i64 %3293, 75
  store i64 %3506, i64* %3, align 8
  %3507 = inttoptr i64 %3505 to i32*
  store i32 73, i32* %3507, align 4
  %3508 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %3509 = load i64, i64* %RBP.i, align 8
  %3510 = add i64 %3509, -16
  %3511 = add i64 %3508, 14
  store i64 %3511, i64* %3, align 8
  %3512 = inttoptr i64 %3510 to i32*
  %3513 = load i32, i32* %3512, align 4
  %3514 = zext i32 %3513 to i64
  store i64 %3514, i64* %RSI.i1074, align 8
  %3515 = add i64 %3508, -3154
  %3516 = add i64 %3508, 19
  %3517 = load i64, i64* %6, align 8
  %3518 = add i64 %3517, -8
  %3519 = inttoptr i64 %3518 to i64*
  store i64 %3516, i64* %3519, align 8
  store i64 %3518, i64* %6, align 8
  store i64 %3515, i64* %3, align 8
  %call2_4011b0 = tail call %struct.Memory* @sub_400550.Fit(%struct.State* %0, i64 %3515, %struct.Memory* %2)
  %3520 = load i32, i32* %EAX.i1111, align 4
  %3521 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3522 = and i32 %3520, 255
  %3523 = tail call i32 @llvm.ctpop.i32(i32 %3522)
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  %3526 = xor i8 %3525, 1
  store i8 %3526, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3527 = icmp eq i32 %3520, 0
  %3528 = zext i1 %3527 to i8
  store i8 %3528, i8* %30, align 1
  %3529 = lshr i32 %3520, 31
  %3530 = trunc i32 %3529 to i8
  store i8 %3530, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v126 = select i1 %3527, i64 31, i64 9
  %3531 = add i64 %3521, %.v126
  store i64 %3531, i64* %3, align 8
  br i1 %3527, label %block_.L_4011d4, label %block_4011be

block_4011be:                                     ; preds = %block_.L_401157
  store i64 0, i64* %RDI.i92, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3532 = load i64, i64* %RBP.i, align 8
  %3533 = add i64 %3532, -16
  %3534 = add i64 %3531, 5
  store i64 %3534, i64* %3, align 8
  %3535 = inttoptr i64 %3533 to i32*
  %3536 = load i32, i32* %3535, align 4
  %3537 = zext i32 %3536 to i64
  store i64 %3537, i64* %RSI.i1074, align 8
  %3538 = add i64 %3531, -3038
  %3539 = add i64 %3531, 10
  %3540 = load i64, i64* %6, align 8
  %3541 = add i64 %3540, -8
  %3542 = inttoptr i64 %3541 to i64*
  store i64 %3539, i64* %3542, align 8
  store i64 %3541, i64* %6, align 8
  store i64 %3538, i64* %3, align 8
  %call2_4011c3 = tail call %struct.Memory* @sub_4005e0.Place(%struct.State* %0, i64 %3538, %struct.Memory* %call2_4011b0)
  %3543 = load i32, i32* %EAX.i1111, align 4
  %3544 = load i64, i64* %3, align 8
  store i32 %3543, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %3545 = add i64 %3544, 32
  store i64 %3545, i64* %3, align 8
  br label %block_.L_4011e8

block_.L_4011d4:                                  ; preds = %block_.L_401157
  store i64 ptrtoint (%G__0x401344_type* @G__0x401344 to i64), i64* %RDI.i92, align 8
  %AL.i62 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i62, align 1
  %3546 = add i64 %3531, -3556
  %3547 = add i64 %3531, 17
  %3548 = load i64, i64* %6, align 8
  %3549 = add i64 %3548, -8
  %3550 = inttoptr i64 %3549 to i64*
  store i64 %3547, i64* %3550, align 8
  store i64 %3549, i64* %6, align 8
  store i64 %3546, i64* %3, align 8
  %3551 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011b0)
  %3552 = load i64, i64* %RBP.i, align 8
  %3553 = add i64 %3552, -20
  %3554 = load i32, i32* %EAX.i1111, align 4
  %3555 = load i64, i64* %3, align 8
  %3556 = add i64 %3555, 3
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3553 to i32*
  store i32 %3554, i32* %3557, align 4
  %.pre45 = load i64, i64* %3, align 8
  %.pre46 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  br label %block_.L_4011e8

block_.L_4011e8:                                  ; preds = %block_.L_4011d4, %block_4011be
  %3558 = phi i32 [ %.pre46, %block_.L_4011d4 ], [ %3543, %block_4011be ]
  %3559 = phi i64 [ %.pre45, %block_.L_4011d4 ], [ %3545, %block_4011be ]
  %MEMORY.45 = phi %struct.Memory* [ %3551, %block_.L_4011d4 ], [ %call2_4011c3, %block_4011be ]
  %3560 = zext i32 %3558 to i64
  store i64 %3560, i64* %RDI.i92, align 8
  %3561 = add i64 %3559, -2680
  %3562 = add i64 %3559, 12
  %3563 = load i64, i64* %6, align 8
  %3564 = add i64 %3563, -8
  %3565 = inttoptr i64 %3564 to i64*
  store i64 %3562, i64* %3565, align 8
  store i64 %3564, i64* %6, align 8
  store i64 %3561, i64* %3, align 8
  %call2_4011ef = tail call %struct.Memory* @sub_400770.Trial(%struct.State* %0, i64 %3561, %struct.Memory* %MEMORY.45)
  %3566 = load i32, i32* %EAX.i1111, align 4
  %3567 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3568 = and i32 %3566, 255
  %3569 = tail call i32 @llvm.ctpop.i32(i32 %3568)
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  %3572 = xor i8 %3571, 1
  store i8 %3572, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3573 = icmp eq i32 %3566, 0
  %3574 = zext i1 %3573 to i8
  store i8 %3574, i8* %30, align 1
  %3575 = lshr i32 %3566, 31
  %3576 = trunc i32 %3575 to i8
  store i8 %3576, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v127 = select i1 %3573, i64 9, i64 34
  %3577 = add i64 %3567, %.v127
  store i64 %3577, i64* %3, align 8
  br i1 %3573, label %block_4011fd, label %block_.L_401216

block_4011fd:                                     ; preds = %block_.L_4011e8
  store i64 ptrtoint (%G__0x401356_type* @G__0x401356 to i64), i64* %RDI.i92, align 8
  %AL.i47 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i47, align 1
  %3578 = add i64 %3577, -3597
  %3579 = add i64 %3577, 17
  %3580 = load i64, i64* %6, align 8
  %3581 = add i64 %3580, -8
  %3582 = inttoptr i64 %3581 to i64*
  store i64 %3579, i64* %3582, align 8
  store i64 %3581, i64* %6, align 8
  store i64 %3578, i64* %3, align 8
  %3583 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011ef)
  %3584 = load i64, i64* %RBP.i, align 8
  %3585 = add i64 %3584, -24
  %3586 = load i32, i32* %EAX.i1111, align 4
  %3587 = load i64, i64* %3, align 8
  %3588 = add i64 %3587, 3
  store i64 %3588, i64* %3, align 8
  %3589 = inttoptr i64 %3585 to i32*
  store i32 %3586, i32* %3589, align 4
  %3590 = load i64, i64* %3, align 8
  %3591 = add i64 %3590, 47
  br label %block_.L_401240

block_.L_401216:                                  ; preds = %block_.L_4011e8
  %3592 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %3593 = add i32 %3592, -2005
  %3594 = icmp ult i32 %3592, 2005
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %14, align 1
  %3596 = and i32 %3593, 255
  %3597 = tail call i32 @llvm.ctpop.i32(i32 %3596)
  %3598 = trunc i32 %3597 to i8
  %3599 = and i8 %3598, 1
  %3600 = xor i8 %3599, 1
  store i8 %3600, i8* %21, align 1
  %3601 = xor i32 %3592, 16
  %3602 = xor i32 %3601, %3593
  %3603 = lshr i32 %3602, 4
  %3604 = trunc i32 %3603 to i8
  %3605 = and i8 %3604, 1
  store i8 %3605, i8* %27, align 1
  %3606 = icmp eq i32 %3593, 0
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %30, align 1
  %3608 = lshr i32 %3593, 31
  %3609 = trunc i32 %3608 to i8
  store i8 %3609, i8* %33, align 1
  %3610 = lshr i32 %3592, 31
  %3611 = xor i32 %3608, %3610
  %3612 = add nuw nsw i32 %3611, %3610
  %3613 = icmp eq i32 %3612, 2
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %39, align 1
  %.v128 = select i1 %3606, i64 37, i64 17
  %3615 = add i64 %3577, %.v128
  store i64 %3615, i64* %3, align 8
  br i1 %3606, label %block_.L_401216.block_.L_40123b_crit_edge, label %block_401227

block_.L_401216.block_.L_40123b_crit_edge:        ; preds = %block_.L_401216
  %.pre51 = bitcast %union.anon* %43 to i8*
  br label %block_.L_40123b

block_401227:                                     ; preds = %block_.L_401216
  store i64 ptrtoint (%G__0x401369_type* @G__0x401369 to i64), i64* %RDI.i92, align 8
  %AL.i34 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i34, align 1
  %3616 = add i64 %3615, -3639
  %3617 = add i64 %3615, 17
  %3618 = load i64, i64* %6, align 8
  %3619 = add i64 %3618, -8
  %3620 = inttoptr i64 %3619 to i64*
  store i64 %3617, i64* %3620, align 8
  store i64 %3619, i64* %6, align 8
  store i64 %3616, i64* %3, align 8
  %3621 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011ef)
  %3622 = load i64, i64* %RBP.i, align 8
  %3623 = add i64 %3622, -28
  %3624 = load i32, i32* %EAX.i1111, align 4
  %3625 = load i64, i64* %3, align 8
  %3626 = add i64 %3625, 3
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3623 to i32*
  store i32 %3624, i32* %3627, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_40123b

block_.L_40123b:                                  ; preds = %block_.L_401216.block_.L_40123b_crit_edge, %block_401227
  %.pre49.pre-phi = phi i8* [ %.pre51, %block_.L_401216.block_.L_40123b_crit_edge ], [ %AL.i34, %block_401227 ]
  %3628 = phi i64 [ %3615, %block_.L_401216.block_.L_40123b_crit_edge ], [ %.pre47, %block_401227 ]
  %MEMORY.46 = phi %struct.Memory* [ %call2_4011ef, %block_.L_401216.block_.L_40123b_crit_edge ], [ %3621, %block_401227 ]
  %3629 = add i64 %3628, 5
  br label %block_.L_401240

block_.L_401240:                                  ; preds = %block_.L_40123b, %block_4011fd
  %.sink = phi i64 [ %3629, %block_.L_40123b ], [ %3591, %block_4011fd ]
  %AL.i21.pre-phi = phi i8* [ %.pre49.pre-phi, %block_.L_40123b ], [ %AL.i47, %block_4011fd ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.46, %block_.L_40123b ], [ %3583, %block_4011fd ]
  store i64 ptrtoint (%G__0x40137c_type* @G__0x40137c to i64), i64* %RDI.i92, align 8
  %3630 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %3631 = zext i32 %3630 to i64
  store i64 %3631, i64* %RSI.i1074, align 8
  store i8 0, i8* %AL.i21.pre-phi, align 1
  %3632 = add i64 %.sink, -3664
  %3633 = add i64 %.sink, 24
  %3634 = load i64, i64* %6, align 8
  %3635 = add i64 %3634, -8
  %3636 = inttoptr i64 %3635 to i64*
  store i64 %3633, i64* %3636, align 8
  store i64 %3635, i64* %6, align 8
  store i64 %3632, i64* %3, align 8
  %3637 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.47)
  %3638 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40137c_type* @G__0x40137c to i64), i64* %RDI.i92, align 8
  %3639 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %3640 = zext i32 %3639 to i64
  store i64 %3640, i64* %RSI.i1074, align 8
  %3641 = load i64, i64* %RBP.i, align 8
  %3642 = add i64 %3641, -32
  %3643 = load i32, i32* %EAX.i1111, align 4
  %3644 = add i64 %3638, 20
  store i64 %3644, i64* %3, align 8
  %3645 = inttoptr i64 %3642 to i32*
  store i32 %3643, i32* %3645, align 4
  %3646 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i21.pre-phi, align 1
  %3647 = add i64 %3646, -3708
  %3648 = add i64 %3646, 7
  %3649 = load i64, i64* %6, align 8
  %3650 = add i64 %3649, -8
  %3651 = inttoptr i64 %3650 to i64*
  store i64 %3648, i64* %3651, align 8
  store i64 %3650, i64* %6, align 8
  store i64 %3647, i64* %3, align 8
  %3652 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %3637)
  %3653 = load i64, i64* %RBP.i, align 8
  %3654 = add i64 %3653, -36
  %3655 = load i32, i32* %EAX.i1111, align 4
  %3656 = load i64, i64* %3, align 8
  %3657 = add i64 %3656, 3
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3654 to i32*
  store i32 %3655, i32* %3658, align 4
  %3659 = load i64, i64* %6, align 8
  %3660 = load i64, i64* %3, align 8
  %3661 = add i64 %3659, 48
  store i64 %3661, i64* %6, align 8
  %3662 = icmp ugt i64 %3659, -49
  %3663 = zext i1 %3662 to i8
  store i8 %3663, i8* %14, align 1
  %3664 = trunc i64 %3661 to i32
  %3665 = and i32 %3664, 255
  %3666 = tail call i32 @llvm.ctpop.i32(i32 %3665)
  %3667 = trunc i32 %3666 to i8
  %3668 = and i8 %3667, 1
  %3669 = xor i8 %3668, 1
  store i8 %3669, i8* %21, align 1
  %3670 = xor i64 %3659, 16
  %3671 = xor i64 %3670, %3661
  %3672 = lshr i64 %3671, 4
  %3673 = trunc i64 %3672 to i8
  %3674 = and i8 %3673, 1
  store i8 %3674, i8* %27, align 1
  %3675 = icmp eq i64 %3661, 0
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %30, align 1
  %3677 = lshr i64 %3661, 63
  %3678 = trunc i64 %3677 to i8
  store i8 %3678, i8* %33, align 1
  %3679 = lshr i64 %3659, 63
  %3680 = xor i64 %3677, %3679
  %3681 = add nuw nsw i64 %3680, %3677
  %3682 = icmp eq i64 %3681, 2
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %39, align 1
  %3684 = add i64 %3660, 5
  store i64 %3684, i64* %3, align 8
  %3685 = add i64 %3659, 56
  %3686 = inttoptr i64 %3661 to i64*
  %3687 = load i64, i64* %3686, align 8
  store i64 %3687, i64* %RBP.i, align 8
  store i64 %3685, i64* %6, align 8
  %3688 = add i64 %3660, 6
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3685 to i64*
  %3690 = load i64, i64* %3689, align 8
  store i64 %3690, i64* %3, align 8
  %3691 = add i64 %3659, 64
  store i64 %3691, i64* %6, align 8
  ret %struct.Memory* %3652
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x1ff__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -511
  %10 = icmp ult i32 %8, 511
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

define %struct.Memory* @routine_jg_.L_400879(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__0x60df50___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6348624
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_40084f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_400901(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_4008ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_4008db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shll__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x60df50___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6348624
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4008a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4008e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400891(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4008f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400880(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_400967(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400954(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x603aa0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shlq__0xb___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 11
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 53
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 52
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400919(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400959(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400908(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_4009ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_4009dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_4009c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x603aa0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6306464
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400990(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4009ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40097f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4009e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40096e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6191f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191f0_type* @G_0x6191f0 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xb__0x610250(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 11, i32* bitcast (%G_0x610250_type* @G_0x610250 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_400a8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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

define %struct.Memory* @routine_jg_.L_400a7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_400a67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x6042a0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6308512
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6191f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191f4_type* @G_0x6191f4 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc1__0x610254(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 193, i32* bitcast (%G_0x610254_type* @G_0x610254 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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

define %struct.Memory* @routine_jg_.L_400b2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_400b18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_400b05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x604aa0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6310560
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400acc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b0a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400abb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400aaa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6191f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191f8_type* @G_0x6191f8 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x58__0x610258(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 88, i32* bitcast (%G_0x610258_type* @G_0x610258 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400bc9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400bb6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400ba3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x6052a0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6312608
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ba8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6191fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191fc_type* @G_0x6191fc to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x19__0x61025c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 25, i32* bitcast (%G_0x61025c_type* @G_0x61025c to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400c67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400c54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400c41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x605aa0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6314656
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bf7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400be6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x619200(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x619200_type* @G_0x619200 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x43__0x610260(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 67, i32* bitcast (%G_0x610260_type* @G_0x610260 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400d05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400cf2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400cdf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x6062a0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6316704
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ca6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cf7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x619204(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x619204_type* @G_0x619204 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc8__0x610264(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 200, i32* bitcast (%G_0x610264_type* @G_0x610264 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_400da3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400d90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400d7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x606aa0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6318752
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x619208(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x619208_type* @G_0x619208 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__0x610268(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x610268_type* @G_0x610268 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400e41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_400e2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400e1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x6072a0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6320800
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400de2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e20(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dd1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x61920c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x61920c_type* @G_0x61920c to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x10__0x61026c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 16, i32* bitcast (%G_0x61026c_type* @G_0x61026c to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400edf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400ecc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jg_.L_400eb9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x607aa0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6322848
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ebe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e6f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ed1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x619210(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x619210_type* @G_0x619210 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x80__0x610270(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 128, i32* bitcast (%G_0x610270_type* @G_0x610270 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400f7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400f6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400f57(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x6082a0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6324896
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f6f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400efc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__0x619214(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x619214_type* @G_0x619214 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x9__0x610274(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 9, i32* bitcast (%G_0x610274_type* @G_0x610274 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_40101b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401008(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400ff5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x608aa0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6326944
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ffa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40100d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__0x619218(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x619218_type* @G_0x619218 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x41__0x610278(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 65, i32* bitcast (%G_0x610278_type* @G_0x610278 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4010b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4010a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401093(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x6092a0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6328992
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40105a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401098(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401049(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401038(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__0x61921c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x61921c_type* @G_0x61921c to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x48__0x61027c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 72, i32* bitcast (%G_0x61027c_type* @G_0x61027c to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401157(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401144(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401131(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x609aa0___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6331040
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401136(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401149(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x3__0x619220(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x619220_type* @G_0x619220 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x49__0x610280(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 73, i32* bitcast (%G_0x610280_type* @G_0x610280 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xd__0x6191e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x6191e0_type* @G_0x6191e0 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3__0x6191e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x6191e4_type* @G_0x6191e4 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x6191e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x6191e8_type* @G_0x6191e8 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x6191ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x6191ec_type* @G_0x6191ec to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x49__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 73, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6191c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.Fit(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_je_.L_4011d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Place(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__0x603a94(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401344___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401344_type* @G__0x401344 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x603a94___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Trial(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jne_.L_401216(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401356___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401356_type* @G__0x401356 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401240(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x7d5__0x6191c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %6 = add i32 %5, -2005
  %7 = icmp ult i32 %5, 2005
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

define %struct.Memory* @routine_je_.L_40123b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401369___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401369_type* @G__0x401369 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x40137c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40137c_type* @G__0x40137c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603a94___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6191c4___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
