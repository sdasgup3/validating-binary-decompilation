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
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP.i8, align 8
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
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1121 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %EAX.i1111 = bitcast %union.anon* %43 to i32*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_40084f

block_.L_40084f:                                  ; preds = %block_40085c, %entry
  %44 = phi i64 [ %114, %block_40085c ], [ %.pre, %entry ]
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = add i64 %44, 7
  store i64 %47, i64* %PC.i, align 8
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
  store i64 %75, i64* %PC.i, align 8
  %76 = load i32, i32* %48, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %RAX.i1121, align 8
  %78 = shl nsw i64 %77, 2
  %79 = add nsw i64 %78, 6348624
  %80 = add i64 %74, 15
  store i64 %80, i64* %PC.i, align 8
  %81 = inttoptr i64 %79 to i32*
  store i32 1, i32* %81, align 4
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -16
  %84 = load i64, i64* %PC.i, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %PC.i, align 8
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
  %103 = icmp eq i32 %88, 0
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %30, align 1
  %105 = lshr i32 %88, 31
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %33, align 1
  %107 = lshr i32 %87, 31
  %108 = xor i32 %105, %107
  %109 = add nuw nsw i32 %108, %105
  %110 = icmp eq i32 %109, 2
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %39, align 1
  %112 = add i64 %84, 9
  store i64 %112, i64* %PC.i, align 8
  store i32 %88, i32* %86, align 4
  %113 = load i64, i64* %PC.i, align 8
  %114 = add i64 %113, -37
  store i64 %114, i64* %3, align 8
  br label %block_.L_40084f

block_.L_400879:                                  ; preds = %block_.L_40084f
  %115 = add i64 %45, -4
  %116 = add i64 %74, 7
  store i64 %116, i64* %PC.i, align 8
  %117 = inttoptr i64 %115 to i32*
  store i32 1, i32* %117, align 4
  %RCX.i1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400880

block_.L_400880:                                  ; preds = %block_.L_4008ee, %block_.L_400879
  %118 = phi i64 [ %361, %block_.L_4008ee ], [ %.pre1, %block_.L_400879 ]
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -4
  %121 = add i64 %118, 4
  store i64 %121, i64* %PC.i, align 8
  %122 = inttoptr i64 %120 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, -5
  %125 = icmp ult i32 %123, 5
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %14, align 1
  %127 = and i32 %124, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %21, align 1
  %132 = xor i32 %123, %124
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %27, align 1
  %136 = icmp eq i32 %124, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %30, align 1
  %138 = lshr i32 %124, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %33, align 1
  %140 = lshr i32 %123, 31
  %141 = xor i32 %138, %140
  %142 = add nuw nsw i32 %141, %140
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %39, align 1
  %145 = icmp ne i8 %139, 0
  %146 = xor i1 %145, %143
  %.demorgan53 = or i1 %136, %146
  %.v54 = select i1 %.demorgan53, i64 10, i64 129
  %147 = add i64 %118, %.v54
  store i64 %147, i64* %3, align 8
  br i1 %.demorgan53, label %block_40088a, label %block_.L_400901

block_40088a:                                     ; preds = %block_.L_400880
  %148 = add i64 %119, -8
  %149 = add i64 %147, 7
  store i64 %149, i64* %PC.i, align 8
  %150 = inttoptr i64 %148 to i32*
  store i32 1, i32* %150, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400891

block_.L_400891:                                  ; preds = %block_.L_4008db, %block_40088a
  %151 = phi i64 [ %330, %block_.L_4008db ], [ %.pre2, %block_40088a ]
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -8
  %154 = add i64 %151, 4
  store i64 %154, i64* %PC.i, align 8
  %155 = inttoptr i64 %153 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = add i32 %156, -5
  %158 = icmp ult i32 %156, 5
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %14, align 1
  %160 = and i32 %157, 255
  %161 = tail call i32 @llvm.ctpop.i32(i32 %160)
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  store i8 %164, i8* %21, align 1
  %165 = xor i32 %156, %157
  %166 = lshr i32 %165, 4
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %27, align 1
  %169 = icmp eq i32 %157, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %30, align 1
  %171 = lshr i32 %157, 31
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %33, align 1
  %173 = lshr i32 %156, 31
  %174 = xor i32 %171, %173
  %175 = add nuw nsw i32 %174, %173
  %176 = icmp eq i32 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %39, align 1
  %178 = icmp ne i8 %172, 0
  %179 = xor i1 %178, %176
  %.demorgan55 = or i1 %169, %179
  %.v56 = select i1 %.demorgan55, i64 10, i64 93
  %180 = add i64 %151, %.v56
  store i64 %180, i64* %3, align 8
  br i1 %.demorgan55, label %block_40089b, label %block_.L_4008ee

block_40089b:                                     ; preds = %block_.L_400891
  %181 = add i64 %152, -12
  %182 = add i64 %180, 7
  store i64 %182, i64* %PC.i, align 8
  %183 = inttoptr i64 %181 to i32*
  store i32 1, i32* %183, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_4008a2

block_.L_4008a2:                                  ; preds = %block_4008ac, %block_40089b
  %184 = phi i64 [ %299, %block_4008ac ], [ %.pre3, %block_40089b ]
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -12
  %187 = add i64 %184, 4
  store i64 %187, i64* %PC.i, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = add i32 %189, -5
  %191 = icmp ult i32 %189, 5
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %14, align 1
  %193 = and i32 %190, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %21, align 1
  %198 = xor i32 %189, %190
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %27, align 1
  %202 = icmp eq i32 %190, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %30, align 1
  %204 = lshr i32 %190, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %33, align 1
  %206 = lshr i32 %189, 31
  %207 = xor i32 %204, %206
  %208 = add nuw nsw i32 %207, %206
  %209 = icmp eq i32 %208, 2
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %39, align 1
  %211 = icmp ne i8 %205, 0
  %212 = xor i1 %211, %209
  %.demorgan57 = or i1 %202, %212
  %.v58 = select i1 %.demorgan57, i64 10, i64 57
  %213 = add i64 %184, %.v58
  store i64 %213, i64* %3, align 8
  br i1 %.demorgan57, label %block_4008ac, label %block_.L_4008db

block_4008ac:                                     ; preds = %block_.L_4008a2
  %214 = add i64 %185, -4
  %215 = add i64 %213, 3
  store i64 %215, i64* %PC.i, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i1121, align 8
  %219 = add i64 %185, -8
  %220 = add i64 %213, 6
  store i64 %220, i64* %PC.i, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RCX.i1089, align 8
  %224 = add i64 %213, 9
  store i64 %224, i64* %PC.i, align 8
  %225 = load i32, i32* %188, align 4
  %226 = shl i32 %225, 3
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RDX.i1086, align 8
  %228 = add i32 %226, %222
  %229 = shl i32 %228, 3
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RCX.i1089, align 8
  %231 = lshr i32 %228, 28
  %232 = and i32 %231, 1
  %233 = load i64, i64* %RAX.i1121, align 8
  %234 = trunc i64 %233 to i32
  %235 = add i32 %229, %234
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX.i1121, align 8
  %237 = icmp ult i32 %235, %234
  %238 = icmp ult i32 %235, %229
  %239 = or i1 %237, %238
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %14, align 1
  %241 = and i32 %235, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %21, align 1
  %246 = xor i64 %230, %233
  %247 = trunc i64 %246 to i32
  %248 = xor i32 %247, %235
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %27, align 1
  %252 = icmp eq i32 %235, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %30, align 1
  %254 = lshr i32 %235, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %33, align 1
  %256 = lshr i32 %234, 31
  %257 = xor i32 %254, %256
  %258 = xor i32 %254, %232
  %259 = add nuw nsw i32 %257, %258
  %260 = icmp eq i32 %259, 2
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %39, align 1
  %262 = sext i32 %235 to i64
  store i64 %262, i64* %RSI.i1074, align 8
  %263 = shl nsw i64 %262, 2
  %264 = add nsw i64 %263, 6348624
  %265 = add i64 %213, 33
  store i64 %265, i64* %PC.i, align 8
  %266 = inttoptr i64 %264 to i32*
  store i32 0, i32* %266, align 4
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -12
  %269 = load i64, i64* %PC.i, align 8
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i, align 8
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = add i32 %272, 1
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RAX.i1121, align 8
  %275 = icmp eq i32 %272, -1
  %276 = icmp eq i32 %273, 0
  %277 = or i1 %275, %276
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %14, align 1
  %279 = and i32 %273, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %21, align 1
  %284 = xor i32 %272, %273
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %27, align 1
  %288 = icmp eq i32 %273, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %30, align 1
  %290 = lshr i32 %273, 31
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %33, align 1
  %292 = lshr i32 %272, 31
  %293 = xor i32 %290, %292
  %294 = add nuw nsw i32 %293, %290
  %295 = icmp eq i32 %294, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %39, align 1
  %297 = add i64 %269, 9
  store i64 %297, i64* %PC.i, align 8
  store i32 %273, i32* %271, align 4
  %298 = load i64, i64* %PC.i, align 8
  %299 = add i64 %298, -52
  store i64 %299, i64* %3, align 8
  br label %block_.L_4008a2

block_.L_4008db:                                  ; preds = %block_.L_4008a2
  %300 = add i64 %185, -8
  %301 = add i64 %213, 8
  store i64 %301, i64* %PC.i, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = add i32 %303, 1
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX.i1121, align 8
  %306 = icmp eq i32 %303, -1
  %307 = icmp eq i32 %304, 0
  %308 = or i1 %306, %307
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %14, align 1
  %310 = and i32 %304, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310)
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %21, align 1
  %315 = xor i32 %303, %304
  %316 = lshr i32 %315, 4
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  store i8 %318, i8* %27, align 1
  %319 = icmp eq i32 %304, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %30, align 1
  %321 = lshr i32 %304, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %33, align 1
  %323 = lshr i32 %303, 31
  %324 = xor i32 %321, %323
  %325 = add nuw nsw i32 %324, %321
  %326 = icmp eq i32 %325, 2
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %39, align 1
  %328 = add i64 %213, 14
  store i64 %328, i64* %PC.i, align 8
  store i32 %304, i32* %302, align 4
  %329 = load i64, i64* %PC.i, align 8
  %330 = add i64 %329, -88
  store i64 %330, i64* %3, align 8
  br label %block_.L_400891

block_.L_4008ee:                                  ; preds = %block_.L_400891
  %331 = add i64 %152, -4
  %332 = add i64 %180, 8
  store i64 %332, i64* %PC.i, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = add i32 %334, 1
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX.i1121, align 8
  %337 = icmp eq i32 %334, -1
  %338 = icmp eq i32 %335, 0
  %339 = or i1 %337, %338
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1
  %341 = and i32 %335, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341)
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %21, align 1
  %346 = xor i32 %334, %335
  %347 = lshr i32 %346, 4
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %27, align 1
  %350 = icmp eq i32 %335, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %30, align 1
  %352 = lshr i32 %335, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %33, align 1
  %354 = lshr i32 %334, 31
  %355 = xor i32 %352, %354
  %356 = add nuw nsw i32 %355, %352
  %357 = icmp eq i32 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %39, align 1
  %359 = add i64 %180, 14
  store i64 %359, i64* %PC.i, align 8
  store i32 %335, i32* %333, align 4
  %360 = load i64, i64* %PC.i, align 8
  %361 = add i64 %360, -124
  store i64 %361, i64* %3, align 8
  br label %block_.L_400880

block_.L_400901:                                  ; preds = %block_.L_400880
  %362 = add i64 %147, 7
  store i64 %362, i64* %PC.i, align 8
  store i32 0, i32* %122, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400908

block_.L_400908:                                  ; preds = %block_.L_400954, %block_.L_400901
  %363 = phi i64 [ %529, %block_.L_400954 ], [ %.pre4, %block_.L_400901 ]
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -4
  %366 = add i64 %363, 4
  store i64 %366, i64* %PC.i, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = add i32 %368, -12
  %370 = icmp ult i32 %368, 12
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %14, align 1
  %372 = and i32 %369, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %21, align 1
  %377 = xor i32 %368, %369
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %27, align 1
  %381 = icmp eq i32 %369, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %30, align 1
  %383 = lshr i32 %369, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %33, align 1
  %385 = lshr i32 %368, 31
  %386 = xor i32 %383, %385
  %387 = add nuw nsw i32 %386, %385
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %39, align 1
  %390 = icmp ne i8 %384, 0
  %391 = xor i1 %390, %388
  %.demorgan59 = or i1 %381, %391
  %.v60 = select i1 %.demorgan59, i64 10, i64 95
  %392 = add i64 %363, %.v60
  store i64 %392, i64* %3, align 8
  br i1 %.demorgan59, label %block_400912, label %block_.L_400967

block_400912:                                     ; preds = %block_.L_400908
  %393 = add i64 %364, -16
  %394 = add i64 %392, 7
  store i64 %394, i64* %PC.i, align 8
  %395 = inttoptr i64 %393 to i32*
  store i32 0, i32* %395, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400919

block_.L_400919:                                  ; preds = %block_400926, %block_400912
  %396 = phi i64 [ %498, %block_400926 ], [ %.pre5, %block_400912 ]
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -16
  %399 = add i64 %396, 7
  store i64 %399, i64* %PC.i, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = add i32 %401, -511
  %403 = icmp ult i32 %401, 511
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %14, align 1
  %405 = and i32 %402, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %21, align 1
  %410 = xor i32 %401, 16
  %411 = xor i32 %410, %402
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %27, align 1
  %415 = icmp eq i32 %402, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %30, align 1
  %417 = lshr i32 %402, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %33, align 1
  %419 = lshr i32 %401, 31
  %420 = xor i32 %417, %419
  %421 = add nuw nsw i32 %420, %419
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %39, align 1
  %424 = icmp ne i8 %418, 0
  %425 = xor i1 %424, %422
  %.demorgan61 = or i1 %415, %425
  %.v62 = select i1 %.demorgan61, i64 13, i64 59
  %426 = add i64 %396, %.v62
  store i64 %426, i64* %3, align 8
  br i1 %.demorgan61, label %block_400926, label %block_.L_400954

block_400926:                                     ; preds = %block_.L_400919
  store i64 ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64), i64* %RAX.i1121, align 8
  %427 = add i64 %397, -4
  %428 = add i64 %426, 14
  store i64 %428, i64* %PC.i, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  %432 = shl nsw i64 %431, 11
  store i64 %432, i64* %RCX.i1089, align 8
  %433 = lshr i64 %431, 52
  %434 = and i64 %433, 1
  %435 = add i64 %432, ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64)
  store i64 %435, i64* %RAX.i1121, align 8
  %436 = icmp ult i64 %435, ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64)
  %437 = icmp ult i64 %435, %432
  %438 = or i1 %436, %437
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %14, align 1
  %440 = trunc i64 %435 to i32
  %441 = and i32 %440, 248
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %21, align 1
  %446 = xor i64 %435, ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64)
  %447 = lshr i64 %446, 4
  %448 = trunc i64 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %27, align 1
  %450 = icmp eq i64 %435, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %30, align 1
  %452 = lshr i64 %435, 63
  %453 = trunc i64 %452 to i8
  store i8 %453, i8* %33, align 1
  %454 = xor i64 %452, lshr (i64 ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64), i64 63)
  %455 = xor i64 %452, %434
  %456 = add nuw nsw i64 %454, %455
  %457 = icmp eq i64 %456, 2
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %39, align 1
  %459 = add i64 %426, 25
  store i64 %459, i64* %PC.i, align 8
  %460 = load i32, i32* %400, align 4
  %461 = sext i32 %460 to i64
  store i64 %461, i64* %RCX.i1089, align 8
  %462 = shl nsw i64 %461, 2
  %463 = add i64 %462, %435
  %464 = add i64 %426, 32
  store i64 %464, i64* %PC.i, align 8
  %465 = inttoptr i64 %463 to i32*
  store i32 0, i32* %465, align 4
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -16
  %468 = load i64, i64* %PC.i, align 8
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC.i, align 8
  %470 = inttoptr i64 %467 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = add i32 %471, 1
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX.i1121, align 8
  %474 = icmp eq i32 %471, -1
  %475 = icmp eq i32 %472, 0
  %476 = or i1 %474, %475
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %14, align 1
  %478 = and i32 %472, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  %483 = xor i32 %471, %472
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %27, align 1
  %487 = icmp eq i32 %472, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %30, align 1
  %489 = lshr i32 %472, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %33, align 1
  %491 = lshr i32 %471, 31
  %492 = xor i32 %489, %491
  %493 = add nuw nsw i32 %492, %489
  %494 = icmp eq i32 %493, 2
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %39, align 1
  %496 = add i64 %468, 9
  store i64 %496, i64* %PC.i, align 8
  store i32 %472, i32* %470, align 4
  %497 = load i64, i64* %PC.i, align 8
  %498 = add i64 %497, -54
  store i64 %498, i64* %3, align 8
  br label %block_.L_400919

block_.L_400954:                                  ; preds = %block_.L_400919
  %499 = add i64 %397, -4
  %500 = add i64 %426, 8
  store i64 %500, i64* %PC.i, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = add i32 %502, 1
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RAX.i1121, align 8
  %505 = icmp eq i32 %502, -1
  %506 = icmp eq i32 %503, 0
  %507 = or i1 %505, %506
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %14, align 1
  %509 = and i32 %503, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %21, align 1
  %514 = xor i32 %502, %503
  %515 = lshr i32 %514, 4
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %27, align 1
  %518 = icmp eq i32 %503, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %30, align 1
  %520 = lshr i32 %503, 31
  %521 = trunc i32 %520 to i8
  store i8 %521, i8* %33, align 1
  %522 = lshr i32 %502, 31
  %523 = xor i32 %520, %522
  %524 = add nuw nsw i32 %523, %520
  %525 = icmp eq i32 %524, 2
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %39, align 1
  %527 = add i64 %426, 14
  store i64 %527, i64* %PC.i, align 8
  store i32 %503, i32* %501, align 4
  %528 = load i64, i64* %PC.i, align 8
  %529 = add i64 %528, -90
  store i64 %529, i64* %3, align 8
  br label %block_.L_400908

block_.L_400967:                                  ; preds = %block_.L_400908
  %530 = add i64 %392, 7
  store i64 %530, i64* %PC.i, align 8
  store i32 0, i32* %367, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_40096e

block_.L_40096e:                                  ; preds = %block_.L_4009dc, %block_.L_400967
  %531 = phi i64 [ %763, %block_.L_4009dc ], [ %.pre6, %block_.L_400967 ]
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -4
  %534 = add i64 %531, 4
  store i64 %534, i64* %PC.i, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = add i32 %536, -3
  %538 = icmp ult i32 %536, 3
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %14, align 1
  %540 = and i32 %537, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %21, align 1
  %545 = xor i32 %536, %537
  %546 = lshr i32 %545, 4
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  store i8 %548, i8* %27, align 1
  %549 = icmp eq i32 %537, 0
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %30, align 1
  %551 = lshr i32 %537, 31
  %552 = trunc i32 %551 to i8
  store i8 %552, i8* %33, align 1
  %553 = lshr i32 %536, 31
  %554 = xor i32 %551, %553
  %555 = add nuw nsw i32 %554, %553
  %556 = icmp eq i32 %555, 2
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %39, align 1
  %558 = icmp ne i8 %552, 0
  %559 = xor i1 %558, %556
  %.demorgan63 = or i1 %549, %559
  %.v64 = select i1 %.demorgan63, i64 10, i64 129
  %560 = add i64 %531, %.v64
  store i64 %560, i64* %3, align 8
  br i1 %.demorgan63, label %block_400978, label %block_.L_4009ef

block_400978:                                     ; preds = %block_.L_40096e
  %561 = add i64 %532, -8
  %562 = add i64 %560, 7
  store i64 %562, i64* %PC.i, align 8
  %563 = inttoptr i64 %561 to i32*
  store i32 0, i32* %563, align 4
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_40097f

block_.L_40097f:                                  ; preds = %block_.L_4009c9, %block_400978
  %564 = phi i64 [ %732, %block_.L_4009c9 ], [ %.pre7, %block_400978 ]
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -8
  %567 = add i64 %564, 4
  store i64 %567, i64* %PC.i, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = add i32 %569, -1
  %571 = icmp eq i32 %569, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %14, align 1
  %573 = and i32 %570, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %21, align 1
  %578 = xor i32 %569, %570
  %579 = lshr i32 %578, 4
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  store i8 %581, i8* %27, align 1
  %582 = icmp eq i32 %570, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %30, align 1
  %584 = lshr i32 %570, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %33, align 1
  %586 = lshr i32 %569, 31
  %587 = xor i32 %584, %586
  %588 = add nuw nsw i32 %587, %586
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %39, align 1
  %591 = icmp ne i8 %585, 0
  %592 = xor i1 %591, %589
  %.demorgan65 = or i1 %582, %592
  %.v66 = select i1 %.demorgan65, i64 10, i64 93
  %593 = add i64 %564, %.v66
  store i64 %593, i64* %3, align 8
  br i1 %.demorgan65, label %block_400989, label %block_.L_4009dc

block_400989:                                     ; preds = %block_.L_40097f
  %594 = add i64 %565, -12
  %595 = add i64 %593, 7
  store i64 %595, i64* %PC.i, align 8
  %596 = inttoptr i64 %594 to i32*
  store i32 0, i32* %596, align 4
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_400990

block_.L_400990:                                  ; preds = %block_40099a, %block_400989
  %597 = phi i64 [ %701, %block_40099a ], [ %.pre8, %block_400989 ]
  %598 = load i64, i64* %RBP.i, align 8
  %599 = add i64 %598, -12
  %600 = add i64 %597, 4
  store i64 %600, i64* %PC.i, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  store i8 0, i8* %14, align 1
  %603 = and i32 %602, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %608 = icmp eq i32 %602, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %30, align 1
  %610 = lshr i32 %602, 31
  %611 = trunc i32 %610 to i8
  store i8 %611, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %612 = xor i1 %608, true
  %613 = icmp eq i8 %611, 0
  %614 = and i1 %613, %612
  %.v67 = select i1 %614, i64 57, i64 10
  %615 = add i64 %597, %.v67
  store i64 %615, i64* %3, align 8
  br i1 %614, label %block_.L_4009c9, label %block_40099a

block_40099a:                                     ; preds = %block_.L_400990
  %616 = add i64 %598, -4
  %617 = add i64 %615, 3
  store i64 %617, i64* %PC.i, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RAX.i1121, align 8
  %621 = add i64 %598, -8
  %622 = add i64 %615, 6
  store i64 %622, i64* %PC.i, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %RCX.i1089, align 8
  %626 = add i64 %615, 9
  store i64 %626, i64* %PC.i, align 8
  %627 = load i32, i32* %601, align 4
  %628 = shl i32 %627, 3
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RDX.i1086, align 8
  %630 = add i32 %628, %624
  %631 = shl i32 %630, 3
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RCX.i1089, align 8
  %633 = lshr i32 %630, 28
  %634 = and i32 %633, 1
  %635 = load i64, i64* %RAX.i1121, align 8
  %636 = trunc i64 %635 to i32
  %637 = add i32 %631, %636
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RAX.i1121, align 8
  %639 = icmp ult i32 %637, %636
  %640 = icmp ult i32 %637, %631
  %641 = or i1 %639, %640
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %14, align 1
  %643 = and i32 %637, 255
  %644 = tail call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  store i8 %647, i8* %21, align 1
  %648 = xor i64 %632, %635
  %649 = trunc i64 %648 to i32
  %650 = xor i32 %649, %637
  %651 = lshr i32 %650, 4
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %27, align 1
  %654 = icmp eq i32 %637, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %30, align 1
  %656 = lshr i32 %637, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %33, align 1
  %658 = lshr i32 %636, 31
  %659 = xor i32 %656, %658
  %660 = xor i32 %656, %634
  %661 = add nuw nsw i32 %659, %660
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %39, align 1
  %664 = sext i32 %637 to i64
  store i64 %664, i64* %RSI.i1074, align 8
  %665 = shl nsw i64 %664, 2
  %666 = add nsw i64 %665, 6306464
  %667 = add i64 %615, 33
  store i64 %667, i64* %PC.i, align 8
  %668 = inttoptr i64 %666 to i32*
  store i32 1, i32* %668, align 4
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -12
  %671 = load i64, i64* %PC.i, align 8
  %672 = add i64 %671, 3
  store i64 %672, i64* %PC.i, align 8
  %673 = inttoptr i64 %670 to i32*
  %674 = load i32, i32* %673, align 4
  %675 = add i32 %674, 1
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RAX.i1121, align 8
  %677 = icmp eq i32 %674, -1
  %678 = icmp eq i32 %675, 0
  %679 = or i1 %677, %678
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %14, align 1
  %681 = and i32 %675, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681)
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %21, align 1
  %686 = xor i32 %674, %675
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %27, align 1
  %690 = icmp eq i32 %675, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %30, align 1
  %692 = lshr i32 %675, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %33, align 1
  %694 = lshr i32 %674, 31
  %695 = xor i32 %692, %694
  %696 = add nuw nsw i32 %695, %692
  %697 = icmp eq i32 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %39, align 1
  %699 = add i64 %671, 9
  store i64 %699, i64* %PC.i, align 8
  store i32 %675, i32* %673, align 4
  %700 = load i64, i64* %PC.i, align 8
  %701 = add i64 %700, -52
  store i64 %701, i64* %3, align 8
  br label %block_.L_400990

block_.L_4009c9:                                  ; preds = %block_.L_400990
  %702 = add i64 %598, -8
  %703 = add i64 %615, 8
  store i64 %703, i64* %PC.i, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  %706 = add i32 %705, 1
  %707 = zext i32 %706 to i64
  store i64 %707, i64* %RAX.i1121, align 8
  %708 = icmp eq i32 %705, -1
  %709 = icmp eq i32 %706, 0
  %710 = or i1 %708, %709
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %14, align 1
  %712 = and i32 %706, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %21, align 1
  %717 = xor i32 %705, %706
  %718 = lshr i32 %717, 4
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  store i8 %720, i8* %27, align 1
  %721 = icmp eq i32 %706, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %30, align 1
  %723 = lshr i32 %706, 31
  %724 = trunc i32 %723 to i8
  store i8 %724, i8* %33, align 1
  %725 = lshr i32 %705, 31
  %726 = xor i32 %723, %725
  %727 = add nuw nsw i32 %726, %723
  %728 = icmp eq i32 %727, 2
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %39, align 1
  %730 = add i64 %615, 14
  store i64 %730, i64* %PC.i, align 8
  store i32 %706, i32* %704, align 4
  %731 = load i64, i64* %PC.i, align 8
  %732 = add i64 %731, -88
  store i64 %732, i64* %3, align 8
  br label %block_.L_40097f

block_.L_4009dc:                                  ; preds = %block_.L_40097f
  %733 = add i64 %565, -4
  %734 = add i64 %593, 8
  store i64 %734, i64* %PC.i, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = add i32 %736, 1
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RAX.i1121, align 8
  %739 = icmp eq i32 %736, -1
  %740 = icmp eq i32 %737, 0
  %741 = or i1 %739, %740
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %14, align 1
  %743 = and i32 %737, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %21, align 1
  %748 = xor i32 %736, %737
  %749 = lshr i32 %748, 4
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  store i8 %751, i8* %27, align 1
  %752 = icmp eq i32 %737, 0
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %30, align 1
  %754 = lshr i32 %737, 31
  %755 = trunc i32 %754 to i8
  store i8 %755, i8* %33, align 1
  %756 = lshr i32 %736, 31
  %757 = xor i32 %754, %756
  %758 = add nuw nsw i32 %757, %754
  %759 = icmp eq i32 %758, 2
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %39, align 1
  %761 = add i64 %593, 14
  store i64 %761, i64* %PC.i, align 8
  store i32 %737, i32* %735, align 4
  %762 = load i64, i64* %PC.i, align 8
  %763 = add i64 %762, -124
  store i64 %763, i64* %3, align 8
  br label %block_.L_40096e

block_.L_4009ef:                                  ; preds = %block_.L_40096e
  store i32 0, i32* bitcast (%G_0x6191f0_type* @G_0x6191f0 to i32*), align 8
  store i32 11, i32* bitcast (%G_0x610250_type* @G_0x610250 to i32*), align 8
  %764 = add i64 %560, 29
  store i64 %764, i64* %PC.i, align 8
  store i32 0, i32* %535, align 4
  %.pre9 = load i64, i64* %PC.i, align 8
  br label %block_.L_400a0c

block_.L_400a0c:                                  ; preds = %block_.L_400a7a, %block_.L_4009ef
  %765 = phi i64 [ %997, %block_.L_400a7a ], [ %.pre9, %block_.L_4009ef ]
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -4
  %768 = add i64 %765, 4
  store i64 %768, i64* %PC.i, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = add i32 %770, -1
  %772 = icmp eq i32 %770, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %14, align 1
  %774 = and i32 %771, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %21, align 1
  %779 = xor i32 %770, %771
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  store i8 %782, i8* %27, align 1
  %783 = icmp eq i32 %771, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %30, align 1
  %785 = lshr i32 %771, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %33, align 1
  %787 = lshr i32 %770, 31
  %788 = xor i32 %785, %787
  %789 = add nuw nsw i32 %788, %787
  %790 = icmp eq i32 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %39, align 1
  %792 = icmp ne i8 %786, 0
  %793 = xor i1 %792, %790
  %.demorgan68 = or i1 %783, %793
  %.v69 = select i1 %.demorgan68, i64 10, i64 129
  %794 = add i64 %765, %.v69
  store i64 %794, i64* %3, align 8
  br i1 %.demorgan68, label %block_400a16, label %block_.L_400a8d

block_400a16:                                     ; preds = %block_.L_400a0c
  %795 = add i64 %766, -8
  %796 = add i64 %794, 7
  store i64 %796, i64* %PC.i, align 8
  %797 = inttoptr i64 %795 to i32*
  store i32 0, i32* %797, align 4
  %.pre10 = load i64, i64* %PC.i, align 8
  br label %block_.L_400a1d

block_.L_400a1d:                                  ; preds = %block_.L_400a67, %block_400a16
  %798 = phi i64 [ %966, %block_.L_400a67 ], [ %.pre10, %block_400a16 ]
  %799 = load i64, i64* %RBP.i, align 8
  %800 = add i64 %799, -8
  %801 = add i64 %798, 4
  store i64 %801, i64* %PC.i, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 4
  store i8 0, i8* %14, align 1
  %804 = and i32 %803, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %809 = icmp eq i32 %803, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %30, align 1
  %811 = lshr i32 %803, 31
  %812 = trunc i32 %811 to i8
  store i8 %812, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %813 = xor i1 %809, true
  %814 = icmp eq i8 %812, 0
  %815 = and i1 %814, %813
  %.v70 = select i1 %815, i64 93, i64 10
  %816 = add i64 %798, %.v70
  store i64 %816, i64* %3, align 8
  br i1 %815, label %block_.L_400a7a, label %block_400a27

block_400a27:                                     ; preds = %block_.L_400a1d
  %817 = add i64 %799, -12
  %818 = add i64 %816, 7
  store i64 %818, i64* %PC.i, align 8
  %819 = inttoptr i64 %817 to i32*
  store i32 0, i32* %819, align 4
  %.pre11 = load i64, i64* %PC.i, align 8
  br label %block_.L_400a2e

block_.L_400a2e:                                  ; preds = %block_400a38, %block_400a27
  %820 = phi i64 [ %935, %block_400a38 ], [ %.pre11, %block_400a27 ]
  %821 = load i64, i64* %RBP.i, align 8
  %822 = add i64 %821, -12
  %823 = add i64 %820, 4
  store i64 %823, i64* %PC.i, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = add i32 %825, -3
  %827 = icmp ult i32 %825, 3
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %14, align 1
  %829 = and i32 %826, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %21, align 1
  %834 = xor i32 %825, %826
  %835 = lshr i32 %834, 4
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %27, align 1
  %838 = icmp eq i32 %826, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %30, align 1
  %840 = lshr i32 %826, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %33, align 1
  %842 = lshr i32 %825, 31
  %843 = xor i32 %840, %842
  %844 = add nuw nsw i32 %843, %842
  %845 = icmp eq i32 %844, 2
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %39, align 1
  %847 = icmp ne i8 %841, 0
  %848 = xor i1 %847, %845
  %.demorgan71 = or i1 %838, %848
  %.v72 = select i1 %.demorgan71, i64 10, i64 57
  %849 = add i64 %820, %.v72
  store i64 %849, i64* %3, align 8
  br i1 %.demorgan71, label %block_400a38, label %block_.L_400a67

block_400a38:                                     ; preds = %block_.L_400a2e
  %850 = add i64 %821, -4
  %851 = add i64 %849, 3
  store i64 %851, i64* %PC.i, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RAX.i1121, align 8
  %855 = add i64 %821, -8
  %856 = add i64 %849, 6
  store i64 %856, i64* %PC.i, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RCX.i1089, align 8
  %860 = add i64 %849, 9
  store i64 %860, i64* %PC.i, align 8
  %861 = load i32, i32* %824, align 4
  %862 = shl i32 %861, 3
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RDX.i1086, align 8
  %864 = add i32 %862, %858
  %865 = shl i32 %864, 3
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RCX.i1089, align 8
  %867 = lshr i32 %864, 28
  %868 = and i32 %867, 1
  %869 = load i64, i64* %RAX.i1121, align 8
  %870 = trunc i64 %869 to i32
  %871 = add i32 %865, %870
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RAX.i1121, align 8
  %873 = icmp ult i32 %871, %870
  %874 = icmp ult i32 %871, %865
  %875 = or i1 %873, %874
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %14, align 1
  %877 = and i32 %871, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i64 %866, %869
  %883 = trunc i64 %882 to i32
  %884 = xor i32 %883, %871
  %885 = lshr i32 %884, 4
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %27, align 1
  %888 = icmp eq i32 %871, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %30, align 1
  %890 = lshr i32 %871, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %33, align 1
  %892 = lshr i32 %870, 31
  %893 = xor i32 %890, %892
  %894 = xor i32 %890, %868
  %895 = add nuw nsw i32 %893, %894
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %39, align 1
  %898 = sext i32 %871 to i64
  store i64 %898, i64* %RSI.i1074, align 8
  %899 = shl nsw i64 %898, 2
  %900 = add nsw i64 %899, 6308512
  %901 = add i64 %849, 33
  store i64 %901, i64* %PC.i, align 8
  %902 = inttoptr i64 %900 to i32*
  store i32 1, i32* %902, align 4
  %903 = load i64, i64* %RBP.i, align 8
  %904 = add i64 %903, -12
  %905 = load i64, i64* %PC.i, align 8
  %906 = add i64 %905, 3
  store i64 %906, i64* %PC.i, align 8
  %907 = inttoptr i64 %904 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = add i32 %908, 1
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RAX.i1121, align 8
  %911 = icmp eq i32 %908, -1
  %912 = icmp eq i32 %909, 0
  %913 = or i1 %911, %912
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %14, align 1
  %915 = and i32 %909, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %21, align 1
  %920 = xor i32 %908, %909
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %27, align 1
  %924 = icmp eq i32 %909, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %30, align 1
  %926 = lshr i32 %909, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %33, align 1
  %928 = lshr i32 %908, 31
  %929 = xor i32 %926, %928
  %930 = add nuw nsw i32 %929, %926
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %39, align 1
  %933 = add i64 %905, 9
  store i64 %933, i64* %PC.i, align 8
  store i32 %909, i32* %907, align 4
  %934 = load i64, i64* %PC.i, align 8
  %935 = add i64 %934, -52
  store i64 %935, i64* %3, align 8
  br label %block_.L_400a2e

block_.L_400a67:                                  ; preds = %block_.L_400a2e
  %936 = add i64 %821, -8
  %937 = add i64 %849, 8
  store i64 %937, i64* %PC.i, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = add i32 %939, 1
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RAX.i1121, align 8
  %942 = icmp eq i32 %939, -1
  %943 = icmp eq i32 %940, 0
  %944 = or i1 %942, %943
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %14, align 1
  %946 = and i32 %940, 255
  %947 = tail call i32 @llvm.ctpop.i32(i32 %946)
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  store i8 %950, i8* %21, align 1
  %951 = xor i32 %939, %940
  %952 = lshr i32 %951, 4
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  store i8 %954, i8* %27, align 1
  %955 = icmp eq i32 %940, 0
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %30, align 1
  %957 = lshr i32 %940, 31
  %958 = trunc i32 %957 to i8
  store i8 %958, i8* %33, align 1
  %959 = lshr i32 %939, 31
  %960 = xor i32 %957, %959
  %961 = add nuw nsw i32 %960, %957
  %962 = icmp eq i32 %961, 2
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %39, align 1
  %964 = add i64 %849, 14
  store i64 %964, i64* %PC.i, align 8
  store i32 %940, i32* %938, align 4
  %965 = load i64, i64* %PC.i, align 8
  %966 = add i64 %965, -88
  store i64 %966, i64* %3, align 8
  br label %block_.L_400a1d

block_.L_400a7a:                                  ; preds = %block_.L_400a1d
  %967 = add i64 %799, -4
  %968 = add i64 %816, 8
  store i64 %968, i64* %PC.i, align 8
  %969 = inttoptr i64 %967 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = add i32 %970, 1
  %972 = zext i32 %971 to i64
  store i64 %972, i64* %RAX.i1121, align 8
  %973 = icmp eq i32 %970, -1
  %974 = icmp eq i32 %971, 0
  %975 = or i1 %973, %974
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %14, align 1
  %977 = and i32 %971, 255
  %978 = tail call i32 @llvm.ctpop.i32(i32 %977)
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  store i8 %981, i8* %21, align 1
  %982 = xor i32 %970, %971
  %983 = lshr i32 %982, 4
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  store i8 %985, i8* %27, align 1
  %986 = icmp eq i32 %971, 0
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %30, align 1
  %988 = lshr i32 %971, 31
  %989 = trunc i32 %988 to i8
  store i8 %989, i8* %33, align 1
  %990 = lshr i32 %970, 31
  %991 = xor i32 %988, %990
  %992 = add nuw nsw i32 %991, %988
  %993 = icmp eq i32 %992, 2
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %39, align 1
  %995 = add i64 %816, 14
  store i64 %995, i64* %PC.i, align 8
  store i32 %971, i32* %969, align 4
  %996 = load i64, i64* %PC.i, align 8
  %997 = add i64 %996, -124
  store i64 %997, i64* %3, align 8
  br label %block_.L_400a0c

block_.L_400a8d:                                  ; preds = %block_.L_400a0c
  store i32 0, i32* bitcast (%G_0x6191f4_type* @G_0x6191f4 to i32*), align 8
  store i32 193, i32* bitcast (%G_0x610254_type* @G_0x610254 to i32*), align 8
  %998 = add i64 %794, 29
  store i64 %998, i64* %PC.i, align 8
  store i32 0, i32* %769, align 4
  %.pre12 = load i64, i64* %PC.i, align 8
  br label %block_.L_400aaa

block_.L_400aaa:                                  ; preds = %block_.L_400b18, %block_.L_400a8d
  %999 = phi i64 [ %1231, %block_.L_400b18 ], [ %.pre12, %block_.L_400a8d ]
  %1000 = load i64, i64* %RBP.i, align 8
  %1001 = add i64 %1000, -4
  %1002 = add i64 %999, 4
  store i64 %1002, i64* %PC.i, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  store i8 0, i8* %14, align 1
  %1005 = and i32 %1004, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1010 = icmp eq i32 %1004, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %30, align 1
  %1012 = lshr i32 %1004, 31
  %1013 = trunc i32 %1012 to i8
  store i8 %1013, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1014 = xor i1 %1010, true
  %1015 = icmp eq i8 %1013, 0
  %1016 = and i1 %1015, %1014
  %.v73 = select i1 %1016, i64 129, i64 10
  %1017 = add i64 %999, %.v73
  store i64 %1017, i64* %3, align 8
  br i1 %1016, label %block_.L_400b2b, label %block_400ab4

block_400ab4:                                     ; preds = %block_.L_400aaa
  %1018 = add i64 %1000, -8
  %1019 = add i64 %1017, 7
  store i64 %1019, i64* %PC.i, align 8
  %1020 = inttoptr i64 %1018 to i32*
  store i32 0, i32* %1020, align 4
  %.pre13 = load i64, i64* %PC.i, align 8
  br label %block_.L_400abb

block_.L_400abb:                                  ; preds = %block_.L_400b05, %block_400ab4
  %1021 = phi i64 [ %1200, %block_.L_400b05 ], [ %.pre13, %block_400ab4 ]
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -8
  %1024 = add i64 %1021, 4
  store i64 %1024, i64* %PC.i, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = add i32 %1026, -3
  %1028 = icmp ult i32 %1026, 3
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %14, align 1
  %1030 = and i32 %1027, 255
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  store i8 %1034, i8* %21, align 1
  %1035 = xor i32 %1026, %1027
  %1036 = lshr i32 %1035, 4
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %27, align 1
  %1039 = icmp eq i32 %1027, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %30, align 1
  %1041 = lshr i32 %1027, 31
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %33, align 1
  %1043 = lshr i32 %1026, 31
  %1044 = xor i32 %1041, %1043
  %1045 = add nuw nsw i32 %1044, %1043
  %1046 = icmp eq i32 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %39, align 1
  %1048 = icmp ne i8 %1042, 0
  %1049 = xor i1 %1048, %1046
  %.demorgan74 = or i1 %1039, %1049
  %.v75 = select i1 %.demorgan74, i64 10, i64 93
  %1050 = add i64 %1021, %.v75
  store i64 %1050, i64* %3, align 8
  br i1 %.demorgan74, label %block_400ac5, label %block_.L_400b18

block_400ac5:                                     ; preds = %block_.L_400abb
  %1051 = add i64 %1022, -12
  %1052 = add i64 %1050, 7
  store i64 %1052, i64* %PC.i, align 8
  %1053 = inttoptr i64 %1051 to i32*
  store i32 0, i32* %1053, align 4
  %.pre14 = load i64, i64* %PC.i, align 8
  br label %block_.L_400acc

block_.L_400acc:                                  ; preds = %block_400ad6, %block_400ac5
  %1054 = phi i64 [ %1169, %block_400ad6 ], [ %.pre14, %block_400ac5 ]
  %1055 = load i64, i64* %RBP.i, align 8
  %1056 = add i64 %1055, -12
  %1057 = add i64 %1054, 4
  store i64 %1057, i64* %PC.i, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = add i32 %1059, -1
  %1061 = icmp eq i32 %1059, 0
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = and i32 %1060, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  %1068 = xor i32 %1059, %1060
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %27, align 1
  %1072 = icmp eq i32 %1060, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %30, align 1
  %1074 = lshr i32 %1060, 31
  %1075 = trunc i32 %1074 to i8
  store i8 %1075, i8* %33, align 1
  %1076 = lshr i32 %1059, 31
  %1077 = xor i32 %1074, %1076
  %1078 = add nuw nsw i32 %1077, %1076
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %39, align 1
  %1081 = icmp ne i8 %1075, 0
  %1082 = xor i1 %1081, %1079
  %.demorgan76 = or i1 %1072, %1082
  %.v77 = select i1 %.demorgan76, i64 10, i64 57
  %1083 = add i64 %1054, %.v77
  store i64 %1083, i64* %3, align 8
  br i1 %.demorgan76, label %block_400ad6, label %block_.L_400b05

block_400ad6:                                     ; preds = %block_.L_400acc
  %1084 = add i64 %1055, -4
  %1085 = add i64 %1083, 3
  store i64 %1085, i64* %PC.i, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = zext i32 %1087 to i64
  store i64 %1088, i64* %RAX.i1121, align 8
  %1089 = add i64 %1055, -8
  %1090 = add i64 %1083, 6
  store i64 %1090, i64* %PC.i, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RCX.i1089, align 8
  %1094 = add i64 %1083, 9
  store i64 %1094, i64* %PC.i, align 8
  %1095 = load i32, i32* %1058, align 4
  %1096 = shl i32 %1095, 3
  %1097 = zext i32 %1096 to i64
  store i64 %1097, i64* %RDX.i1086, align 8
  %1098 = add i32 %1096, %1092
  %1099 = shl i32 %1098, 3
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RCX.i1089, align 8
  %1101 = lshr i32 %1098, 28
  %1102 = and i32 %1101, 1
  %1103 = load i64, i64* %RAX.i1121, align 8
  %1104 = trunc i64 %1103 to i32
  %1105 = add i32 %1099, %1104
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RAX.i1121, align 8
  %1107 = icmp ult i32 %1105, %1104
  %1108 = icmp ult i32 %1105, %1099
  %1109 = or i1 %1107, %1108
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %14, align 1
  %1111 = and i32 %1105, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %21, align 1
  %1116 = xor i64 %1100, %1103
  %1117 = trunc i64 %1116 to i32
  %1118 = xor i32 %1117, %1105
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %27, align 1
  %1122 = icmp eq i32 %1105, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %30, align 1
  %1124 = lshr i32 %1105, 31
  %1125 = trunc i32 %1124 to i8
  store i8 %1125, i8* %33, align 1
  %1126 = lshr i32 %1104, 31
  %1127 = xor i32 %1124, %1126
  %1128 = xor i32 %1124, %1102
  %1129 = add nuw nsw i32 %1127, %1128
  %1130 = icmp eq i32 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %39, align 1
  %1132 = sext i32 %1105 to i64
  store i64 %1132, i64* %RSI.i1074, align 8
  %1133 = shl nsw i64 %1132, 2
  %1134 = add nsw i64 %1133, 6310560
  %1135 = add i64 %1083, 33
  store i64 %1135, i64* %PC.i, align 8
  %1136 = inttoptr i64 %1134 to i32*
  store i32 1, i32* %1136, align 4
  %1137 = load i64, i64* %RBP.i, align 8
  %1138 = add i64 %1137, -12
  %1139 = load i64, i64* %PC.i, align 8
  %1140 = add i64 %1139, 3
  store i64 %1140, i64* %PC.i, align 8
  %1141 = inttoptr i64 %1138 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = add i32 %1142, 1
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i1121, align 8
  %1145 = icmp eq i32 %1142, -1
  %1146 = icmp eq i32 %1143, 0
  %1147 = or i1 %1145, %1146
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %14, align 1
  %1149 = and i32 %1143, 255
  %1150 = tail call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  store i8 %1153, i8* %21, align 1
  %1154 = xor i32 %1142, %1143
  %1155 = lshr i32 %1154, 4
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  store i8 %1157, i8* %27, align 1
  %1158 = icmp eq i32 %1143, 0
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %30, align 1
  %1160 = lshr i32 %1143, 31
  %1161 = trunc i32 %1160 to i8
  store i8 %1161, i8* %33, align 1
  %1162 = lshr i32 %1142, 31
  %1163 = xor i32 %1160, %1162
  %1164 = add nuw nsw i32 %1163, %1160
  %1165 = icmp eq i32 %1164, 2
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %39, align 1
  %1167 = add i64 %1139, 9
  store i64 %1167, i64* %PC.i, align 8
  store i32 %1143, i32* %1141, align 4
  %1168 = load i64, i64* %PC.i, align 8
  %1169 = add i64 %1168, -52
  store i64 %1169, i64* %3, align 8
  br label %block_.L_400acc

block_.L_400b05:                                  ; preds = %block_.L_400acc
  %1170 = add i64 %1055, -8
  %1171 = add i64 %1083, 8
  store i64 %1171, i64* %PC.i, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = add i32 %1173, 1
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RAX.i1121, align 8
  %1176 = icmp eq i32 %1173, -1
  %1177 = icmp eq i32 %1174, 0
  %1178 = or i1 %1176, %1177
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %14, align 1
  %1180 = and i32 %1174, 255
  %1181 = tail call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  store i8 %1184, i8* %21, align 1
  %1185 = xor i32 %1173, %1174
  %1186 = lshr i32 %1185, 4
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  store i8 %1188, i8* %27, align 1
  %1189 = icmp eq i32 %1174, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %30, align 1
  %1191 = lshr i32 %1174, 31
  %1192 = trunc i32 %1191 to i8
  store i8 %1192, i8* %33, align 1
  %1193 = lshr i32 %1173, 31
  %1194 = xor i32 %1191, %1193
  %1195 = add nuw nsw i32 %1194, %1191
  %1196 = icmp eq i32 %1195, 2
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %39, align 1
  %1198 = add i64 %1083, 14
  store i64 %1198, i64* %PC.i, align 8
  store i32 %1174, i32* %1172, align 4
  %1199 = load i64, i64* %PC.i, align 8
  %1200 = add i64 %1199, -88
  store i64 %1200, i64* %3, align 8
  br label %block_.L_400abb

block_.L_400b18:                                  ; preds = %block_.L_400abb
  %1201 = add i64 %1022, -4
  %1202 = add i64 %1050, 8
  store i64 %1202, i64* %PC.i, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = add i32 %1204, 1
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RAX.i1121, align 8
  %1207 = icmp eq i32 %1204, -1
  %1208 = icmp eq i32 %1205, 0
  %1209 = or i1 %1207, %1208
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %14, align 1
  %1211 = and i32 %1205, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %21, align 1
  %1216 = xor i32 %1204, %1205
  %1217 = lshr i32 %1216, 4
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  store i8 %1219, i8* %27, align 1
  %1220 = icmp eq i32 %1205, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %30, align 1
  %1222 = lshr i32 %1205, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %33, align 1
  %1224 = lshr i32 %1204, 31
  %1225 = xor i32 %1222, %1224
  %1226 = add nuw nsw i32 %1225, %1222
  %1227 = icmp eq i32 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %39, align 1
  %1229 = add i64 %1050, 14
  store i64 %1229, i64* %PC.i, align 8
  store i32 %1205, i32* %1203, align 4
  %1230 = load i64, i64* %PC.i, align 8
  %1231 = add i64 %1230, -124
  store i64 %1231, i64* %3, align 8
  br label %block_.L_400aaa

block_.L_400b2b:                                  ; preds = %block_.L_400aaa
  store i32 0, i32* bitcast (%G_0x6191f8_type* @G_0x6191f8 to i32*), align 8
  store i32 88, i32* bitcast (%G_0x610258_type* @G_0x610258 to i32*), align 8
  %1232 = add i64 %1017, 29
  store i64 %1232, i64* %PC.i, align 8
  store i32 0, i32* %1003, align 4
  %.pre15 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b48

block_.L_400b48:                                  ; preds = %block_.L_400bb6, %block_.L_400b2b
  %1233 = phi i64 [ %1465, %block_.L_400bb6 ], [ %.pre15, %block_.L_400b2b ]
  %1234 = load i64, i64* %RBP.i, align 8
  %1235 = add i64 %1234, -4
  %1236 = add i64 %1233, 4
  store i64 %1236, i64* %PC.i, align 8
  %1237 = inttoptr i64 %1235 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = add i32 %1238, -1
  %1240 = icmp eq i32 %1238, 0
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %14, align 1
  %1242 = and i32 %1239, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %21, align 1
  %1247 = xor i32 %1238, %1239
  %1248 = lshr i32 %1247, 4
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  store i8 %1250, i8* %27, align 1
  %1251 = icmp eq i32 %1239, 0
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %30, align 1
  %1253 = lshr i32 %1239, 31
  %1254 = trunc i32 %1253 to i8
  store i8 %1254, i8* %33, align 1
  %1255 = lshr i32 %1238, 31
  %1256 = xor i32 %1253, %1255
  %1257 = add nuw nsw i32 %1256, %1255
  %1258 = icmp eq i32 %1257, 2
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %39, align 1
  %1260 = icmp ne i8 %1254, 0
  %1261 = xor i1 %1260, %1258
  %.demorgan78 = or i1 %1251, %1261
  %.v79 = select i1 %.demorgan78, i64 10, i64 129
  %1262 = add i64 %1233, %.v79
  store i64 %1262, i64* %3, align 8
  br i1 %.demorgan78, label %block_400b52, label %block_.L_400bc9

block_400b52:                                     ; preds = %block_.L_400b48
  %1263 = add i64 %1234, -8
  %1264 = add i64 %1262, 7
  store i64 %1264, i64* %PC.i, align 8
  %1265 = inttoptr i64 %1263 to i32*
  store i32 0, i32* %1265, align 4
  %.pre16 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b59

block_.L_400b59:                                  ; preds = %block_.L_400ba3, %block_400b52
  %1266 = phi i64 [ %1434, %block_.L_400ba3 ], [ %.pre16, %block_400b52 ]
  %1267 = load i64, i64* %RBP.i, align 8
  %1268 = add i64 %1267, -8
  %1269 = add i64 %1266, 4
  store i64 %1269, i64* %PC.i, align 8
  %1270 = inttoptr i64 %1268 to i32*
  %1271 = load i32, i32* %1270, align 4
  %1272 = add i32 %1271, -3
  %1273 = icmp ult i32 %1271, 3
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %14, align 1
  %1275 = and i32 %1272, 255
  %1276 = tail call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  store i8 %1279, i8* %21, align 1
  %1280 = xor i32 %1271, %1272
  %1281 = lshr i32 %1280, 4
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  store i8 %1283, i8* %27, align 1
  %1284 = icmp eq i32 %1272, 0
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %30, align 1
  %1286 = lshr i32 %1272, 31
  %1287 = trunc i32 %1286 to i8
  store i8 %1287, i8* %33, align 1
  %1288 = lshr i32 %1271, 31
  %1289 = xor i32 %1286, %1288
  %1290 = add nuw nsw i32 %1289, %1288
  %1291 = icmp eq i32 %1290, 2
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %39, align 1
  %1293 = icmp ne i8 %1287, 0
  %1294 = xor i1 %1293, %1291
  %.demorgan80 = or i1 %1284, %1294
  %.v81 = select i1 %.demorgan80, i64 10, i64 93
  %1295 = add i64 %1266, %.v81
  store i64 %1295, i64* %3, align 8
  br i1 %.demorgan80, label %block_400b63, label %block_.L_400bb6

block_400b63:                                     ; preds = %block_.L_400b59
  %1296 = add i64 %1267, -12
  %1297 = add i64 %1295, 7
  store i64 %1297, i64* %PC.i, align 8
  %1298 = inttoptr i64 %1296 to i32*
  store i32 0, i32* %1298, align 4
  %.pre17 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b6a

block_.L_400b6a:                                  ; preds = %block_400b74, %block_400b63
  %1299 = phi i64 [ %1403, %block_400b74 ], [ %.pre17, %block_400b63 ]
  %1300 = load i64, i64* %RBP.i, align 8
  %1301 = add i64 %1300, -12
  %1302 = add i64 %1299, 4
  store i64 %1302, i64* %PC.i, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  store i8 0, i8* %14, align 1
  %1305 = and i32 %1304, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305)
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1310 = icmp eq i32 %1304, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %30, align 1
  %1312 = lshr i32 %1304, 31
  %1313 = trunc i32 %1312 to i8
  store i8 %1313, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1314 = xor i1 %1310, true
  %1315 = icmp eq i8 %1313, 0
  %1316 = and i1 %1315, %1314
  %.v82 = select i1 %1316, i64 57, i64 10
  %1317 = add i64 %1299, %.v82
  store i64 %1317, i64* %3, align 8
  br i1 %1316, label %block_.L_400ba3, label %block_400b74

block_400b74:                                     ; preds = %block_.L_400b6a
  %1318 = add i64 %1300, -4
  %1319 = add i64 %1317, 3
  store i64 %1319, i64* %PC.i, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RAX.i1121, align 8
  %1323 = add i64 %1300, -8
  %1324 = add i64 %1317, 6
  store i64 %1324, i64* %PC.i, align 8
  %1325 = inttoptr i64 %1323 to i32*
  %1326 = load i32, i32* %1325, align 4
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RCX.i1089, align 8
  %1328 = add i64 %1317, 9
  store i64 %1328, i64* %PC.i, align 8
  %1329 = load i32, i32* %1303, align 4
  %1330 = shl i32 %1329, 3
  %1331 = zext i32 %1330 to i64
  store i64 %1331, i64* %RDX.i1086, align 8
  %1332 = add i32 %1330, %1326
  %1333 = shl i32 %1332, 3
  %1334 = zext i32 %1333 to i64
  store i64 %1334, i64* %RCX.i1089, align 8
  %1335 = lshr i32 %1332, 28
  %1336 = and i32 %1335, 1
  %1337 = load i64, i64* %RAX.i1121, align 8
  %1338 = trunc i64 %1337 to i32
  %1339 = add i32 %1333, %1338
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RAX.i1121, align 8
  %1341 = icmp ult i32 %1339, %1338
  %1342 = icmp ult i32 %1339, %1333
  %1343 = or i1 %1341, %1342
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %14, align 1
  %1345 = and i32 %1339, 255
  %1346 = tail call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %21, align 1
  %1350 = xor i64 %1334, %1337
  %1351 = trunc i64 %1350 to i32
  %1352 = xor i32 %1351, %1339
  %1353 = lshr i32 %1352, 4
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  store i8 %1355, i8* %27, align 1
  %1356 = icmp eq i32 %1339, 0
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %30, align 1
  %1358 = lshr i32 %1339, 31
  %1359 = trunc i32 %1358 to i8
  store i8 %1359, i8* %33, align 1
  %1360 = lshr i32 %1338, 31
  %1361 = xor i32 %1358, %1360
  %1362 = xor i32 %1358, %1336
  %1363 = add nuw nsw i32 %1361, %1362
  %1364 = icmp eq i32 %1363, 2
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %39, align 1
  %1366 = sext i32 %1339 to i64
  store i64 %1366, i64* %RSI.i1074, align 8
  %1367 = shl nsw i64 %1366, 2
  %1368 = add nsw i64 %1367, 6312608
  %1369 = add i64 %1317, 33
  store i64 %1369, i64* %PC.i, align 8
  %1370 = inttoptr i64 %1368 to i32*
  store i32 1, i32* %1370, align 4
  %1371 = load i64, i64* %RBP.i, align 8
  %1372 = add i64 %1371, -12
  %1373 = load i64, i64* %PC.i, align 8
  %1374 = add i64 %1373, 3
  store i64 %1374, i64* %PC.i, align 8
  %1375 = inttoptr i64 %1372 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = add i32 %1376, 1
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RAX.i1121, align 8
  %1379 = icmp eq i32 %1376, -1
  %1380 = icmp eq i32 %1377, 0
  %1381 = or i1 %1379, %1380
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %14, align 1
  %1383 = and i32 %1377, 255
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383)
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %21, align 1
  %1388 = xor i32 %1376, %1377
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %27, align 1
  %1392 = icmp eq i32 %1377, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %30, align 1
  %1394 = lshr i32 %1377, 31
  %1395 = trunc i32 %1394 to i8
  store i8 %1395, i8* %33, align 1
  %1396 = lshr i32 %1376, 31
  %1397 = xor i32 %1394, %1396
  %1398 = add nuw nsw i32 %1397, %1394
  %1399 = icmp eq i32 %1398, 2
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %39, align 1
  %1401 = add i64 %1373, 9
  store i64 %1401, i64* %PC.i, align 8
  store i32 %1377, i32* %1375, align 4
  %1402 = load i64, i64* %PC.i, align 8
  %1403 = add i64 %1402, -52
  store i64 %1403, i64* %3, align 8
  br label %block_.L_400b6a

block_.L_400ba3:                                  ; preds = %block_.L_400b6a
  %1404 = add i64 %1300, -8
  %1405 = add i64 %1317, 8
  store i64 %1405, i64* %PC.i, align 8
  %1406 = inttoptr i64 %1404 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = add i32 %1407, 1
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RAX.i1121, align 8
  %1410 = icmp eq i32 %1407, -1
  %1411 = icmp eq i32 %1408, 0
  %1412 = or i1 %1410, %1411
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %14, align 1
  %1414 = and i32 %1408, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %21, align 1
  %1419 = xor i32 %1407, %1408
  %1420 = lshr i32 %1419, 4
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  store i8 %1422, i8* %27, align 1
  %1423 = icmp eq i32 %1408, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %30, align 1
  %1425 = lshr i32 %1408, 31
  %1426 = trunc i32 %1425 to i8
  store i8 %1426, i8* %33, align 1
  %1427 = lshr i32 %1407, 31
  %1428 = xor i32 %1425, %1427
  %1429 = add nuw nsw i32 %1428, %1425
  %1430 = icmp eq i32 %1429, 2
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %39, align 1
  %1432 = add i64 %1317, 14
  store i64 %1432, i64* %PC.i, align 8
  store i32 %1408, i32* %1406, align 4
  %1433 = load i64, i64* %PC.i, align 8
  %1434 = add i64 %1433, -88
  store i64 %1434, i64* %3, align 8
  br label %block_.L_400b59

block_.L_400bb6:                                  ; preds = %block_.L_400b59
  %1435 = add i64 %1267, -4
  %1436 = add i64 %1295, 8
  store i64 %1436, i64* %PC.i, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = add i32 %1438, 1
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RAX.i1121, align 8
  %1441 = icmp eq i32 %1438, -1
  %1442 = icmp eq i32 %1439, 0
  %1443 = or i1 %1441, %1442
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %14, align 1
  %1445 = and i32 %1439, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  store i8 %1449, i8* %21, align 1
  %1450 = xor i32 %1438, %1439
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %27, align 1
  %1454 = icmp eq i32 %1439, 0
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %30, align 1
  %1456 = lshr i32 %1439, 31
  %1457 = trunc i32 %1456 to i8
  store i8 %1457, i8* %33, align 1
  %1458 = lshr i32 %1438, 31
  %1459 = xor i32 %1456, %1458
  %1460 = add nuw nsw i32 %1459, %1456
  %1461 = icmp eq i32 %1460, 2
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %39, align 1
  %1463 = add i64 %1295, 14
  store i64 %1463, i64* %PC.i, align 8
  store i32 %1439, i32* %1437, align 4
  %1464 = load i64, i64* %PC.i, align 8
  %1465 = add i64 %1464, -124
  store i64 %1465, i64* %3, align 8
  br label %block_.L_400b48

block_.L_400bc9:                                  ; preds = %block_.L_400b48
  store i32 0, i32* bitcast (%G_0x6191fc_type* @G_0x6191fc to i32*), align 8
  store i32 25, i32* bitcast (%G_0x61025c_type* @G_0x61025c to i32*), align 8
  %1466 = add i64 %1262, 29
  store i64 %1466, i64* %PC.i, align 8
  store i32 0, i32* %1237, align 4
  %.pre18 = load i64, i64* %PC.i, align 8
  br label %block_.L_400be6

block_.L_400be6:                                  ; preds = %block_.L_400c54, %block_.L_400bc9
  %1467 = phi i64 [ %1699, %block_.L_400c54 ], [ %.pre18, %block_.L_400bc9 ]
  %1468 = load i64, i64* %RBP.i, align 8
  %1469 = add i64 %1468, -4
  %1470 = add i64 %1467, 4
  store i64 %1470, i64* %PC.i, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = add i32 %1472, -3
  %1474 = icmp ult i32 %1472, 3
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %14, align 1
  %1476 = and i32 %1473, 255
  %1477 = tail call i32 @llvm.ctpop.i32(i32 %1476)
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  store i8 %1480, i8* %21, align 1
  %1481 = xor i32 %1472, %1473
  %1482 = lshr i32 %1481, 4
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  store i8 %1484, i8* %27, align 1
  %1485 = icmp eq i32 %1473, 0
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %30, align 1
  %1487 = lshr i32 %1473, 31
  %1488 = trunc i32 %1487 to i8
  store i8 %1488, i8* %33, align 1
  %1489 = lshr i32 %1472, 31
  %1490 = xor i32 %1487, %1489
  %1491 = add nuw nsw i32 %1490, %1489
  %1492 = icmp eq i32 %1491, 2
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %39, align 1
  %1494 = icmp ne i8 %1488, 0
  %1495 = xor i1 %1494, %1492
  %.demorgan83 = or i1 %1485, %1495
  %.v84 = select i1 %.demorgan83, i64 10, i64 129
  %1496 = add i64 %1467, %.v84
  store i64 %1496, i64* %3, align 8
  br i1 %.demorgan83, label %block_400bf0, label %block_.L_400c67

block_400bf0:                                     ; preds = %block_.L_400be6
  %1497 = add i64 %1468, -8
  %1498 = add i64 %1496, 7
  store i64 %1498, i64* %PC.i, align 8
  %1499 = inttoptr i64 %1497 to i32*
  store i32 0, i32* %1499, align 4
  %.pre19 = load i64, i64* %PC.i, align 8
  br label %block_.L_400bf7

block_.L_400bf7:                                  ; preds = %block_.L_400c41, %block_400bf0
  %1500 = phi i64 [ %1668, %block_.L_400c41 ], [ %.pre19, %block_400bf0 ]
  %1501 = load i64, i64* %RBP.i, align 8
  %1502 = add i64 %1501, -8
  %1503 = add i64 %1500, 4
  store i64 %1503, i64* %PC.i, align 8
  %1504 = inttoptr i64 %1502 to i32*
  %1505 = load i32, i32* %1504, align 4
  store i8 0, i8* %14, align 1
  %1506 = and i32 %1505, 255
  %1507 = tail call i32 @llvm.ctpop.i32(i32 %1506)
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  %1510 = xor i8 %1509, 1
  store i8 %1510, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1511 = icmp eq i32 %1505, 0
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %30, align 1
  %1513 = lshr i32 %1505, 31
  %1514 = trunc i32 %1513 to i8
  store i8 %1514, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1515 = xor i1 %1511, true
  %1516 = icmp eq i8 %1514, 0
  %1517 = and i1 %1516, %1515
  %.v85 = select i1 %1517, i64 93, i64 10
  %1518 = add i64 %1500, %.v85
  store i64 %1518, i64* %3, align 8
  br i1 %1517, label %block_.L_400c54, label %block_400c01

block_400c01:                                     ; preds = %block_.L_400bf7
  %1519 = add i64 %1501, -12
  %1520 = add i64 %1518, 7
  store i64 %1520, i64* %PC.i, align 8
  %1521 = inttoptr i64 %1519 to i32*
  store i32 0, i32* %1521, align 4
  %.pre20 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c08

block_.L_400c08:                                  ; preds = %block_400c12, %block_400c01
  %1522 = phi i64 [ %1637, %block_400c12 ], [ %.pre20, %block_400c01 ]
  %1523 = load i64, i64* %RBP.i, align 8
  %1524 = add i64 %1523, -12
  %1525 = add i64 %1522, 4
  store i64 %1525, i64* %PC.i, align 8
  %1526 = inttoptr i64 %1524 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = add i32 %1527, -1
  %1529 = icmp eq i32 %1527, 0
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %14, align 1
  %1531 = and i32 %1528, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %21, align 1
  %1536 = xor i32 %1527, %1528
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %27, align 1
  %1540 = icmp eq i32 %1528, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %30, align 1
  %1542 = lshr i32 %1528, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %33, align 1
  %1544 = lshr i32 %1527, 31
  %1545 = xor i32 %1542, %1544
  %1546 = add nuw nsw i32 %1545, %1544
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %39, align 1
  %1549 = icmp ne i8 %1543, 0
  %1550 = xor i1 %1549, %1547
  %.demorgan86 = or i1 %1540, %1550
  %.v87 = select i1 %.demorgan86, i64 10, i64 57
  %1551 = add i64 %1522, %.v87
  store i64 %1551, i64* %3, align 8
  br i1 %.demorgan86, label %block_400c12, label %block_.L_400c41

block_400c12:                                     ; preds = %block_.L_400c08
  %1552 = add i64 %1523, -4
  %1553 = add i64 %1551, 3
  store i64 %1553, i64* %PC.i, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RAX.i1121, align 8
  %1557 = add i64 %1523, -8
  %1558 = add i64 %1551, 6
  store i64 %1558, i64* %PC.i, align 8
  %1559 = inttoptr i64 %1557 to i32*
  %1560 = load i32, i32* %1559, align 4
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RCX.i1089, align 8
  %1562 = add i64 %1551, 9
  store i64 %1562, i64* %PC.i, align 8
  %1563 = load i32, i32* %1526, align 4
  %1564 = shl i32 %1563, 3
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RDX.i1086, align 8
  %1566 = add i32 %1564, %1560
  %1567 = shl i32 %1566, 3
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RCX.i1089, align 8
  %1569 = lshr i32 %1566, 28
  %1570 = and i32 %1569, 1
  %1571 = load i64, i64* %RAX.i1121, align 8
  %1572 = trunc i64 %1571 to i32
  %1573 = add i32 %1567, %1572
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RAX.i1121, align 8
  %1575 = icmp ult i32 %1573, %1572
  %1576 = icmp ult i32 %1573, %1567
  %1577 = or i1 %1575, %1576
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %14, align 1
  %1579 = and i32 %1573, 255
  %1580 = tail call i32 @llvm.ctpop.i32(i32 %1579)
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = xor i8 %1582, 1
  store i8 %1583, i8* %21, align 1
  %1584 = xor i64 %1568, %1571
  %1585 = trunc i64 %1584 to i32
  %1586 = xor i32 %1585, %1573
  %1587 = lshr i32 %1586, 4
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  store i8 %1589, i8* %27, align 1
  %1590 = icmp eq i32 %1573, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %30, align 1
  %1592 = lshr i32 %1573, 31
  %1593 = trunc i32 %1592 to i8
  store i8 %1593, i8* %33, align 1
  %1594 = lshr i32 %1572, 31
  %1595 = xor i32 %1592, %1594
  %1596 = xor i32 %1592, %1570
  %1597 = add nuw nsw i32 %1595, %1596
  %1598 = icmp eq i32 %1597, 2
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %39, align 1
  %1600 = sext i32 %1573 to i64
  store i64 %1600, i64* %RSI.i1074, align 8
  %1601 = shl nsw i64 %1600, 2
  %1602 = add nsw i64 %1601, 6314656
  %1603 = add i64 %1551, 33
  store i64 %1603, i64* %PC.i, align 8
  %1604 = inttoptr i64 %1602 to i32*
  store i32 1, i32* %1604, align 4
  %1605 = load i64, i64* %RBP.i, align 8
  %1606 = add i64 %1605, -12
  %1607 = load i64, i64* %PC.i, align 8
  %1608 = add i64 %1607, 3
  store i64 %1608, i64* %PC.i, align 8
  %1609 = inttoptr i64 %1606 to i32*
  %1610 = load i32, i32* %1609, align 4
  %1611 = add i32 %1610, 1
  %1612 = zext i32 %1611 to i64
  store i64 %1612, i64* %RAX.i1121, align 8
  %1613 = icmp eq i32 %1610, -1
  %1614 = icmp eq i32 %1611, 0
  %1615 = or i1 %1613, %1614
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %14, align 1
  %1617 = and i32 %1611, 255
  %1618 = tail call i32 @llvm.ctpop.i32(i32 %1617)
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = xor i8 %1620, 1
  store i8 %1621, i8* %21, align 1
  %1622 = xor i32 %1610, %1611
  %1623 = lshr i32 %1622, 4
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %27, align 1
  %1626 = icmp eq i32 %1611, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %30, align 1
  %1628 = lshr i32 %1611, 31
  %1629 = trunc i32 %1628 to i8
  store i8 %1629, i8* %33, align 1
  %1630 = lshr i32 %1610, 31
  %1631 = xor i32 %1628, %1630
  %1632 = add nuw nsw i32 %1631, %1628
  %1633 = icmp eq i32 %1632, 2
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %39, align 1
  %1635 = add i64 %1607, 9
  store i64 %1635, i64* %PC.i, align 8
  store i32 %1611, i32* %1609, align 4
  %1636 = load i64, i64* %PC.i, align 8
  %1637 = add i64 %1636, -52
  store i64 %1637, i64* %3, align 8
  br label %block_.L_400c08

block_.L_400c41:                                  ; preds = %block_.L_400c08
  %1638 = add i64 %1523, -8
  %1639 = add i64 %1551, 8
  store i64 %1639, i64* %PC.i, align 8
  %1640 = inttoptr i64 %1638 to i32*
  %1641 = load i32, i32* %1640, align 4
  %1642 = add i32 %1641, 1
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RAX.i1121, align 8
  %1644 = icmp eq i32 %1641, -1
  %1645 = icmp eq i32 %1642, 0
  %1646 = or i1 %1644, %1645
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %14, align 1
  %1648 = and i32 %1642, 255
  %1649 = tail call i32 @llvm.ctpop.i32(i32 %1648)
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  store i8 %1652, i8* %21, align 1
  %1653 = xor i32 %1641, %1642
  %1654 = lshr i32 %1653, 4
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  store i8 %1656, i8* %27, align 1
  %1657 = icmp eq i32 %1642, 0
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %30, align 1
  %1659 = lshr i32 %1642, 31
  %1660 = trunc i32 %1659 to i8
  store i8 %1660, i8* %33, align 1
  %1661 = lshr i32 %1641, 31
  %1662 = xor i32 %1659, %1661
  %1663 = add nuw nsw i32 %1662, %1659
  %1664 = icmp eq i32 %1663, 2
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %39, align 1
  %1666 = add i64 %1551, 14
  store i64 %1666, i64* %PC.i, align 8
  store i32 %1642, i32* %1640, align 4
  %1667 = load i64, i64* %PC.i, align 8
  %1668 = add i64 %1667, -88
  store i64 %1668, i64* %3, align 8
  br label %block_.L_400bf7

block_.L_400c54:                                  ; preds = %block_.L_400bf7
  %1669 = add i64 %1501, -4
  %1670 = add i64 %1518, 8
  store i64 %1670, i64* %PC.i, align 8
  %1671 = inttoptr i64 %1669 to i32*
  %1672 = load i32, i32* %1671, align 4
  %1673 = add i32 %1672, 1
  %1674 = zext i32 %1673 to i64
  store i64 %1674, i64* %RAX.i1121, align 8
  %1675 = icmp eq i32 %1672, -1
  %1676 = icmp eq i32 %1673, 0
  %1677 = or i1 %1675, %1676
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %14, align 1
  %1679 = and i32 %1673, 255
  %1680 = tail call i32 @llvm.ctpop.i32(i32 %1679)
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  %1683 = xor i8 %1682, 1
  store i8 %1683, i8* %21, align 1
  %1684 = xor i32 %1672, %1673
  %1685 = lshr i32 %1684, 4
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  store i8 %1687, i8* %27, align 1
  %1688 = icmp eq i32 %1673, 0
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %30, align 1
  %1690 = lshr i32 %1673, 31
  %1691 = trunc i32 %1690 to i8
  store i8 %1691, i8* %33, align 1
  %1692 = lshr i32 %1672, 31
  %1693 = xor i32 %1690, %1692
  %1694 = add nuw nsw i32 %1693, %1690
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %39, align 1
  %1697 = add i64 %1518, 14
  store i64 %1697, i64* %PC.i, align 8
  store i32 %1673, i32* %1671, align 4
  %1698 = load i64, i64* %PC.i, align 8
  %1699 = add i64 %1698, -124
  store i64 %1699, i64* %3, align 8
  br label %block_.L_400be6

block_.L_400c67:                                  ; preds = %block_.L_400be6
  store i32 0, i32* bitcast (%G_0x619200_type* @G_0x619200 to i32*), align 8
  store i32 67, i32* bitcast (%G_0x610260_type* @G_0x610260 to i32*), align 8
  %1700 = add i64 %1496, 29
  store i64 %1700, i64* %PC.i, align 8
  store i32 0, i32* %1471, align 4
  %.pre21 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c84

block_.L_400c84:                                  ; preds = %block_.L_400cf2, %block_.L_400c67
  %1701 = phi i64 [ %1933, %block_.L_400cf2 ], [ %.pre21, %block_.L_400c67 ]
  %1702 = load i64, i64* %RBP.i, align 8
  %1703 = add i64 %1702, -4
  %1704 = add i64 %1701, 4
  store i64 %1704, i64* %PC.i, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  store i8 0, i8* %14, align 1
  %1707 = and i32 %1706, 255
  %1708 = tail call i32 @llvm.ctpop.i32(i32 %1707)
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  %1711 = xor i8 %1710, 1
  store i8 %1711, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1712 = icmp eq i32 %1706, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %30, align 1
  %1714 = lshr i32 %1706, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1716 = xor i1 %1712, true
  %1717 = icmp eq i8 %1715, 0
  %1718 = and i1 %1717, %1716
  %.v88 = select i1 %1718, i64 129, i64 10
  %1719 = add i64 %1701, %.v88
  store i64 %1719, i64* %3, align 8
  br i1 %1718, label %block_.L_400d05, label %block_400c8e

block_400c8e:                                     ; preds = %block_.L_400c84
  %1720 = add i64 %1702, -8
  %1721 = add i64 %1719, 7
  store i64 %1721, i64* %PC.i, align 8
  %1722 = inttoptr i64 %1720 to i32*
  store i32 0, i32* %1722, align 4
  %.pre22 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c95

block_.L_400c95:                                  ; preds = %block_.L_400cdf, %block_400c8e
  %1723 = phi i64 [ %1902, %block_.L_400cdf ], [ %.pre22, %block_400c8e ]
  %1724 = load i64, i64* %RBP.i, align 8
  %1725 = add i64 %1724, -8
  %1726 = add i64 %1723, 4
  store i64 %1726, i64* %PC.i, align 8
  %1727 = inttoptr i64 %1725 to i32*
  %1728 = load i32, i32* %1727, align 4
  %1729 = add i32 %1728, -1
  %1730 = icmp eq i32 %1728, 0
  %1731 = zext i1 %1730 to i8
  store i8 %1731, i8* %14, align 1
  %1732 = and i32 %1729, 255
  %1733 = tail call i32 @llvm.ctpop.i32(i32 %1732)
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  %1736 = xor i8 %1735, 1
  store i8 %1736, i8* %21, align 1
  %1737 = xor i32 %1728, %1729
  %1738 = lshr i32 %1737, 4
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  store i8 %1740, i8* %27, align 1
  %1741 = icmp eq i32 %1729, 0
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %30, align 1
  %1743 = lshr i32 %1729, 31
  %1744 = trunc i32 %1743 to i8
  store i8 %1744, i8* %33, align 1
  %1745 = lshr i32 %1728, 31
  %1746 = xor i32 %1743, %1745
  %1747 = add nuw nsw i32 %1746, %1745
  %1748 = icmp eq i32 %1747, 2
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %39, align 1
  %1750 = icmp ne i8 %1744, 0
  %1751 = xor i1 %1750, %1748
  %.demorgan89 = or i1 %1741, %1751
  %.v90 = select i1 %.demorgan89, i64 10, i64 93
  %1752 = add i64 %1723, %.v90
  store i64 %1752, i64* %3, align 8
  br i1 %.demorgan89, label %block_400c9f, label %block_.L_400cf2

block_400c9f:                                     ; preds = %block_.L_400c95
  %1753 = add i64 %1724, -12
  %1754 = add i64 %1752, 7
  store i64 %1754, i64* %PC.i, align 8
  %1755 = inttoptr i64 %1753 to i32*
  store i32 0, i32* %1755, align 4
  %.pre23 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ca6

block_.L_400ca6:                                  ; preds = %block_400cb0, %block_400c9f
  %1756 = phi i64 [ %1871, %block_400cb0 ], [ %.pre23, %block_400c9f ]
  %1757 = load i64, i64* %RBP.i, align 8
  %1758 = add i64 %1757, -12
  %1759 = add i64 %1756, 4
  store i64 %1759, i64* %PC.i, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = add i32 %1761, -3
  %1763 = icmp ult i32 %1761, 3
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %14, align 1
  %1765 = and i32 %1762, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %21, align 1
  %1770 = xor i32 %1761, %1762
  %1771 = lshr i32 %1770, 4
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  store i8 %1773, i8* %27, align 1
  %1774 = icmp eq i32 %1762, 0
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %30, align 1
  %1776 = lshr i32 %1762, 31
  %1777 = trunc i32 %1776 to i8
  store i8 %1777, i8* %33, align 1
  %1778 = lshr i32 %1761, 31
  %1779 = xor i32 %1776, %1778
  %1780 = add nuw nsw i32 %1779, %1778
  %1781 = icmp eq i32 %1780, 2
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %39, align 1
  %1783 = icmp ne i8 %1777, 0
  %1784 = xor i1 %1783, %1781
  %.demorgan91 = or i1 %1774, %1784
  %.v92 = select i1 %.demorgan91, i64 10, i64 57
  %1785 = add i64 %1756, %.v92
  store i64 %1785, i64* %3, align 8
  br i1 %.demorgan91, label %block_400cb0, label %block_.L_400cdf

block_400cb0:                                     ; preds = %block_.L_400ca6
  %1786 = add i64 %1757, -4
  %1787 = add i64 %1785, 3
  store i64 %1787, i64* %PC.i, align 8
  %1788 = inttoptr i64 %1786 to i32*
  %1789 = load i32, i32* %1788, align 4
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RAX.i1121, align 8
  %1791 = add i64 %1757, -8
  %1792 = add i64 %1785, 6
  store i64 %1792, i64* %PC.i, align 8
  %1793 = inttoptr i64 %1791 to i32*
  %1794 = load i32, i32* %1793, align 4
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RCX.i1089, align 8
  %1796 = add i64 %1785, 9
  store i64 %1796, i64* %PC.i, align 8
  %1797 = load i32, i32* %1760, align 4
  %1798 = shl i32 %1797, 3
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RDX.i1086, align 8
  %1800 = add i32 %1798, %1794
  %1801 = shl i32 %1800, 3
  %1802 = zext i32 %1801 to i64
  store i64 %1802, i64* %RCX.i1089, align 8
  %1803 = lshr i32 %1800, 28
  %1804 = and i32 %1803, 1
  %1805 = load i64, i64* %RAX.i1121, align 8
  %1806 = trunc i64 %1805 to i32
  %1807 = add i32 %1801, %1806
  %1808 = zext i32 %1807 to i64
  store i64 %1808, i64* %RAX.i1121, align 8
  %1809 = icmp ult i32 %1807, %1806
  %1810 = icmp ult i32 %1807, %1801
  %1811 = or i1 %1809, %1810
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %14, align 1
  %1813 = and i32 %1807, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %21, align 1
  %1818 = xor i64 %1802, %1805
  %1819 = trunc i64 %1818 to i32
  %1820 = xor i32 %1819, %1807
  %1821 = lshr i32 %1820, 4
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  store i8 %1823, i8* %27, align 1
  %1824 = icmp eq i32 %1807, 0
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %30, align 1
  %1826 = lshr i32 %1807, 31
  %1827 = trunc i32 %1826 to i8
  store i8 %1827, i8* %33, align 1
  %1828 = lshr i32 %1806, 31
  %1829 = xor i32 %1826, %1828
  %1830 = xor i32 %1826, %1804
  %1831 = add nuw nsw i32 %1829, %1830
  %1832 = icmp eq i32 %1831, 2
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %39, align 1
  %1834 = sext i32 %1807 to i64
  store i64 %1834, i64* %RSI.i1074, align 8
  %1835 = shl nsw i64 %1834, 2
  %1836 = add nsw i64 %1835, 6316704
  %1837 = add i64 %1785, 33
  store i64 %1837, i64* %PC.i, align 8
  %1838 = inttoptr i64 %1836 to i32*
  store i32 1, i32* %1838, align 4
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -12
  %1841 = load i64, i64* %PC.i, align 8
  %1842 = add i64 %1841, 3
  store i64 %1842, i64* %PC.i, align 8
  %1843 = inttoptr i64 %1840 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = add i32 %1844, 1
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RAX.i1121, align 8
  %1847 = icmp eq i32 %1844, -1
  %1848 = icmp eq i32 %1845, 0
  %1849 = or i1 %1847, %1848
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %14, align 1
  %1851 = and i32 %1845, 255
  %1852 = tail call i32 @llvm.ctpop.i32(i32 %1851)
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  %1855 = xor i8 %1854, 1
  store i8 %1855, i8* %21, align 1
  %1856 = xor i32 %1844, %1845
  %1857 = lshr i32 %1856, 4
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  store i8 %1859, i8* %27, align 1
  %1860 = icmp eq i32 %1845, 0
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %30, align 1
  %1862 = lshr i32 %1845, 31
  %1863 = trunc i32 %1862 to i8
  store i8 %1863, i8* %33, align 1
  %1864 = lshr i32 %1844, 31
  %1865 = xor i32 %1862, %1864
  %1866 = add nuw nsw i32 %1865, %1862
  %1867 = icmp eq i32 %1866, 2
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %39, align 1
  %1869 = add i64 %1841, 9
  store i64 %1869, i64* %PC.i, align 8
  store i32 %1845, i32* %1843, align 4
  %1870 = load i64, i64* %PC.i, align 8
  %1871 = add i64 %1870, -52
  store i64 %1871, i64* %3, align 8
  br label %block_.L_400ca6

block_.L_400cdf:                                  ; preds = %block_.L_400ca6
  %1872 = add i64 %1757, -8
  %1873 = add i64 %1785, 8
  store i64 %1873, i64* %PC.i, align 8
  %1874 = inttoptr i64 %1872 to i32*
  %1875 = load i32, i32* %1874, align 4
  %1876 = add i32 %1875, 1
  %1877 = zext i32 %1876 to i64
  store i64 %1877, i64* %RAX.i1121, align 8
  %1878 = icmp eq i32 %1875, -1
  %1879 = icmp eq i32 %1876, 0
  %1880 = or i1 %1878, %1879
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %14, align 1
  %1882 = and i32 %1876, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %21, align 1
  %1887 = xor i32 %1875, %1876
  %1888 = lshr i32 %1887, 4
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %27, align 1
  %1891 = icmp eq i32 %1876, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %30, align 1
  %1893 = lshr i32 %1876, 31
  %1894 = trunc i32 %1893 to i8
  store i8 %1894, i8* %33, align 1
  %1895 = lshr i32 %1875, 31
  %1896 = xor i32 %1893, %1895
  %1897 = add nuw nsw i32 %1896, %1893
  %1898 = icmp eq i32 %1897, 2
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %39, align 1
  %1900 = add i64 %1785, 14
  store i64 %1900, i64* %PC.i, align 8
  store i32 %1876, i32* %1874, align 4
  %1901 = load i64, i64* %PC.i, align 8
  %1902 = add i64 %1901, -88
  store i64 %1902, i64* %3, align 8
  br label %block_.L_400c95

block_.L_400cf2:                                  ; preds = %block_.L_400c95
  %1903 = add i64 %1724, -4
  %1904 = add i64 %1752, 8
  store i64 %1904, i64* %PC.i, align 8
  %1905 = inttoptr i64 %1903 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = add i32 %1906, 1
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RAX.i1121, align 8
  %1909 = icmp eq i32 %1906, -1
  %1910 = icmp eq i32 %1907, 0
  %1911 = or i1 %1909, %1910
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %14, align 1
  %1913 = and i32 %1907, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %21, align 1
  %1918 = xor i32 %1906, %1907
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %27, align 1
  %1922 = icmp eq i32 %1907, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %30, align 1
  %1924 = lshr i32 %1907, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %33, align 1
  %1926 = lshr i32 %1906, 31
  %1927 = xor i32 %1924, %1926
  %1928 = add nuw nsw i32 %1927, %1924
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %39, align 1
  %1931 = add i64 %1752, 14
  store i64 %1931, i64* %PC.i, align 8
  store i32 %1907, i32* %1905, align 4
  %1932 = load i64, i64* %PC.i, align 8
  %1933 = add i64 %1932, -124
  store i64 %1933, i64* %3, align 8
  br label %block_.L_400c84

block_.L_400d05:                                  ; preds = %block_.L_400c84
  store i32 0, i32* bitcast (%G_0x619204_type* @G_0x619204 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x610264_type* @G_0x610264 to i32*), align 8
  %1934 = add i64 %1719, 29
  store i64 %1934, i64* %PC.i, align 8
  store i32 0, i32* %1705, align 4
  %.pre24 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d22

block_.L_400d22:                                  ; preds = %block_.L_400d90, %block_.L_400d05
  %1935 = phi i64 [ %2156, %block_.L_400d90 ], [ %.pre24, %block_.L_400d05 ]
  %1936 = load i64, i64* %RBP.i, align 8
  %1937 = add i64 %1936, -4
  %1938 = add i64 %1935, 4
  store i64 %1938, i64* %PC.i, align 8
  %1939 = inttoptr i64 %1937 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = add i32 %1940, -2
  %1942 = icmp ult i32 %1940, 2
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %14, align 1
  %1944 = and i32 %1941, 255
  %1945 = tail call i32 @llvm.ctpop.i32(i32 %1944)
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = xor i8 %1947, 1
  store i8 %1948, i8* %21, align 1
  %1949 = xor i32 %1940, %1941
  %1950 = lshr i32 %1949, 4
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  store i8 %1952, i8* %27, align 1
  %1953 = icmp eq i32 %1941, 0
  %1954 = zext i1 %1953 to i8
  store i8 %1954, i8* %30, align 1
  %1955 = lshr i32 %1941, 31
  %1956 = trunc i32 %1955 to i8
  store i8 %1956, i8* %33, align 1
  %1957 = lshr i32 %1940, 31
  %1958 = xor i32 %1955, %1957
  %1959 = add nuw nsw i32 %1958, %1957
  %1960 = icmp eq i32 %1959, 2
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %39, align 1
  %1962 = icmp ne i8 %1956, 0
  %1963 = xor i1 %1962, %1960
  %.demorgan93 = or i1 %1953, %1963
  %.v94 = select i1 %.demorgan93, i64 10, i64 129
  %1964 = add i64 %1935, %.v94
  store i64 %1964, i64* %3, align 8
  br i1 %.demorgan93, label %block_400d2c, label %block_.L_400da3

block_400d2c:                                     ; preds = %block_.L_400d22
  %1965 = add i64 %1936, -8
  %1966 = add i64 %1964, 7
  store i64 %1966, i64* %PC.i, align 8
  %1967 = inttoptr i64 %1965 to i32*
  store i32 0, i32* %1967, align 4
  %.pre25 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d33

block_.L_400d33:                                  ; preds = %block_.L_400d7d, %block_400d2c
  %1968 = phi i64 [ %2125, %block_.L_400d7d ], [ %.pre25, %block_400d2c ]
  %1969 = load i64, i64* %RBP.i, align 8
  %1970 = add i64 %1969, -8
  %1971 = add i64 %1968, 4
  store i64 %1971, i64* %PC.i, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  store i8 0, i8* %14, align 1
  %1974 = and i32 %1973, 255
  %1975 = tail call i32 @llvm.ctpop.i32(i32 %1974)
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  %1978 = xor i8 %1977, 1
  store i8 %1978, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1979 = icmp eq i32 %1973, 0
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %30, align 1
  %1981 = lshr i32 %1973, 31
  %1982 = trunc i32 %1981 to i8
  store i8 %1982, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1983 = xor i1 %1979, true
  %1984 = icmp eq i8 %1982, 0
  %1985 = and i1 %1984, %1983
  %.v95 = select i1 %1985, i64 93, i64 10
  %1986 = add i64 %1968, %.v95
  store i64 %1986, i64* %3, align 8
  br i1 %1985, label %block_.L_400d90, label %block_400d3d

block_400d3d:                                     ; preds = %block_.L_400d33
  %1987 = add i64 %1969, -12
  %1988 = add i64 %1986, 7
  store i64 %1988, i64* %PC.i, align 8
  %1989 = inttoptr i64 %1987 to i32*
  store i32 0, i32* %1989, align 4
  %.pre26 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d44

block_.L_400d44:                                  ; preds = %block_400d4e, %block_400d3d
  %1990 = phi i64 [ %2094, %block_400d4e ], [ %.pre26, %block_400d3d ]
  %1991 = load i64, i64* %RBP.i, align 8
  %1992 = add i64 %1991, -12
  %1993 = add i64 %1990, 4
  store i64 %1993, i64* %PC.i, align 8
  %1994 = inttoptr i64 %1992 to i32*
  %1995 = load i32, i32* %1994, align 4
  store i8 0, i8* %14, align 1
  %1996 = and i32 %1995, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2001 = icmp eq i32 %1995, 0
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %30, align 1
  %2003 = lshr i32 %1995, 31
  %2004 = trunc i32 %2003 to i8
  store i8 %2004, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2005 = xor i1 %2001, true
  %2006 = icmp eq i8 %2004, 0
  %2007 = and i1 %2006, %2005
  %.v96 = select i1 %2007, i64 57, i64 10
  %2008 = add i64 %1990, %.v96
  store i64 %2008, i64* %3, align 8
  br i1 %2007, label %block_.L_400d7d, label %block_400d4e

block_400d4e:                                     ; preds = %block_.L_400d44
  %2009 = add i64 %1991, -4
  %2010 = add i64 %2008, 3
  store i64 %2010, i64* %PC.i, align 8
  %2011 = inttoptr i64 %2009 to i32*
  %2012 = load i32, i32* %2011, align 4
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RAX.i1121, align 8
  %2014 = add i64 %1991, -8
  %2015 = add i64 %2008, 6
  store i64 %2015, i64* %PC.i, align 8
  %2016 = inttoptr i64 %2014 to i32*
  %2017 = load i32, i32* %2016, align 4
  %2018 = zext i32 %2017 to i64
  store i64 %2018, i64* %RCX.i1089, align 8
  %2019 = add i64 %2008, 9
  store i64 %2019, i64* %PC.i, align 8
  %2020 = load i32, i32* %1994, align 4
  %2021 = shl i32 %2020, 3
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RDX.i1086, align 8
  %2023 = add i32 %2021, %2017
  %2024 = shl i32 %2023, 3
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RCX.i1089, align 8
  %2026 = lshr i32 %2023, 28
  %2027 = and i32 %2026, 1
  %2028 = load i64, i64* %RAX.i1121, align 8
  %2029 = trunc i64 %2028 to i32
  %2030 = add i32 %2024, %2029
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RAX.i1121, align 8
  %2032 = icmp ult i32 %2030, %2029
  %2033 = icmp ult i32 %2030, %2024
  %2034 = or i1 %2032, %2033
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %14, align 1
  %2036 = and i32 %2030, 255
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %21, align 1
  %2041 = xor i64 %2025, %2028
  %2042 = trunc i64 %2041 to i32
  %2043 = xor i32 %2042, %2030
  %2044 = lshr i32 %2043, 4
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  store i8 %2046, i8* %27, align 1
  %2047 = icmp eq i32 %2030, 0
  %2048 = zext i1 %2047 to i8
  store i8 %2048, i8* %30, align 1
  %2049 = lshr i32 %2030, 31
  %2050 = trunc i32 %2049 to i8
  store i8 %2050, i8* %33, align 1
  %2051 = lshr i32 %2029, 31
  %2052 = xor i32 %2049, %2051
  %2053 = xor i32 %2049, %2027
  %2054 = add nuw nsw i32 %2052, %2053
  %2055 = icmp eq i32 %2054, 2
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %39, align 1
  %2057 = sext i32 %2030 to i64
  store i64 %2057, i64* %RSI.i1074, align 8
  %2058 = shl nsw i64 %2057, 2
  %2059 = add nsw i64 %2058, 6318752
  %2060 = add i64 %2008, 33
  store i64 %2060, i64* %PC.i, align 8
  %2061 = inttoptr i64 %2059 to i32*
  store i32 1, i32* %2061, align 4
  %2062 = load i64, i64* %RBP.i, align 8
  %2063 = add i64 %2062, -12
  %2064 = load i64, i64* %PC.i, align 8
  %2065 = add i64 %2064, 3
  store i64 %2065, i64* %PC.i, align 8
  %2066 = inttoptr i64 %2063 to i32*
  %2067 = load i32, i32* %2066, align 4
  %2068 = add i32 %2067, 1
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RAX.i1121, align 8
  %2070 = icmp eq i32 %2067, -1
  %2071 = icmp eq i32 %2068, 0
  %2072 = or i1 %2070, %2071
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %14, align 1
  %2074 = and i32 %2068, 255
  %2075 = tail call i32 @llvm.ctpop.i32(i32 %2074)
  %2076 = trunc i32 %2075 to i8
  %2077 = and i8 %2076, 1
  %2078 = xor i8 %2077, 1
  store i8 %2078, i8* %21, align 1
  %2079 = xor i32 %2067, %2068
  %2080 = lshr i32 %2079, 4
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  store i8 %2082, i8* %27, align 1
  %2083 = icmp eq i32 %2068, 0
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %30, align 1
  %2085 = lshr i32 %2068, 31
  %2086 = trunc i32 %2085 to i8
  store i8 %2086, i8* %33, align 1
  %2087 = lshr i32 %2067, 31
  %2088 = xor i32 %2085, %2087
  %2089 = add nuw nsw i32 %2088, %2085
  %2090 = icmp eq i32 %2089, 2
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %39, align 1
  %2092 = add i64 %2064, 9
  store i64 %2092, i64* %PC.i, align 8
  store i32 %2068, i32* %2066, align 4
  %2093 = load i64, i64* %PC.i, align 8
  %2094 = add i64 %2093, -52
  store i64 %2094, i64* %3, align 8
  br label %block_.L_400d44

block_.L_400d7d:                                  ; preds = %block_.L_400d44
  %2095 = add i64 %1991, -8
  %2096 = add i64 %2008, 8
  store i64 %2096, i64* %PC.i, align 8
  %2097 = inttoptr i64 %2095 to i32*
  %2098 = load i32, i32* %2097, align 4
  %2099 = add i32 %2098, 1
  %2100 = zext i32 %2099 to i64
  store i64 %2100, i64* %RAX.i1121, align 8
  %2101 = icmp eq i32 %2098, -1
  %2102 = icmp eq i32 %2099, 0
  %2103 = or i1 %2101, %2102
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %14, align 1
  %2105 = and i32 %2099, 255
  %2106 = tail call i32 @llvm.ctpop.i32(i32 %2105)
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  %2109 = xor i8 %2108, 1
  store i8 %2109, i8* %21, align 1
  %2110 = xor i32 %2098, %2099
  %2111 = lshr i32 %2110, 4
  %2112 = trunc i32 %2111 to i8
  %2113 = and i8 %2112, 1
  store i8 %2113, i8* %27, align 1
  %2114 = icmp eq i32 %2099, 0
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %30, align 1
  %2116 = lshr i32 %2099, 31
  %2117 = trunc i32 %2116 to i8
  store i8 %2117, i8* %33, align 1
  %2118 = lshr i32 %2098, 31
  %2119 = xor i32 %2116, %2118
  %2120 = add nuw nsw i32 %2119, %2116
  %2121 = icmp eq i32 %2120, 2
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %39, align 1
  %2123 = add i64 %2008, 14
  store i64 %2123, i64* %PC.i, align 8
  store i32 %2099, i32* %2097, align 4
  %2124 = load i64, i64* %PC.i, align 8
  %2125 = add i64 %2124, -88
  store i64 %2125, i64* %3, align 8
  br label %block_.L_400d33

block_.L_400d90:                                  ; preds = %block_.L_400d33
  %2126 = add i64 %1969, -4
  %2127 = add i64 %1986, 8
  store i64 %2127, i64* %PC.i, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = add i32 %2129, 1
  %2131 = zext i32 %2130 to i64
  store i64 %2131, i64* %RAX.i1121, align 8
  %2132 = icmp eq i32 %2129, -1
  %2133 = icmp eq i32 %2130, 0
  %2134 = or i1 %2132, %2133
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %14, align 1
  %2136 = and i32 %2130, 255
  %2137 = tail call i32 @llvm.ctpop.i32(i32 %2136)
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  %2140 = xor i8 %2139, 1
  store i8 %2140, i8* %21, align 1
  %2141 = xor i32 %2129, %2130
  %2142 = lshr i32 %2141, 4
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  store i8 %2144, i8* %27, align 1
  %2145 = icmp eq i32 %2130, 0
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %30, align 1
  %2147 = lshr i32 %2130, 31
  %2148 = trunc i32 %2147 to i8
  store i8 %2148, i8* %33, align 1
  %2149 = lshr i32 %2129, 31
  %2150 = xor i32 %2147, %2149
  %2151 = add nuw nsw i32 %2150, %2147
  %2152 = icmp eq i32 %2151, 2
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %39, align 1
  %2154 = add i64 %1986, 14
  store i64 %2154, i64* %PC.i, align 8
  store i32 %2130, i32* %2128, align 4
  %2155 = load i64, i64* %PC.i, align 8
  %2156 = add i64 %2155, -124
  store i64 %2156, i64* %3, align 8
  br label %block_.L_400d22

block_.L_400da3:                                  ; preds = %block_.L_400d22
  store i32 1, i32* bitcast (%G_0x619208_type* @G_0x619208 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x610268_type* @G_0x610268 to i32*), align 8
  %2157 = add i64 %1964, 29
  store i64 %2157, i64* %PC.i, align 8
  store i32 0, i32* %1939, align 4
  %.pre27 = load i64, i64* %PC.i, align 8
  br label %block_.L_400dc0

block_.L_400dc0:                                  ; preds = %block_.L_400e2e, %block_.L_400da3
  %2158 = phi i64 [ %2379, %block_.L_400e2e ], [ %.pre27, %block_.L_400da3 ]
  %2159 = load i64, i64* %RBP.i, align 8
  %2160 = add i64 %2159, -4
  %2161 = add i64 %2158, 4
  store i64 %2161, i64* %PC.i, align 8
  %2162 = inttoptr i64 %2160 to i32*
  %2163 = load i32, i32* %2162, align 4
  store i8 0, i8* %14, align 1
  %2164 = and i32 %2163, 255
  %2165 = tail call i32 @llvm.ctpop.i32(i32 %2164)
  %2166 = trunc i32 %2165 to i8
  %2167 = and i8 %2166, 1
  %2168 = xor i8 %2167, 1
  store i8 %2168, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2169 = icmp eq i32 %2163, 0
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %30, align 1
  %2171 = lshr i32 %2163, 31
  %2172 = trunc i32 %2171 to i8
  store i8 %2172, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2173 = xor i1 %2169, true
  %2174 = icmp eq i8 %2172, 0
  %2175 = and i1 %2174, %2173
  %.v97 = select i1 %2175, i64 129, i64 10
  %2176 = add i64 %2158, %.v97
  store i64 %2176, i64* %3, align 8
  br i1 %2175, label %block_.L_400e41, label %block_400dca

block_400dca:                                     ; preds = %block_.L_400dc0
  %2177 = add i64 %2159, -8
  %2178 = add i64 %2176, 7
  store i64 %2178, i64* %PC.i, align 8
  %2179 = inttoptr i64 %2177 to i32*
  store i32 0, i32* %2179, align 4
  %.pre28 = load i64, i64* %PC.i, align 8
  br label %block_.L_400dd1

block_.L_400dd1:                                  ; preds = %block_.L_400e1b, %block_400dca
  %2180 = phi i64 [ %2348, %block_.L_400e1b ], [ %.pre28, %block_400dca ]
  %2181 = load i64, i64* %RBP.i, align 8
  %2182 = add i64 %2181, -8
  %2183 = add i64 %2180, 4
  store i64 %2183, i64* %PC.i, align 8
  %2184 = inttoptr i64 %2182 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = add i32 %2185, -2
  %2187 = icmp ult i32 %2185, 2
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %14, align 1
  %2189 = and i32 %2186, 255
  %2190 = tail call i32 @llvm.ctpop.i32(i32 %2189)
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  %2193 = xor i8 %2192, 1
  store i8 %2193, i8* %21, align 1
  %2194 = xor i32 %2185, %2186
  %2195 = lshr i32 %2194, 4
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  store i8 %2197, i8* %27, align 1
  %2198 = icmp eq i32 %2186, 0
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %30, align 1
  %2200 = lshr i32 %2186, 31
  %2201 = trunc i32 %2200 to i8
  store i8 %2201, i8* %33, align 1
  %2202 = lshr i32 %2185, 31
  %2203 = xor i32 %2200, %2202
  %2204 = add nuw nsw i32 %2203, %2202
  %2205 = icmp eq i32 %2204, 2
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %39, align 1
  %2207 = icmp ne i8 %2201, 0
  %2208 = xor i1 %2207, %2205
  %.demorgan98 = or i1 %2198, %2208
  %.v99 = select i1 %.demorgan98, i64 10, i64 93
  %2209 = add i64 %2180, %.v99
  store i64 %2209, i64* %3, align 8
  br i1 %.demorgan98, label %block_400ddb, label %block_.L_400e2e

block_400ddb:                                     ; preds = %block_.L_400dd1
  %2210 = add i64 %2181, -12
  %2211 = add i64 %2209, 7
  store i64 %2211, i64* %PC.i, align 8
  %2212 = inttoptr i64 %2210 to i32*
  store i32 0, i32* %2212, align 4
  %.pre29 = load i64, i64* %PC.i, align 8
  br label %block_.L_400de2

block_.L_400de2:                                  ; preds = %block_400dec, %block_400ddb
  %2213 = phi i64 [ %2317, %block_400dec ], [ %.pre29, %block_400ddb ]
  %2214 = load i64, i64* %RBP.i, align 8
  %2215 = add i64 %2214, -12
  %2216 = add i64 %2213, 4
  store i64 %2216, i64* %PC.i, align 8
  %2217 = inttoptr i64 %2215 to i32*
  %2218 = load i32, i32* %2217, align 4
  store i8 0, i8* %14, align 1
  %2219 = and i32 %2218, 255
  %2220 = tail call i32 @llvm.ctpop.i32(i32 %2219)
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = xor i8 %2222, 1
  store i8 %2223, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2224 = icmp eq i32 %2218, 0
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %30, align 1
  %2226 = lshr i32 %2218, 31
  %2227 = trunc i32 %2226 to i8
  store i8 %2227, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2228 = xor i1 %2224, true
  %2229 = icmp eq i8 %2227, 0
  %2230 = and i1 %2229, %2228
  %.v100 = select i1 %2230, i64 57, i64 10
  %2231 = add i64 %2213, %.v100
  store i64 %2231, i64* %3, align 8
  br i1 %2230, label %block_.L_400e1b, label %block_400dec

block_400dec:                                     ; preds = %block_.L_400de2
  %2232 = add i64 %2214, -4
  %2233 = add i64 %2231, 3
  store i64 %2233, i64* %PC.i, align 8
  %2234 = inttoptr i64 %2232 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RAX.i1121, align 8
  %2237 = add i64 %2214, -8
  %2238 = add i64 %2231, 6
  store i64 %2238, i64* %PC.i, align 8
  %2239 = inttoptr i64 %2237 to i32*
  %2240 = load i32, i32* %2239, align 4
  %2241 = zext i32 %2240 to i64
  store i64 %2241, i64* %RCX.i1089, align 8
  %2242 = add i64 %2231, 9
  store i64 %2242, i64* %PC.i, align 8
  %2243 = load i32, i32* %2217, align 4
  %2244 = shl i32 %2243, 3
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RDX.i1086, align 8
  %2246 = add i32 %2244, %2240
  %2247 = shl i32 %2246, 3
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RCX.i1089, align 8
  %2249 = lshr i32 %2246, 28
  %2250 = and i32 %2249, 1
  %2251 = load i64, i64* %RAX.i1121, align 8
  %2252 = trunc i64 %2251 to i32
  %2253 = add i32 %2247, %2252
  %2254 = zext i32 %2253 to i64
  store i64 %2254, i64* %RAX.i1121, align 8
  %2255 = icmp ult i32 %2253, %2252
  %2256 = icmp ult i32 %2253, %2247
  %2257 = or i1 %2255, %2256
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %14, align 1
  %2259 = and i32 %2253, 255
  %2260 = tail call i32 @llvm.ctpop.i32(i32 %2259)
  %2261 = trunc i32 %2260 to i8
  %2262 = and i8 %2261, 1
  %2263 = xor i8 %2262, 1
  store i8 %2263, i8* %21, align 1
  %2264 = xor i64 %2248, %2251
  %2265 = trunc i64 %2264 to i32
  %2266 = xor i32 %2265, %2253
  %2267 = lshr i32 %2266, 4
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  store i8 %2269, i8* %27, align 1
  %2270 = icmp eq i32 %2253, 0
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %30, align 1
  %2272 = lshr i32 %2253, 31
  %2273 = trunc i32 %2272 to i8
  store i8 %2273, i8* %33, align 1
  %2274 = lshr i32 %2252, 31
  %2275 = xor i32 %2272, %2274
  %2276 = xor i32 %2272, %2250
  %2277 = add nuw nsw i32 %2275, %2276
  %2278 = icmp eq i32 %2277, 2
  %2279 = zext i1 %2278 to i8
  store i8 %2279, i8* %39, align 1
  %2280 = sext i32 %2253 to i64
  store i64 %2280, i64* %RSI.i1074, align 8
  %2281 = shl nsw i64 %2280, 2
  %2282 = add nsw i64 %2281, 6320800
  %2283 = add i64 %2231, 33
  store i64 %2283, i64* %PC.i, align 8
  %2284 = inttoptr i64 %2282 to i32*
  store i32 1, i32* %2284, align 4
  %2285 = load i64, i64* %RBP.i, align 8
  %2286 = add i64 %2285, -12
  %2287 = load i64, i64* %PC.i, align 8
  %2288 = add i64 %2287, 3
  store i64 %2288, i64* %PC.i, align 8
  %2289 = inttoptr i64 %2286 to i32*
  %2290 = load i32, i32* %2289, align 4
  %2291 = add i32 %2290, 1
  %2292 = zext i32 %2291 to i64
  store i64 %2292, i64* %RAX.i1121, align 8
  %2293 = icmp eq i32 %2290, -1
  %2294 = icmp eq i32 %2291, 0
  %2295 = or i1 %2293, %2294
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %14, align 1
  %2297 = and i32 %2291, 255
  %2298 = tail call i32 @llvm.ctpop.i32(i32 %2297)
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  store i8 %2301, i8* %21, align 1
  %2302 = xor i32 %2290, %2291
  %2303 = lshr i32 %2302, 4
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  store i8 %2305, i8* %27, align 1
  %2306 = icmp eq i32 %2291, 0
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %30, align 1
  %2308 = lshr i32 %2291, 31
  %2309 = trunc i32 %2308 to i8
  store i8 %2309, i8* %33, align 1
  %2310 = lshr i32 %2290, 31
  %2311 = xor i32 %2308, %2310
  %2312 = add nuw nsw i32 %2311, %2308
  %2313 = icmp eq i32 %2312, 2
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %39, align 1
  %2315 = add i64 %2287, 9
  store i64 %2315, i64* %PC.i, align 8
  store i32 %2291, i32* %2289, align 4
  %2316 = load i64, i64* %PC.i, align 8
  %2317 = add i64 %2316, -52
  store i64 %2317, i64* %3, align 8
  br label %block_.L_400de2

block_.L_400e1b:                                  ; preds = %block_.L_400de2
  %2318 = add i64 %2214, -8
  %2319 = add i64 %2231, 8
  store i64 %2319, i64* %PC.i, align 8
  %2320 = inttoptr i64 %2318 to i32*
  %2321 = load i32, i32* %2320, align 4
  %2322 = add i32 %2321, 1
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RAX.i1121, align 8
  %2324 = icmp eq i32 %2321, -1
  %2325 = icmp eq i32 %2322, 0
  %2326 = or i1 %2324, %2325
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %14, align 1
  %2328 = and i32 %2322, 255
  %2329 = tail call i32 @llvm.ctpop.i32(i32 %2328)
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = xor i8 %2331, 1
  store i8 %2332, i8* %21, align 1
  %2333 = xor i32 %2321, %2322
  %2334 = lshr i32 %2333, 4
  %2335 = trunc i32 %2334 to i8
  %2336 = and i8 %2335, 1
  store i8 %2336, i8* %27, align 1
  %2337 = icmp eq i32 %2322, 0
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %30, align 1
  %2339 = lshr i32 %2322, 31
  %2340 = trunc i32 %2339 to i8
  store i8 %2340, i8* %33, align 1
  %2341 = lshr i32 %2321, 31
  %2342 = xor i32 %2339, %2341
  %2343 = add nuw nsw i32 %2342, %2339
  %2344 = icmp eq i32 %2343, 2
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %39, align 1
  %2346 = add i64 %2231, 14
  store i64 %2346, i64* %PC.i, align 8
  store i32 %2322, i32* %2320, align 4
  %2347 = load i64, i64* %PC.i, align 8
  %2348 = add i64 %2347, -88
  store i64 %2348, i64* %3, align 8
  br label %block_.L_400dd1

block_.L_400e2e:                                  ; preds = %block_.L_400dd1
  %2349 = add i64 %2181, -4
  %2350 = add i64 %2209, 8
  store i64 %2350, i64* %PC.i, align 8
  %2351 = inttoptr i64 %2349 to i32*
  %2352 = load i32, i32* %2351, align 4
  %2353 = add i32 %2352, 1
  %2354 = zext i32 %2353 to i64
  store i64 %2354, i64* %RAX.i1121, align 8
  %2355 = icmp eq i32 %2352, -1
  %2356 = icmp eq i32 %2353, 0
  %2357 = or i1 %2355, %2356
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %14, align 1
  %2359 = and i32 %2353, 255
  %2360 = tail call i32 @llvm.ctpop.i32(i32 %2359)
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = xor i8 %2362, 1
  store i8 %2363, i8* %21, align 1
  %2364 = xor i32 %2352, %2353
  %2365 = lshr i32 %2364, 4
  %2366 = trunc i32 %2365 to i8
  %2367 = and i8 %2366, 1
  store i8 %2367, i8* %27, align 1
  %2368 = icmp eq i32 %2353, 0
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %30, align 1
  %2370 = lshr i32 %2353, 31
  %2371 = trunc i32 %2370 to i8
  store i8 %2371, i8* %33, align 1
  %2372 = lshr i32 %2352, 31
  %2373 = xor i32 %2370, %2372
  %2374 = add nuw nsw i32 %2373, %2370
  %2375 = icmp eq i32 %2374, 2
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %39, align 1
  %2377 = add i64 %2209, 14
  store i64 %2377, i64* %PC.i, align 8
  store i32 %2353, i32* %2351, align 4
  %2378 = load i64, i64* %PC.i, align 8
  %2379 = add i64 %2378, -124
  store i64 %2379, i64* %3, align 8
  br label %block_.L_400dc0

block_.L_400e41:                                  ; preds = %block_.L_400dc0
  store i32 1, i32* bitcast (%G_0x61920c_type* @G_0x61920c to i32*), align 8
  store i32 16, i32* bitcast (%G_0x61026c_type* @G_0x61026c to i32*), align 8
  %2380 = add i64 %2176, 29
  store i64 %2380, i64* %PC.i, align 8
  store i32 0, i32* %2162, align 4
  %.pre30 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e5e

block_.L_400e5e:                                  ; preds = %block_.L_400ecc, %block_.L_400e41
  %2381 = phi i64 [ %2602, %block_.L_400ecc ], [ %.pre30, %block_.L_400e41 ]
  %2382 = load i64, i64* %RBP.i, align 8
  %2383 = add i64 %2382, -4
  %2384 = add i64 %2381, 4
  store i64 %2384, i64* %PC.i, align 8
  %2385 = inttoptr i64 %2383 to i32*
  %2386 = load i32, i32* %2385, align 4
  store i8 0, i8* %14, align 1
  %2387 = and i32 %2386, 255
  %2388 = tail call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  store i8 %2391, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2392 = icmp eq i32 %2386, 0
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %30, align 1
  %2394 = lshr i32 %2386, 31
  %2395 = trunc i32 %2394 to i8
  store i8 %2395, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2396 = xor i1 %2392, true
  %2397 = icmp eq i8 %2395, 0
  %2398 = and i1 %2397, %2396
  %.v101 = select i1 %2398, i64 129, i64 10
  %2399 = add i64 %2381, %.v101
  store i64 %2399, i64* %3, align 8
  br i1 %2398, label %block_.L_400edf, label %block_400e68

block_400e68:                                     ; preds = %block_.L_400e5e
  %2400 = add i64 %2382, -8
  %2401 = add i64 %2399, 7
  store i64 %2401, i64* %PC.i, align 8
  %2402 = inttoptr i64 %2400 to i32*
  store i32 0, i32* %2402, align 4
  %.pre31 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e6f

block_.L_400e6f:                                  ; preds = %block_.L_400eb9, %block_400e68
  %2403 = phi i64 [ %2571, %block_.L_400eb9 ], [ %.pre31, %block_400e68 ]
  %2404 = load i64, i64* %RBP.i, align 8
  %2405 = add i64 %2404, -8
  %2406 = add i64 %2403, 4
  store i64 %2406, i64* %PC.i, align 8
  %2407 = inttoptr i64 %2405 to i32*
  %2408 = load i32, i32* %2407, align 4
  store i8 0, i8* %14, align 1
  %2409 = and i32 %2408, 255
  %2410 = tail call i32 @llvm.ctpop.i32(i32 %2409)
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  %2413 = xor i8 %2412, 1
  store i8 %2413, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2414 = icmp eq i32 %2408, 0
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %30, align 1
  %2416 = lshr i32 %2408, 31
  %2417 = trunc i32 %2416 to i8
  store i8 %2417, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2418 = xor i1 %2414, true
  %2419 = icmp eq i8 %2417, 0
  %2420 = and i1 %2419, %2418
  %.v102 = select i1 %2420, i64 93, i64 10
  %2421 = add i64 %2403, %.v102
  store i64 %2421, i64* %3, align 8
  br i1 %2420, label %block_.L_400ecc, label %block_400e79

block_400e79:                                     ; preds = %block_.L_400e6f
  %2422 = add i64 %2404, -12
  %2423 = add i64 %2421, 7
  store i64 %2423, i64* %PC.i, align 8
  %2424 = inttoptr i64 %2422 to i32*
  store i32 0, i32* %2424, align 4
  %.pre32 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e80

block_.L_400e80:                                  ; preds = %block_400e8a, %block_400e79
  %2425 = phi i64 [ %2540, %block_400e8a ], [ %.pre32, %block_400e79 ]
  %2426 = load i64, i64* %RBP.i, align 8
  %2427 = add i64 %2426, -12
  %2428 = add i64 %2425, 4
  store i64 %2428, i64* %PC.i, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = add i32 %2430, -2
  %2432 = icmp ult i32 %2430, 2
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %14, align 1
  %2434 = and i32 %2431, 255
  %2435 = tail call i32 @llvm.ctpop.i32(i32 %2434)
  %2436 = trunc i32 %2435 to i8
  %2437 = and i8 %2436, 1
  %2438 = xor i8 %2437, 1
  store i8 %2438, i8* %21, align 1
  %2439 = xor i32 %2430, %2431
  %2440 = lshr i32 %2439, 4
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  store i8 %2442, i8* %27, align 1
  %2443 = icmp eq i32 %2431, 0
  %2444 = zext i1 %2443 to i8
  store i8 %2444, i8* %30, align 1
  %2445 = lshr i32 %2431, 31
  %2446 = trunc i32 %2445 to i8
  store i8 %2446, i8* %33, align 1
  %2447 = lshr i32 %2430, 31
  %2448 = xor i32 %2445, %2447
  %2449 = add nuw nsw i32 %2448, %2447
  %2450 = icmp eq i32 %2449, 2
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %39, align 1
  %2452 = icmp ne i8 %2446, 0
  %2453 = xor i1 %2452, %2450
  %.demorgan103 = or i1 %2443, %2453
  %.v104 = select i1 %.demorgan103, i64 10, i64 57
  %2454 = add i64 %2425, %.v104
  store i64 %2454, i64* %3, align 8
  br i1 %.demorgan103, label %block_400e8a, label %block_.L_400eb9

block_400e8a:                                     ; preds = %block_.L_400e80
  %2455 = add i64 %2426, -4
  %2456 = add i64 %2454, 3
  store i64 %2456, i64* %PC.i, align 8
  %2457 = inttoptr i64 %2455 to i32*
  %2458 = load i32, i32* %2457, align 4
  %2459 = zext i32 %2458 to i64
  store i64 %2459, i64* %RAX.i1121, align 8
  %2460 = add i64 %2426, -8
  %2461 = add i64 %2454, 6
  store i64 %2461, i64* %PC.i, align 8
  %2462 = inttoptr i64 %2460 to i32*
  %2463 = load i32, i32* %2462, align 4
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RCX.i1089, align 8
  %2465 = add i64 %2454, 9
  store i64 %2465, i64* %PC.i, align 8
  %2466 = load i32, i32* %2429, align 4
  %2467 = shl i32 %2466, 3
  %2468 = zext i32 %2467 to i64
  store i64 %2468, i64* %RDX.i1086, align 8
  %2469 = add i32 %2467, %2463
  %2470 = shl i32 %2469, 3
  %2471 = zext i32 %2470 to i64
  store i64 %2471, i64* %RCX.i1089, align 8
  %2472 = lshr i32 %2469, 28
  %2473 = and i32 %2472, 1
  %2474 = load i64, i64* %RAX.i1121, align 8
  %2475 = trunc i64 %2474 to i32
  %2476 = add i32 %2470, %2475
  %2477 = zext i32 %2476 to i64
  store i64 %2477, i64* %RAX.i1121, align 8
  %2478 = icmp ult i32 %2476, %2475
  %2479 = icmp ult i32 %2476, %2470
  %2480 = or i1 %2478, %2479
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %14, align 1
  %2482 = and i32 %2476, 255
  %2483 = tail call i32 @llvm.ctpop.i32(i32 %2482)
  %2484 = trunc i32 %2483 to i8
  %2485 = and i8 %2484, 1
  %2486 = xor i8 %2485, 1
  store i8 %2486, i8* %21, align 1
  %2487 = xor i64 %2471, %2474
  %2488 = trunc i64 %2487 to i32
  %2489 = xor i32 %2488, %2476
  %2490 = lshr i32 %2489, 4
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  store i8 %2492, i8* %27, align 1
  %2493 = icmp eq i32 %2476, 0
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %30, align 1
  %2495 = lshr i32 %2476, 31
  %2496 = trunc i32 %2495 to i8
  store i8 %2496, i8* %33, align 1
  %2497 = lshr i32 %2475, 31
  %2498 = xor i32 %2495, %2497
  %2499 = xor i32 %2495, %2473
  %2500 = add nuw nsw i32 %2498, %2499
  %2501 = icmp eq i32 %2500, 2
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %39, align 1
  %2503 = sext i32 %2476 to i64
  store i64 %2503, i64* %RSI.i1074, align 8
  %2504 = shl nsw i64 %2503, 2
  %2505 = add nsw i64 %2504, 6322848
  %2506 = add i64 %2454, 33
  store i64 %2506, i64* %PC.i, align 8
  %2507 = inttoptr i64 %2505 to i32*
  store i32 1, i32* %2507, align 4
  %2508 = load i64, i64* %RBP.i, align 8
  %2509 = add i64 %2508, -12
  %2510 = load i64, i64* %PC.i, align 8
  %2511 = add i64 %2510, 3
  store i64 %2511, i64* %PC.i, align 8
  %2512 = inttoptr i64 %2509 to i32*
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
  %2529 = icmp eq i32 %2514, 0
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %30, align 1
  %2531 = lshr i32 %2514, 31
  %2532 = trunc i32 %2531 to i8
  store i8 %2532, i8* %33, align 1
  %2533 = lshr i32 %2513, 31
  %2534 = xor i32 %2531, %2533
  %2535 = add nuw nsw i32 %2534, %2531
  %2536 = icmp eq i32 %2535, 2
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %39, align 1
  %2538 = add i64 %2510, 9
  store i64 %2538, i64* %PC.i, align 8
  store i32 %2514, i32* %2512, align 4
  %2539 = load i64, i64* %PC.i, align 8
  %2540 = add i64 %2539, -52
  store i64 %2540, i64* %3, align 8
  br label %block_.L_400e80

block_.L_400eb9:                                  ; preds = %block_.L_400e80
  %2541 = add i64 %2426, -8
  %2542 = add i64 %2454, 8
  store i64 %2542, i64* %PC.i, align 8
  %2543 = inttoptr i64 %2541 to i32*
  %2544 = load i32, i32* %2543, align 4
  %2545 = add i32 %2544, 1
  %2546 = zext i32 %2545 to i64
  store i64 %2546, i64* %RAX.i1121, align 8
  %2547 = icmp eq i32 %2544, -1
  %2548 = icmp eq i32 %2545, 0
  %2549 = or i1 %2547, %2548
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %14, align 1
  %2551 = and i32 %2545, 255
  %2552 = tail call i32 @llvm.ctpop.i32(i32 %2551)
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  %2555 = xor i8 %2554, 1
  store i8 %2555, i8* %21, align 1
  %2556 = xor i32 %2544, %2545
  %2557 = lshr i32 %2556, 4
  %2558 = trunc i32 %2557 to i8
  %2559 = and i8 %2558, 1
  store i8 %2559, i8* %27, align 1
  %2560 = icmp eq i32 %2545, 0
  %2561 = zext i1 %2560 to i8
  store i8 %2561, i8* %30, align 1
  %2562 = lshr i32 %2545, 31
  %2563 = trunc i32 %2562 to i8
  store i8 %2563, i8* %33, align 1
  %2564 = lshr i32 %2544, 31
  %2565 = xor i32 %2562, %2564
  %2566 = add nuw nsw i32 %2565, %2562
  %2567 = icmp eq i32 %2566, 2
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %39, align 1
  %2569 = add i64 %2454, 14
  store i64 %2569, i64* %PC.i, align 8
  store i32 %2545, i32* %2543, align 4
  %2570 = load i64, i64* %PC.i, align 8
  %2571 = add i64 %2570, -88
  store i64 %2571, i64* %3, align 8
  br label %block_.L_400e6f

block_.L_400ecc:                                  ; preds = %block_.L_400e6f
  %2572 = add i64 %2404, -4
  %2573 = add i64 %2421, 8
  store i64 %2573, i64* %PC.i, align 8
  %2574 = inttoptr i64 %2572 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = add i32 %2575, 1
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RAX.i1121, align 8
  %2578 = icmp eq i32 %2575, -1
  %2579 = icmp eq i32 %2576, 0
  %2580 = or i1 %2578, %2579
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %14, align 1
  %2582 = and i32 %2576, 255
  %2583 = tail call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %21, align 1
  %2587 = xor i32 %2575, %2576
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %27, align 1
  %2591 = icmp eq i32 %2576, 0
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %30, align 1
  %2593 = lshr i32 %2576, 31
  %2594 = trunc i32 %2593 to i8
  store i8 %2594, i8* %33, align 1
  %2595 = lshr i32 %2575, 31
  %2596 = xor i32 %2593, %2595
  %2597 = add nuw nsw i32 %2596, %2593
  %2598 = icmp eq i32 %2597, 2
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %39, align 1
  %2600 = add i64 %2421, 14
  store i64 %2600, i64* %PC.i, align 8
  store i32 %2576, i32* %2574, align 4
  %2601 = load i64, i64* %PC.i, align 8
  %2602 = add i64 %2601, -124
  store i64 %2602, i64* %3, align 8
  br label %block_.L_400e5e

block_.L_400edf:                                  ; preds = %block_.L_400e5e
  store i32 1, i32* bitcast (%G_0x619210_type* @G_0x619210 to i32*), align 8
  store i32 128, i32* bitcast (%G_0x610270_type* @G_0x610270 to i32*), align 8
  %2603 = add i64 %2399, 29
  store i64 %2603, i64* %PC.i, align 8
  store i32 0, i32* %2385, align 4
  %.pre33 = load i64, i64* %PC.i, align 8
  br label %block_.L_400efc

block_.L_400efc:                                  ; preds = %block_.L_400f6a, %block_.L_400edf
  %2604 = phi i64 [ %2836, %block_.L_400f6a ], [ %.pre33, %block_.L_400edf ]
  %2605 = load i64, i64* %RBP.i, align 8
  %2606 = add i64 %2605, -4
  %2607 = add i64 %2604, 4
  store i64 %2607, i64* %PC.i, align 8
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
  %.demorgan105 = or i1 %2622, %2632
  %.v106 = select i1 %.demorgan105, i64 10, i64 129
  %2633 = add i64 %2604, %.v106
  store i64 %2633, i64* %3, align 8
  br i1 %.demorgan105, label %block_400f06, label %block_.L_400f7d

block_400f06:                                     ; preds = %block_.L_400efc
  %2634 = add i64 %2605, -8
  %2635 = add i64 %2633, 7
  store i64 %2635, i64* %PC.i, align 8
  %2636 = inttoptr i64 %2634 to i32*
  store i32 0, i32* %2636, align 4
  %.pre34 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f0d

block_.L_400f0d:                                  ; preds = %block_.L_400f57, %block_400f06
  %2637 = phi i64 [ %2805, %block_.L_400f57 ], [ %.pre34, %block_400f06 ]
  %2638 = load i64, i64* %RBP.i, align 8
  %2639 = add i64 %2638, -8
  %2640 = add i64 %2637, 4
  store i64 %2640, i64* %PC.i, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = add i32 %2642, -1
  %2644 = icmp eq i32 %2642, 0
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %14, align 1
  %2646 = and i32 %2643, 255
  %2647 = tail call i32 @llvm.ctpop.i32(i32 %2646)
  %2648 = trunc i32 %2647 to i8
  %2649 = and i8 %2648, 1
  %2650 = xor i8 %2649, 1
  store i8 %2650, i8* %21, align 1
  %2651 = xor i32 %2642, %2643
  %2652 = lshr i32 %2651, 4
  %2653 = trunc i32 %2652 to i8
  %2654 = and i8 %2653, 1
  store i8 %2654, i8* %27, align 1
  %2655 = icmp eq i32 %2643, 0
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %30, align 1
  %2657 = lshr i32 %2643, 31
  %2658 = trunc i32 %2657 to i8
  store i8 %2658, i8* %33, align 1
  %2659 = lshr i32 %2642, 31
  %2660 = xor i32 %2657, %2659
  %2661 = add nuw nsw i32 %2660, %2659
  %2662 = icmp eq i32 %2661, 2
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %39, align 1
  %2664 = icmp ne i8 %2658, 0
  %2665 = xor i1 %2664, %2662
  %.demorgan107 = or i1 %2655, %2665
  %.v108 = select i1 %.demorgan107, i64 10, i64 93
  %2666 = add i64 %2637, %.v108
  store i64 %2666, i64* %3, align 8
  br i1 %.demorgan107, label %block_400f17, label %block_.L_400f6a

block_400f17:                                     ; preds = %block_.L_400f0d
  %2667 = add i64 %2638, -12
  %2668 = add i64 %2666, 7
  store i64 %2668, i64* %PC.i, align 8
  %2669 = inttoptr i64 %2667 to i32*
  store i32 0, i32* %2669, align 4
  %.pre35 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f1e

block_.L_400f1e:                                  ; preds = %block_400f28, %block_400f17
  %2670 = phi i64 [ %2774, %block_400f28 ], [ %.pre35, %block_400f17 ]
  %2671 = load i64, i64* %RBP.i, align 8
  %2672 = add i64 %2671, -12
  %2673 = add i64 %2670, 4
  store i64 %2673, i64* %PC.i, align 8
  %2674 = inttoptr i64 %2672 to i32*
  %2675 = load i32, i32* %2674, align 4
  store i8 0, i8* %14, align 1
  %2676 = and i32 %2675, 255
  %2677 = tail call i32 @llvm.ctpop.i32(i32 %2676)
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  %2680 = xor i8 %2679, 1
  store i8 %2680, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2681 = icmp eq i32 %2675, 0
  %2682 = zext i1 %2681 to i8
  store i8 %2682, i8* %30, align 1
  %2683 = lshr i32 %2675, 31
  %2684 = trunc i32 %2683 to i8
  store i8 %2684, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2685 = xor i1 %2681, true
  %2686 = icmp eq i8 %2684, 0
  %2687 = and i1 %2686, %2685
  %.v109 = select i1 %2687, i64 57, i64 10
  %2688 = add i64 %2670, %.v109
  store i64 %2688, i64* %3, align 8
  br i1 %2687, label %block_.L_400f57, label %block_400f28

block_400f28:                                     ; preds = %block_.L_400f1e
  %2689 = add i64 %2671, -4
  %2690 = add i64 %2688, 3
  store i64 %2690, i64* %PC.i, align 8
  %2691 = inttoptr i64 %2689 to i32*
  %2692 = load i32, i32* %2691, align 4
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RAX.i1121, align 8
  %2694 = add i64 %2671, -8
  %2695 = add i64 %2688, 6
  store i64 %2695, i64* %PC.i, align 8
  %2696 = inttoptr i64 %2694 to i32*
  %2697 = load i32, i32* %2696, align 4
  %2698 = zext i32 %2697 to i64
  store i64 %2698, i64* %RCX.i1089, align 8
  %2699 = add i64 %2688, 9
  store i64 %2699, i64* %PC.i, align 8
  %2700 = load i32, i32* %2674, align 4
  %2701 = shl i32 %2700, 3
  %2702 = zext i32 %2701 to i64
  store i64 %2702, i64* %RDX.i1086, align 8
  %2703 = add i32 %2701, %2697
  %2704 = shl i32 %2703, 3
  %2705 = zext i32 %2704 to i64
  store i64 %2705, i64* %RCX.i1089, align 8
  %2706 = lshr i32 %2703, 28
  %2707 = and i32 %2706, 1
  %2708 = load i64, i64* %RAX.i1121, align 8
  %2709 = trunc i64 %2708 to i32
  %2710 = add i32 %2704, %2709
  %2711 = zext i32 %2710 to i64
  store i64 %2711, i64* %RAX.i1121, align 8
  %2712 = icmp ult i32 %2710, %2709
  %2713 = icmp ult i32 %2710, %2704
  %2714 = or i1 %2712, %2713
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %14, align 1
  %2716 = and i32 %2710, 255
  %2717 = tail call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  store i8 %2720, i8* %21, align 1
  %2721 = xor i64 %2705, %2708
  %2722 = trunc i64 %2721 to i32
  %2723 = xor i32 %2722, %2710
  %2724 = lshr i32 %2723, 4
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  store i8 %2726, i8* %27, align 1
  %2727 = icmp eq i32 %2710, 0
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %30, align 1
  %2729 = lshr i32 %2710, 31
  %2730 = trunc i32 %2729 to i8
  store i8 %2730, i8* %33, align 1
  %2731 = lshr i32 %2709, 31
  %2732 = xor i32 %2729, %2731
  %2733 = xor i32 %2729, %2707
  %2734 = add nuw nsw i32 %2732, %2733
  %2735 = icmp eq i32 %2734, 2
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %39, align 1
  %2737 = sext i32 %2710 to i64
  store i64 %2737, i64* %RSI.i1074, align 8
  %2738 = shl nsw i64 %2737, 2
  %2739 = add nsw i64 %2738, 6324896
  %2740 = add i64 %2688, 33
  store i64 %2740, i64* %PC.i, align 8
  %2741 = inttoptr i64 %2739 to i32*
  store i32 1, i32* %2741, align 4
  %2742 = load i64, i64* %RBP.i, align 8
  %2743 = add i64 %2742, -12
  %2744 = load i64, i64* %PC.i, align 8
  %2745 = add i64 %2744, 3
  store i64 %2745, i64* %PC.i, align 8
  %2746 = inttoptr i64 %2743 to i32*
  %2747 = load i32, i32* %2746, align 4
  %2748 = add i32 %2747, 1
  %2749 = zext i32 %2748 to i64
  store i64 %2749, i64* %RAX.i1121, align 8
  %2750 = icmp eq i32 %2747, -1
  %2751 = icmp eq i32 %2748, 0
  %2752 = or i1 %2750, %2751
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %14, align 1
  %2754 = and i32 %2748, 255
  %2755 = tail call i32 @llvm.ctpop.i32(i32 %2754)
  %2756 = trunc i32 %2755 to i8
  %2757 = and i8 %2756, 1
  %2758 = xor i8 %2757, 1
  store i8 %2758, i8* %21, align 1
  %2759 = xor i32 %2747, %2748
  %2760 = lshr i32 %2759, 4
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  store i8 %2762, i8* %27, align 1
  %2763 = icmp eq i32 %2748, 0
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %30, align 1
  %2765 = lshr i32 %2748, 31
  %2766 = trunc i32 %2765 to i8
  store i8 %2766, i8* %33, align 1
  %2767 = lshr i32 %2747, 31
  %2768 = xor i32 %2765, %2767
  %2769 = add nuw nsw i32 %2768, %2765
  %2770 = icmp eq i32 %2769, 2
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %39, align 1
  %2772 = add i64 %2744, 9
  store i64 %2772, i64* %PC.i, align 8
  store i32 %2748, i32* %2746, align 4
  %2773 = load i64, i64* %PC.i, align 8
  %2774 = add i64 %2773, -52
  store i64 %2774, i64* %3, align 8
  br label %block_.L_400f1e

block_.L_400f57:                                  ; preds = %block_.L_400f1e
  %2775 = add i64 %2671, -8
  %2776 = add i64 %2688, 8
  store i64 %2776, i64* %PC.i, align 8
  %2777 = inttoptr i64 %2775 to i32*
  %2778 = load i32, i32* %2777, align 4
  %2779 = add i32 %2778, 1
  %2780 = zext i32 %2779 to i64
  store i64 %2780, i64* %RAX.i1121, align 8
  %2781 = icmp eq i32 %2778, -1
  %2782 = icmp eq i32 %2779, 0
  %2783 = or i1 %2781, %2782
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %14, align 1
  %2785 = and i32 %2779, 255
  %2786 = tail call i32 @llvm.ctpop.i32(i32 %2785)
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = xor i8 %2788, 1
  store i8 %2789, i8* %21, align 1
  %2790 = xor i32 %2778, %2779
  %2791 = lshr i32 %2790, 4
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  store i8 %2793, i8* %27, align 1
  %2794 = icmp eq i32 %2779, 0
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %30, align 1
  %2796 = lshr i32 %2779, 31
  %2797 = trunc i32 %2796 to i8
  store i8 %2797, i8* %33, align 1
  %2798 = lshr i32 %2778, 31
  %2799 = xor i32 %2796, %2798
  %2800 = add nuw nsw i32 %2799, %2796
  %2801 = icmp eq i32 %2800, 2
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %39, align 1
  %2803 = add i64 %2688, 14
  store i64 %2803, i64* %PC.i, align 8
  store i32 %2779, i32* %2777, align 4
  %2804 = load i64, i64* %PC.i, align 8
  %2805 = add i64 %2804, -88
  store i64 %2805, i64* %3, align 8
  br label %block_.L_400f0d

block_.L_400f6a:                                  ; preds = %block_.L_400f0d
  %2806 = add i64 %2638, -4
  %2807 = add i64 %2666, 8
  store i64 %2807, i64* %PC.i, align 8
  %2808 = inttoptr i64 %2806 to i32*
  %2809 = load i32, i32* %2808, align 4
  %2810 = add i32 %2809, 1
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RAX.i1121, align 8
  %2812 = icmp eq i32 %2809, -1
  %2813 = icmp eq i32 %2810, 0
  %2814 = or i1 %2812, %2813
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %14, align 1
  %2816 = and i32 %2810, 255
  %2817 = tail call i32 @llvm.ctpop.i32(i32 %2816)
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  %2820 = xor i8 %2819, 1
  store i8 %2820, i8* %21, align 1
  %2821 = xor i32 %2809, %2810
  %2822 = lshr i32 %2821, 4
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  store i8 %2824, i8* %27, align 1
  %2825 = icmp eq i32 %2810, 0
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %30, align 1
  %2827 = lshr i32 %2810, 31
  %2828 = trunc i32 %2827 to i8
  store i8 %2828, i8* %33, align 1
  %2829 = lshr i32 %2809, 31
  %2830 = xor i32 %2827, %2829
  %2831 = add nuw nsw i32 %2830, %2827
  %2832 = icmp eq i32 %2831, 2
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %39, align 1
  %2834 = add i64 %2666, 14
  store i64 %2834, i64* %PC.i, align 8
  store i32 %2810, i32* %2808, align 4
  %2835 = load i64, i64* %PC.i, align 8
  %2836 = add i64 %2835, -124
  store i64 %2836, i64* %3, align 8
  br label %block_.L_400efc

block_.L_400f7d:                                  ; preds = %block_.L_400efc
  store i32 2, i32* bitcast (%G_0x619214_type* @G_0x619214 to i32*), align 8
  store i32 9, i32* bitcast (%G_0x610274_type* @G_0x610274 to i32*), align 8
  %2837 = add i64 %2633, 29
  store i64 %2837, i64* %PC.i, align 8
  store i32 0, i32* %2608, align 4
  %.pre36 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f9a

block_.L_400f9a:                                  ; preds = %block_.L_401008, %block_.L_400f7d
  %2838 = phi i64 [ %3070, %block_.L_401008 ], [ %.pre36, %block_.L_400f7d ]
  %2839 = load i64, i64* %RBP.i, align 8
  %2840 = add i64 %2839, -4
  %2841 = add i64 %2838, 4
  store i64 %2841, i64* %PC.i, align 8
  %2842 = inttoptr i64 %2840 to i32*
  %2843 = load i32, i32* %2842, align 4
  %2844 = add i32 %2843, -1
  %2845 = icmp eq i32 %2843, 0
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %14, align 1
  %2847 = and i32 %2844, 255
  %2848 = tail call i32 @llvm.ctpop.i32(i32 %2847)
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  %2851 = xor i8 %2850, 1
  store i8 %2851, i8* %21, align 1
  %2852 = xor i32 %2843, %2844
  %2853 = lshr i32 %2852, 4
  %2854 = trunc i32 %2853 to i8
  %2855 = and i8 %2854, 1
  store i8 %2855, i8* %27, align 1
  %2856 = icmp eq i32 %2844, 0
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %30, align 1
  %2858 = lshr i32 %2844, 31
  %2859 = trunc i32 %2858 to i8
  store i8 %2859, i8* %33, align 1
  %2860 = lshr i32 %2843, 31
  %2861 = xor i32 %2858, %2860
  %2862 = add nuw nsw i32 %2861, %2860
  %2863 = icmp eq i32 %2862, 2
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %39, align 1
  %2865 = icmp ne i8 %2859, 0
  %2866 = xor i1 %2865, %2863
  %.demorgan110 = or i1 %2856, %2866
  %.v111 = select i1 %.demorgan110, i64 10, i64 129
  %2867 = add i64 %2838, %.v111
  store i64 %2867, i64* %3, align 8
  br i1 %.demorgan110, label %block_400fa4, label %block_.L_40101b

block_400fa4:                                     ; preds = %block_.L_400f9a
  %2868 = add i64 %2839, -8
  %2869 = add i64 %2867, 7
  store i64 %2869, i64* %PC.i, align 8
  %2870 = inttoptr i64 %2868 to i32*
  store i32 0, i32* %2870, align 4
  %.pre37 = load i64, i64* %PC.i, align 8
  br label %block_.L_400fab

block_.L_400fab:                                  ; preds = %block_.L_400ff5, %block_400fa4
  %2871 = phi i64 [ %3039, %block_.L_400ff5 ], [ %.pre37, %block_400fa4 ]
  %2872 = load i64, i64* %RBP.i, align 8
  %2873 = add i64 %2872, -8
  %2874 = add i64 %2871, 4
  store i64 %2874, i64* %PC.i, align 8
  %2875 = inttoptr i64 %2873 to i32*
  %2876 = load i32, i32* %2875, align 4
  store i8 0, i8* %14, align 1
  %2877 = and i32 %2876, 255
  %2878 = tail call i32 @llvm.ctpop.i32(i32 %2877)
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  %2881 = xor i8 %2880, 1
  store i8 %2881, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2882 = icmp eq i32 %2876, 0
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %30, align 1
  %2884 = lshr i32 %2876, 31
  %2885 = trunc i32 %2884 to i8
  store i8 %2885, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2886 = xor i1 %2882, true
  %2887 = icmp eq i8 %2885, 0
  %2888 = and i1 %2887, %2886
  %.v112 = select i1 %2888, i64 93, i64 10
  %2889 = add i64 %2871, %.v112
  store i64 %2889, i64* %3, align 8
  br i1 %2888, label %block_.L_401008, label %block_400fb5

block_400fb5:                                     ; preds = %block_.L_400fab
  %2890 = add i64 %2872, -12
  %2891 = add i64 %2889, 7
  store i64 %2891, i64* %PC.i, align 8
  %2892 = inttoptr i64 %2890 to i32*
  store i32 0, i32* %2892, align 4
  %.pre38 = load i64, i64* %PC.i, align 8
  br label %block_.L_400fbc

block_.L_400fbc:                                  ; preds = %block_400fc6, %block_400fb5
  %2893 = phi i64 [ %3008, %block_400fc6 ], [ %.pre38, %block_400fb5 ]
  %2894 = load i64, i64* %RBP.i, align 8
  %2895 = add i64 %2894, -12
  %2896 = add i64 %2893, 4
  store i64 %2896, i64* %PC.i, align 8
  %2897 = inttoptr i64 %2895 to i32*
  %2898 = load i32, i32* %2897, align 4
  %2899 = add i32 %2898, -1
  %2900 = icmp eq i32 %2898, 0
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %14, align 1
  %2902 = and i32 %2899, 255
  %2903 = tail call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  store i8 %2906, i8* %21, align 1
  %2907 = xor i32 %2898, %2899
  %2908 = lshr i32 %2907, 4
  %2909 = trunc i32 %2908 to i8
  %2910 = and i8 %2909, 1
  store i8 %2910, i8* %27, align 1
  %2911 = icmp eq i32 %2899, 0
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %30, align 1
  %2913 = lshr i32 %2899, 31
  %2914 = trunc i32 %2913 to i8
  store i8 %2914, i8* %33, align 1
  %2915 = lshr i32 %2898, 31
  %2916 = xor i32 %2913, %2915
  %2917 = add nuw nsw i32 %2916, %2915
  %2918 = icmp eq i32 %2917, 2
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %39, align 1
  %2920 = icmp ne i8 %2914, 0
  %2921 = xor i1 %2920, %2918
  %.demorgan113 = or i1 %2911, %2921
  %.v114 = select i1 %.demorgan113, i64 10, i64 57
  %2922 = add i64 %2893, %.v114
  store i64 %2922, i64* %3, align 8
  br i1 %.demorgan113, label %block_400fc6, label %block_.L_400ff5

block_400fc6:                                     ; preds = %block_.L_400fbc
  %2923 = add i64 %2894, -4
  %2924 = add i64 %2922, 3
  store i64 %2924, i64* %PC.i, align 8
  %2925 = inttoptr i64 %2923 to i32*
  %2926 = load i32, i32* %2925, align 4
  %2927 = zext i32 %2926 to i64
  store i64 %2927, i64* %RAX.i1121, align 8
  %2928 = add i64 %2894, -8
  %2929 = add i64 %2922, 6
  store i64 %2929, i64* %PC.i, align 8
  %2930 = inttoptr i64 %2928 to i32*
  %2931 = load i32, i32* %2930, align 4
  %2932 = zext i32 %2931 to i64
  store i64 %2932, i64* %RCX.i1089, align 8
  %2933 = add i64 %2922, 9
  store i64 %2933, i64* %PC.i, align 8
  %2934 = load i32, i32* %2897, align 4
  %2935 = shl i32 %2934, 3
  %2936 = zext i32 %2935 to i64
  store i64 %2936, i64* %RDX.i1086, align 8
  %2937 = add i32 %2935, %2931
  %2938 = shl i32 %2937, 3
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RCX.i1089, align 8
  %2940 = lshr i32 %2937, 28
  %2941 = and i32 %2940, 1
  %2942 = load i64, i64* %RAX.i1121, align 8
  %2943 = trunc i64 %2942 to i32
  %2944 = add i32 %2938, %2943
  %2945 = zext i32 %2944 to i64
  store i64 %2945, i64* %RAX.i1121, align 8
  %2946 = icmp ult i32 %2944, %2943
  %2947 = icmp ult i32 %2944, %2938
  %2948 = or i1 %2946, %2947
  %2949 = zext i1 %2948 to i8
  store i8 %2949, i8* %14, align 1
  %2950 = and i32 %2944, 255
  %2951 = tail call i32 @llvm.ctpop.i32(i32 %2950)
  %2952 = trunc i32 %2951 to i8
  %2953 = and i8 %2952, 1
  %2954 = xor i8 %2953, 1
  store i8 %2954, i8* %21, align 1
  %2955 = xor i64 %2939, %2942
  %2956 = trunc i64 %2955 to i32
  %2957 = xor i32 %2956, %2944
  %2958 = lshr i32 %2957, 4
  %2959 = trunc i32 %2958 to i8
  %2960 = and i8 %2959, 1
  store i8 %2960, i8* %27, align 1
  %2961 = icmp eq i32 %2944, 0
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %30, align 1
  %2963 = lshr i32 %2944, 31
  %2964 = trunc i32 %2963 to i8
  store i8 %2964, i8* %33, align 1
  %2965 = lshr i32 %2943, 31
  %2966 = xor i32 %2963, %2965
  %2967 = xor i32 %2963, %2941
  %2968 = add nuw nsw i32 %2966, %2967
  %2969 = icmp eq i32 %2968, 2
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %39, align 1
  %2971 = sext i32 %2944 to i64
  store i64 %2971, i64* %RSI.i1074, align 8
  %2972 = shl nsw i64 %2971, 2
  %2973 = add nsw i64 %2972, 6326944
  %2974 = add i64 %2922, 33
  store i64 %2974, i64* %PC.i, align 8
  %2975 = inttoptr i64 %2973 to i32*
  store i32 1, i32* %2975, align 4
  %2976 = load i64, i64* %RBP.i, align 8
  %2977 = add i64 %2976, -12
  %2978 = load i64, i64* %PC.i, align 8
  %2979 = add i64 %2978, 3
  store i64 %2979, i64* %PC.i, align 8
  %2980 = inttoptr i64 %2977 to i32*
  %2981 = load i32, i32* %2980, align 4
  %2982 = add i32 %2981, 1
  %2983 = zext i32 %2982 to i64
  store i64 %2983, i64* %RAX.i1121, align 8
  %2984 = icmp eq i32 %2981, -1
  %2985 = icmp eq i32 %2982, 0
  %2986 = or i1 %2984, %2985
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %14, align 1
  %2988 = and i32 %2982, 255
  %2989 = tail call i32 @llvm.ctpop.i32(i32 %2988)
  %2990 = trunc i32 %2989 to i8
  %2991 = and i8 %2990, 1
  %2992 = xor i8 %2991, 1
  store i8 %2992, i8* %21, align 1
  %2993 = xor i32 %2981, %2982
  %2994 = lshr i32 %2993, 4
  %2995 = trunc i32 %2994 to i8
  %2996 = and i8 %2995, 1
  store i8 %2996, i8* %27, align 1
  %2997 = icmp eq i32 %2982, 0
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %30, align 1
  %2999 = lshr i32 %2982, 31
  %3000 = trunc i32 %2999 to i8
  store i8 %3000, i8* %33, align 1
  %3001 = lshr i32 %2981, 31
  %3002 = xor i32 %2999, %3001
  %3003 = add nuw nsw i32 %3002, %2999
  %3004 = icmp eq i32 %3003, 2
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %39, align 1
  %3006 = add i64 %2978, 9
  store i64 %3006, i64* %PC.i, align 8
  store i32 %2982, i32* %2980, align 4
  %3007 = load i64, i64* %PC.i, align 8
  %3008 = add i64 %3007, -52
  store i64 %3008, i64* %3, align 8
  br label %block_.L_400fbc

block_.L_400ff5:                                  ; preds = %block_.L_400fbc
  %3009 = add i64 %2894, -8
  %3010 = add i64 %2922, 8
  store i64 %3010, i64* %PC.i, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = add i32 %3012, 1
  %3014 = zext i32 %3013 to i64
  store i64 %3014, i64* %RAX.i1121, align 8
  %3015 = icmp eq i32 %3012, -1
  %3016 = icmp eq i32 %3013, 0
  %3017 = or i1 %3015, %3016
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %14, align 1
  %3019 = and i32 %3013, 255
  %3020 = tail call i32 @llvm.ctpop.i32(i32 %3019)
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  %3023 = xor i8 %3022, 1
  store i8 %3023, i8* %21, align 1
  %3024 = xor i32 %3012, %3013
  %3025 = lshr i32 %3024, 4
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  store i8 %3027, i8* %27, align 1
  %3028 = icmp eq i32 %3013, 0
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %30, align 1
  %3030 = lshr i32 %3013, 31
  %3031 = trunc i32 %3030 to i8
  store i8 %3031, i8* %33, align 1
  %3032 = lshr i32 %3012, 31
  %3033 = xor i32 %3030, %3032
  %3034 = add nuw nsw i32 %3033, %3030
  %3035 = icmp eq i32 %3034, 2
  %3036 = zext i1 %3035 to i8
  store i8 %3036, i8* %39, align 1
  %3037 = add i64 %2922, 14
  store i64 %3037, i64* %PC.i, align 8
  store i32 %3013, i32* %3011, align 4
  %3038 = load i64, i64* %PC.i, align 8
  %3039 = add i64 %3038, -88
  store i64 %3039, i64* %3, align 8
  br label %block_.L_400fab

block_.L_401008:                                  ; preds = %block_.L_400fab
  %3040 = add i64 %2872, -4
  %3041 = add i64 %2889, 8
  store i64 %3041, i64* %PC.i, align 8
  %3042 = inttoptr i64 %3040 to i32*
  %3043 = load i32, i32* %3042, align 4
  %3044 = add i32 %3043, 1
  %3045 = zext i32 %3044 to i64
  store i64 %3045, i64* %RAX.i1121, align 8
  %3046 = icmp eq i32 %3043, -1
  %3047 = icmp eq i32 %3044, 0
  %3048 = or i1 %3046, %3047
  %3049 = zext i1 %3048 to i8
  store i8 %3049, i8* %14, align 1
  %3050 = and i32 %3044, 255
  %3051 = tail call i32 @llvm.ctpop.i32(i32 %3050)
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  %3054 = xor i8 %3053, 1
  store i8 %3054, i8* %21, align 1
  %3055 = xor i32 %3043, %3044
  %3056 = lshr i32 %3055, 4
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  store i8 %3058, i8* %27, align 1
  %3059 = icmp eq i32 %3044, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %30, align 1
  %3061 = lshr i32 %3044, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %33, align 1
  %3063 = lshr i32 %3043, 31
  %3064 = xor i32 %3061, %3063
  %3065 = add nuw nsw i32 %3064, %3061
  %3066 = icmp eq i32 %3065, 2
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %39, align 1
  %3068 = add i64 %2889, 14
  store i64 %3068, i64* %PC.i, align 8
  store i32 %3044, i32* %3042, align 4
  %3069 = load i64, i64* %PC.i, align 8
  %3070 = add i64 %3069, -124
  store i64 %3070, i64* %3, align 8
  br label %block_.L_400f9a

block_.L_40101b:                                  ; preds = %block_.L_400f9a
  store i32 2, i32* bitcast (%G_0x619218_type* @G_0x619218 to i32*), align 8
  store i32 65, i32* bitcast (%G_0x610278_type* @G_0x610278 to i32*), align 8
  %3071 = add i64 %2867, 29
  store i64 %3071, i64* %PC.i, align 8
  store i32 0, i32* %2842, align 4
  %.pre39 = load i64, i64* %PC.i, align 8
  br label %block_.L_401038

block_.L_401038:                                  ; preds = %block_.L_4010a6, %block_.L_40101b
  %3072 = phi i64 [ %3304, %block_.L_4010a6 ], [ %.pre39, %block_.L_40101b ]
  %3073 = load i64, i64* %RBP.i, align 8
  %3074 = add i64 %3073, -4
  %3075 = add i64 %3072, 4
  store i64 %3075, i64* %PC.i, align 8
  %3076 = inttoptr i64 %3074 to i32*
  %3077 = load i32, i32* %3076, align 4
  store i8 0, i8* %14, align 1
  %3078 = and i32 %3077, 255
  %3079 = tail call i32 @llvm.ctpop.i32(i32 %3078)
  %3080 = trunc i32 %3079 to i8
  %3081 = and i8 %3080, 1
  %3082 = xor i8 %3081, 1
  store i8 %3082, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3083 = icmp eq i32 %3077, 0
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %30, align 1
  %3085 = lshr i32 %3077, 31
  %3086 = trunc i32 %3085 to i8
  store i8 %3086, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3087 = xor i1 %3083, true
  %3088 = icmp eq i8 %3086, 0
  %3089 = and i1 %3088, %3087
  %.v115 = select i1 %3089, i64 129, i64 10
  %3090 = add i64 %3072, %.v115
  store i64 %3090, i64* %3, align 8
  br i1 %3089, label %block_.L_4010b9, label %block_401042

block_401042:                                     ; preds = %block_.L_401038
  %3091 = add i64 %3073, -8
  %3092 = add i64 %3090, 7
  store i64 %3092, i64* %PC.i, align 8
  %3093 = inttoptr i64 %3091 to i32*
  store i32 0, i32* %3093, align 4
  %.pre40 = load i64, i64* %PC.i, align 8
  br label %block_.L_401049

block_.L_401049:                                  ; preds = %block_.L_401093, %block_401042
  %3094 = phi i64 [ %3273, %block_.L_401093 ], [ %.pre40, %block_401042 ]
  %3095 = load i64, i64* %RBP.i, align 8
  %3096 = add i64 %3095, -8
  %3097 = add i64 %3094, 4
  store i64 %3097, i64* %PC.i, align 8
  %3098 = inttoptr i64 %3096 to i32*
  %3099 = load i32, i32* %3098, align 4
  %3100 = add i32 %3099, -1
  %3101 = icmp eq i32 %3099, 0
  %3102 = zext i1 %3101 to i8
  store i8 %3102, i8* %14, align 1
  %3103 = and i32 %3100, 255
  %3104 = tail call i32 @llvm.ctpop.i32(i32 %3103)
  %3105 = trunc i32 %3104 to i8
  %3106 = and i8 %3105, 1
  %3107 = xor i8 %3106, 1
  store i8 %3107, i8* %21, align 1
  %3108 = xor i32 %3099, %3100
  %3109 = lshr i32 %3108, 4
  %3110 = trunc i32 %3109 to i8
  %3111 = and i8 %3110, 1
  store i8 %3111, i8* %27, align 1
  %3112 = icmp eq i32 %3100, 0
  %3113 = zext i1 %3112 to i8
  store i8 %3113, i8* %30, align 1
  %3114 = lshr i32 %3100, 31
  %3115 = trunc i32 %3114 to i8
  store i8 %3115, i8* %33, align 1
  %3116 = lshr i32 %3099, 31
  %3117 = xor i32 %3114, %3116
  %3118 = add nuw nsw i32 %3117, %3116
  %3119 = icmp eq i32 %3118, 2
  %3120 = zext i1 %3119 to i8
  store i8 %3120, i8* %39, align 1
  %3121 = icmp ne i8 %3115, 0
  %3122 = xor i1 %3121, %3119
  %.demorgan116 = or i1 %3112, %3122
  %.v117 = select i1 %.demorgan116, i64 10, i64 93
  %3123 = add i64 %3094, %.v117
  store i64 %3123, i64* %3, align 8
  br i1 %.demorgan116, label %block_401053, label %block_.L_4010a6

block_401053:                                     ; preds = %block_.L_401049
  %3124 = add i64 %3095, -12
  %3125 = add i64 %3123, 7
  store i64 %3125, i64* %PC.i, align 8
  %3126 = inttoptr i64 %3124 to i32*
  store i32 0, i32* %3126, align 4
  %.pre41 = load i64, i64* %PC.i, align 8
  br label %block_.L_40105a

block_.L_40105a:                                  ; preds = %block_401064, %block_401053
  %3127 = phi i64 [ %3242, %block_401064 ], [ %.pre41, %block_401053 ]
  %3128 = load i64, i64* %RBP.i, align 8
  %3129 = add i64 %3128, -12
  %3130 = add i64 %3127, 4
  store i64 %3130, i64* %PC.i, align 8
  %3131 = inttoptr i64 %3129 to i32*
  %3132 = load i32, i32* %3131, align 4
  %3133 = add i32 %3132, -1
  %3134 = icmp eq i32 %3132, 0
  %3135 = zext i1 %3134 to i8
  store i8 %3135, i8* %14, align 1
  %3136 = and i32 %3133, 255
  %3137 = tail call i32 @llvm.ctpop.i32(i32 %3136)
  %3138 = trunc i32 %3137 to i8
  %3139 = and i8 %3138, 1
  %3140 = xor i8 %3139, 1
  store i8 %3140, i8* %21, align 1
  %3141 = xor i32 %3132, %3133
  %3142 = lshr i32 %3141, 4
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  store i8 %3144, i8* %27, align 1
  %3145 = icmp eq i32 %3133, 0
  %3146 = zext i1 %3145 to i8
  store i8 %3146, i8* %30, align 1
  %3147 = lshr i32 %3133, 31
  %3148 = trunc i32 %3147 to i8
  store i8 %3148, i8* %33, align 1
  %3149 = lshr i32 %3132, 31
  %3150 = xor i32 %3147, %3149
  %3151 = add nuw nsw i32 %3150, %3149
  %3152 = icmp eq i32 %3151, 2
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %39, align 1
  %3154 = icmp ne i8 %3148, 0
  %3155 = xor i1 %3154, %3152
  %.demorgan118 = or i1 %3145, %3155
  %.v119 = select i1 %.demorgan118, i64 10, i64 57
  %3156 = add i64 %3127, %.v119
  store i64 %3156, i64* %3, align 8
  br i1 %.demorgan118, label %block_401064, label %block_.L_401093

block_401064:                                     ; preds = %block_.L_40105a
  %3157 = add i64 %3128, -4
  %3158 = add i64 %3156, 3
  store i64 %3158, i64* %PC.i, align 8
  %3159 = inttoptr i64 %3157 to i32*
  %3160 = load i32, i32* %3159, align 4
  %3161 = zext i32 %3160 to i64
  store i64 %3161, i64* %RAX.i1121, align 8
  %3162 = add i64 %3128, -8
  %3163 = add i64 %3156, 6
  store i64 %3163, i64* %PC.i, align 8
  %3164 = inttoptr i64 %3162 to i32*
  %3165 = load i32, i32* %3164, align 4
  %3166 = zext i32 %3165 to i64
  store i64 %3166, i64* %RCX.i1089, align 8
  %3167 = add i64 %3156, 9
  store i64 %3167, i64* %PC.i, align 8
  %3168 = load i32, i32* %3131, align 4
  %3169 = shl i32 %3168, 3
  %3170 = zext i32 %3169 to i64
  store i64 %3170, i64* %RDX.i1086, align 8
  %3171 = add i32 %3169, %3165
  %3172 = shl i32 %3171, 3
  %3173 = zext i32 %3172 to i64
  store i64 %3173, i64* %RCX.i1089, align 8
  %3174 = lshr i32 %3171, 28
  %3175 = and i32 %3174, 1
  %3176 = load i64, i64* %RAX.i1121, align 8
  %3177 = trunc i64 %3176 to i32
  %3178 = add i32 %3172, %3177
  %3179 = zext i32 %3178 to i64
  store i64 %3179, i64* %RAX.i1121, align 8
  %3180 = icmp ult i32 %3178, %3177
  %3181 = icmp ult i32 %3178, %3172
  %3182 = or i1 %3180, %3181
  %3183 = zext i1 %3182 to i8
  store i8 %3183, i8* %14, align 1
  %3184 = and i32 %3178, 255
  %3185 = tail call i32 @llvm.ctpop.i32(i32 %3184)
  %3186 = trunc i32 %3185 to i8
  %3187 = and i8 %3186, 1
  %3188 = xor i8 %3187, 1
  store i8 %3188, i8* %21, align 1
  %3189 = xor i64 %3173, %3176
  %3190 = trunc i64 %3189 to i32
  %3191 = xor i32 %3190, %3178
  %3192 = lshr i32 %3191, 4
  %3193 = trunc i32 %3192 to i8
  %3194 = and i8 %3193, 1
  store i8 %3194, i8* %27, align 1
  %3195 = icmp eq i32 %3178, 0
  %3196 = zext i1 %3195 to i8
  store i8 %3196, i8* %30, align 1
  %3197 = lshr i32 %3178, 31
  %3198 = trunc i32 %3197 to i8
  store i8 %3198, i8* %33, align 1
  %3199 = lshr i32 %3177, 31
  %3200 = xor i32 %3197, %3199
  %3201 = xor i32 %3197, %3175
  %3202 = add nuw nsw i32 %3200, %3201
  %3203 = icmp eq i32 %3202, 2
  %3204 = zext i1 %3203 to i8
  store i8 %3204, i8* %39, align 1
  %3205 = sext i32 %3178 to i64
  store i64 %3205, i64* %RSI.i1074, align 8
  %3206 = shl nsw i64 %3205, 2
  %3207 = add nsw i64 %3206, 6328992
  %3208 = add i64 %3156, 33
  store i64 %3208, i64* %PC.i, align 8
  %3209 = inttoptr i64 %3207 to i32*
  store i32 1, i32* %3209, align 4
  %3210 = load i64, i64* %RBP.i, align 8
  %3211 = add i64 %3210, -12
  %3212 = load i64, i64* %PC.i, align 8
  %3213 = add i64 %3212, 3
  store i64 %3213, i64* %PC.i, align 8
  %3214 = inttoptr i64 %3211 to i32*
  %3215 = load i32, i32* %3214, align 4
  %3216 = add i32 %3215, 1
  %3217 = zext i32 %3216 to i64
  store i64 %3217, i64* %RAX.i1121, align 8
  %3218 = icmp eq i32 %3215, -1
  %3219 = icmp eq i32 %3216, 0
  %3220 = or i1 %3218, %3219
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %14, align 1
  %3222 = and i32 %3216, 255
  %3223 = tail call i32 @llvm.ctpop.i32(i32 %3222)
  %3224 = trunc i32 %3223 to i8
  %3225 = and i8 %3224, 1
  %3226 = xor i8 %3225, 1
  store i8 %3226, i8* %21, align 1
  %3227 = xor i32 %3215, %3216
  %3228 = lshr i32 %3227, 4
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  store i8 %3230, i8* %27, align 1
  %3231 = icmp eq i32 %3216, 0
  %3232 = zext i1 %3231 to i8
  store i8 %3232, i8* %30, align 1
  %3233 = lshr i32 %3216, 31
  %3234 = trunc i32 %3233 to i8
  store i8 %3234, i8* %33, align 1
  %3235 = lshr i32 %3215, 31
  %3236 = xor i32 %3233, %3235
  %3237 = add nuw nsw i32 %3236, %3233
  %3238 = icmp eq i32 %3237, 2
  %3239 = zext i1 %3238 to i8
  store i8 %3239, i8* %39, align 1
  %3240 = add i64 %3212, 9
  store i64 %3240, i64* %PC.i, align 8
  store i32 %3216, i32* %3214, align 4
  %3241 = load i64, i64* %PC.i, align 8
  %3242 = add i64 %3241, -52
  store i64 %3242, i64* %3, align 8
  br label %block_.L_40105a

block_.L_401093:                                  ; preds = %block_.L_40105a
  %3243 = add i64 %3128, -8
  %3244 = add i64 %3156, 8
  store i64 %3244, i64* %PC.i, align 8
  %3245 = inttoptr i64 %3243 to i32*
  %3246 = load i32, i32* %3245, align 4
  %3247 = add i32 %3246, 1
  %3248 = zext i32 %3247 to i64
  store i64 %3248, i64* %RAX.i1121, align 8
  %3249 = icmp eq i32 %3246, -1
  %3250 = icmp eq i32 %3247, 0
  %3251 = or i1 %3249, %3250
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %14, align 1
  %3253 = and i32 %3247, 255
  %3254 = tail call i32 @llvm.ctpop.i32(i32 %3253)
  %3255 = trunc i32 %3254 to i8
  %3256 = and i8 %3255, 1
  %3257 = xor i8 %3256, 1
  store i8 %3257, i8* %21, align 1
  %3258 = xor i32 %3246, %3247
  %3259 = lshr i32 %3258, 4
  %3260 = trunc i32 %3259 to i8
  %3261 = and i8 %3260, 1
  store i8 %3261, i8* %27, align 1
  %3262 = icmp eq i32 %3247, 0
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %30, align 1
  %3264 = lshr i32 %3247, 31
  %3265 = trunc i32 %3264 to i8
  store i8 %3265, i8* %33, align 1
  %3266 = lshr i32 %3246, 31
  %3267 = xor i32 %3264, %3266
  %3268 = add nuw nsw i32 %3267, %3264
  %3269 = icmp eq i32 %3268, 2
  %3270 = zext i1 %3269 to i8
  store i8 %3270, i8* %39, align 1
  %3271 = add i64 %3156, 14
  store i64 %3271, i64* %PC.i, align 8
  store i32 %3247, i32* %3245, align 4
  %3272 = load i64, i64* %PC.i, align 8
  %3273 = add i64 %3272, -88
  store i64 %3273, i64* %3, align 8
  br label %block_.L_401049

block_.L_4010a6:                                  ; preds = %block_.L_401049
  %3274 = add i64 %3095, -4
  %3275 = add i64 %3123, 8
  store i64 %3275, i64* %PC.i, align 8
  %3276 = inttoptr i64 %3274 to i32*
  %3277 = load i32, i32* %3276, align 4
  %3278 = add i32 %3277, 1
  %3279 = zext i32 %3278 to i64
  store i64 %3279, i64* %RAX.i1121, align 8
  %3280 = icmp eq i32 %3277, -1
  %3281 = icmp eq i32 %3278, 0
  %3282 = or i1 %3280, %3281
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %14, align 1
  %3284 = and i32 %3278, 255
  %3285 = tail call i32 @llvm.ctpop.i32(i32 %3284)
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  %3288 = xor i8 %3287, 1
  store i8 %3288, i8* %21, align 1
  %3289 = xor i32 %3277, %3278
  %3290 = lshr i32 %3289, 4
  %3291 = trunc i32 %3290 to i8
  %3292 = and i8 %3291, 1
  store i8 %3292, i8* %27, align 1
  %3293 = icmp eq i32 %3278, 0
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %30, align 1
  %3295 = lshr i32 %3278, 31
  %3296 = trunc i32 %3295 to i8
  store i8 %3296, i8* %33, align 1
  %3297 = lshr i32 %3277, 31
  %3298 = xor i32 %3295, %3297
  %3299 = add nuw nsw i32 %3298, %3295
  %3300 = icmp eq i32 %3299, 2
  %3301 = zext i1 %3300 to i8
  store i8 %3301, i8* %39, align 1
  %3302 = add i64 %3123, 14
  store i64 %3302, i64* %PC.i, align 8
  store i32 %3278, i32* %3276, align 4
  %3303 = load i64, i64* %PC.i, align 8
  %3304 = add i64 %3303, -124
  store i64 %3304, i64* %3, align 8
  br label %block_.L_401038

block_.L_4010b9:                                  ; preds = %block_.L_401038
  store i32 2, i32* bitcast (%G_0x61921c_type* @G_0x61921c to i32*), align 8
  store i32 72, i32* bitcast (%G_0x61027c_type* @G_0x61027c to i32*), align 8
  %3305 = add i64 %3090, 29
  store i64 %3305, i64* %PC.i, align 8
  store i32 0, i32* %3076, align 4
  %.pre42 = load i64, i64* %PC.i, align 8
  br label %block_.L_4010d6

block_.L_4010d6:                                  ; preds = %block_.L_401144, %block_.L_4010b9
  %3306 = phi i64 [ %3549, %block_.L_401144 ], [ %.pre42, %block_.L_4010b9 ]
  %3307 = load i64, i64* %RBP.i, align 8
  %3308 = add i64 %3307, -4
  %3309 = add i64 %3306, 4
  store i64 %3309, i64* %PC.i, align 8
  %3310 = inttoptr i64 %3308 to i32*
  %3311 = load i32, i32* %3310, align 4
  %3312 = add i32 %3311, -1
  %3313 = icmp eq i32 %3311, 0
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %14, align 1
  %3315 = and i32 %3312, 255
  %3316 = tail call i32 @llvm.ctpop.i32(i32 %3315)
  %3317 = trunc i32 %3316 to i8
  %3318 = and i8 %3317, 1
  %3319 = xor i8 %3318, 1
  store i8 %3319, i8* %21, align 1
  %3320 = xor i32 %3311, %3312
  %3321 = lshr i32 %3320, 4
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  store i8 %3323, i8* %27, align 1
  %3324 = icmp eq i32 %3312, 0
  %3325 = zext i1 %3324 to i8
  store i8 %3325, i8* %30, align 1
  %3326 = lshr i32 %3312, 31
  %3327 = trunc i32 %3326 to i8
  store i8 %3327, i8* %33, align 1
  %3328 = lshr i32 %3311, 31
  %3329 = xor i32 %3326, %3328
  %3330 = add nuw nsw i32 %3329, %3328
  %3331 = icmp eq i32 %3330, 2
  %3332 = zext i1 %3331 to i8
  store i8 %3332, i8* %39, align 1
  %3333 = icmp ne i8 %3327, 0
  %3334 = xor i1 %3333, %3331
  %.demorgan120 = or i1 %3324, %3334
  %.v121 = select i1 %.demorgan120, i64 10, i64 129
  %3335 = add i64 %3306, %.v121
  store i64 %3335, i64* %3, align 8
  br i1 %.demorgan120, label %block_4010e0, label %block_.L_401157

block_4010e0:                                     ; preds = %block_.L_4010d6
  %3336 = add i64 %3307, -8
  %3337 = add i64 %3335, 7
  store i64 %3337, i64* %PC.i, align 8
  %3338 = inttoptr i64 %3336 to i32*
  store i32 0, i32* %3338, align 4
  %.pre43 = load i64, i64* %PC.i, align 8
  br label %block_.L_4010e7

block_.L_4010e7:                                  ; preds = %block_.L_401131, %block_4010e0
  %3339 = phi i64 [ %3518, %block_.L_401131 ], [ %.pre43, %block_4010e0 ]
  %3340 = load i64, i64* %RBP.i, align 8
  %3341 = add i64 %3340, -8
  %3342 = add i64 %3339, 4
  store i64 %3342, i64* %PC.i, align 8
  %3343 = inttoptr i64 %3341 to i32*
  %3344 = load i32, i32* %3343, align 4
  %3345 = add i32 %3344, -1
  %3346 = icmp eq i32 %3344, 0
  %3347 = zext i1 %3346 to i8
  store i8 %3347, i8* %14, align 1
  %3348 = and i32 %3345, 255
  %3349 = tail call i32 @llvm.ctpop.i32(i32 %3348)
  %3350 = trunc i32 %3349 to i8
  %3351 = and i8 %3350, 1
  %3352 = xor i8 %3351, 1
  store i8 %3352, i8* %21, align 1
  %3353 = xor i32 %3344, %3345
  %3354 = lshr i32 %3353, 4
  %3355 = trunc i32 %3354 to i8
  %3356 = and i8 %3355, 1
  store i8 %3356, i8* %27, align 1
  %3357 = icmp eq i32 %3345, 0
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %30, align 1
  %3359 = lshr i32 %3345, 31
  %3360 = trunc i32 %3359 to i8
  store i8 %3360, i8* %33, align 1
  %3361 = lshr i32 %3344, 31
  %3362 = xor i32 %3359, %3361
  %3363 = add nuw nsw i32 %3362, %3361
  %3364 = icmp eq i32 %3363, 2
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %39, align 1
  %3366 = icmp ne i8 %3360, 0
  %3367 = xor i1 %3366, %3364
  %.demorgan122 = or i1 %3357, %3367
  %.v123 = select i1 %.demorgan122, i64 10, i64 93
  %3368 = add i64 %3339, %.v123
  store i64 %3368, i64* %3, align 8
  br i1 %.demorgan122, label %block_4010f1, label %block_.L_401144

block_4010f1:                                     ; preds = %block_.L_4010e7
  %3369 = add i64 %3340, -12
  %3370 = add i64 %3368, 7
  store i64 %3370, i64* %PC.i, align 8
  %3371 = inttoptr i64 %3369 to i32*
  store i32 0, i32* %3371, align 4
  %.pre44 = load i64, i64* %PC.i, align 8
  br label %block_.L_4010f8

block_.L_4010f8:                                  ; preds = %block_401102, %block_4010f1
  %3372 = phi i64 [ %3487, %block_401102 ], [ %.pre44, %block_4010f1 ]
  %3373 = load i64, i64* %RBP.i, align 8
  %3374 = add i64 %3373, -12
  %3375 = add i64 %3372, 4
  store i64 %3375, i64* %PC.i, align 8
  %3376 = inttoptr i64 %3374 to i32*
  %3377 = load i32, i32* %3376, align 4
  %3378 = add i32 %3377, -1
  %3379 = icmp eq i32 %3377, 0
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %14, align 1
  %3381 = and i32 %3378, 255
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %21, align 1
  %3386 = xor i32 %3377, %3378
  %3387 = lshr i32 %3386, 4
  %3388 = trunc i32 %3387 to i8
  %3389 = and i8 %3388, 1
  store i8 %3389, i8* %27, align 1
  %3390 = icmp eq i32 %3378, 0
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %30, align 1
  %3392 = lshr i32 %3378, 31
  %3393 = trunc i32 %3392 to i8
  store i8 %3393, i8* %33, align 1
  %3394 = lshr i32 %3377, 31
  %3395 = xor i32 %3392, %3394
  %3396 = add nuw nsw i32 %3395, %3394
  %3397 = icmp eq i32 %3396, 2
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %39, align 1
  %3399 = icmp ne i8 %3393, 0
  %3400 = xor i1 %3399, %3397
  %.demorgan124 = or i1 %3390, %3400
  %.v125 = select i1 %.demorgan124, i64 10, i64 57
  %3401 = add i64 %3372, %.v125
  store i64 %3401, i64* %3, align 8
  br i1 %.demorgan124, label %block_401102, label %block_.L_401131

block_401102:                                     ; preds = %block_.L_4010f8
  %3402 = add i64 %3373, -4
  %3403 = add i64 %3401, 3
  store i64 %3403, i64* %PC.i, align 8
  %3404 = inttoptr i64 %3402 to i32*
  %3405 = load i32, i32* %3404, align 4
  %3406 = zext i32 %3405 to i64
  store i64 %3406, i64* %RAX.i1121, align 8
  %3407 = add i64 %3373, -8
  %3408 = add i64 %3401, 6
  store i64 %3408, i64* %PC.i, align 8
  %3409 = inttoptr i64 %3407 to i32*
  %3410 = load i32, i32* %3409, align 4
  %3411 = zext i32 %3410 to i64
  store i64 %3411, i64* %RCX.i1089, align 8
  %3412 = add i64 %3401, 9
  store i64 %3412, i64* %PC.i, align 8
  %3413 = load i32, i32* %3376, align 4
  %3414 = shl i32 %3413, 3
  %3415 = zext i32 %3414 to i64
  store i64 %3415, i64* %RDX.i1086, align 8
  %3416 = add i32 %3414, %3410
  %3417 = shl i32 %3416, 3
  %3418 = zext i32 %3417 to i64
  store i64 %3418, i64* %RCX.i1089, align 8
  %3419 = lshr i32 %3416, 28
  %3420 = and i32 %3419, 1
  %3421 = load i64, i64* %RAX.i1121, align 8
  %3422 = trunc i64 %3421 to i32
  %3423 = add i32 %3417, %3422
  %3424 = zext i32 %3423 to i64
  store i64 %3424, i64* %RAX.i1121, align 8
  %3425 = icmp ult i32 %3423, %3422
  %3426 = icmp ult i32 %3423, %3417
  %3427 = or i1 %3425, %3426
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %14, align 1
  %3429 = and i32 %3423, 255
  %3430 = tail call i32 @llvm.ctpop.i32(i32 %3429)
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  %3433 = xor i8 %3432, 1
  store i8 %3433, i8* %21, align 1
  %3434 = xor i64 %3418, %3421
  %3435 = trunc i64 %3434 to i32
  %3436 = xor i32 %3435, %3423
  %3437 = lshr i32 %3436, 4
  %3438 = trunc i32 %3437 to i8
  %3439 = and i8 %3438, 1
  store i8 %3439, i8* %27, align 1
  %3440 = icmp eq i32 %3423, 0
  %3441 = zext i1 %3440 to i8
  store i8 %3441, i8* %30, align 1
  %3442 = lshr i32 %3423, 31
  %3443 = trunc i32 %3442 to i8
  store i8 %3443, i8* %33, align 1
  %3444 = lshr i32 %3422, 31
  %3445 = xor i32 %3442, %3444
  %3446 = xor i32 %3442, %3420
  %3447 = add nuw nsw i32 %3445, %3446
  %3448 = icmp eq i32 %3447, 2
  %3449 = zext i1 %3448 to i8
  store i8 %3449, i8* %39, align 1
  %3450 = sext i32 %3423 to i64
  store i64 %3450, i64* %RSI.i1074, align 8
  %3451 = shl nsw i64 %3450, 2
  %3452 = add nsw i64 %3451, 6331040
  %3453 = add i64 %3401, 33
  store i64 %3453, i64* %PC.i, align 8
  %3454 = inttoptr i64 %3452 to i32*
  store i32 1, i32* %3454, align 4
  %3455 = load i64, i64* %RBP.i, align 8
  %3456 = add i64 %3455, -12
  %3457 = load i64, i64* %PC.i, align 8
  %3458 = add i64 %3457, 3
  store i64 %3458, i64* %PC.i, align 8
  %3459 = inttoptr i64 %3456 to i32*
  %3460 = load i32, i32* %3459, align 4
  %3461 = add i32 %3460, 1
  %3462 = zext i32 %3461 to i64
  store i64 %3462, i64* %RAX.i1121, align 8
  %3463 = icmp eq i32 %3460, -1
  %3464 = icmp eq i32 %3461, 0
  %3465 = or i1 %3463, %3464
  %3466 = zext i1 %3465 to i8
  store i8 %3466, i8* %14, align 1
  %3467 = and i32 %3461, 255
  %3468 = tail call i32 @llvm.ctpop.i32(i32 %3467)
  %3469 = trunc i32 %3468 to i8
  %3470 = and i8 %3469, 1
  %3471 = xor i8 %3470, 1
  store i8 %3471, i8* %21, align 1
  %3472 = xor i32 %3460, %3461
  %3473 = lshr i32 %3472, 4
  %3474 = trunc i32 %3473 to i8
  %3475 = and i8 %3474, 1
  store i8 %3475, i8* %27, align 1
  %3476 = icmp eq i32 %3461, 0
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %30, align 1
  %3478 = lshr i32 %3461, 31
  %3479 = trunc i32 %3478 to i8
  store i8 %3479, i8* %33, align 1
  %3480 = lshr i32 %3460, 31
  %3481 = xor i32 %3478, %3480
  %3482 = add nuw nsw i32 %3481, %3478
  %3483 = icmp eq i32 %3482, 2
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %39, align 1
  %3485 = add i64 %3457, 9
  store i64 %3485, i64* %PC.i, align 8
  store i32 %3461, i32* %3459, align 4
  %3486 = load i64, i64* %PC.i, align 8
  %3487 = add i64 %3486, -52
  store i64 %3487, i64* %3, align 8
  br label %block_.L_4010f8

block_.L_401131:                                  ; preds = %block_.L_4010f8
  %3488 = add i64 %3373, -8
  %3489 = add i64 %3401, 8
  store i64 %3489, i64* %PC.i, align 8
  %3490 = inttoptr i64 %3488 to i32*
  %3491 = load i32, i32* %3490, align 4
  %3492 = add i32 %3491, 1
  %3493 = zext i32 %3492 to i64
  store i64 %3493, i64* %RAX.i1121, align 8
  %3494 = icmp eq i32 %3491, -1
  %3495 = icmp eq i32 %3492, 0
  %3496 = or i1 %3494, %3495
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %14, align 1
  %3498 = and i32 %3492, 255
  %3499 = tail call i32 @llvm.ctpop.i32(i32 %3498)
  %3500 = trunc i32 %3499 to i8
  %3501 = and i8 %3500, 1
  %3502 = xor i8 %3501, 1
  store i8 %3502, i8* %21, align 1
  %3503 = xor i32 %3491, %3492
  %3504 = lshr i32 %3503, 4
  %3505 = trunc i32 %3504 to i8
  %3506 = and i8 %3505, 1
  store i8 %3506, i8* %27, align 1
  %3507 = icmp eq i32 %3492, 0
  %3508 = zext i1 %3507 to i8
  store i8 %3508, i8* %30, align 1
  %3509 = lshr i32 %3492, 31
  %3510 = trunc i32 %3509 to i8
  store i8 %3510, i8* %33, align 1
  %3511 = lshr i32 %3491, 31
  %3512 = xor i32 %3509, %3511
  %3513 = add nuw nsw i32 %3512, %3509
  %3514 = icmp eq i32 %3513, 2
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %39, align 1
  %3516 = add i64 %3401, 14
  store i64 %3516, i64* %PC.i, align 8
  store i32 %3492, i32* %3490, align 4
  %3517 = load i64, i64* %PC.i, align 8
  %3518 = add i64 %3517, -88
  store i64 %3518, i64* %3, align 8
  br label %block_.L_4010e7

block_.L_401144:                                  ; preds = %block_.L_4010e7
  %3519 = add i64 %3340, -4
  %3520 = add i64 %3368, 8
  store i64 %3520, i64* %PC.i, align 8
  %3521 = inttoptr i64 %3519 to i32*
  %3522 = load i32, i32* %3521, align 4
  %3523 = add i32 %3522, 1
  %3524 = zext i32 %3523 to i64
  store i64 %3524, i64* %RAX.i1121, align 8
  %3525 = icmp eq i32 %3522, -1
  %3526 = icmp eq i32 %3523, 0
  %3527 = or i1 %3525, %3526
  %3528 = zext i1 %3527 to i8
  store i8 %3528, i8* %14, align 1
  %3529 = and i32 %3523, 255
  %3530 = tail call i32 @llvm.ctpop.i32(i32 %3529)
  %3531 = trunc i32 %3530 to i8
  %3532 = and i8 %3531, 1
  %3533 = xor i8 %3532, 1
  store i8 %3533, i8* %21, align 1
  %3534 = xor i32 %3522, %3523
  %3535 = lshr i32 %3534, 4
  %3536 = trunc i32 %3535 to i8
  %3537 = and i8 %3536, 1
  store i8 %3537, i8* %27, align 1
  %3538 = icmp eq i32 %3523, 0
  %3539 = zext i1 %3538 to i8
  store i8 %3539, i8* %30, align 1
  %3540 = lshr i32 %3523, 31
  %3541 = trunc i32 %3540 to i8
  store i8 %3541, i8* %33, align 1
  %3542 = lshr i32 %3522, 31
  %3543 = xor i32 %3540, %3542
  %3544 = add nuw nsw i32 %3543, %3540
  %3545 = icmp eq i32 %3544, 2
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %39, align 1
  %3547 = add i64 %3368, 14
  store i64 %3547, i64* %PC.i, align 8
  store i32 %3523, i32* %3521, align 4
  %3548 = load i64, i64* %PC.i, align 8
  %3549 = add i64 %3548, -124
  store i64 %3549, i64* %3, align 8
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
  %3550 = add i64 %3307, -16
  %3551 = add i64 %3335, 75
  store i64 %3551, i64* %PC.i, align 8
  %3552 = inttoptr i64 %3550 to i32*
  store i32 73, i32* %3552, align 4
  %3553 = load i64, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %3554 = load i64, i64* %RBP.i, align 8
  %3555 = add i64 %3554, -16
  %3556 = add i64 %3553, 14
  store i64 %3556, i64* %PC.i, align 8
  %3557 = inttoptr i64 %3555 to i32*
  %3558 = load i32, i32* %3557, align 4
  %3559 = zext i32 %3558 to i64
  store i64 %3559, i64* %RSI.i1074, align 8
  %3560 = add i64 %3553, -3154
  %3561 = add i64 %3553, 19
  %3562 = load i64, i64* %6, align 8
  %3563 = add i64 %3562, -8
  %3564 = inttoptr i64 %3563 to i64*
  store i64 %3561, i64* %3564, align 8
  store i64 %3563, i64* %6, align 8
  store i64 %3560, i64* %3, align 8
  %call2_4011b0 = tail call %struct.Memory* @sub_400550.Fit(%struct.State* %0, i64 %3560, %struct.Memory* %2)
  %3565 = load i32, i32* %EAX.i1111, align 4
  %3566 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %14, align 1
  %3567 = and i32 %3565, 255
  %3568 = tail call i32 @llvm.ctpop.i32(i32 %3567)
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  %3571 = xor i8 %3570, 1
  store i8 %3571, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3572 = icmp eq i32 %3565, 0
  %3573 = zext i1 %3572 to i8
  store i8 %3573, i8* %30, align 1
  %3574 = lshr i32 %3565, 31
  %3575 = trunc i32 %3574 to i8
  store i8 %3575, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v126 = select i1 %3572, i64 31, i64 9
  %3576 = add i64 %3566, %.v126
  store i64 %3576, i64* %3, align 8
  br i1 %3572, label %block_.L_4011d4, label %block_4011be

block_4011be:                                     ; preds = %block_.L_401157
  store i64 0, i64* %RDI.i92, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3577 = load i64, i64* %RBP.i, align 8
  %3578 = add i64 %3577, -16
  %3579 = add i64 %3576, 5
  store i64 %3579, i64* %PC.i, align 8
  %3580 = inttoptr i64 %3578 to i32*
  %3581 = load i32, i32* %3580, align 4
  %3582 = zext i32 %3581 to i64
  store i64 %3582, i64* %RSI.i1074, align 8
  %3583 = add i64 %3576, -3038
  %3584 = add i64 %3576, 10
  %3585 = load i64, i64* %6, align 8
  %3586 = add i64 %3585, -8
  %3587 = inttoptr i64 %3586 to i64*
  store i64 %3584, i64* %3587, align 8
  store i64 %3586, i64* %6, align 8
  store i64 %3583, i64* %3, align 8
  %call2_4011c3 = tail call %struct.Memory* @sub_4005e0.Place(%struct.State* %0, i64 %3583, %struct.Memory* %call2_4011b0)
  %3588 = load i32, i32* %EAX.i1111, align 4
  %3589 = load i64, i64* %PC.i, align 8
  store i32 %3588, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %3590 = add i64 %3589, 32
  store i64 %3590, i64* %3, align 8
  br label %block_.L_4011e8

block_.L_4011d4:                                  ; preds = %block_.L_401157
  store i64 ptrtoint (%G__0x401344_type* @G__0x401344 to i64), i64* %RDI.i92, align 8
  %AL.i62 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i62, align 1
  %3591 = add i64 %3576, -3556
  %3592 = add i64 %3576, 17
  %3593 = load i64, i64* %6, align 8
  %3594 = add i64 %3593, -8
  %3595 = inttoptr i64 %3594 to i64*
  store i64 %3592, i64* %3595, align 8
  store i64 %3594, i64* %6, align 8
  store i64 %3591, i64* %3, align 8
  %3596 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011b0)
  %3597 = load i64, i64* %RBP.i, align 8
  %3598 = add i64 %3597, -20
  %3599 = load i32, i32* %EAX.i1111, align 4
  %3600 = load i64, i64* %PC.i, align 8
  %3601 = add i64 %3600, 3
  store i64 %3601, i64* %PC.i, align 8
  %3602 = inttoptr i64 %3598 to i32*
  store i32 %3599, i32* %3602, align 4
  %.pre45 = load i64, i64* %PC.i, align 8
  %.pre46 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  br label %block_.L_4011e8

block_.L_4011e8:                                  ; preds = %block_.L_4011d4, %block_4011be
  %3603 = phi i32 [ %.pre46, %block_.L_4011d4 ], [ %3588, %block_4011be ]
  %3604 = phi i64 [ %.pre45, %block_.L_4011d4 ], [ %3590, %block_4011be ]
  %MEMORY.45 = phi %struct.Memory* [ %3596, %block_.L_4011d4 ], [ %call2_4011c3, %block_4011be ]
  %3605 = zext i32 %3603 to i64
  store i64 %3605, i64* %RDI.i92, align 8
  %3606 = add i64 %3604, -2680
  %3607 = add i64 %3604, 12
  %3608 = load i64, i64* %6, align 8
  %3609 = add i64 %3608, -8
  %3610 = inttoptr i64 %3609 to i64*
  store i64 %3607, i64* %3610, align 8
  store i64 %3609, i64* %6, align 8
  store i64 %3606, i64* %3, align 8
  %call2_4011ef = tail call %struct.Memory* @sub_400770.Trial(%struct.State* %0, i64 %3606, %struct.Memory* %MEMORY.45)
  %3611 = load i32, i32* %EAX.i1111, align 4
  %3612 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %14, align 1
  %3613 = and i32 %3611, 255
  %3614 = tail call i32 @llvm.ctpop.i32(i32 %3613)
  %3615 = trunc i32 %3614 to i8
  %3616 = and i8 %3615, 1
  %3617 = xor i8 %3616, 1
  store i8 %3617, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3618 = icmp eq i32 %3611, 0
  %3619 = zext i1 %3618 to i8
  store i8 %3619, i8* %30, align 1
  %3620 = lshr i32 %3611, 31
  %3621 = trunc i32 %3620 to i8
  store i8 %3621, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v127 = select i1 %3618, i64 9, i64 34
  %3622 = add i64 %3612, %.v127
  store i64 %3622, i64* %3, align 8
  br i1 %3618, label %block_4011fd, label %block_.L_401216

block_4011fd:                                     ; preds = %block_.L_4011e8
  store i64 ptrtoint (%G__0x401356_type* @G__0x401356 to i64), i64* %RDI.i92, align 8
  %AL.i47 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i47, align 1
  %3623 = add i64 %3622, -3597
  %3624 = add i64 %3622, 17
  %3625 = load i64, i64* %6, align 8
  %3626 = add i64 %3625, -8
  %3627 = inttoptr i64 %3626 to i64*
  store i64 %3624, i64* %3627, align 8
  store i64 %3626, i64* %6, align 8
  store i64 %3623, i64* %3, align 8
  %3628 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011ef)
  %3629 = load i64, i64* %RBP.i, align 8
  %3630 = add i64 %3629, -24
  %3631 = load i32, i32* %EAX.i1111, align 4
  %3632 = load i64, i64* %PC.i, align 8
  %3633 = add i64 %3632, 3
  store i64 %3633, i64* %PC.i, align 8
  %3634 = inttoptr i64 %3630 to i32*
  store i32 %3631, i32* %3634, align 4
  %3635 = load i64, i64* %PC.i, align 8
  %3636 = add i64 %3635, 47
  br label %block_.L_401240

block_.L_401216:                                  ; preds = %block_.L_4011e8
  %3637 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %3638 = add i32 %3637, -2005
  %3639 = icmp ult i32 %3637, 2005
  %3640 = zext i1 %3639 to i8
  store i8 %3640, i8* %14, align 1
  %3641 = and i32 %3638, 255
  %3642 = tail call i32 @llvm.ctpop.i32(i32 %3641)
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  %3645 = xor i8 %3644, 1
  store i8 %3645, i8* %21, align 1
  %3646 = xor i32 %3637, 16
  %3647 = xor i32 %3646, %3638
  %3648 = lshr i32 %3647, 4
  %3649 = trunc i32 %3648 to i8
  %3650 = and i8 %3649, 1
  store i8 %3650, i8* %27, align 1
  %3651 = icmp eq i32 %3638, 0
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %30, align 1
  %3653 = lshr i32 %3638, 31
  %3654 = trunc i32 %3653 to i8
  store i8 %3654, i8* %33, align 1
  %3655 = lshr i32 %3637, 31
  %3656 = xor i32 %3653, %3655
  %3657 = add nuw nsw i32 %3656, %3655
  %3658 = icmp eq i32 %3657, 2
  %3659 = zext i1 %3658 to i8
  store i8 %3659, i8* %39, align 1
  %.v128 = select i1 %3651, i64 37, i64 17
  %3660 = add i64 %3622, %.v128
  store i64 %3660, i64* %3, align 8
  br i1 %3651, label %block_.L_401216.block_.L_40123b_crit_edge, label %block_401227

block_.L_401216.block_.L_40123b_crit_edge:        ; preds = %block_.L_401216
  %.pre51 = bitcast %union.anon* %43 to i8*
  br label %block_.L_40123b

block_401227:                                     ; preds = %block_.L_401216
  store i64 ptrtoint (%G__0x401369_type* @G__0x401369 to i64), i64* %RDI.i92, align 8
  %AL.i34 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i34, align 1
  %3661 = add i64 %3660, -3639
  %3662 = add i64 %3660, 17
  %3663 = load i64, i64* %6, align 8
  %3664 = add i64 %3663, -8
  %3665 = inttoptr i64 %3664 to i64*
  store i64 %3662, i64* %3665, align 8
  store i64 %3664, i64* %6, align 8
  store i64 %3661, i64* %3, align 8
  %3666 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011ef)
  %3667 = load i64, i64* %RBP.i, align 8
  %3668 = add i64 %3667, -28
  %3669 = load i32, i32* %EAX.i1111, align 4
  %3670 = load i64, i64* %PC.i, align 8
  %3671 = add i64 %3670, 3
  store i64 %3671, i64* %PC.i, align 8
  %3672 = inttoptr i64 %3668 to i32*
  store i32 %3669, i32* %3672, align 4
  %.pre47 = load i64, i64* %PC.i, align 8
  br label %block_.L_40123b

block_.L_40123b:                                  ; preds = %block_.L_401216.block_.L_40123b_crit_edge, %block_401227
  %.pre49.pre-phi = phi i8* [ %.pre51, %block_.L_401216.block_.L_40123b_crit_edge ], [ %AL.i34, %block_401227 ]
  %3673 = phi i64 [ %3660, %block_.L_401216.block_.L_40123b_crit_edge ], [ %.pre47, %block_401227 ]
  %MEMORY.46 = phi %struct.Memory* [ %call2_4011ef, %block_.L_401216.block_.L_40123b_crit_edge ], [ %3666, %block_401227 ]
  %3674 = add i64 %3673, 5
  br label %block_.L_401240

block_.L_401240:                                  ; preds = %block_.L_40123b, %block_4011fd
  %.sink = phi i64 [ %3674, %block_.L_40123b ], [ %3636, %block_4011fd ]
  %AL.i21.pre-phi = phi i8* [ %.pre49.pre-phi, %block_.L_40123b ], [ %AL.i47, %block_4011fd ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.46, %block_.L_40123b ], [ %3628, %block_4011fd ]
  store i64 ptrtoint (%G__0x40137c_type* @G__0x40137c to i64), i64* %RDI.i92, align 8
  %3675 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %3676 = zext i32 %3675 to i64
  store i64 %3676, i64* %RSI.i1074, align 8
  store i8 0, i8* %AL.i21.pre-phi, align 1
  %3677 = add i64 %.sink, -3664
  %3678 = add i64 %.sink, 24
  %3679 = load i64, i64* %6, align 8
  %3680 = add i64 %3679, -8
  %3681 = inttoptr i64 %3680 to i64*
  store i64 %3678, i64* %3681, align 8
  store i64 %3680, i64* %6, align 8
  store i64 %3677, i64* %3, align 8
  %3682 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.47)
  %3683 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x40137c_type* @G__0x40137c to i64), i64* %RDI.i92, align 8
  %3684 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %3685 = zext i32 %3684 to i64
  store i64 %3685, i64* %RSI.i1074, align 8
  %3686 = load i64, i64* %RBP.i, align 8
  %3687 = add i64 %3686, -32
  %3688 = load i32, i32* %EAX.i1111, align 4
  %3689 = add i64 %3683, 20
  store i64 %3689, i64* %PC.i, align 8
  %3690 = inttoptr i64 %3687 to i32*
  store i32 %3688, i32* %3690, align 4
  %3691 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i21.pre-phi, align 1
  %3692 = add i64 %3691, -3708
  %3693 = add i64 %3691, 7
  %3694 = load i64, i64* %6, align 8
  %3695 = add i64 %3694, -8
  %3696 = inttoptr i64 %3695 to i64*
  store i64 %3693, i64* %3696, align 8
  store i64 %3695, i64* %6, align 8
  store i64 %3692, i64* %3, align 8
  %3697 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %3682)
  %3698 = load i64, i64* %RBP.i, align 8
  %3699 = add i64 %3698, -36
  %3700 = load i32, i32* %EAX.i1111, align 4
  %3701 = load i64, i64* %PC.i, align 8
  %3702 = add i64 %3701, 3
  store i64 %3702, i64* %PC.i, align 8
  %3703 = inttoptr i64 %3699 to i32*
  store i32 %3700, i32* %3703, align 4
  %3704 = load i64, i64* %RSP.i8, align 8
  %3705 = load i64, i64* %PC.i, align 8
  %3706 = add i64 %3704, 48
  store i64 %3706, i64* %RSP.i8, align 8
  %3707 = icmp ugt i64 %3704, -49
  %3708 = zext i1 %3707 to i8
  store i8 %3708, i8* %14, align 1
  %3709 = trunc i64 %3706 to i32
  %3710 = and i32 %3709, 255
  %3711 = tail call i32 @llvm.ctpop.i32(i32 %3710)
  %3712 = trunc i32 %3711 to i8
  %3713 = and i8 %3712, 1
  %3714 = xor i8 %3713, 1
  store i8 %3714, i8* %21, align 1
  %3715 = xor i64 %3704, 16
  %3716 = xor i64 %3715, %3706
  %3717 = lshr i64 %3716, 4
  %3718 = trunc i64 %3717 to i8
  %3719 = and i8 %3718, 1
  store i8 %3719, i8* %27, align 1
  %3720 = icmp eq i64 %3706, 0
  %3721 = zext i1 %3720 to i8
  store i8 %3721, i8* %30, align 1
  %3722 = lshr i64 %3706, 63
  %3723 = trunc i64 %3722 to i8
  store i8 %3723, i8* %33, align 1
  %3724 = lshr i64 %3704, 63
  %3725 = xor i64 %3722, %3724
  %3726 = add nuw nsw i64 %3725, %3722
  %3727 = icmp eq i64 %3726, 2
  %3728 = zext i1 %3727 to i8
  store i8 %3728, i8* %39, align 1
  %3729 = add i64 %3705, 5
  store i64 %3729, i64* %PC.i, align 8
  %3730 = add i64 %3704, 56
  %3731 = inttoptr i64 %3706 to i64*
  %3732 = load i64, i64* %3731, align 8
  store i64 %3732, i64* %RBP.i, align 8
  store i64 %3730, i64* %6, align 8
  %3733 = add i64 %3705, 6
  store i64 %3733, i64* %PC.i, align 8
  %3734 = inttoptr i64 %3730 to i64*
  %3735 = load i64, i64* %3734, align 8
  store i64 %3735, i64* %3, align 8
  %3736 = add i64 %3704, 64
  store i64 %3736, i64* %6, align 8
  ret %struct.Memory* %3697
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4008e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4008f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400959(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400908(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4009ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40097f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4009e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40096e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b0a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400abb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400aaa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ba8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bf7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400be6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cf7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e20(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dd1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ebe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e6f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ed1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f6f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400efc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ffa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40100d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401098(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401049(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401038(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401136(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401149(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
