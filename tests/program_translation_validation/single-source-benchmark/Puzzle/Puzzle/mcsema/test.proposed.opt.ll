; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x603a94_type = type <{ [4 x i8] }>
%G_0x603aa0___rsi_4__type = type <{ [4 x i8] }>
%G_0x6042a0___rsi_4__type = type <{ [4 x i8] }>
%G_0x604aa0___rsi_4__type = type <{ [4 x i8] }>
%G_0x6052a0___rsi_4__type = type <{ [4 x i8] }>
%G_0x605aa0___rsi_4__type = type <{ [4 x i8] }>
%G_0x6062a0___rsi_4__type = type <{ [4 x i8] }>
%G_0x606aa0___rsi_4__type = type <{ [4 x i8] }>
%G_0x6072a0___rsi_4__type = type <{ [4 x i8] }>
%G_0x607aa0___rsi_4__type = type <{ [4 x i8] }>
%G_0x6082a0___rsi_4__type = type <{ [4 x i8] }>
%G_0x608aa0___rsi_4__type = type <{ [4 x i8] }>
%G_0x6092a0___rsi_4__type = type <{ [4 x i8] }>
%G_0x609aa0___rsi_4__type = type <{ [4 x i8] }>
%G_0x60df50___rax_4__type = type <{ [4 x i8] }>
%G_0x60df50___rsi_4__type = type <{ [4 x i8] }>
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
@G_0x603aa0___rsi_4_ = global %G_0x603aa0___rsi_4__type zeroinitializer
@G_0x6042a0___rsi_4_ = global %G_0x6042a0___rsi_4__type zeroinitializer
@G_0x604aa0___rsi_4_ = global %G_0x604aa0___rsi_4__type zeroinitializer
@G_0x6052a0___rsi_4_ = global %G_0x6052a0___rsi_4__type zeroinitializer
@G_0x605aa0___rsi_4_ = global %G_0x605aa0___rsi_4__type zeroinitializer
@G_0x6062a0___rsi_4_ = global %G_0x6062a0___rsi_4__type zeroinitializer
@G_0x606aa0___rsi_4_ = global %G_0x606aa0___rsi_4__type zeroinitializer
@G_0x6072a0___rsi_4_ = global %G_0x6072a0___rsi_4__type zeroinitializer
@G_0x607aa0___rsi_4_ = global %G_0x607aa0___rsi_4__type zeroinitializer
@G_0x6082a0___rsi_4_ = global %G_0x6082a0___rsi_4__type zeroinitializer
@G_0x608aa0___rsi_4_ = global %G_0x608aa0___rsi_4__type zeroinitializer
@G_0x6092a0___rsi_4_ = global %G_0x6092a0___rsi_4__type zeroinitializer
@G_0x609aa0___rsi_4_ = global %G_0x609aa0___rsi_4__type zeroinitializer
@G_0x60df50___rax_4_ = global %G_0x60df50___rax_4__type zeroinitializer
@G_0x60df50___rsi_4_ = global %G_0x60df50___rsi_4__type zeroinitializer
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
  %79 = add i64 %78, ptrtoint (%G_0x60df50___rax_4__type* @G_0x60df50___rax_4_ to i64)
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
  %117 = phi i64 [ %355, %block_.L_4008ee ], [ %.pre1, %block_.L_400879 ]
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
  %150 = phi i64 [ %325, %block_.L_4008db ], [ %.pre2, %block_40088a ]
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
  %183 = phi i64 [ %295, %block_4008ac ], [ %.pre3, %block_40089b ]
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
  %232 = add i32 %228, %216
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RAX.i1121, align 8
  %234 = icmp ult i32 %232, %216
  %235 = icmp ult i32 %232, %228
  %236 = or i1 %234, %235
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %14, align 1
  %238 = and i32 %232, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %21, align 1
  %243 = xor i64 %229, %217
  %244 = trunc i64 %243 to i32
  %245 = xor i32 %244, %232
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %27, align 1
  %249 = icmp eq i32 %232, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %30, align 1
  %251 = lshr i32 %232, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %33, align 1
  %253 = lshr i32 %216, 31
  %254 = xor i32 %251, %253
  %255 = xor i32 %251, %231
  %256 = add nuw nsw i32 %254, %255
  %257 = icmp eq i32 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %39, align 1
  %259 = sext i32 %232 to i64
  store i64 %259, i64* %RSI.i1074, align 8
  %260 = shl nsw i64 %259, 2
  %261 = add i64 %260, ptrtoint (%G_0x60df50___rsi_4__type* @G_0x60df50___rsi_4_ to i64)
  %262 = add i64 %212, 33
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  store i32 0, i32* %263, align 4
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -12
  %266 = load i64, i64* %3, align 8
  %267 = add i64 %266, 3
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %269, 1
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX.i1121, align 8
  %272 = icmp eq i32 %269, -1
  %273 = icmp eq i32 %270, 0
  %274 = or i1 %272, %273
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %14, align 1
  %276 = and i32 %270, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %21, align 1
  %281 = xor i32 %269, %270
  %282 = lshr i32 %281, 4
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %27, align 1
  %285 = zext i1 %273 to i8
  store i8 %285, i8* %30, align 1
  %286 = lshr i32 %270, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %33, align 1
  %288 = lshr i32 %269, 31
  %289 = xor i32 %286, %288
  %290 = add nuw nsw i32 %289, %286
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %39, align 1
  %293 = add i64 %266, 9
  store i64 %293, i64* %3, align 8
  store i32 %270, i32* %268, align 4
  %294 = load i64, i64* %3, align 8
  %295 = add i64 %294, -52
  store i64 %295, i64* %3, align 8
  br label %block_.L_4008a2

block_.L_4008db:                                  ; preds = %block_.L_4008a2
  %296 = add i64 %184, -8
  %297 = add i64 %212, 8
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = add i32 %299, 1
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RAX.i1121, align 8
  %302 = icmp eq i32 %299, -1
  %303 = icmp eq i32 %300, 0
  %304 = or i1 %302, %303
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %14, align 1
  %306 = and i32 %300, 255
  %307 = tail call i32 @llvm.ctpop.i32(i32 %306)
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  store i8 %310, i8* %21, align 1
  %311 = xor i32 %299, %300
  %312 = lshr i32 %311, 4
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %27, align 1
  %315 = zext i1 %303 to i8
  store i8 %315, i8* %30, align 1
  %316 = lshr i32 %300, 31
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %33, align 1
  %318 = lshr i32 %299, 31
  %319 = xor i32 %316, %318
  %320 = add nuw nsw i32 %319, %316
  %321 = icmp eq i32 %320, 2
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %39, align 1
  %323 = add i64 %212, 14
  store i64 %323, i64* %3, align 8
  store i32 %300, i32* %298, align 4
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, -88
  store i64 %325, i64* %3, align 8
  br label %block_.L_400891

block_.L_4008ee:                                  ; preds = %block_.L_400891
  %326 = add i64 %151, -4
  %327 = add i64 %179, 8
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = add i32 %329, 1
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX.i1121, align 8
  %332 = icmp eq i32 %329, -1
  %333 = icmp eq i32 %330, 0
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %14, align 1
  %336 = and i32 %330, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = xor i32 %329, %330
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %27, align 1
  %345 = zext i1 %333 to i8
  store i8 %345, i8* %30, align 1
  %346 = lshr i32 %330, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %33, align 1
  %348 = lshr i32 %329, 31
  %349 = xor i32 %346, %348
  %350 = add nuw nsw i32 %349, %346
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %39, align 1
  %353 = add i64 %179, 14
  store i64 %353, i64* %3, align 8
  store i32 %330, i32* %328, align 4
  %354 = load i64, i64* %3, align 8
  %355 = add i64 %354, -124
  store i64 %355, i64* %3, align 8
  br label %block_.L_400880

block_.L_400901:                                  ; preds = %block_.L_400880
  %356 = add i64 %146, 7
  store i64 %356, i64* %3, align 8
  store i32 0, i32* %121, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400908

block_.L_400908:                                  ; preds = %block_.L_400954, %block_.L_400901
  %357 = phi i64 [ %521, %block_.L_400954 ], [ %.pre4, %block_.L_400901 ]
  %358 = load i64, i64* %RBP.i, align 8
  %359 = add i64 %358, -4
  %360 = add i64 %357, 4
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i32*
  %362 = load i32, i32* %361, align 4
  %363 = add i32 %362, -12
  %364 = icmp ult i32 %362, 12
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %14, align 1
  %366 = and i32 %363, 255
  %367 = tail call i32 @llvm.ctpop.i32(i32 %366)
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  store i8 %370, i8* %21, align 1
  %371 = xor i32 %362, %363
  %372 = lshr i32 %371, 4
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %27, align 1
  %375 = icmp eq i32 %363, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %30, align 1
  %377 = lshr i32 %363, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %33, align 1
  %379 = lshr i32 %362, 31
  %380 = xor i32 %377, %379
  %381 = add nuw nsw i32 %380, %379
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %39, align 1
  %384 = icmp ne i8 %378, 0
  %385 = xor i1 %384, %382
  %.demorgan59 = or i1 %375, %385
  %.v60 = select i1 %.demorgan59, i64 10, i64 95
  %386 = add i64 %357, %.v60
  store i64 %386, i64* %3, align 8
  br i1 %.demorgan59, label %block_400912, label %block_.L_400967

block_400912:                                     ; preds = %block_.L_400908
  %387 = add i64 %358, -16
  %388 = add i64 %386, 7
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  store i32 0, i32* %389, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400919

block_.L_400919:                                  ; preds = %block_400926, %block_400912
  %390 = phi i64 [ %491, %block_400926 ], [ %.pre5, %block_400912 ]
  %391 = load i64, i64* %RBP.i, align 8
  %392 = add i64 %391, -16
  %393 = add i64 %390, 7
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = add i32 %395, -511
  %397 = icmp ult i32 %395, 511
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %14, align 1
  %399 = and i32 %396, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %21, align 1
  %404 = xor i32 %395, 16
  %405 = xor i32 %404, %396
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %27, align 1
  %409 = icmp eq i32 %396, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %30, align 1
  %411 = lshr i32 %396, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %33, align 1
  %413 = lshr i32 %395, 31
  %414 = xor i32 %411, %413
  %415 = add nuw nsw i32 %414, %413
  %416 = icmp eq i32 %415, 2
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %39, align 1
  %418 = icmp ne i8 %412, 0
  %419 = xor i1 %418, %416
  %.demorgan61 = or i1 %409, %419
  %.v62 = select i1 %.demorgan61, i64 13, i64 59
  %420 = add i64 %390, %.v62
  store i64 %420, i64* %3, align 8
  br i1 %.demorgan61, label %block_400926, label %block_.L_400954

block_400926:                                     ; preds = %block_.L_400919
  store i64 ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64), i64* %RAX.i1121, align 8
  %421 = add i64 %391, -4
  %422 = add i64 %420, 14
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = sext i32 %424 to i64
  %426 = shl nsw i64 %425, 11
  store i64 %426, i64* %RCX.i1089, align 8
  %427 = lshr i64 %425, 52
  %428 = and i64 %427, 1
  %429 = add i64 %426, ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64)
  store i64 %429, i64* %RAX.i1121, align 8
  %430 = icmp ult i64 %429, ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64)
  %431 = icmp ult i64 %429, %426
  %432 = or i1 %430, %431
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %14, align 1
  %434 = trunc i64 %429 to i32
  %435 = and i32 %434, 248
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %21, align 1
  %440 = xor i64 %429, ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64)
  %441 = lshr i64 %440, 4
  %442 = trunc i64 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %27, align 1
  %444 = icmp eq i64 %429, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %30, align 1
  %446 = lshr i64 %429, 63
  %447 = trunc i64 %446 to i8
  store i8 %447, i8* %33, align 1
  %448 = xor i64 %446, lshr (i64 ptrtoint (%G__0x603aa0_type* @G__0x603aa0 to i64), i64 63)
  %449 = xor i64 %446, %428
  %450 = add nuw nsw i64 %448, %449
  %451 = icmp eq i64 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %39, align 1
  %453 = add i64 %420, 25
  store i64 %453, i64* %3, align 8
  %454 = load i32, i32* %394, align 4
  %455 = sext i32 %454 to i64
  store i64 %455, i64* %RCX.i1089, align 8
  %456 = shl nsw i64 %455, 2
  %457 = add i64 %456, %429
  %458 = add i64 %420, 32
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i32*
  store i32 0, i32* %459, align 4
  %460 = load i64, i64* %RBP.i, align 8
  %461 = add i64 %460, -16
  %462 = load i64, i64* %3, align 8
  %463 = add i64 %462, 3
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %461 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = add i32 %465, 1
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RAX.i1121, align 8
  %468 = icmp eq i32 %465, -1
  %469 = icmp eq i32 %466, 0
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %14, align 1
  %472 = and i32 %466, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %21, align 1
  %477 = xor i32 %465, %466
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %27, align 1
  %481 = zext i1 %469 to i8
  store i8 %481, i8* %30, align 1
  %482 = lshr i32 %466, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %33, align 1
  %484 = lshr i32 %465, 31
  %485 = xor i32 %482, %484
  %486 = add nuw nsw i32 %485, %482
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %39, align 1
  %489 = add i64 %462, 9
  store i64 %489, i64* %3, align 8
  store i32 %466, i32* %464, align 4
  %490 = load i64, i64* %3, align 8
  %491 = add i64 %490, -54
  store i64 %491, i64* %3, align 8
  br label %block_.L_400919

block_.L_400954:                                  ; preds = %block_.L_400919
  %492 = add i64 %391, -4
  %493 = add i64 %420, 8
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, 1
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX.i1121, align 8
  %498 = icmp eq i32 %495, -1
  %499 = icmp eq i32 %496, 0
  %500 = or i1 %498, %499
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = and i32 %496, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %495, %496
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %27, align 1
  %511 = zext i1 %499 to i8
  store i8 %511, i8* %30, align 1
  %512 = lshr i32 %496, 31
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %33, align 1
  %514 = lshr i32 %495, 31
  %515 = xor i32 %512, %514
  %516 = add nuw nsw i32 %515, %512
  %517 = icmp eq i32 %516, 2
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %39, align 1
  %519 = add i64 %420, 14
  store i64 %519, i64* %3, align 8
  store i32 %496, i32* %494, align 4
  %520 = load i64, i64* %3, align 8
  %521 = add i64 %520, -90
  store i64 %521, i64* %3, align 8
  br label %block_.L_400908

block_.L_400967:                                  ; preds = %block_.L_400908
  %522 = add i64 %386, 7
  store i64 %522, i64* %3, align 8
  store i32 0, i32* %361, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_40096e

block_.L_40096e:                                  ; preds = %block_.L_4009dc, %block_.L_400967
  %523 = phi i64 [ %750, %block_.L_4009dc ], [ %.pre6, %block_.L_400967 ]
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -4
  %526 = add i64 %523, 4
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = add i32 %528, -3
  %530 = icmp ult i32 %528, 3
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %14, align 1
  %532 = and i32 %529, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %21, align 1
  %537 = xor i32 %528, %529
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %27, align 1
  %541 = icmp eq i32 %529, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %30, align 1
  %543 = lshr i32 %529, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %33, align 1
  %545 = lshr i32 %528, 31
  %546 = xor i32 %543, %545
  %547 = add nuw nsw i32 %546, %545
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %39, align 1
  %550 = icmp ne i8 %544, 0
  %551 = xor i1 %550, %548
  %.demorgan63 = or i1 %541, %551
  %.v64 = select i1 %.demorgan63, i64 10, i64 129
  %552 = add i64 %523, %.v64
  store i64 %552, i64* %3, align 8
  br i1 %.demorgan63, label %block_400978, label %block_.L_4009ef

block_400978:                                     ; preds = %block_.L_40096e
  %553 = add i64 %524, -8
  %554 = add i64 %552, 7
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  store i32 0, i32* %555, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_40097f

block_.L_40097f:                                  ; preds = %block_.L_4009c9, %block_400978
  %556 = phi i64 [ %720, %block_.L_4009c9 ], [ %.pre7, %block_400978 ]
  %557 = load i64, i64* %RBP.i, align 8
  %558 = add i64 %557, -8
  %559 = add i64 %556, 4
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = add i32 %561, -1
  %563 = icmp eq i32 %561, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %14, align 1
  %565 = and i32 %562, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %21, align 1
  %570 = xor i32 %561, %562
  %571 = lshr i32 %570, 4
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  store i8 %573, i8* %27, align 1
  %574 = icmp eq i32 %562, 0
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %30, align 1
  %576 = lshr i32 %562, 31
  %577 = trunc i32 %576 to i8
  store i8 %577, i8* %33, align 1
  %578 = lshr i32 %561, 31
  %579 = xor i32 %576, %578
  %580 = add nuw nsw i32 %579, %578
  %581 = icmp eq i32 %580, 2
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %39, align 1
  %583 = icmp ne i8 %577, 0
  %584 = xor i1 %583, %581
  %.demorgan65 = or i1 %574, %584
  %.v66 = select i1 %.demorgan65, i64 10, i64 93
  %585 = add i64 %556, %.v66
  store i64 %585, i64* %3, align 8
  br i1 %.demorgan65, label %block_400989, label %block_.L_4009dc

block_400989:                                     ; preds = %block_.L_40097f
  %586 = add i64 %557, -12
  %587 = add i64 %585, 7
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  store i32 0, i32* %588, align 4
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_400990

block_.L_400990:                                  ; preds = %block_40099a, %block_400989
  %589 = phi i64 [ %690, %block_40099a ], [ %.pre8, %block_400989 ]
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -12
  %592 = add i64 %589, 4
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  store i8 0, i8* %14, align 1
  %595 = and i32 %594, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %600 = icmp eq i32 %594, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %30, align 1
  %602 = lshr i32 %594, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %604 = xor i1 %600, true
  %605 = icmp eq i8 %603, 0
  %606 = and i1 %605, %604
  %.v67 = select i1 %606, i64 57, i64 10
  %607 = add i64 %589, %.v67
  store i64 %607, i64* %3, align 8
  br i1 %606, label %block_.L_4009c9, label %block_40099a

block_40099a:                                     ; preds = %block_.L_400990
  %608 = add i64 %590, -4
  %609 = add i64 %607, 3
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX.i1121, align 8
  %613 = add i64 %590, -8
  %614 = add i64 %607, 6
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RCX.i1089, align 8
  %618 = add i64 %607, 9
  store i64 %618, i64* %3, align 8
  %619 = load i32, i32* %593, align 4
  %620 = shl i32 %619, 3
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RDX.i1086, align 8
  %622 = add i32 %620, %616
  %623 = shl i32 %622, 3
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RCX.i1089, align 8
  %625 = lshr i32 %622, 28
  %626 = and i32 %625, 1
  %627 = add i32 %623, %611
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RAX.i1121, align 8
  %629 = icmp ult i32 %627, %611
  %630 = icmp ult i32 %627, %623
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %14, align 1
  %633 = and i32 %627, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %21, align 1
  %638 = xor i64 %624, %612
  %639 = trunc i64 %638 to i32
  %640 = xor i32 %639, %627
  %641 = lshr i32 %640, 4
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  store i8 %643, i8* %27, align 1
  %644 = icmp eq i32 %627, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %30, align 1
  %646 = lshr i32 %627, 31
  %647 = trunc i32 %646 to i8
  store i8 %647, i8* %33, align 1
  %648 = lshr i32 %611, 31
  %649 = xor i32 %646, %648
  %650 = xor i32 %646, %626
  %651 = add nuw nsw i32 %649, %650
  %652 = icmp eq i32 %651, 2
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %39, align 1
  %654 = sext i32 %627 to i64
  store i64 %654, i64* %RSI.i1074, align 8
  %655 = shl nsw i64 %654, 2
  %656 = add i64 %655, ptrtoint (%G_0x603aa0___rsi_4__type* @G_0x603aa0___rsi_4_ to i64)
  %657 = add i64 %607, 33
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  store i32 1, i32* %658, align 4
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -12
  %661 = load i64, i64* %3, align 8
  %662 = add i64 %661, 3
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %660 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = add i32 %664, 1
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RAX.i1121, align 8
  %667 = icmp eq i32 %664, -1
  %668 = icmp eq i32 %665, 0
  %669 = or i1 %667, %668
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %14, align 1
  %671 = and i32 %665, 255
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %21, align 1
  %676 = xor i32 %664, %665
  %677 = lshr i32 %676, 4
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  store i8 %679, i8* %27, align 1
  %680 = zext i1 %668 to i8
  store i8 %680, i8* %30, align 1
  %681 = lshr i32 %665, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %33, align 1
  %683 = lshr i32 %664, 31
  %684 = xor i32 %681, %683
  %685 = add nuw nsw i32 %684, %681
  %686 = icmp eq i32 %685, 2
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %39, align 1
  %688 = add i64 %661, 9
  store i64 %688, i64* %3, align 8
  store i32 %665, i32* %663, align 4
  %689 = load i64, i64* %3, align 8
  %690 = add i64 %689, -52
  store i64 %690, i64* %3, align 8
  br label %block_.L_400990

block_.L_4009c9:                                  ; preds = %block_.L_400990
  %691 = add i64 %590, -8
  %692 = add i64 %607, 8
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = add i32 %694, 1
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RAX.i1121, align 8
  %697 = icmp eq i32 %694, -1
  %698 = icmp eq i32 %695, 0
  %699 = or i1 %697, %698
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %14, align 1
  %701 = and i32 %695, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %21, align 1
  %706 = xor i32 %694, %695
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %27, align 1
  %710 = zext i1 %698 to i8
  store i8 %710, i8* %30, align 1
  %711 = lshr i32 %695, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %33, align 1
  %713 = lshr i32 %694, 31
  %714 = xor i32 %711, %713
  %715 = add nuw nsw i32 %714, %711
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %39, align 1
  %718 = add i64 %607, 14
  store i64 %718, i64* %3, align 8
  store i32 %695, i32* %693, align 4
  %719 = load i64, i64* %3, align 8
  %720 = add i64 %719, -88
  store i64 %720, i64* %3, align 8
  br label %block_.L_40097f

block_.L_4009dc:                                  ; preds = %block_.L_40097f
  %721 = add i64 %557, -4
  %722 = add i64 %585, 8
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = add i32 %724, 1
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RAX.i1121, align 8
  %727 = icmp eq i32 %724, -1
  %728 = icmp eq i32 %725, 0
  %729 = or i1 %727, %728
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %14, align 1
  %731 = and i32 %725, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  %736 = xor i32 %724, %725
  %737 = lshr i32 %736, 4
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %27, align 1
  %740 = zext i1 %728 to i8
  store i8 %740, i8* %30, align 1
  %741 = lshr i32 %725, 31
  %742 = trunc i32 %741 to i8
  store i8 %742, i8* %33, align 1
  %743 = lshr i32 %724, 31
  %744 = xor i32 %741, %743
  %745 = add nuw nsw i32 %744, %741
  %746 = icmp eq i32 %745, 2
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %39, align 1
  %748 = add i64 %585, 14
  store i64 %748, i64* %3, align 8
  store i32 %725, i32* %723, align 4
  %749 = load i64, i64* %3, align 8
  %750 = add i64 %749, -124
  store i64 %750, i64* %3, align 8
  br label %block_.L_40096e

block_.L_4009ef:                                  ; preds = %block_.L_40096e
  store i32 0, i32* bitcast (%G_0x6191f0_type* @G_0x6191f0 to i32*), align 8
  store i32 11, i32* bitcast (%G_0x610250_type* @G_0x610250 to i32*), align 8
  %751 = add i64 %552, 29
  store i64 %751, i64* %3, align 8
  store i32 0, i32* %527, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_400a0c

block_.L_400a0c:                                  ; preds = %block_.L_400a7a, %block_.L_4009ef
  %752 = phi i64 [ %979, %block_.L_400a7a ], [ %.pre9, %block_.L_4009ef ]
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -4
  %755 = add i64 %752, 4
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = add i32 %757, -1
  %759 = icmp eq i32 %757, 0
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %14, align 1
  %761 = and i32 %758, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %21, align 1
  %766 = xor i32 %757, %758
  %767 = lshr i32 %766, 4
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  store i8 %769, i8* %27, align 1
  %770 = icmp eq i32 %758, 0
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %30, align 1
  %772 = lshr i32 %758, 31
  %773 = trunc i32 %772 to i8
  store i8 %773, i8* %33, align 1
  %774 = lshr i32 %757, 31
  %775 = xor i32 %772, %774
  %776 = add nuw nsw i32 %775, %774
  %777 = icmp eq i32 %776, 2
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %39, align 1
  %779 = icmp ne i8 %773, 0
  %780 = xor i1 %779, %777
  %.demorgan68 = or i1 %770, %780
  %.v69 = select i1 %.demorgan68, i64 10, i64 129
  %781 = add i64 %752, %.v69
  store i64 %781, i64* %3, align 8
  br i1 %.demorgan68, label %block_400a16, label %block_.L_400a8d

block_400a16:                                     ; preds = %block_.L_400a0c
  %782 = add i64 %753, -8
  %783 = add i64 %781, 7
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  store i32 0, i32* %784, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_400a1d

block_.L_400a1d:                                  ; preds = %block_.L_400a67, %block_400a16
  %785 = phi i64 [ %949, %block_.L_400a67 ], [ %.pre10, %block_400a16 ]
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -8
  %788 = add i64 %785, 4
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  store i8 0, i8* %14, align 1
  %791 = and i32 %790, 255
  %792 = tail call i32 @llvm.ctpop.i32(i32 %791)
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  store i8 %795, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %796 = icmp eq i32 %790, 0
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %30, align 1
  %798 = lshr i32 %790, 31
  %799 = trunc i32 %798 to i8
  store i8 %799, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %800 = xor i1 %796, true
  %801 = icmp eq i8 %799, 0
  %802 = and i1 %801, %800
  %.v70 = select i1 %802, i64 93, i64 10
  %803 = add i64 %785, %.v70
  store i64 %803, i64* %3, align 8
  br i1 %802, label %block_.L_400a7a, label %block_400a27

block_400a27:                                     ; preds = %block_.L_400a1d
  %804 = add i64 %786, -12
  %805 = add i64 %803, 7
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  store i32 0, i32* %806, align 4
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_400a2e

block_.L_400a2e:                                  ; preds = %block_400a38, %block_400a27
  %807 = phi i64 [ %919, %block_400a38 ], [ %.pre11, %block_400a27 ]
  %808 = load i64, i64* %RBP.i, align 8
  %809 = add i64 %808, -12
  %810 = add i64 %807, 4
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = add i32 %812, -3
  %814 = icmp ult i32 %812, 3
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %14, align 1
  %816 = and i32 %813, 255
  %817 = tail call i32 @llvm.ctpop.i32(i32 %816)
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = xor i8 %819, 1
  store i8 %820, i8* %21, align 1
  %821 = xor i32 %812, %813
  %822 = lshr i32 %821, 4
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  store i8 %824, i8* %27, align 1
  %825 = icmp eq i32 %813, 0
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %30, align 1
  %827 = lshr i32 %813, 31
  %828 = trunc i32 %827 to i8
  store i8 %828, i8* %33, align 1
  %829 = lshr i32 %812, 31
  %830 = xor i32 %827, %829
  %831 = add nuw nsw i32 %830, %829
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %39, align 1
  %834 = icmp ne i8 %828, 0
  %835 = xor i1 %834, %832
  %.demorgan71 = or i1 %825, %835
  %.v72 = select i1 %.demorgan71, i64 10, i64 57
  %836 = add i64 %807, %.v72
  store i64 %836, i64* %3, align 8
  br i1 %.demorgan71, label %block_400a38, label %block_.L_400a67

block_400a38:                                     ; preds = %block_.L_400a2e
  %837 = add i64 %808, -4
  %838 = add i64 %836, 3
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RAX.i1121, align 8
  %842 = add i64 %808, -8
  %843 = add i64 %836, 6
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RCX.i1089, align 8
  %847 = add i64 %836, 9
  store i64 %847, i64* %3, align 8
  %848 = load i32, i32* %811, align 4
  %849 = shl i32 %848, 3
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RDX.i1086, align 8
  %851 = add i32 %849, %845
  %852 = shl i32 %851, 3
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RCX.i1089, align 8
  %854 = lshr i32 %851, 28
  %855 = and i32 %854, 1
  %856 = add i32 %852, %840
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RAX.i1121, align 8
  %858 = icmp ult i32 %856, %840
  %859 = icmp ult i32 %856, %852
  %860 = or i1 %858, %859
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %14, align 1
  %862 = and i32 %856, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %21, align 1
  %867 = xor i64 %853, %841
  %868 = trunc i64 %867 to i32
  %869 = xor i32 %868, %856
  %870 = lshr i32 %869, 4
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  store i8 %872, i8* %27, align 1
  %873 = icmp eq i32 %856, 0
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %30, align 1
  %875 = lshr i32 %856, 31
  %876 = trunc i32 %875 to i8
  store i8 %876, i8* %33, align 1
  %877 = lshr i32 %840, 31
  %878 = xor i32 %875, %877
  %879 = xor i32 %875, %855
  %880 = add nuw nsw i32 %878, %879
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %39, align 1
  %883 = sext i32 %856 to i64
  store i64 %883, i64* %RSI.i1074, align 8
  %884 = shl nsw i64 %883, 2
  %885 = add i64 %884, ptrtoint (%G_0x6042a0___rsi_4__type* @G_0x6042a0___rsi_4_ to i64)
  %886 = add i64 %836, 33
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i32*
  store i32 1, i32* %887, align 4
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -12
  %890 = load i64, i64* %3, align 8
  %891 = add i64 %890, 3
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %889 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = add i32 %893, 1
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RAX.i1121, align 8
  %896 = icmp eq i32 %893, -1
  %897 = icmp eq i32 %894, 0
  %898 = or i1 %896, %897
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %14, align 1
  %900 = and i32 %894, 255
  %901 = tail call i32 @llvm.ctpop.i32(i32 %900)
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  store i8 %904, i8* %21, align 1
  %905 = xor i32 %893, %894
  %906 = lshr i32 %905, 4
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  store i8 %908, i8* %27, align 1
  %909 = zext i1 %897 to i8
  store i8 %909, i8* %30, align 1
  %910 = lshr i32 %894, 31
  %911 = trunc i32 %910 to i8
  store i8 %911, i8* %33, align 1
  %912 = lshr i32 %893, 31
  %913 = xor i32 %910, %912
  %914 = add nuw nsw i32 %913, %910
  %915 = icmp eq i32 %914, 2
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %39, align 1
  %917 = add i64 %890, 9
  store i64 %917, i64* %3, align 8
  store i32 %894, i32* %892, align 4
  %918 = load i64, i64* %3, align 8
  %919 = add i64 %918, -52
  store i64 %919, i64* %3, align 8
  br label %block_.L_400a2e

block_.L_400a67:                                  ; preds = %block_.L_400a2e
  %920 = add i64 %808, -8
  %921 = add i64 %836, 8
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = add i32 %923, 1
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX.i1121, align 8
  %926 = icmp eq i32 %923, -1
  %927 = icmp eq i32 %924, 0
  %928 = or i1 %926, %927
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %14, align 1
  %930 = and i32 %924, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %21, align 1
  %935 = xor i32 %923, %924
  %936 = lshr i32 %935, 4
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  store i8 %938, i8* %27, align 1
  %939 = zext i1 %927 to i8
  store i8 %939, i8* %30, align 1
  %940 = lshr i32 %924, 31
  %941 = trunc i32 %940 to i8
  store i8 %941, i8* %33, align 1
  %942 = lshr i32 %923, 31
  %943 = xor i32 %940, %942
  %944 = add nuw nsw i32 %943, %940
  %945 = icmp eq i32 %944, 2
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %39, align 1
  %947 = add i64 %836, 14
  store i64 %947, i64* %3, align 8
  store i32 %924, i32* %922, align 4
  %948 = load i64, i64* %3, align 8
  %949 = add i64 %948, -88
  store i64 %949, i64* %3, align 8
  br label %block_.L_400a1d

block_.L_400a7a:                                  ; preds = %block_.L_400a1d
  %950 = add i64 %786, -4
  %951 = add i64 %803, 8
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = add i32 %953, 1
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RAX.i1121, align 8
  %956 = icmp eq i32 %953, -1
  %957 = icmp eq i32 %954, 0
  %958 = or i1 %956, %957
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %14, align 1
  %960 = and i32 %954, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = xor i32 %953, %954
  %966 = lshr i32 %965, 4
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  store i8 %968, i8* %27, align 1
  %969 = zext i1 %957 to i8
  store i8 %969, i8* %30, align 1
  %970 = lshr i32 %954, 31
  %971 = trunc i32 %970 to i8
  store i8 %971, i8* %33, align 1
  %972 = lshr i32 %953, 31
  %973 = xor i32 %970, %972
  %974 = add nuw nsw i32 %973, %970
  %975 = icmp eq i32 %974, 2
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %39, align 1
  %977 = add i64 %803, 14
  store i64 %977, i64* %3, align 8
  store i32 %954, i32* %952, align 4
  %978 = load i64, i64* %3, align 8
  %979 = add i64 %978, -124
  store i64 %979, i64* %3, align 8
  br label %block_.L_400a0c

block_.L_400a8d:                                  ; preds = %block_.L_400a0c
  store i32 0, i32* bitcast (%G_0x6191f4_type* @G_0x6191f4 to i32*), align 8
  store i32 193, i32* bitcast (%G_0x610254_type* @G_0x610254 to i32*), align 8
  %980 = add i64 %781, 29
  store i64 %980, i64* %3, align 8
  store i32 0, i32* %756, align 4
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_400aaa

block_.L_400aaa:                                  ; preds = %block_.L_400b18, %block_.L_400a8d
  %981 = phi i64 [ %1208, %block_.L_400b18 ], [ %.pre12, %block_.L_400a8d ]
  %982 = load i64, i64* %RBP.i, align 8
  %983 = add i64 %982, -4
  %984 = add i64 %981, 4
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  store i8 0, i8* %14, align 1
  %987 = and i32 %986, 255
  %988 = tail call i32 @llvm.ctpop.i32(i32 %987)
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  store i8 %991, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %992 = icmp eq i32 %986, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %30, align 1
  %994 = lshr i32 %986, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %996 = xor i1 %992, true
  %997 = icmp eq i8 %995, 0
  %998 = and i1 %997, %996
  %.v73 = select i1 %998, i64 129, i64 10
  %999 = add i64 %981, %.v73
  store i64 %999, i64* %3, align 8
  br i1 %998, label %block_.L_400b2b, label %block_400ab4

block_400ab4:                                     ; preds = %block_.L_400aaa
  %1000 = add i64 %982, -8
  %1001 = add i64 %999, 7
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  store i32 0, i32* %1002, align 4
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400abb

block_.L_400abb:                                  ; preds = %block_.L_400b05, %block_400ab4
  %1003 = phi i64 [ %1178, %block_.L_400b05 ], [ %.pre13, %block_400ab4 ]
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -8
  %1006 = add i64 %1003, 4
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = add i32 %1008, -3
  %1010 = icmp ult i32 %1008, 3
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %14, align 1
  %1012 = and i32 %1009, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %21, align 1
  %1017 = xor i32 %1008, %1009
  %1018 = lshr i32 %1017, 4
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %27, align 1
  %1021 = icmp eq i32 %1009, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %30, align 1
  %1023 = lshr i32 %1009, 31
  %1024 = trunc i32 %1023 to i8
  store i8 %1024, i8* %33, align 1
  %1025 = lshr i32 %1008, 31
  %1026 = xor i32 %1023, %1025
  %1027 = add nuw nsw i32 %1026, %1025
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %39, align 1
  %1030 = icmp ne i8 %1024, 0
  %1031 = xor i1 %1030, %1028
  %.demorgan74 = or i1 %1021, %1031
  %.v75 = select i1 %.demorgan74, i64 10, i64 93
  %1032 = add i64 %1003, %.v75
  store i64 %1032, i64* %3, align 8
  br i1 %.demorgan74, label %block_400ac5, label %block_.L_400b18

block_400ac5:                                     ; preds = %block_.L_400abb
  %1033 = add i64 %1004, -12
  %1034 = add i64 %1032, 7
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  store i32 0, i32* %1035, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_400acc

block_.L_400acc:                                  ; preds = %block_400ad6, %block_400ac5
  %1036 = phi i64 [ %1148, %block_400ad6 ], [ %.pre14, %block_400ac5 ]
  %1037 = load i64, i64* %RBP.i, align 8
  %1038 = add i64 %1037, -12
  %1039 = add i64 %1036, 4
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = add i32 %1041, -1
  %1043 = icmp eq i32 %1041, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %14, align 1
  %1045 = and i32 %1042, 255
  %1046 = tail call i32 @llvm.ctpop.i32(i32 %1045)
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  %1049 = xor i8 %1048, 1
  store i8 %1049, i8* %21, align 1
  %1050 = xor i32 %1041, %1042
  %1051 = lshr i32 %1050, 4
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  store i8 %1053, i8* %27, align 1
  %1054 = icmp eq i32 %1042, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %30, align 1
  %1056 = lshr i32 %1042, 31
  %1057 = trunc i32 %1056 to i8
  store i8 %1057, i8* %33, align 1
  %1058 = lshr i32 %1041, 31
  %1059 = xor i32 %1056, %1058
  %1060 = add nuw nsw i32 %1059, %1058
  %1061 = icmp eq i32 %1060, 2
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %39, align 1
  %1063 = icmp ne i8 %1057, 0
  %1064 = xor i1 %1063, %1061
  %.demorgan76 = or i1 %1054, %1064
  %.v77 = select i1 %.demorgan76, i64 10, i64 57
  %1065 = add i64 %1036, %.v77
  store i64 %1065, i64* %3, align 8
  br i1 %.demorgan76, label %block_400ad6, label %block_.L_400b05

block_400ad6:                                     ; preds = %block_.L_400acc
  %1066 = add i64 %1037, -4
  %1067 = add i64 %1065, 3
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RAX.i1121, align 8
  %1071 = add i64 %1037, -8
  %1072 = add i64 %1065, 6
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to i32*
  %1074 = load i32, i32* %1073, align 4
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RCX.i1089, align 8
  %1076 = add i64 %1065, 9
  store i64 %1076, i64* %3, align 8
  %1077 = load i32, i32* %1040, align 4
  %1078 = shl i32 %1077, 3
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RDX.i1086, align 8
  %1080 = add i32 %1078, %1074
  %1081 = shl i32 %1080, 3
  %1082 = zext i32 %1081 to i64
  store i64 %1082, i64* %RCX.i1089, align 8
  %1083 = lshr i32 %1080, 28
  %1084 = and i32 %1083, 1
  %1085 = add i32 %1081, %1069
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RAX.i1121, align 8
  %1087 = icmp ult i32 %1085, %1069
  %1088 = icmp ult i32 %1085, %1081
  %1089 = or i1 %1087, %1088
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %14, align 1
  %1091 = and i32 %1085, 255
  %1092 = tail call i32 @llvm.ctpop.i32(i32 %1091)
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  %1095 = xor i8 %1094, 1
  store i8 %1095, i8* %21, align 1
  %1096 = xor i64 %1082, %1070
  %1097 = trunc i64 %1096 to i32
  %1098 = xor i32 %1097, %1085
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %27, align 1
  %1102 = icmp eq i32 %1085, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %30, align 1
  %1104 = lshr i32 %1085, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %33, align 1
  %1106 = lshr i32 %1069, 31
  %1107 = xor i32 %1104, %1106
  %1108 = xor i32 %1104, %1084
  %1109 = add nuw nsw i32 %1107, %1108
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %39, align 1
  %1112 = sext i32 %1085 to i64
  store i64 %1112, i64* %RSI.i1074, align 8
  %1113 = shl nsw i64 %1112, 2
  %1114 = add i64 %1113, ptrtoint (%G_0x604aa0___rsi_4__type* @G_0x604aa0___rsi_4_ to i64)
  %1115 = add i64 %1065, 33
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  store i32 1, i32* %1116, align 4
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -12
  %1119 = load i64, i64* %3, align 8
  %1120 = add i64 %1119, 3
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1118 to i32*
  %1122 = load i32, i32* %1121, align 4
  %1123 = add i32 %1122, 1
  %1124 = zext i32 %1123 to i64
  store i64 %1124, i64* %RAX.i1121, align 8
  %1125 = icmp eq i32 %1122, -1
  %1126 = icmp eq i32 %1123, 0
  %1127 = or i1 %1125, %1126
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %14, align 1
  %1129 = and i32 %1123, 255
  %1130 = tail call i32 @llvm.ctpop.i32(i32 %1129)
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = xor i8 %1132, 1
  store i8 %1133, i8* %21, align 1
  %1134 = xor i32 %1122, %1123
  %1135 = lshr i32 %1134, 4
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  store i8 %1137, i8* %27, align 1
  %1138 = zext i1 %1126 to i8
  store i8 %1138, i8* %30, align 1
  %1139 = lshr i32 %1123, 31
  %1140 = trunc i32 %1139 to i8
  store i8 %1140, i8* %33, align 1
  %1141 = lshr i32 %1122, 31
  %1142 = xor i32 %1139, %1141
  %1143 = add nuw nsw i32 %1142, %1139
  %1144 = icmp eq i32 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %39, align 1
  %1146 = add i64 %1119, 9
  store i64 %1146, i64* %3, align 8
  store i32 %1123, i32* %1121, align 4
  %1147 = load i64, i64* %3, align 8
  %1148 = add i64 %1147, -52
  store i64 %1148, i64* %3, align 8
  br label %block_.L_400acc

block_.L_400b05:                                  ; preds = %block_.L_400acc
  %1149 = add i64 %1037, -8
  %1150 = add i64 %1065, 8
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = add i32 %1152, 1
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RAX.i1121, align 8
  %1155 = icmp eq i32 %1152, -1
  %1156 = icmp eq i32 %1153, 0
  %1157 = or i1 %1155, %1156
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %14, align 1
  %1159 = and i32 %1153, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %21, align 1
  %1164 = xor i32 %1152, %1153
  %1165 = lshr i32 %1164, 4
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  store i8 %1167, i8* %27, align 1
  %1168 = zext i1 %1156 to i8
  store i8 %1168, i8* %30, align 1
  %1169 = lshr i32 %1153, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %33, align 1
  %1171 = lshr i32 %1152, 31
  %1172 = xor i32 %1169, %1171
  %1173 = add nuw nsw i32 %1172, %1169
  %1174 = icmp eq i32 %1173, 2
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %39, align 1
  %1176 = add i64 %1065, 14
  store i64 %1176, i64* %3, align 8
  store i32 %1153, i32* %1151, align 4
  %1177 = load i64, i64* %3, align 8
  %1178 = add i64 %1177, -88
  store i64 %1178, i64* %3, align 8
  br label %block_.L_400abb

block_.L_400b18:                                  ; preds = %block_.L_400abb
  %1179 = add i64 %1004, -4
  %1180 = add i64 %1032, 8
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = add i32 %1182, 1
  %1184 = zext i32 %1183 to i64
  store i64 %1184, i64* %RAX.i1121, align 8
  %1185 = icmp eq i32 %1182, -1
  %1186 = icmp eq i32 %1183, 0
  %1187 = or i1 %1185, %1186
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %14, align 1
  %1189 = and i32 %1183, 255
  %1190 = tail call i32 @llvm.ctpop.i32(i32 %1189)
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = xor i8 %1192, 1
  store i8 %1193, i8* %21, align 1
  %1194 = xor i32 %1182, %1183
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %27, align 1
  %1198 = zext i1 %1186 to i8
  store i8 %1198, i8* %30, align 1
  %1199 = lshr i32 %1183, 31
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %33, align 1
  %1201 = lshr i32 %1182, 31
  %1202 = xor i32 %1199, %1201
  %1203 = add nuw nsw i32 %1202, %1199
  %1204 = icmp eq i32 %1203, 2
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %39, align 1
  %1206 = add i64 %1032, 14
  store i64 %1206, i64* %3, align 8
  store i32 %1183, i32* %1181, align 4
  %1207 = load i64, i64* %3, align 8
  %1208 = add i64 %1207, -124
  store i64 %1208, i64* %3, align 8
  br label %block_.L_400aaa

block_.L_400b2b:                                  ; preds = %block_.L_400aaa
  store i32 0, i32* bitcast (%G_0x6191f8_type* @G_0x6191f8 to i32*), align 8
  store i32 88, i32* bitcast (%G_0x610258_type* @G_0x610258 to i32*), align 8
  %1209 = add i64 %999, 29
  store i64 %1209, i64* %3, align 8
  store i32 0, i32* %985, align 4
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_400b48

block_.L_400b48:                                  ; preds = %block_.L_400bb6, %block_.L_400b2b
  %1210 = phi i64 [ %1437, %block_.L_400bb6 ], [ %.pre15, %block_.L_400b2b ]
  %1211 = load i64, i64* %RBP.i, align 8
  %1212 = add i64 %1211, -4
  %1213 = add i64 %1210, 4
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = add i32 %1215, -1
  %1217 = icmp eq i32 %1215, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %14, align 1
  %1219 = and i32 %1216, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %21, align 1
  %1224 = xor i32 %1215, %1216
  %1225 = lshr i32 %1224, 4
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %27, align 1
  %1228 = icmp eq i32 %1216, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %30, align 1
  %1230 = lshr i32 %1216, 31
  %1231 = trunc i32 %1230 to i8
  store i8 %1231, i8* %33, align 1
  %1232 = lshr i32 %1215, 31
  %1233 = xor i32 %1230, %1232
  %1234 = add nuw nsw i32 %1233, %1232
  %1235 = icmp eq i32 %1234, 2
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %39, align 1
  %1237 = icmp ne i8 %1231, 0
  %1238 = xor i1 %1237, %1235
  %.demorgan78 = or i1 %1228, %1238
  %.v79 = select i1 %.demorgan78, i64 10, i64 129
  %1239 = add i64 %1210, %.v79
  store i64 %1239, i64* %3, align 8
  br i1 %.demorgan78, label %block_400b52, label %block_.L_400bc9

block_400b52:                                     ; preds = %block_.L_400b48
  %1240 = add i64 %1211, -8
  %1241 = add i64 %1239, 7
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i32*
  store i32 0, i32* %1242, align 4
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_400b59

block_.L_400b59:                                  ; preds = %block_.L_400ba3, %block_400b52
  %1243 = phi i64 [ %1407, %block_.L_400ba3 ], [ %.pre16, %block_400b52 ]
  %1244 = load i64, i64* %RBP.i, align 8
  %1245 = add i64 %1244, -8
  %1246 = add i64 %1243, 4
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = add i32 %1248, -3
  %1250 = icmp ult i32 %1248, 3
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %14, align 1
  %1252 = and i32 %1249, 255
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %21, align 1
  %1257 = xor i32 %1248, %1249
  %1258 = lshr i32 %1257, 4
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  store i8 %1260, i8* %27, align 1
  %1261 = icmp eq i32 %1249, 0
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %30, align 1
  %1263 = lshr i32 %1249, 31
  %1264 = trunc i32 %1263 to i8
  store i8 %1264, i8* %33, align 1
  %1265 = lshr i32 %1248, 31
  %1266 = xor i32 %1263, %1265
  %1267 = add nuw nsw i32 %1266, %1265
  %1268 = icmp eq i32 %1267, 2
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %39, align 1
  %1270 = icmp ne i8 %1264, 0
  %1271 = xor i1 %1270, %1268
  %.demorgan80 = or i1 %1261, %1271
  %.v81 = select i1 %.demorgan80, i64 10, i64 93
  %1272 = add i64 %1243, %.v81
  store i64 %1272, i64* %3, align 8
  br i1 %.demorgan80, label %block_400b63, label %block_.L_400bb6

block_400b63:                                     ; preds = %block_.L_400b59
  %1273 = add i64 %1244, -12
  %1274 = add i64 %1272, 7
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i32*
  store i32 0, i32* %1275, align 4
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_400b6a

block_.L_400b6a:                                  ; preds = %block_400b74, %block_400b63
  %1276 = phi i64 [ %1377, %block_400b74 ], [ %.pre17, %block_400b63 ]
  %1277 = load i64, i64* %RBP.i, align 8
  %1278 = add i64 %1277, -12
  %1279 = add i64 %1276, 4
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  store i8 0, i8* %14, align 1
  %1282 = and i32 %1281, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1287 = icmp eq i32 %1281, 0
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %30, align 1
  %1289 = lshr i32 %1281, 31
  %1290 = trunc i32 %1289 to i8
  store i8 %1290, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1291 = xor i1 %1287, true
  %1292 = icmp eq i8 %1290, 0
  %1293 = and i1 %1292, %1291
  %.v82 = select i1 %1293, i64 57, i64 10
  %1294 = add i64 %1276, %.v82
  store i64 %1294, i64* %3, align 8
  br i1 %1293, label %block_.L_400ba3, label %block_400b74

block_400b74:                                     ; preds = %block_.L_400b6a
  %1295 = add i64 %1277, -4
  %1296 = add i64 %1294, 3
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  %1298 = load i32, i32* %1297, align 4
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RAX.i1121, align 8
  %1300 = add i64 %1277, -8
  %1301 = add i64 %1294, 6
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RCX.i1089, align 8
  %1305 = add i64 %1294, 9
  store i64 %1305, i64* %3, align 8
  %1306 = load i32, i32* %1280, align 4
  %1307 = shl i32 %1306, 3
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RDX.i1086, align 8
  %1309 = add i32 %1307, %1303
  %1310 = shl i32 %1309, 3
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %RCX.i1089, align 8
  %1312 = lshr i32 %1309, 28
  %1313 = and i32 %1312, 1
  %1314 = add i32 %1310, %1298
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RAX.i1121, align 8
  %1316 = icmp ult i32 %1314, %1298
  %1317 = icmp ult i32 %1314, %1310
  %1318 = or i1 %1316, %1317
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %14, align 1
  %1320 = and i32 %1314, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %21, align 1
  %1325 = xor i64 %1311, %1299
  %1326 = trunc i64 %1325 to i32
  %1327 = xor i32 %1326, %1314
  %1328 = lshr i32 %1327, 4
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  store i8 %1330, i8* %27, align 1
  %1331 = icmp eq i32 %1314, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %30, align 1
  %1333 = lshr i32 %1314, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %33, align 1
  %1335 = lshr i32 %1298, 31
  %1336 = xor i32 %1333, %1335
  %1337 = xor i32 %1333, %1313
  %1338 = add nuw nsw i32 %1336, %1337
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %39, align 1
  %1341 = sext i32 %1314 to i64
  store i64 %1341, i64* %RSI.i1074, align 8
  %1342 = shl nsw i64 %1341, 2
  %1343 = add i64 %1342, ptrtoint (%G_0x6052a0___rsi_4__type* @G_0x6052a0___rsi_4_ to i64)
  %1344 = add i64 %1294, 33
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  store i32 1, i32* %1345, align 4
  %1346 = load i64, i64* %RBP.i, align 8
  %1347 = add i64 %1346, -12
  %1348 = load i64, i64* %3, align 8
  %1349 = add i64 %1348, 3
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1347 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = add i32 %1351, 1
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RAX.i1121, align 8
  %1354 = icmp eq i32 %1351, -1
  %1355 = icmp eq i32 %1352, 0
  %1356 = or i1 %1354, %1355
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %14, align 1
  %1358 = and i32 %1352, 255
  %1359 = tail call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  store i8 %1362, i8* %21, align 1
  %1363 = xor i32 %1351, %1352
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %27, align 1
  %1367 = zext i1 %1355 to i8
  store i8 %1367, i8* %30, align 1
  %1368 = lshr i32 %1352, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %33, align 1
  %1370 = lshr i32 %1351, 31
  %1371 = xor i32 %1368, %1370
  %1372 = add nuw nsw i32 %1371, %1368
  %1373 = icmp eq i32 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %39, align 1
  %1375 = add i64 %1348, 9
  store i64 %1375, i64* %3, align 8
  store i32 %1352, i32* %1350, align 4
  %1376 = load i64, i64* %3, align 8
  %1377 = add i64 %1376, -52
  store i64 %1377, i64* %3, align 8
  br label %block_.L_400b6a

block_.L_400ba3:                                  ; preds = %block_.L_400b6a
  %1378 = add i64 %1277, -8
  %1379 = add i64 %1294, 8
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = add i32 %1381, 1
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RAX.i1121, align 8
  %1384 = icmp eq i32 %1381, -1
  %1385 = icmp eq i32 %1382, 0
  %1386 = or i1 %1384, %1385
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %14, align 1
  %1388 = and i32 %1382, 255
  %1389 = tail call i32 @llvm.ctpop.i32(i32 %1388)
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = xor i8 %1391, 1
  store i8 %1392, i8* %21, align 1
  %1393 = xor i32 %1381, %1382
  %1394 = lshr i32 %1393, 4
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  store i8 %1396, i8* %27, align 1
  %1397 = zext i1 %1385 to i8
  store i8 %1397, i8* %30, align 1
  %1398 = lshr i32 %1382, 31
  %1399 = trunc i32 %1398 to i8
  store i8 %1399, i8* %33, align 1
  %1400 = lshr i32 %1381, 31
  %1401 = xor i32 %1398, %1400
  %1402 = add nuw nsw i32 %1401, %1398
  %1403 = icmp eq i32 %1402, 2
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %39, align 1
  %1405 = add i64 %1294, 14
  store i64 %1405, i64* %3, align 8
  store i32 %1382, i32* %1380, align 4
  %1406 = load i64, i64* %3, align 8
  %1407 = add i64 %1406, -88
  store i64 %1407, i64* %3, align 8
  br label %block_.L_400b59

block_.L_400bb6:                                  ; preds = %block_.L_400b59
  %1408 = add i64 %1244, -4
  %1409 = add i64 %1272, 8
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  %1411 = load i32, i32* %1410, align 4
  %1412 = add i32 %1411, 1
  %1413 = zext i32 %1412 to i64
  store i64 %1413, i64* %RAX.i1121, align 8
  %1414 = icmp eq i32 %1411, -1
  %1415 = icmp eq i32 %1412, 0
  %1416 = or i1 %1414, %1415
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %14, align 1
  %1418 = and i32 %1412, 255
  %1419 = tail call i32 @llvm.ctpop.i32(i32 %1418)
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  store i8 %1422, i8* %21, align 1
  %1423 = xor i32 %1411, %1412
  %1424 = lshr i32 %1423, 4
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  store i8 %1426, i8* %27, align 1
  %1427 = zext i1 %1415 to i8
  store i8 %1427, i8* %30, align 1
  %1428 = lshr i32 %1412, 31
  %1429 = trunc i32 %1428 to i8
  store i8 %1429, i8* %33, align 1
  %1430 = lshr i32 %1411, 31
  %1431 = xor i32 %1428, %1430
  %1432 = add nuw nsw i32 %1431, %1428
  %1433 = icmp eq i32 %1432, 2
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %39, align 1
  %1435 = add i64 %1272, 14
  store i64 %1435, i64* %3, align 8
  store i32 %1412, i32* %1410, align 4
  %1436 = load i64, i64* %3, align 8
  %1437 = add i64 %1436, -124
  store i64 %1437, i64* %3, align 8
  br label %block_.L_400b48

block_.L_400bc9:                                  ; preds = %block_.L_400b48
  store i32 0, i32* bitcast (%G_0x6191fc_type* @G_0x6191fc to i32*), align 8
  store i32 25, i32* bitcast (%G_0x61025c_type* @G_0x61025c to i32*), align 8
  %1438 = add i64 %1239, 29
  store i64 %1438, i64* %3, align 8
  store i32 0, i32* %1214, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_400be6

block_.L_400be6:                                  ; preds = %block_.L_400c54, %block_.L_400bc9
  %1439 = phi i64 [ %1666, %block_.L_400c54 ], [ %.pre18, %block_.L_400bc9 ]
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -4
  %1442 = add i64 %1439, 4
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = add i32 %1444, -3
  %1446 = icmp ult i32 %1444, 3
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %14, align 1
  %1448 = and i32 %1445, 255
  %1449 = tail call i32 @llvm.ctpop.i32(i32 %1448)
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = xor i8 %1451, 1
  store i8 %1452, i8* %21, align 1
  %1453 = xor i32 %1444, %1445
  %1454 = lshr i32 %1453, 4
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  store i8 %1456, i8* %27, align 1
  %1457 = icmp eq i32 %1445, 0
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %30, align 1
  %1459 = lshr i32 %1445, 31
  %1460 = trunc i32 %1459 to i8
  store i8 %1460, i8* %33, align 1
  %1461 = lshr i32 %1444, 31
  %1462 = xor i32 %1459, %1461
  %1463 = add nuw nsw i32 %1462, %1461
  %1464 = icmp eq i32 %1463, 2
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %39, align 1
  %1466 = icmp ne i8 %1460, 0
  %1467 = xor i1 %1466, %1464
  %.demorgan83 = or i1 %1457, %1467
  %.v84 = select i1 %.demorgan83, i64 10, i64 129
  %1468 = add i64 %1439, %.v84
  store i64 %1468, i64* %3, align 8
  br i1 %.demorgan83, label %block_400bf0, label %block_.L_400c67

block_400bf0:                                     ; preds = %block_.L_400be6
  %1469 = add i64 %1440, -8
  %1470 = add i64 %1468, 7
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  store i32 0, i32* %1471, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_400bf7

block_.L_400bf7:                                  ; preds = %block_.L_400c41, %block_400bf0
  %1472 = phi i64 [ %1636, %block_.L_400c41 ], [ %.pre19, %block_400bf0 ]
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -8
  %1475 = add i64 %1472, 4
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  store i8 0, i8* %14, align 1
  %1478 = and i32 %1477, 255
  %1479 = tail call i32 @llvm.ctpop.i32(i32 %1478)
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  %1482 = xor i8 %1481, 1
  store i8 %1482, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1483 = icmp eq i32 %1477, 0
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %30, align 1
  %1485 = lshr i32 %1477, 31
  %1486 = trunc i32 %1485 to i8
  store i8 %1486, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1487 = xor i1 %1483, true
  %1488 = icmp eq i8 %1486, 0
  %1489 = and i1 %1488, %1487
  %.v85 = select i1 %1489, i64 93, i64 10
  %1490 = add i64 %1472, %.v85
  store i64 %1490, i64* %3, align 8
  br i1 %1489, label %block_.L_400c54, label %block_400c01

block_400c01:                                     ; preds = %block_.L_400bf7
  %1491 = add i64 %1473, -12
  %1492 = add i64 %1490, 7
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  store i32 0, i32* %1493, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_400c08

block_.L_400c08:                                  ; preds = %block_400c12, %block_400c01
  %1494 = phi i64 [ %1606, %block_400c12 ], [ %.pre20, %block_400c01 ]
  %1495 = load i64, i64* %RBP.i, align 8
  %1496 = add i64 %1495, -12
  %1497 = add i64 %1494, 4
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = add i32 %1499, -1
  %1501 = icmp eq i32 %1499, 0
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %14, align 1
  %1503 = and i32 %1500, 255
  %1504 = tail call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = xor i8 %1506, 1
  store i8 %1507, i8* %21, align 1
  %1508 = xor i32 %1499, %1500
  %1509 = lshr i32 %1508, 4
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  store i8 %1511, i8* %27, align 1
  %1512 = icmp eq i32 %1500, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %30, align 1
  %1514 = lshr i32 %1500, 31
  %1515 = trunc i32 %1514 to i8
  store i8 %1515, i8* %33, align 1
  %1516 = lshr i32 %1499, 31
  %1517 = xor i32 %1514, %1516
  %1518 = add nuw nsw i32 %1517, %1516
  %1519 = icmp eq i32 %1518, 2
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %39, align 1
  %1521 = icmp ne i8 %1515, 0
  %1522 = xor i1 %1521, %1519
  %.demorgan86 = or i1 %1512, %1522
  %.v87 = select i1 %.demorgan86, i64 10, i64 57
  %1523 = add i64 %1494, %.v87
  store i64 %1523, i64* %3, align 8
  br i1 %.demorgan86, label %block_400c12, label %block_.L_400c41

block_400c12:                                     ; preds = %block_.L_400c08
  %1524 = add i64 %1495, -4
  %1525 = add i64 %1523, 3
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RAX.i1121, align 8
  %1529 = add i64 %1495, -8
  %1530 = add i64 %1523, 6
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i32*
  %1532 = load i32, i32* %1531, align 4
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %RCX.i1089, align 8
  %1534 = add i64 %1523, 9
  store i64 %1534, i64* %3, align 8
  %1535 = load i32, i32* %1498, align 4
  %1536 = shl i32 %1535, 3
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RDX.i1086, align 8
  %1538 = add i32 %1536, %1532
  %1539 = shl i32 %1538, 3
  %1540 = zext i32 %1539 to i64
  store i64 %1540, i64* %RCX.i1089, align 8
  %1541 = lshr i32 %1538, 28
  %1542 = and i32 %1541, 1
  %1543 = add i32 %1539, %1527
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %RAX.i1121, align 8
  %1545 = icmp ult i32 %1543, %1527
  %1546 = icmp ult i32 %1543, %1539
  %1547 = or i1 %1545, %1546
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %14, align 1
  %1549 = and i32 %1543, 255
  %1550 = tail call i32 @llvm.ctpop.i32(i32 %1549)
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  %1553 = xor i8 %1552, 1
  store i8 %1553, i8* %21, align 1
  %1554 = xor i64 %1540, %1528
  %1555 = trunc i64 %1554 to i32
  %1556 = xor i32 %1555, %1543
  %1557 = lshr i32 %1556, 4
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  store i8 %1559, i8* %27, align 1
  %1560 = icmp eq i32 %1543, 0
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %30, align 1
  %1562 = lshr i32 %1543, 31
  %1563 = trunc i32 %1562 to i8
  store i8 %1563, i8* %33, align 1
  %1564 = lshr i32 %1527, 31
  %1565 = xor i32 %1562, %1564
  %1566 = xor i32 %1562, %1542
  %1567 = add nuw nsw i32 %1565, %1566
  %1568 = icmp eq i32 %1567, 2
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %39, align 1
  %1570 = sext i32 %1543 to i64
  store i64 %1570, i64* %RSI.i1074, align 8
  %1571 = shl nsw i64 %1570, 2
  %1572 = add i64 %1571, ptrtoint (%G_0x605aa0___rsi_4__type* @G_0x605aa0___rsi_4_ to i64)
  %1573 = add i64 %1523, 33
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1572 to i32*
  store i32 1, i32* %1574, align 4
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -12
  %1577 = load i64, i64* %3, align 8
  %1578 = add i64 %1577, 3
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1576 to i32*
  %1580 = load i32, i32* %1579, align 4
  %1581 = add i32 %1580, 1
  %1582 = zext i32 %1581 to i64
  store i64 %1582, i64* %RAX.i1121, align 8
  %1583 = icmp eq i32 %1580, -1
  %1584 = icmp eq i32 %1581, 0
  %1585 = or i1 %1583, %1584
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %14, align 1
  %1587 = and i32 %1581, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  %1592 = xor i32 %1580, %1581
  %1593 = lshr i32 %1592, 4
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  store i8 %1595, i8* %27, align 1
  %1596 = zext i1 %1584 to i8
  store i8 %1596, i8* %30, align 1
  %1597 = lshr i32 %1581, 31
  %1598 = trunc i32 %1597 to i8
  store i8 %1598, i8* %33, align 1
  %1599 = lshr i32 %1580, 31
  %1600 = xor i32 %1597, %1599
  %1601 = add nuw nsw i32 %1600, %1597
  %1602 = icmp eq i32 %1601, 2
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %39, align 1
  %1604 = add i64 %1577, 9
  store i64 %1604, i64* %3, align 8
  store i32 %1581, i32* %1579, align 4
  %1605 = load i64, i64* %3, align 8
  %1606 = add i64 %1605, -52
  store i64 %1606, i64* %3, align 8
  br label %block_.L_400c08

block_.L_400c41:                                  ; preds = %block_.L_400c08
  %1607 = add i64 %1495, -8
  %1608 = add i64 %1523, 8
  store i64 %1608, i64* %3, align 8
  %1609 = inttoptr i64 %1607 to i32*
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
  %1626 = zext i1 %1614 to i8
  store i8 %1626, i8* %30, align 1
  %1627 = lshr i32 %1611, 31
  %1628 = trunc i32 %1627 to i8
  store i8 %1628, i8* %33, align 1
  %1629 = lshr i32 %1610, 31
  %1630 = xor i32 %1627, %1629
  %1631 = add nuw nsw i32 %1630, %1627
  %1632 = icmp eq i32 %1631, 2
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %39, align 1
  %1634 = add i64 %1523, 14
  store i64 %1634, i64* %3, align 8
  store i32 %1611, i32* %1609, align 4
  %1635 = load i64, i64* %3, align 8
  %1636 = add i64 %1635, -88
  store i64 %1636, i64* %3, align 8
  br label %block_.L_400bf7

block_.L_400c54:                                  ; preds = %block_.L_400bf7
  %1637 = add i64 %1473, -4
  %1638 = add i64 %1490, 8
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = add i32 %1640, 1
  %1642 = zext i32 %1641 to i64
  store i64 %1642, i64* %RAX.i1121, align 8
  %1643 = icmp eq i32 %1640, -1
  %1644 = icmp eq i32 %1641, 0
  %1645 = or i1 %1643, %1644
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %14, align 1
  %1647 = and i32 %1641, 255
  %1648 = tail call i32 @llvm.ctpop.i32(i32 %1647)
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  %1651 = xor i8 %1650, 1
  store i8 %1651, i8* %21, align 1
  %1652 = xor i32 %1640, %1641
  %1653 = lshr i32 %1652, 4
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  store i8 %1655, i8* %27, align 1
  %1656 = zext i1 %1644 to i8
  store i8 %1656, i8* %30, align 1
  %1657 = lshr i32 %1641, 31
  %1658 = trunc i32 %1657 to i8
  store i8 %1658, i8* %33, align 1
  %1659 = lshr i32 %1640, 31
  %1660 = xor i32 %1657, %1659
  %1661 = add nuw nsw i32 %1660, %1657
  %1662 = icmp eq i32 %1661, 2
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %39, align 1
  %1664 = add i64 %1490, 14
  store i64 %1664, i64* %3, align 8
  store i32 %1641, i32* %1639, align 4
  %1665 = load i64, i64* %3, align 8
  %1666 = add i64 %1665, -124
  store i64 %1666, i64* %3, align 8
  br label %block_.L_400be6

block_.L_400c67:                                  ; preds = %block_.L_400be6
  store i32 0, i32* bitcast (%G_0x619200_type* @G_0x619200 to i32*), align 8
  store i32 67, i32* bitcast (%G_0x610260_type* @G_0x610260 to i32*), align 8
  %1667 = add i64 %1468, 29
  store i64 %1667, i64* %3, align 8
  store i32 0, i32* %1443, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_400c84

block_.L_400c84:                                  ; preds = %block_.L_400cf2, %block_.L_400c67
  %1668 = phi i64 [ %1895, %block_.L_400cf2 ], [ %.pre21, %block_.L_400c67 ]
  %1669 = load i64, i64* %RBP.i, align 8
  %1670 = add i64 %1669, -4
  %1671 = add i64 %1668, 4
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  %1673 = load i32, i32* %1672, align 4
  store i8 0, i8* %14, align 1
  %1674 = and i32 %1673, 255
  %1675 = tail call i32 @llvm.ctpop.i32(i32 %1674)
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  %1678 = xor i8 %1677, 1
  store i8 %1678, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1679 = icmp eq i32 %1673, 0
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %30, align 1
  %1681 = lshr i32 %1673, 31
  %1682 = trunc i32 %1681 to i8
  store i8 %1682, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1683 = xor i1 %1679, true
  %1684 = icmp eq i8 %1682, 0
  %1685 = and i1 %1684, %1683
  %.v88 = select i1 %1685, i64 129, i64 10
  %1686 = add i64 %1668, %.v88
  store i64 %1686, i64* %3, align 8
  br i1 %1685, label %block_.L_400d05, label %block_400c8e

block_400c8e:                                     ; preds = %block_.L_400c84
  %1687 = add i64 %1669, -8
  %1688 = add i64 %1686, 7
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i32*
  store i32 0, i32* %1689, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_400c95

block_.L_400c95:                                  ; preds = %block_.L_400cdf, %block_400c8e
  %1690 = phi i64 [ %1865, %block_.L_400cdf ], [ %.pre22, %block_400c8e ]
  %1691 = load i64, i64* %RBP.i, align 8
  %1692 = add i64 %1691, -8
  %1693 = add i64 %1690, 4
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = add i32 %1695, -1
  %1697 = icmp eq i32 %1695, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %14, align 1
  %1699 = and i32 %1696, 255
  %1700 = tail call i32 @llvm.ctpop.i32(i32 %1699)
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  %1703 = xor i8 %1702, 1
  store i8 %1703, i8* %21, align 1
  %1704 = xor i32 %1695, %1696
  %1705 = lshr i32 %1704, 4
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  store i8 %1707, i8* %27, align 1
  %1708 = icmp eq i32 %1696, 0
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %30, align 1
  %1710 = lshr i32 %1696, 31
  %1711 = trunc i32 %1710 to i8
  store i8 %1711, i8* %33, align 1
  %1712 = lshr i32 %1695, 31
  %1713 = xor i32 %1710, %1712
  %1714 = add nuw nsw i32 %1713, %1712
  %1715 = icmp eq i32 %1714, 2
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %39, align 1
  %1717 = icmp ne i8 %1711, 0
  %1718 = xor i1 %1717, %1715
  %.demorgan89 = or i1 %1708, %1718
  %.v90 = select i1 %.demorgan89, i64 10, i64 93
  %1719 = add i64 %1690, %.v90
  store i64 %1719, i64* %3, align 8
  br i1 %.demorgan89, label %block_400c9f, label %block_.L_400cf2

block_400c9f:                                     ; preds = %block_.L_400c95
  %1720 = add i64 %1691, -12
  %1721 = add i64 %1719, 7
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i32*
  store i32 0, i32* %1722, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_400ca6

block_.L_400ca6:                                  ; preds = %block_400cb0, %block_400c9f
  %1723 = phi i64 [ %1835, %block_400cb0 ], [ %.pre23, %block_400c9f ]
  %1724 = load i64, i64* %RBP.i, align 8
  %1725 = add i64 %1724, -12
  %1726 = add i64 %1723, 4
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i32*
  %1728 = load i32, i32* %1727, align 4
  %1729 = add i32 %1728, -3
  %1730 = icmp ult i32 %1728, 3
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
  %.demorgan91 = or i1 %1741, %1751
  %.v92 = select i1 %.demorgan91, i64 10, i64 57
  %1752 = add i64 %1723, %.v92
  store i64 %1752, i64* %3, align 8
  br i1 %.demorgan91, label %block_400cb0, label %block_.L_400cdf

block_400cb0:                                     ; preds = %block_.L_400ca6
  %1753 = add i64 %1724, -4
  %1754 = add i64 %1752, 3
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %RAX.i1121, align 8
  %1758 = add i64 %1724, -8
  %1759 = add i64 %1752, 6
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RCX.i1089, align 8
  %1763 = add i64 %1752, 9
  store i64 %1763, i64* %3, align 8
  %1764 = load i32, i32* %1727, align 4
  %1765 = shl i32 %1764, 3
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RDX.i1086, align 8
  %1767 = add i32 %1765, %1761
  %1768 = shl i32 %1767, 3
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RCX.i1089, align 8
  %1770 = lshr i32 %1767, 28
  %1771 = and i32 %1770, 1
  %1772 = add i32 %1768, %1756
  %1773 = zext i32 %1772 to i64
  store i64 %1773, i64* %RAX.i1121, align 8
  %1774 = icmp ult i32 %1772, %1756
  %1775 = icmp ult i32 %1772, %1768
  %1776 = or i1 %1774, %1775
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %14, align 1
  %1778 = and i32 %1772, 255
  %1779 = tail call i32 @llvm.ctpop.i32(i32 %1778)
  %1780 = trunc i32 %1779 to i8
  %1781 = and i8 %1780, 1
  %1782 = xor i8 %1781, 1
  store i8 %1782, i8* %21, align 1
  %1783 = xor i64 %1769, %1757
  %1784 = trunc i64 %1783 to i32
  %1785 = xor i32 %1784, %1772
  %1786 = lshr i32 %1785, 4
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  store i8 %1788, i8* %27, align 1
  %1789 = icmp eq i32 %1772, 0
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %30, align 1
  %1791 = lshr i32 %1772, 31
  %1792 = trunc i32 %1791 to i8
  store i8 %1792, i8* %33, align 1
  %1793 = lshr i32 %1756, 31
  %1794 = xor i32 %1791, %1793
  %1795 = xor i32 %1791, %1771
  %1796 = add nuw nsw i32 %1794, %1795
  %1797 = icmp eq i32 %1796, 2
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %39, align 1
  %1799 = sext i32 %1772 to i64
  store i64 %1799, i64* %RSI.i1074, align 8
  %1800 = shl nsw i64 %1799, 2
  %1801 = add i64 %1800, ptrtoint (%G_0x6062a0___rsi_4__type* @G_0x6062a0___rsi_4_ to i64)
  %1802 = add i64 %1752, 33
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i32*
  store i32 1, i32* %1803, align 4
  %1804 = load i64, i64* %RBP.i, align 8
  %1805 = add i64 %1804, -12
  %1806 = load i64, i64* %3, align 8
  %1807 = add i64 %1806, 3
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1805 to i32*
  %1809 = load i32, i32* %1808, align 4
  %1810 = add i32 %1809, 1
  %1811 = zext i32 %1810 to i64
  store i64 %1811, i64* %RAX.i1121, align 8
  %1812 = icmp eq i32 %1809, -1
  %1813 = icmp eq i32 %1810, 0
  %1814 = or i1 %1812, %1813
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %14, align 1
  %1816 = and i32 %1810, 255
  %1817 = tail call i32 @llvm.ctpop.i32(i32 %1816)
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  %1820 = xor i8 %1819, 1
  store i8 %1820, i8* %21, align 1
  %1821 = xor i32 %1809, %1810
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %27, align 1
  %1825 = zext i1 %1813 to i8
  store i8 %1825, i8* %30, align 1
  %1826 = lshr i32 %1810, 31
  %1827 = trunc i32 %1826 to i8
  store i8 %1827, i8* %33, align 1
  %1828 = lshr i32 %1809, 31
  %1829 = xor i32 %1826, %1828
  %1830 = add nuw nsw i32 %1829, %1826
  %1831 = icmp eq i32 %1830, 2
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %39, align 1
  %1833 = add i64 %1806, 9
  store i64 %1833, i64* %3, align 8
  store i32 %1810, i32* %1808, align 4
  %1834 = load i64, i64* %3, align 8
  %1835 = add i64 %1834, -52
  store i64 %1835, i64* %3, align 8
  br label %block_.L_400ca6

block_.L_400cdf:                                  ; preds = %block_.L_400ca6
  %1836 = add i64 %1724, -8
  %1837 = add i64 %1752, 8
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = add i32 %1839, 1
  %1841 = zext i32 %1840 to i64
  store i64 %1841, i64* %RAX.i1121, align 8
  %1842 = icmp eq i32 %1839, -1
  %1843 = icmp eq i32 %1840, 0
  %1844 = or i1 %1842, %1843
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %14, align 1
  %1846 = and i32 %1840, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %21, align 1
  %1851 = xor i32 %1839, %1840
  %1852 = lshr i32 %1851, 4
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  store i8 %1854, i8* %27, align 1
  %1855 = zext i1 %1843 to i8
  store i8 %1855, i8* %30, align 1
  %1856 = lshr i32 %1840, 31
  %1857 = trunc i32 %1856 to i8
  store i8 %1857, i8* %33, align 1
  %1858 = lshr i32 %1839, 31
  %1859 = xor i32 %1856, %1858
  %1860 = add nuw nsw i32 %1859, %1856
  %1861 = icmp eq i32 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %39, align 1
  %1863 = add i64 %1752, 14
  store i64 %1863, i64* %3, align 8
  store i32 %1840, i32* %1838, align 4
  %1864 = load i64, i64* %3, align 8
  %1865 = add i64 %1864, -88
  store i64 %1865, i64* %3, align 8
  br label %block_.L_400c95

block_.L_400cf2:                                  ; preds = %block_.L_400c95
  %1866 = add i64 %1691, -4
  %1867 = add i64 %1719, 8
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = add i32 %1869, 1
  %1871 = zext i32 %1870 to i64
  store i64 %1871, i64* %RAX.i1121, align 8
  %1872 = icmp eq i32 %1869, -1
  %1873 = icmp eq i32 %1870, 0
  %1874 = or i1 %1872, %1873
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %14, align 1
  %1876 = and i32 %1870, 255
  %1877 = tail call i32 @llvm.ctpop.i32(i32 %1876)
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = xor i8 %1879, 1
  store i8 %1880, i8* %21, align 1
  %1881 = xor i32 %1869, %1870
  %1882 = lshr i32 %1881, 4
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  store i8 %1884, i8* %27, align 1
  %1885 = zext i1 %1873 to i8
  store i8 %1885, i8* %30, align 1
  %1886 = lshr i32 %1870, 31
  %1887 = trunc i32 %1886 to i8
  store i8 %1887, i8* %33, align 1
  %1888 = lshr i32 %1869, 31
  %1889 = xor i32 %1886, %1888
  %1890 = add nuw nsw i32 %1889, %1886
  %1891 = icmp eq i32 %1890, 2
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %39, align 1
  %1893 = add i64 %1719, 14
  store i64 %1893, i64* %3, align 8
  store i32 %1870, i32* %1868, align 4
  %1894 = load i64, i64* %3, align 8
  %1895 = add i64 %1894, -124
  store i64 %1895, i64* %3, align 8
  br label %block_.L_400c84

block_.L_400d05:                                  ; preds = %block_.L_400c84
  store i32 0, i32* bitcast (%G_0x619204_type* @G_0x619204 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x610264_type* @G_0x610264 to i32*), align 8
  %1896 = add i64 %1686, 29
  store i64 %1896, i64* %3, align 8
  store i32 0, i32* %1672, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_400d22

block_.L_400d22:                                  ; preds = %block_.L_400d90, %block_.L_400d05
  %1897 = phi i64 [ %2113, %block_.L_400d90 ], [ %.pre24, %block_.L_400d05 ]
  %1898 = load i64, i64* %RBP.i, align 8
  %1899 = add i64 %1898, -4
  %1900 = add i64 %1897, 4
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = add i32 %1902, -2
  %1904 = icmp ult i32 %1902, 2
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %14, align 1
  %1906 = and i32 %1903, 255
  %1907 = tail call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  store i8 %1910, i8* %21, align 1
  %1911 = xor i32 %1902, %1903
  %1912 = lshr i32 %1911, 4
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  store i8 %1914, i8* %27, align 1
  %1915 = icmp eq i32 %1903, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %30, align 1
  %1917 = lshr i32 %1903, 31
  %1918 = trunc i32 %1917 to i8
  store i8 %1918, i8* %33, align 1
  %1919 = lshr i32 %1902, 31
  %1920 = xor i32 %1917, %1919
  %1921 = add nuw nsw i32 %1920, %1919
  %1922 = icmp eq i32 %1921, 2
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %39, align 1
  %1924 = icmp ne i8 %1918, 0
  %1925 = xor i1 %1924, %1922
  %.demorgan93 = or i1 %1915, %1925
  %.v94 = select i1 %.demorgan93, i64 10, i64 129
  %1926 = add i64 %1897, %.v94
  store i64 %1926, i64* %3, align 8
  br i1 %.demorgan93, label %block_400d2c, label %block_.L_400da3

block_400d2c:                                     ; preds = %block_.L_400d22
  %1927 = add i64 %1898, -8
  %1928 = add i64 %1926, 7
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i32*
  store i32 0, i32* %1929, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_400d33

block_.L_400d33:                                  ; preds = %block_.L_400d7d, %block_400d2c
  %1930 = phi i64 [ %2083, %block_.L_400d7d ], [ %.pre25, %block_400d2c ]
  %1931 = load i64, i64* %RBP.i, align 8
  %1932 = add i64 %1931, -8
  %1933 = add i64 %1930, 4
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i32*
  %1935 = load i32, i32* %1934, align 4
  store i8 0, i8* %14, align 1
  %1936 = and i32 %1935, 255
  %1937 = tail call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  store i8 %1940, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1941 = icmp eq i32 %1935, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %30, align 1
  %1943 = lshr i32 %1935, 31
  %1944 = trunc i32 %1943 to i8
  store i8 %1944, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1945 = xor i1 %1941, true
  %1946 = icmp eq i8 %1944, 0
  %1947 = and i1 %1946, %1945
  %.v95 = select i1 %1947, i64 93, i64 10
  %1948 = add i64 %1930, %.v95
  store i64 %1948, i64* %3, align 8
  br i1 %1947, label %block_.L_400d90, label %block_400d3d

block_400d3d:                                     ; preds = %block_.L_400d33
  %1949 = add i64 %1931, -12
  %1950 = add i64 %1948, 7
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i32*
  store i32 0, i32* %1951, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_400d44

block_.L_400d44:                                  ; preds = %block_400d4e, %block_400d3d
  %1952 = phi i64 [ %2053, %block_400d4e ], [ %.pre26, %block_400d3d ]
  %1953 = load i64, i64* %RBP.i, align 8
  %1954 = add i64 %1953, -12
  %1955 = add i64 %1952, 4
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i32*
  %1957 = load i32, i32* %1956, align 4
  store i8 0, i8* %14, align 1
  %1958 = and i32 %1957, 255
  %1959 = tail call i32 @llvm.ctpop.i32(i32 %1958)
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  %1962 = xor i8 %1961, 1
  store i8 %1962, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1963 = icmp eq i32 %1957, 0
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %30, align 1
  %1965 = lshr i32 %1957, 31
  %1966 = trunc i32 %1965 to i8
  store i8 %1966, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1967 = xor i1 %1963, true
  %1968 = icmp eq i8 %1966, 0
  %1969 = and i1 %1968, %1967
  %.v96 = select i1 %1969, i64 57, i64 10
  %1970 = add i64 %1952, %.v96
  store i64 %1970, i64* %3, align 8
  br i1 %1969, label %block_.L_400d7d, label %block_400d4e

block_400d4e:                                     ; preds = %block_.L_400d44
  %1971 = add i64 %1953, -4
  %1972 = add i64 %1970, 3
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RAX.i1121, align 8
  %1976 = add i64 %1953, -8
  %1977 = add i64 %1970, 6
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1976 to i32*
  %1979 = load i32, i32* %1978, align 4
  %1980 = zext i32 %1979 to i64
  store i64 %1980, i64* %RCX.i1089, align 8
  %1981 = add i64 %1970, 9
  store i64 %1981, i64* %3, align 8
  %1982 = load i32, i32* %1956, align 4
  %1983 = shl i32 %1982, 3
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RDX.i1086, align 8
  %1985 = add i32 %1983, %1979
  %1986 = shl i32 %1985, 3
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RCX.i1089, align 8
  %1988 = lshr i32 %1985, 28
  %1989 = and i32 %1988, 1
  %1990 = add i32 %1986, %1974
  %1991 = zext i32 %1990 to i64
  store i64 %1991, i64* %RAX.i1121, align 8
  %1992 = icmp ult i32 %1990, %1974
  %1993 = icmp ult i32 %1990, %1986
  %1994 = or i1 %1992, %1993
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %14, align 1
  %1996 = and i32 %1990, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %21, align 1
  %2001 = xor i64 %1987, %1975
  %2002 = trunc i64 %2001 to i32
  %2003 = xor i32 %2002, %1990
  %2004 = lshr i32 %2003, 4
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  store i8 %2006, i8* %27, align 1
  %2007 = icmp eq i32 %1990, 0
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %30, align 1
  %2009 = lshr i32 %1990, 31
  %2010 = trunc i32 %2009 to i8
  store i8 %2010, i8* %33, align 1
  %2011 = lshr i32 %1974, 31
  %2012 = xor i32 %2009, %2011
  %2013 = xor i32 %2009, %1989
  %2014 = add nuw nsw i32 %2012, %2013
  %2015 = icmp eq i32 %2014, 2
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %39, align 1
  %2017 = sext i32 %1990 to i64
  store i64 %2017, i64* %RSI.i1074, align 8
  %2018 = shl nsw i64 %2017, 2
  %2019 = add i64 %2018, ptrtoint (%G_0x606aa0___rsi_4__type* @G_0x606aa0___rsi_4_ to i64)
  %2020 = add i64 %1970, 33
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i32*
  store i32 1, i32* %2021, align 4
  %2022 = load i64, i64* %RBP.i, align 8
  %2023 = add i64 %2022, -12
  %2024 = load i64, i64* %3, align 8
  %2025 = add i64 %2024, 3
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2023 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = add i32 %2027, 1
  %2029 = zext i32 %2028 to i64
  store i64 %2029, i64* %RAX.i1121, align 8
  %2030 = icmp eq i32 %2027, -1
  %2031 = icmp eq i32 %2028, 0
  %2032 = or i1 %2030, %2031
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %14, align 1
  %2034 = and i32 %2028, 255
  %2035 = tail call i32 @llvm.ctpop.i32(i32 %2034)
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  %2038 = xor i8 %2037, 1
  store i8 %2038, i8* %21, align 1
  %2039 = xor i32 %2027, %2028
  %2040 = lshr i32 %2039, 4
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  store i8 %2042, i8* %27, align 1
  %2043 = zext i1 %2031 to i8
  store i8 %2043, i8* %30, align 1
  %2044 = lshr i32 %2028, 31
  %2045 = trunc i32 %2044 to i8
  store i8 %2045, i8* %33, align 1
  %2046 = lshr i32 %2027, 31
  %2047 = xor i32 %2044, %2046
  %2048 = add nuw nsw i32 %2047, %2044
  %2049 = icmp eq i32 %2048, 2
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %39, align 1
  %2051 = add i64 %2024, 9
  store i64 %2051, i64* %3, align 8
  store i32 %2028, i32* %2026, align 4
  %2052 = load i64, i64* %3, align 8
  %2053 = add i64 %2052, -52
  store i64 %2053, i64* %3, align 8
  br label %block_.L_400d44

block_.L_400d7d:                                  ; preds = %block_.L_400d44
  %2054 = add i64 %1953, -8
  %2055 = add i64 %1970, 8
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to i32*
  %2057 = load i32, i32* %2056, align 4
  %2058 = add i32 %2057, 1
  %2059 = zext i32 %2058 to i64
  store i64 %2059, i64* %RAX.i1121, align 8
  %2060 = icmp eq i32 %2057, -1
  %2061 = icmp eq i32 %2058, 0
  %2062 = or i1 %2060, %2061
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %14, align 1
  %2064 = and i32 %2058, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %21, align 1
  %2069 = xor i32 %2057, %2058
  %2070 = lshr i32 %2069, 4
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  store i8 %2072, i8* %27, align 1
  %2073 = zext i1 %2061 to i8
  store i8 %2073, i8* %30, align 1
  %2074 = lshr i32 %2058, 31
  %2075 = trunc i32 %2074 to i8
  store i8 %2075, i8* %33, align 1
  %2076 = lshr i32 %2057, 31
  %2077 = xor i32 %2074, %2076
  %2078 = add nuw nsw i32 %2077, %2074
  %2079 = icmp eq i32 %2078, 2
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %39, align 1
  %2081 = add i64 %1970, 14
  store i64 %2081, i64* %3, align 8
  store i32 %2058, i32* %2056, align 4
  %2082 = load i64, i64* %3, align 8
  %2083 = add i64 %2082, -88
  store i64 %2083, i64* %3, align 8
  br label %block_.L_400d33

block_.L_400d90:                                  ; preds = %block_.L_400d33
  %2084 = add i64 %1931, -4
  %2085 = add i64 %1948, 8
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i32*
  %2087 = load i32, i32* %2086, align 4
  %2088 = add i32 %2087, 1
  %2089 = zext i32 %2088 to i64
  store i64 %2089, i64* %RAX.i1121, align 8
  %2090 = icmp eq i32 %2087, -1
  %2091 = icmp eq i32 %2088, 0
  %2092 = or i1 %2090, %2091
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %14, align 1
  %2094 = and i32 %2088, 255
  %2095 = tail call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  store i8 %2098, i8* %21, align 1
  %2099 = xor i32 %2087, %2088
  %2100 = lshr i32 %2099, 4
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  store i8 %2102, i8* %27, align 1
  %2103 = zext i1 %2091 to i8
  store i8 %2103, i8* %30, align 1
  %2104 = lshr i32 %2088, 31
  %2105 = trunc i32 %2104 to i8
  store i8 %2105, i8* %33, align 1
  %2106 = lshr i32 %2087, 31
  %2107 = xor i32 %2104, %2106
  %2108 = add nuw nsw i32 %2107, %2104
  %2109 = icmp eq i32 %2108, 2
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %39, align 1
  %2111 = add i64 %1948, 14
  store i64 %2111, i64* %3, align 8
  store i32 %2088, i32* %2086, align 4
  %2112 = load i64, i64* %3, align 8
  %2113 = add i64 %2112, -124
  store i64 %2113, i64* %3, align 8
  br label %block_.L_400d22

block_.L_400da3:                                  ; preds = %block_.L_400d22
  store i32 1, i32* bitcast (%G_0x619208_type* @G_0x619208 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x610268_type* @G_0x610268 to i32*), align 8
  %2114 = add i64 %1926, 29
  store i64 %2114, i64* %3, align 8
  store i32 0, i32* %1901, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_400dc0

block_.L_400dc0:                                  ; preds = %block_.L_400e2e, %block_.L_400da3
  %2115 = phi i64 [ %2331, %block_.L_400e2e ], [ %.pre27, %block_.L_400da3 ]
  %2116 = load i64, i64* %RBP.i, align 8
  %2117 = add i64 %2116, -4
  %2118 = add i64 %2115, 4
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i32*
  %2120 = load i32, i32* %2119, align 4
  store i8 0, i8* %14, align 1
  %2121 = and i32 %2120, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2126 = icmp eq i32 %2120, 0
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %30, align 1
  %2128 = lshr i32 %2120, 31
  %2129 = trunc i32 %2128 to i8
  store i8 %2129, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2130 = xor i1 %2126, true
  %2131 = icmp eq i8 %2129, 0
  %2132 = and i1 %2131, %2130
  %.v97 = select i1 %2132, i64 129, i64 10
  %2133 = add i64 %2115, %.v97
  store i64 %2133, i64* %3, align 8
  br i1 %2132, label %block_.L_400e41, label %block_400dca

block_400dca:                                     ; preds = %block_.L_400dc0
  %2134 = add i64 %2116, -8
  %2135 = add i64 %2133, 7
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i32*
  store i32 0, i32* %2136, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_400dd1

block_.L_400dd1:                                  ; preds = %block_.L_400e1b, %block_400dca
  %2137 = phi i64 [ %2301, %block_.L_400e1b ], [ %.pre28, %block_400dca ]
  %2138 = load i64, i64* %RBP.i, align 8
  %2139 = add i64 %2138, -8
  %2140 = add i64 %2137, 4
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i32*
  %2142 = load i32, i32* %2141, align 4
  %2143 = add i32 %2142, -2
  %2144 = icmp ult i32 %2142, 2
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %14, align 1
  %2146 = and i32 %2143, 255
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  store i8 %2150, i8* %21, align 1
  %2151 = xor i32 %2142, %2143
  %2152 = lshr i32 %2151, 4
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  store i8 %2154, i8* %27, align 1
  %2155 = icmp eq i32 %2143, 0
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %30, align 1
  %2157 = lshr i32 %2143, 31
  %2158 = trunc i32 %2157 to i8
  store i8 %2158, i8* %33, align 1
  %2159 = lshr i32 %2142, 31
  %2160 = xor i32 %2157, %2159
  %2161 = add nuw nsw i32 %2160, %2159
  %2162 = icmp eq i32 %2161, 2
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %39, align 1
  %2164 = icmp ne i8 %2158, 0
  %2165 = xor i1 %2164, %2162
  %.demorgan98 = or i1 %2155, %2165
  %.v99 = select i1 %.demorgan98, i64 10, i64 93
  %2166 = add i64 %2137, %.v99
  store i64 %2166, i64* %3, align 8
  br i1 %.demorgan98, label %block_400ddb, label %block_.L_400e2e

block_400ddb:                                     ; preds = %block_.L_400dd1
  %2167 = add i64 %2138, -12
  %2168 = add i64 %2166, 7
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  store i32 0, i32* %2169, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_400de2

block_.L_400de2:                                  ; preds = %block_400dec, %block_400ddb
  %2170 = phi i64 [ %2271, %block_400dec ], [ %.pre29, %block_400ddb ]
  %2171 = load i64, i64* %RBP.i, align 8
  %2172 = add i64 %2171, -12
  %2173 = add i64 %2170, 4
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i32*
  %2175 = load i32, i32* %2174, align 4
  store i8 0, i8* %14, align 1
  %2176 = and i32 %2175, 255
  %2177 = tail call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  store i8 %2180, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2181 = icmp eq i32 %2175, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %30, align 1
  %2183 = lshr i32 %2175, 31
  %2184 = trunc i32 %2183 to i8
  store i8 %2184, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2185 = xor i1 %2181, true
  %2186 = icmp eq i8 %2184, 0
  %2187 = and i1 %2186, %2185
  %.v100 = select i1 %2187, i64 57, i64 10
  %2188 = add i64 %2170, %.v100
  store i64 %2188, i64* %3, align 8
  br i1 %2187, label %block_.L_400e1b, label %block_400dec

block_400dec:                                     ; preds = %block_.L_400de2
  %2189 = add i64 %2171, -4
  %2190 = add i64 %2188, 3
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i32*
  %2192 = load i32, i32* %2191, align 4
  %2193 = zext i32 %2192 to i64
  store i64 %2193, i64* %RAX.i1121, align 8
  %2194 = add i64 %2171, -8
  %2195 = add i64 %2188, 6
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i32*
  %2197 = load i32, i32* %2196, align 4
  %2198 = zext i32 %2197 to i64
  store i64 %2198, i64* %RCX.i1089, align 8
  %2199 = add i64 %2188, 9
  store i64 %2199, i64* %3, align 8
  %2200 = load i32, i32* %2174, align 4
  %2201 = shl i32 %2200, 3
  %2202 = zext i32 %2201 to i64
  store i64 %2202, i64* %RDX.i1086, align 8
  %2203 = add i32 %2201, %2197
  %2204 = shl i32 %2203, 3
  %2205 = zext i32 %2204 to i64
  store i64 %2205, i64* %RCX.i1089, align 8
  %2206 = lshr i32 %2203, 28
  %2207 = and i32 %2206, 1
  %2208 = add i32 %2204, %2192
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RAX.i1121, align 8
  %2210 = icmp ult i32 %2208, %2192
  %2211 = icmp ult i32 %2208, %2204
  %2212 = or i1 %2210, %2211
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %14, align 1
  %2214 = and i32 %2208, 255
  %2215 = tail call i32 @llvm.ctpop.i32(i32 %2214)
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  %2218 = xor i8 %2217, 1
  store i8 %2218, i8* %21, align 1
  %2219 = xor i64 %2205, %2193
  %2220 = trunc i64 %2219 to i32
  %2221 = xor i32 %2220, %2208
  %2222 = lshr i32 %2221, 4
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  store i8 %2224, i8* %27, align 1
  %2225 = icmp eq i32 %2208, 0
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %30, align 1
  %2227 = lshr i32 %2208, 31
  %2228 = trunc i32 %2227 to i8
  store i8 %2228, i8* %33, align 1
  %2229 = lshr i32 %2192, 31
  %2230 = xor i32 %2227, %2229
  %2231 = xor i32 %2227, %2207
  %2232 = add nuw nsw i32 %2230, %2231
  %2233 = icmp eq i32 %2232, 2
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %39, align 1
  %2235 = sext i32 %2208 to i64
  store i64 %2235, i64* %RSI.i1074, align 8
  %2236 = shl nsw i64 %2235, 2
  %2237 = add i64 %2236, ptrtoint (%G_0x6072a0___rsi_4__type* @G_0x6072a0___rsi_4_ to i64)
  %2238 = add i64 %2188, 33
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i32*
  store i32 1, i32* %2239, align 4
  %2240 = load i64, i64* %RBP.i, align 8
  %2241 = add i64 %2240, -12
  %2242 = load i64, i64* %3, align 8
  %2243 = add i64 %2242, 3
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2241 to i32*
  %2245 = load i32, i32* %2244, align 4
  %2246 = add i32 %2245, 1
  %2247 = zext i32 %2246 to i64
  store i64 %2247, i64* %RAX.i1121, align 8
  %2248 = icmp eq i32 %2245, -1
  %2249 = icmp eq i32 %2246, 0
  %2250 = or i1 %2248, %2249
  %2251 = zext i1 %2250 to i8
  store i8 %2251, i8* %14, align 1
  %2252 = and i32 %2246, 255
  %2253 = tail call i32 @llvm.ctpop.i32(i32 %2252)
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  %2256 = xor i8 %2255, 1
  store i8 %2256, i8* %21, align 1
  %2257 = xor i32 %2245, %2246
  %2258 = lshr i32 %2257, 4
  %2259 = trunc i32 %2258 to i8
  %2260 = and i8 %2259, 1
  store i8 %2260, i8* %27, align 1
  %2261 = zext i1 %2249 to i8
  store i8 %2261, i8* %30, align 1
  %2262 = lshr i32 %2246, 31
  %2263 = trunc i32 %2262 to i8
  store i8 %2263, i8* %33, align 1
  %2264 = lshr i32 %2245, 31
  %2265 = xor i32 %2262, %2264
  %2266 = add nuw nsw i32 %2265, %2262
  %2267 = icmp eq i32 %2266, 2
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %39, align 1
  %2269 = add i64 %2242, 9
  store i64 %2269, i64* %3, align 8
  store i32 %2246, i32* %2244, align 4
  %2270 = load i64, i64* %3, align 8
  %2271 = add i64 %2270, -52
  store i64 %2271, i64* %3, align 8
  br label %block_.L_400de2

block_.L_400e1b:                                  ; preds = %block_.L_400de2
  %2272 = add i64 %2171, -8
  %2273 = add i64 %2188, 8
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i32*
  %2275 = load i32, i32* %2274, align 4
  %2276 = add i32 %2275, 1
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RAX.i1121, align 8
  %2278 = icmp eq i32 %2275, -1
  %2279 = icmp eq i32 %2276, 0
  %2280 = or i1 %2278, %2279
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %14, align 1
  %2282 = and i32 %2276, 255
  %2283 = tail call i32 @llvm.ctpop.i32(i32 %2282)
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = xor i8 %2285, 1
  store i8 %2286, i8* %21, align 1
  %2287 = xor i32 %2275, %2276
  %2288 = lshr i32 %2287, 4
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  store i8 %2290, i8* %27, align 1
  %2291 = zext i1 %2279 to i8
  store i8 %2291, i8* %30, align 1
  %2292 = lshr i32 %2276, 31
  %2293 = trunc i32 %2292 to i8
  store i8 %2293, i8* %33, align 1
  %2294 = lshr i32 %2275, 31
  %2295 = xor i32 %2292, %2294
  %2296 = add nuw nsw i32 %2295, %2292
  %2297 = icmp eq i32 %2296, 2
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %39, align 1
  %2299 = add i64 %2188, 14
  store i64 %2299, i64* %3, align 8
  store i32 %2276, i32* %2274, align 4
  %2300 = load i64, i64* %3, align 8
  %2301 = add i64 %2300, -88
  store i64 %2301, i64* %3, align 8
  br label %block_.L_400dd1

block_.L_400e2e:                                  ; preds = %block_.L_400dd1
  %2302 = add i64 %2138, -4
  %2303 = add i64 %2166, 8
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2302 to i32*
  %2305 = load i32, i32* %2304, align 4
  %2306 = add i32 %2305, 1
  %2307 = zext i32 %2306 to i64
  store i64 %2307, i64* %RAX.i1121, align 8
  %2308 = icmp eq i32 %2305, -1
  %2309 = icmp eq i32 %2306, 0
  %2310 = or i1 %2308, %2309
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %14, align 1
  %2312 = and i32 %2306, 255
  %2313 = tail call i32 @llvm.ctpop.i32(i32 %2312)
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  %2316 = xor i8 %2315, 1
  store i8 %2316, i8* %21, align 1
  %2317 = xor i32 %2305, %2306
  %2318 = lshr i32 %2317, 4
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  store i8 %2320, i8* %27, align 1
  %2321 = zext i1 %2309 to i8
  store i8 %2321, i8* %30, align 1
  %2322 = lshr i32 %2306, 31
  %2323 = trunc i32 %2322 to i8
  store i8 %2323, i8* %33, align 1
  %2324 = lshr i32 %2305, 31
  %2325 = xor i32 %2322, %2324
  %2326 = add nuw nsw i32 %2325, %2322
  %2327 = icmp eq i32 %2326, 2
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %39, align 1
  %2329 = add i64 %2166, 14
  store i64 %2329, i64* %3, align 8
  store i32 %2306, i32* %2304, align 4
  %2330 = load i64, i64* %3, align 8
  %2331 = add i64 %2330, -124
  store i64 %2331, i64* %3, align 8
  br label %block_.L_400dc0

block_.L_400e41:                                  ; preds = %block_.L_400dc0
  store i32 1, i32* bitcast (%G_0x61920c_type* @G_0x61920c to i32*), align 8
  store i32 16, i32* bitcast (%G_0x61026c_type* @G_0x61026c to i32*), align 8
  %2332 = add i64 %2133, 29
  store i64 %2332, i64* %3, align 8
  store i32 0, i32* %2119, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_400e5e

block_.L_400e5e:                                  ; preds = %block_.L_400ecc, %block_.L_400e41
  %2333 = phi i64 [ %2549, %block_.L_400ecc ], [ %.pre30, %block_.L_400e41 ]
  %2334 = load i64, i64* %RBP.i, align 8
  %2335 = add i64 %2334, -4
  %2336 = add i64 %2333, 4
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i32*
  %2338 = load i32, i32* %2337, align 4
  store i8 0, i8* %14, align 1
  %2339 = and i32 %2338, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2344 = icmp eq i32 %2338, 0
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %30, align 1
  %2346 = lshr i32 %2338, 31
  %2347 = trunc i32 %2346 to i8
  store i8 %2347, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2348 = xor i1 %2344, true
  %2349 = icmp eq i8 %2347, 0
  %2350 = and i1 %2349, %2348
  %.v101 = select i1 %2350, i64 129, i64 10
  %2351 = add i64 %2333, %.v101
  store i64 %2351, i64* %3, align 8
  br i1 %2350, label %block_.L_400edf, label %block_400e68

block_400e68:                                     ; preds = %block_.L_400e5e
  %2352 = add i64 %2334, -8
  %2353 = add i64 %2351, 7
  store i64 %2353, i64* %3, align 8
  %2354 = inttoptr i64 %2352 to i32*
  store i32 0, i32* %2354, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_400e6f

block_.L_400e6f:                                  ; preds = %block_.L_400eb9, %block_400e68
  %2355 = phi i64 [ %2519, %block_.L_400eb9 ], [ %.pre31, %block_400e68 ]
  %2356 = load i64, i64* %RBP.i, align 8
  %2357 = add i64 %2356, -8
  %2358 = add i64 %2355, 4
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i32*
  %2360 = load i32, i32* %2359, align 4
  store i8 0, i8* %14, align 1
  %2361 = and i32 %2360, 255
  %2362 = tail call i32 @llvm.ctpop.i32(i32 %2361)
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  %2365 = xor i8 %2364, 1
  store i8 %2365, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2366 = icmp eq i32 %2360, 0
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %30, align 1
  %2368 = lshr i32 %2360, 31
  %2369 = trunc i32 %2368 to i8
  store i8 %2369, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2370 = xor i1 %2366, true
  %2371 = icmp eq i8 %2369, 0
  %2372 = and i1 %2371, %2370
  %.v102 = select i1 %2372, i64 93, i64 10
  %2373 = add i64 %2355, %.v102
  store i64 %2373, i64* %3, align 8
  br i1 %2372, label %block_.L_400ecc, label %block_400e79

block_400e79:                                     ; preds = %block_.L_400e6f
  %2374 = add i64 %2356, -12
  %2375 = add i64 %2373, 7
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i32*
  store i32 0, i32* %2376, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_400e80

block_.L_400e80:                                  ; preds = %block_400e8a, %block_400e79
  %2377 = phi i64 [ %2489, %block_400e8a ], [ %.pre32, %block_400e79 ]
  %2378 = load i64, i64* %RBP.i, align 8
  %2379 = add i64 %2378, -12
  %2380 = add i64 %2377, 4
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2379 to i32*
  %2382 = load i32, i32* %2381, align 4
  %2383 = add i32 %2382, -2
  %2384 = icmp ult i32 %2382, 2
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %14, align 1
  %2386 = and i32 %2383, 255
  %2387 = tail call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  store i8 %2390, i8* %21, align 1
  %2391 = xor i32 %2382, %2383
  %2392 = lshr i32 %2391, 4
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  store i8 %2394, i8* %27, align 1
  %2395 = icmp eq i32 %2383, 0
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %30, align 1
  %2397 = lshr i32 %2383, 31
  %2398 = trunc i32 %2397 to i8
  store i8 %2398, i8* %33, align 1
  %2399 = lshr i32 %2382, 31
  %2400 = xor i32 %2397, %2399
  %2401 = add nuw nsw i32 %2400, %2399
  %2402 = icmp eq i32 %2401, 2
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %39, align 1
  %2404 = icmp ne i8 %2398, 0
  %2405 = xor i1 %2404, %2402
  %.demorgan103 = or i1 %2395, %2405
  %.v104 = select i1 %.demorgan103, i64 10, i64 57
  %2406 = add i64 %2377, %.v104
  store i64 %2406, i64* %3, align 8
  br i1 %.demorgan103, label %block_400e8a, label %block_.L_400eb9

block_400e8a:                                     ; preds = %block_.L_400e80
  %2407 = add i64 %2378, -4
  %2408 = add i64 %2406, 3
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i32*
  %2410 = load i32, i32* %2409, align 4
  %2411 = zext i32 %2410 to i64
  store i64 %2411, i64* %RAX.i1121, align 8
  %2412 = add i64 %2378, -8
  %2413 = add i64 %2406, 6
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RCX.i1089, align 8
  %2417 = add i64 %2406, 9
  store i64 %2417, i64* %3, align 8
  %2418 = load i32, i32* %2381, align 4
  %2419 = shl i32 %2418, 3
  %2420 = zext i32 %2419 to i64
  store i64 %2420, i64* %RDX.i1086, align 8
  %2421 = add i32 %2419, %2415
  %2422 = shl i32 %2421, 3
  %2423 = zext i32 %2422 to i64
  store i64 %2423, i64* %RCX.i1089, align 8
  %2424 = lshr i32 %2421, 28
  %2425 = and i32 %2424, 1
  %2426 = add i32 %2422, %2410
  %2427 = zext i32 %2426 to i64
  store i64 %2427, i64* %RAX.i1121, align 8
  %2428 = icmp ult i32 %2426, %2410
  %2429 = icmp ult i32 %2426, %2422
  %2430 = or i1 %2428, %2429
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %14, align 1
  %2432 = and i32 %2426, 255
  %2433 = tail call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %21, align 1
  %2437 = xor i64 %2423, %2411
  %2438 = trunc i64 %2437 to i32
  %2439 = xor i32 %2438, %2426
  %2440 = lshr i32 %2439, 4
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  store i8 %2442, i8* %27, align 1
  %2443 = icmp eq i32 %2426, 0
  %2444 = zext i1 %2443 to i8
  store i8 %2444, i8* %30, align 1
  %2445 = lshr i32 %2426, 31
  %2446 = trunc i32 %2445 to i8
  store i8 %2446, i8* %33, align 1
  %2447 = lshr i32 %2410, 31
  %2448 = xor i32 %2445, %2447
  %2449 = xor i32 %2445, %2425
  %2450 = add nuw nsw i32 %2448, %2449
  %2451 = icmp eq i32 %2450, 2
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %39, align 1
  %2453 = sext i32 %2426 to i64
  store i64 %2453, i64* %RSI.i1074, align 8
  %2454 = shl nsw i64 %2453, 2
  %2455 = add i64 %2454, ptrtoint (%G_0x607aa0___rsi_4__type* @G_0x607aa0___rsi_4_ to i64)
  %2456 = add i64 %2406, 33
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i32*
  store i32 1, i32* %2457, align 4
  %2458 = load i64, i64* %RBP.i, align 8
  %2459 = add i64 %2458, -12
  %2460 = load i64, i64* %3, align 8
  %2461 = add i64 %2460, 3
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2459 to i32*
  %2463 = load i32, i32* %2462, align 4
  %2464 = add i32 %2463, 1
  %2465 = zext i32 %2464 to i64
  store i64 %2465, i64* %RAX.i1121, align 8
  %2466 = icmp eq i32 %2463, -1
  %2467 = icmp eq i32 %2464, 0
  %2468 = or i1 %2466, %2467
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %14, align 1
  %2470 = and i32 %2464, 255
  %2471 = tail call i32 @llvm.ctpop.i32(i32 %2470)
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  %2474 = xor i8 %2473, 1
  store i8 %2474, i8* %21, align 1
  %2475 = xor i32 %2463, %2464
  %2476 = lshr i32 %2475, 4
  %2477 = trunc i32 %2476 to i8
  %2478 = and i8 %2477, 1
  store i8 %2478, i8* %27, align 1
  %2479 = zext i1 %2467 to i8
  store i8 %2479, i8* %30, align 1
  %2480 = lshr i32 %2464, 31
  %2481 = trunc i32 %2480 to i8
  store i8 %2481, i8* %33, align 1
  %2482 = lshr i32 %2463, 31
  %2483 = xor i32 %2480, %2482
  %2484 = add nuw nsw i32 %2483, %2480
  %2485 = icmp eq i32 %2484, 2
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %39, align 1
  %2487 = add i64 %2460, 9
  store i64 %2487, i64* %3, align 8
  store i32 %2464, i32* %2462, align 4
  %2488 = load i64, i64* %3, align 8
  %2489 = add i64 %2488, -52
  store i64 %2489, i64* %3, align 8
  br label %block_.L_400e80

block_.L_400eb9:                                  ; preds = %block_.L_400e80
  %2490 = add i64 %2378, -8
  %2491 = add i64 %2406, 8
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i32*
  %2493 = load i32, i32* %2492, align 4
  %2494 = add i32 %2493, 1
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RAX.i1121, align 8
  %2496 = icmp eq i32 %2493, -1
  %2497 = icmp eq i32 %2494, 0
  %2498 = or i1 %2496, %2497
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %14, align 1
  %2500 = and i32 %2494, 255
  %2501 = tail call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  store i8 %2504, i8* %21, align 1
  %2505 = xor i32 %2493, %2494
  %2506 = lshr i32 %2505, 4
  %2507 = trunc i32 %2506 to i8
  %2508 = and i8 %2507, 1
  store i8 %2508, i8* %27, align 1
  %2509 = zext i1 %2497 to i8
  store i8 %2509, i8* %30, align 1
  %2510 = lshr i32 %2494, 31
  %2511 = trunc i32 %2510 to i8
  store i8 %2511, i8* %33, align 1
  %2512 = lshr i32 %2493, 31
  %2513 = xor i32 %2510, %2512
  %2514 = add nuw nsw i32 %2513, %2510
  %2515 = icmp eq i32 %2514, 2
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %39, align 1
  %2517 = add i64 %2406, 14
  store i64 %2517, i64* %3, align 8
  store i32 %2494, i32* %2492, align 4
  %2518 = load i64, i64* %3, align 8
  %2519 = add i64 %2518, -88
  store i64 %2519, i64* %3, align 8
  br label %block_.L_400e6f

block_.L_400ecc:                                  ; preds = %block_.L_400e6f
  %2520 = add i64 %2356, -4
  %2521 = add i64 %2373, 8
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = add i32 %2523, 1
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RAX.i1121, align 8
  %2526 = icmp eq i32 %2523, -1
  %2527 = icmp eq i32 %2524, 0
  %2528 = or i1 %2526, %2527
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %14, align 1
  %2530 = and i32 %2524, 255
  %2531 = tail call i32 @llvm.ctpop.i32(i32 %2530)
  %2532 = trunc i32 %2531 to i8
  %2533 = and i8 %2532, 1
  %2534 = xor i8 %2533, 1
  store i8 %2534, i8* %21, align 1
  %2535 = xor i32 %2523, %2524
  %2536 = lshr i32 %2535, 4
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  store i8 %2538, i8* %27, align 1
  %2539 = zext i1 %2527 to i8
  store i8 %2539, i8* %30, align 1
  %2540 = lshr i32 %2524, 31
  %2541 = trunc i32 %2540 to i8
  store i8 %2541, i8* %33, align 1
  %2542 = lshr i32 %2523, 31
  %2543 = xor i32 %2540, %2542
  %2544 = add nuw nsw i32 %2543, %2540
  %2545 = icmp eq i32 %2544, 2
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %39, align 1
  %2547 = add i64 %2373, 14
  store i64 %2547, i64* %3, align 8
  store i32 %2524, i32* %2522, align 4
  %2548 = load i64, i64* %3, align 8
  %2549 = add i64 %2548, -124
  store i64 %2549, i64* %3, align 8
  br label %block_.L_400e5e

block_.L_400edf:                                  ; preds = %block_.L_400e5e
  store i32 1, i32* bitcast (%G_0x619210_type* @G_0x619210 to i32*), align 8
  store i32 128, i32* bitcast (%G_0x610270_type* @G_0x610270 to i32*), align 8
  %2550 = add i64 %2351, 29
  store i64 %2550, i64* %3, align 8
  store i32 0, i32* %2337, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_400efc

block_.L_400efc:                                  ; preds = %block_.L_400f6a, %block_.L_400edf
  %2551 = phi i64 [ %2778, %block_.L_400f6a ], [ %.pre33, %block_.L_400edf ]
  %2552 = load i64, i64* %RBP.i, align 8
  %2553 = add i64 %2552, -4
  %2554 = add i64 %2551, 4
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2553 to i32*
  %2556 = load i32, i32* %2555, align 4
  %2557 = add i32 %2556, -1
  %2558 = icmp eq i32 %2556, 0
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %14, align 1
  %2560 = and i32 %2557, 255
  %2561 = tail call i32 @llvm.ctpop.i32(i32 %2560)
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = xor i8 %2563, 1
  store i8 %2564, i8* %21, align 1
  %2565 = xor i32 %2556, %2557
  %2566 = lshr i32 %2565, 4
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  store i8 %2568, i8* %27, align 1
  %2569 = icmp eq i32 %2557, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %30, align 1
  %2571 = lshr i32 %2557, 31
  %2572 = trunc i32 %2571 to i8
  store i8 %2572, i8* %33, align 1
  %2573 = lshr i32 %2556, 31
  %2574 = xor i32 %2571, %2573
  %2575 = add nuw nsw i32 %2574, %2573
  %2576 = icmp eq i32 %2575, 2
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %39, align 1
  %2578 = icmp ne i8 %2572, 0
  %2579 = xor i1 %2578, %2576
  %.demorgan105 = or i1 %2569, %2579
  %.v106 = select i1 %.demorgan105, i64 10, i64 129
  %2580 = add i64 %2551, %.v106
  store i64 %2580, i64* %3, align 8
  br i1 %.demorgan105, label %block_400f06, label %block_.L_400f7d

block_400f06:                                     ; preds = %block_.L_400efc
  %2581 = add i64 %2552, -8
  %2582 = add i64 %2580, 7
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2581 to i32*
  store i32 0, i32* %2583, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_400f0d

block_.L_400f0d:                                  ; preds = %block_.L_400f57, %block_400f06
  %2584 = phi i64 [ %2748, %block_.L_400f57 ], [ %.pre34, %block_400f06 ]
  %2585 = load i64, i64* %RBP.i, align 8
  %2586 = add i64 %2585, -8
  %2587 = add i64 %2584, 4
  store i64 %2587, i64* %3, align 8
  %2588 = inttoptr i64 %2586 to i32*
  %2589 = load i32, i32* %2588, align 4
  %2590 = add i32 %2589, -1
  %2591 = icmp eq i32 %2589, 0
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %14, align 1
  %2593 = and i32 %2590, 255
  %2594 = tail call i32 @llvm.ctpop.i32(i32 %2593)
  %2595 = trunc i32 %2594 to i8
  %2596 = and i8 %2595, 1
  %2597 = xor i8 %2596, 1
  store i8 %2597, i8* %21, align 1
  %2598 = xor i32 %2589, %2590
  %2599 = lshr i32 %2598, 4
  %2600 = trunc i32 %2599 to i8
  %2601 = and i8 %2600, 1
  store i8 %2601, i8* %27, align 1
  %2602 = icmp eq i32 %2590, 0
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %30, align 1
  %2604 = lshr i32 %2590, 31
  %2605 = trunc i32 %2604 to i8
  store i8 %2605, i8* %33, align 1
  %2606 = lshr i32 %2589, 31
  %2607 = xor i32 %2604, %2606
  %2608 = add nuw nsw i32 %2607, %2606
  %2609 = icmp eq i32 %2608, 2
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %39, align 1
  %2611 = icmp ne i8 %2605, 0
  %2612 = xor i1 %2611, %2609
  %.demorgan107 = or i1 %2602, %2612
  %.v108 = select i1 %.demorgan107, i64 10, i64 93
  %2613 = add i64 %2584, %.v108
  store i64 %2613, i64* %3, align 8
  br i1 %.demorgan107, label %block_400f17, label %block_.L_400f6a

block_400f17:                                     ; preds = %block_.L_400f0d
  %2614 = add i64 %2585, -12
  %2615 = add i64 %2613, 7
  store i64 %2615, i64* %3, align 8
  %2616 = inttoptr i64 %2614 to i32*
  store i32 0, i32* %2616, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_400f1e

block_.L_400f1e:                                  ; preds = %block_400f28, %block_400f17
  %2617 = phi i64 [ %2718, %block_400f28 ], [ %.pre35, %block_400f17 ]
  %2618 = load i64, i64* %RBP.i, align 8
  %2619 = add i64 %2618, -12
  %2620 = add i64 %2617, 4
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2619 to i32*
  %2622 = load i32, i32* %2621, align 4
  store i8 0, i8* %14, align 1
  %2623 = and i32 %2622, 255
  %2624 = tail call i32 @llvm.ctpop.i32(i32 %2623)
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  %2627 = xor i8 %2626, 1
  store i8 %2627, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2628 = icmp eq i32 %2622, 0
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %30, align 1
  %2630 = lshr i32 %2622, 31
  %2631 = trunc i32 %2630 to i8
  store i8 %2631, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2632 = xor i1 %2628, true
  %2633 = icmp eq i8 %2631, 0
  %2634 = and i1 %2633, %2632
  %.v109 = select i1 %2634, i64 57, i64 10
  %2635 = add i64 %2617, %.v109
  store i64 %2635, i64* %3, align 8
  br i1 %2634, label %block_.L_400f57, label %block_400f28

block_400f28:                                     ; preds = %block_.L_400f1e
  %2636 = add i64 %2618, -4
  %2637 = add i64 %2635, 3
  store i64 %2637, i64* %3, align 8
  %2638 = inttoptr i64 %2636 to i32*
  %2639 = load i32, i32* %2638, align 4
  %2640 = zext i32 %2639 to i64
  store i64 %2640, i64* %RAX.i1121, align 8
  %2641 = add i64 %2618, -8
  %2642 = add i64 %2635, 6
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i32*
  %2644 = load i32, i32* %2643, align 4
  %2645 = zext i32 %2644 to i64
  store i64 %2645, i64* %RCX.i1089, align 8
  %2646 = add i64 %2635, 9
  store i64 %2646, i64* %3, align 8
  %2647 = load i32, i32* %2621, align 4
  %2648 = shl i32 %2647, 3
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RDX.i1086, align 8
  %2650 = add i32 %2648, %2644
  %2651 = shl i32 %2650, 3
  %2652 = zext i32 %2651 to i64
  store i64 %2652, i64* %RCX.i1089, align 8
  %2653 = lshr i32 %2650, 28
  %2654 = and i32 %2653, 1
  %2655 = add i32 %2651, %2639
  %2656 = zext i32 %2655 to i64
  store i64 %2656, i64* %RAX.i1121, align 8
  %2657 = icmp ult i32 %2655, %2639
  %2658 = icmp ult i32 %2655, %2651
  %2659 = or i1 %2657, %2658
  %2660 = zext i1 %2659 to i8
  store i8 %2660, i8* %14, align 1
  %2661 = and i32 %2655, 255
  %2662 = tail call i32 @llvm.ctpop.i32(i32 %2661)
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  store i8 %2665, i8* %21, align 1
  %2666 = xor i64 %2652, %2640
  %2667 = trunc i64 %2666 to i32
  %2668 = xor i32 %2667, %2655
  %2669 = lshr i32 %2668, 4
  %2670 = trunc i32 %2669 to i8
  %2671 = and i8 %2670, 1
  store i8 %2671, i8* %27, align 1
  %2672 = icmp eq i32 %2655, 0
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %30, align 1
  %2674 = lshr i32 %2655, 31
  %2675 = trunc i32 %2674 to i8
  store i8 %2675, i8* %33, align 1
  %2676 = lshr i32 %2639, 31
  %2677 = xor i32 %2674, %2676
  %2678 = xor i32 %2674, %2654
  %2679 = add nuw nsw i32 %2677, %2678
  %2680 = icmp eq i32 %2679, 2
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %39, align 1
  %2682 = sext i32 %2655 to i64
  store i64 %2682, i64* %RSI.i1074, align 8
  %2683 = shl nsw i64 %2682, 2
  %2684 = add i64 %2683, ptrtoint (%G_0x6082a0___rsi_4__type* @G_0x6082a0___rsi_4_ to i64)
  %2685 = add i64 %2635, 33
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2684 to i32*
  store i32 1, i32* %2686, align 4
  %2687 = load i64, i64* %RBP.i, align 8
  %2688 = add i64 %2687, -12
  %2689 = load i64, i64* %3, align 8
  %2690 = add i64 %2689, 3
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2688 to i32*
  %2692 = load i32, i32* %2691, align 4
  %2693 = add i32 %2692, 1
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RAX.i1121, align 8
  %2695 = icmp eq i32 %2692, -1
  %2696 = icmp eq i32 %2693, 0
  %2697 = or i1 %2695, %2696
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %14, align 1
  %2699 = and i32 %2693, 255
  %2700 = tail call i32 @llvm.ctpop.i32(i32 %2699)
  %2701 = trunc i32 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = xor i8 %2702, 1
  store i8 %2703, i8* %21, align 1
  %2704 = xor i32 %2692, %2693
  %2705 = lshr i32 %2704, 4
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  store i8 %2707, i8* %27, align 1
  %2708 = zext i1 %2696 to i8
  store i8 %2708, i8* %30, align 1
  %2709 = lshr i32 %2693, 31
  %2710 = trunc i32 %2709 to i8
  store i8 %2710, i8* %33, align 1
  %2711 = lshr i32 %2692, 31
  %2712 = xor i32 %2709, %2711
  %2713 = add nuw nsw i32 %2712, %2709
  %2714 = icmp eq i32 %2713, 2
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %39, align 1
  %2716 = add i64 %2689, 9
  store i64 %2716, i64* %3, align 8
  store i32 %2693, i32* %2691, align 4
  %2717 = load i64, i64* %3, align 8
  %2718 = add i64 %2717, -52
  store i64 %2718, i64* %3, align 8
  br label %block_.L_400f1e

block_.L_400f57:                                  ; preds = %block_.L_400f1e
  %2719 = add i64 %2618, -8
  %2720 = add i64 %2635, 8
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i32*
  %2722 = load i32, i32* %2721, align 4
  %2723 = add i32 %2722, 1
  %2724 = zext i32 %2723 to i64
  store i64 %2724, i64* %RAX.i1121, align 8
  %2725 = icmp eq i32 %2722, -1
  %2726 = icmp eq i32 %2723, 0
  %2727 = or i1 %2725, %2726
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %14, align 1
  %2729 = and i32 %2723, 255
  %2730 = tail call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  store i8 %2733, i8* %21, align 1
  %2734 = xor i32 %2722, %2723
  %2735 = lshr i32 %2734, 4
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  store i8 %2737, i8* %27, align 1
  %2738 = zext i1 %2726 to i8
  store i8 %2738, i8* %30, align 1
  %2739 = lshr i32 %2723, 31
  %2740 = trunc i32 %2739 to i8
  store i8 %2740, i8* %33, align 1
  %2741 = lshr i32 %2722, 31
  %2742 = xor i32 %2739, %2741
  %2743 = add nuw nsw i32 %2742, %2739
  %2744 = icmp eq i32 %2743, 2
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %39, align 1
  %2746 = add i64 %2635, 14
  store i64 %2746, i64* %3, align 8
  store i32 %2723, i32* %2721, align 4
  %2747 = load i64, i64* %3, align 8
  %2748 = add i64 %2747, -88
  store i64 %2748, i64* %3, align 8
  br label %block_.L_400f0d

block_.L_400f6a:                                  ; preds = %block_.L_400f0d
  %2749 = add i64 %2585, -4
  %2750 = add i64 %2613, 8
  store i64 %2750, i64* %3, align 8
  %2751 = inttoptr i64 %2749 to i32*
  %2752 = load i32, i32* %2751, align 4
  %2753 = add i32 %2752, 1
  %2754 = zext i32 %2753 to i64
  store i64 %2754, i64* %RAX.i1121, align 8
  %2755 = icmp eq i32 %2752, -1
  %2756 = icmp eq i32 %2753, 0
  %2757 = or i1 %2755, %2756
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %14, align 1
  %2759 = and i32 %2753, 255
  %2760 = tail call i32 @llvm.ctpop.i32(i32 %2759)
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  store i8 %2763, i8* %21, align 1
  %2764 = xor i32 %2752, %2753
  %2765 = lshr i32 %2764, 4
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  store i8 %2767, i8* %27, align 1
  %2768 = zext i1 %2756 to i8
  store i8 %2768, i8* %30, align 1
  %2769 = lshr i32 %2753, 31
  %2770 = trunc i32 %2769 to i8
  store i8 %2770, i8* %33, align 1
  %2771 = lshr i32 %2752, 31
  %2772 = xor i32 %2769, %2771
  %2773 = add nuw nsw i32 %2772, %2769
  %2774 = icmp eq i32 %2773, 2
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %39, align 1
  %2776 = add i64 %2613, 14
  store i64 %2776, i64* %3, align 8
  store i32 %2753, i32* %2751, align 4
  %2777 = load i64, i64* %3, align 8
  %2778 = add i64 %2777, -124
  store i64 %2778, i64* %3, align 8
  br label %block_.L_400efc

block_.L_400f7d:                                  ; preds = %block_.L_400efc
  store i32 2, i32* bitcast (%G_0x619214_type* @G_0x619214 to i32*), align 8
  store i32 9, i32* bitcast (%G_0x610274_type* @G_0x610274 to i32*), align 8
  %2779 = add i64 %2580, 29
  store i64 %2779, i64* %3, align 8
  store i32 0, i32* %2555, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_400f9a

block_.L_400f9a:                                  ; preds = %block_.L_401008, %block_.L_400f7d
  %2780 = phi i64 [ %3007, %block_.L_401008 ], [ %.pre36, %block_.L_400f7d ]
  %2781 = load i64, i64* %RBP.i, align 8
  %2782 = add i64 %2781, -4
  %2783 = add i64 %2780, 4
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i32*
  %2785 = load i32, i32* %2784, align 4
  %2786 = add i32 %2785, -1
  %2787 = icmp eq i32 %2785, 0
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %14, align 1
  %2789 = and i32 %2786, 255
  %2790 = tail call i32 @llvm.ctpop.i32(i32 %2789)
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  %2793 = xor i8 %2792, 1
  store i8 %2793, i8* %21, align 1
  %2794 = xor i32 %2785, %2786
  %2795 = lshr i32 %2794, 4
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  store i8 %2797, i8* %27, align 1
  %2798 = icmp eq i32 %2786, 0
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %30, align 1
  %2800 = lshr i32 %2786, 31
  %2801 = trunc i32 %2800 to i8
  store i8 %2801, i8* %33, align 1
  %2802 = lshr i32 %2785, 31
  %2803 = xor i32 %2800, %2802
  %2804 = add nuw nsw i32 %2803, %2802
  %2805 = icmp eq i32 %2804, 2
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %39, align 1
  %2807 = icmp ne i8 %2801, 0
  %2808 = xor i1 %2807, %2805
  %.demorgan110 = or i1 %2798, %2808
  %.v111 = select i1 %.demorgan110, i64 10, i64 129
  %2809 = add i64 %2780, %.v111
  store i64 %2809, i64* %3, align 8
  br i1 %.demorgan110, label %block_400fa4, label %block_.L_40101b

block_400fa4:                                     ; preds = %block_.L_400f9a
  %2810 = add i64 %2781, -8
  %2811 = add i64 %2809, 7
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2810 to i32*
  store i32 0, i32* %2812, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_400fab

block_.L_400fab:                                  ; preds = %block_.L_400ff5, %block_400fa4
  %2813 = phi i64 [ %2977, %block_.L_400ff5 ], [ %.pre37, %block_400fa4 ]
  %2814 = load i64, i64* %RBP.i, align 8
  %2815 = add i64 %2814, -8
  %2816 = add i64 %2813, 4
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2815 to i32*
  %2818 = load i32, i32* %2817, align 4
  store i8 0, i8* %14, align 1
  %2819 = and i32 %2818, 255
  %2820 = tail call i32 @llvm.ctpop.i32(i32 %2819)
  %2821 = trunc i32 %2820 to i8
  %2822 = and i8 %2821, 1
  %2823 = xor i8 %2822, 1
  store i8 %2823, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2824 = icmp eq i32 %2818, 0
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %30, align 1
  %2826 = lshr i32 %2818, 31
  %2827 = trunc i32 %2826 to i8
  store i8 %2827, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2828 = xor i1 %2824, true
  %2829 = icmp eq i8 %2827, 0
  %2830 = and i1 %2829, %2828
  %.v112 = select i1 %2830, i64 93, i64 10
  %2831 = add i64 %2813, %.v112
  store i64 %2831, i64* %3, align 8
  br i1 %2830, label %block_.L_401008, label %block_400fb5

block_400fb5:                                     ; preds = %block_.L_400fab
  %2832 = add i64 %2814, -12
  %2833 = add i64 %2831, 7
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  store i32 0, i32* %2834, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_400fbc

block_.L_400fbc:                                  ; preds = %block_400fc6, %block_400fb5
  %2835 = phi i64 [ %2947, %block_400fc6 ], [ %.pre38, %block_400fb5 ]
  %2836 = load i64, i64* %RBP.i, align 8
  %2837 = add i64 %2836, -12
  %2838 = add i64 %2835, 4
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2837 to i32*
  %2840 = load i32, i32* %2839, align 4
  %2841 = add i32 %2840, -1
  %2842 = icmp eq i32 %2840, 0
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %14, align 1
  %2844 = and i32 %2841, 255
  %2845 = tail call i32 @llvm.ctpop.i32(i32 %2844)
  %2846 = trunc i32 %2845 to i8
  %2847 = and i8 %2846, 1
  %2848 = xor i8 %2847, 1
  store i8 %2848, i8* %21, align 1
  %2849 = xor i32 %2840, %2841
  %2850 = lshr i32 %2849, 4
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  store i8 %2852, i8* %27, align 1
  %2853 = icmp eq i32 %2841, 0
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %30, align 1
  %2855 = lshr i32 %2841, 31
  %2856 = trunc i32 %2855 to i8
  store i8 %2856, i8* %33, align 1
  %2857 = lshr i32 %2840, 31
  %2858 = xor i32 %2855, %2857
  %2859 = add nuw nsw i32 %2858, %2857
  %2860 = icmp eq i32 %2859, 2
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %39, align 1
  %2862 = icmp ne i8 %2856, 0
  %2863 = xor i1 %2862, %2860
  %.demorgan113 = or i1 %2853, %2863
  %.v114 = select i1 %.demorgan113, i64 10, i64 57
  %2864 = add i64 %2835, %.v114
  store i64 %2864, i64* %3, align 8
  br i1 %.demorgan113, label %block_400fc6, label %block_.L_400ff5

block_400fc6:                                     ; preds = %block_.L_400fbc
  %2865 = add i64 %2836, -4
  %2866 = add i64 %2864, 3
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2865 to i32*
  %2868 = load i32, i32* %2867, align 4
  %2869 = zext i32 %2868 to i64
  store i64 %2869, i64* %RAX.i1121, align 8
  %2870 = add i64 %2836, -8
  %2871 = add i64 %2864, 6
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = zext i32 %2873 to i64
  store i64 %2874, i64* %RCX.i1089, align 8
  %2875 = add i64 %2864, 9
  store i64 %2875, i64* %3, align 8
  %2876 = load i32, i32* %2839, align 4
  %2877 = shl i32 %2876, 3
  %2878 = zext i32 %2877 to i64
  store i64 %2878, i64* %RDX.i1086, align 8
  %2879 = add i32 %2877, %2873
  %2880 = shl i32 %2879, 3
  %2881 = zext i32 %2880 to i64
  store i64 %2881, i64* %RCX.i1089, align 8
  %2882 = lshr i32 %2879, 28
  %2883 = and i32 %2882, 1
  %2884 = add i32 %2880, %2868
  %2885 = zext i32 %2884 to i64
  store i64 %2885, i64* %RAX.i1121, align 8
  %2886 = icmp ult i32 %2884, %2868
  %2887 = icmp ult i32 %2884, %2880
  %2888 = or i1 %2886, %2887
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %14, align 1
  %2890 = and i32 %2884, 255
  %2891 = tail call i32 @llvm.ctpop.i32(i32 %2890)
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = xor i8 %2893, 1
  store i8 %2894, i8* %21, align 1
  %2895 = xor i64 %2881, %2869
  %2896 = trunc i64 %2895 to i32
  %2897 = xor i32 %2896, %2884
  %2898 = lshr i32 %2897, 4
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  store i8 %2900, i8* %27, align 1
  %2901 = icmp eq i32 %2884, 0
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %30, align 1
  %2903 = lshr i32 %2884, 31
  %2904 = trunc i32 %2903 to i8
  store i8 %2904, i8* %33, align 1
  %2905 = lshr i32 %2868, 31
  %2906 = xor i32 %2903, %2905
  %2907 = xor i32 %2903, %2883
  %2908 = add nuw nsw i32 %2906, %2907
  %2909 = icmp eq i32 %2908, 2
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %39, align 1
  %2911 = sext i32 %2884 to i64
  store i64 %2911, i64* %RSI.i1074, align 8
  %2912 = shl nsw i64 %2911, 2
  %2913 = add i64 %2912, ptrtoint (%G_0x608aa0___rsi_4__type* @G_0x608aa0___rsi_4_ to i64)
  %2914 = add i64 %2864, 33
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to i32*
  store i32 1, i32* %2915, align 4
  %2916 = load i64, i64* %RBP.i, align 8
  %2917 = add i64 %2916, -12
  %2918 = load i64, i64* %3, align 8
  %2919 = add i64 %2918, 3
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2917 to i32*
  %2921 = load i32, i32* %2920, align 4
  %2922 = add i32 %2921, 1
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RAX.i1121, align 8
  %2924 = icmp eq i32 %2921, -1
  %2925 = icmp eq i32 %2922, 0
  %2926 = or i1 %2924, %2925
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %14, align 1
  %2928 = and i32 %2922, 255
  %2929 = tail call i32 @llvm.ctpop.i32(i32 %2928)
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  %2932 = xor i8 %2931, 1
  store i8 %2932, i8* %21, align 1
  %2933 = xor i32 %2921, %2922
  %2934 = lshr i32 %2933, 4
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  store i8 %2936, i8* %27, align 1
  %2937 = zext i1 %2925 to i8
  store i8 %2937, i8* %30, align 1
  %2938 = lshr i32 %2922, 31
  %2939 = trunc i32 %2938 to i8
  store i8 %2939, i8* %33, align 1
  %2940 = lshr i32 %2921, 31
  %2941 = xor i32 %2938, %2940
  %2942 = add nuw nsw i32 %2941, %2938
  %2943 = icmp eq i32 %2942, 2
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %39, align 1
  %2945 = add i64 %2918, 9
  store i64 %2945, i64* %3, align 8
  store i32 %2922, i32* %2920, align 4
  %2946 = load i64, i64* %3, align 8
  %2947 = add i64 %2946, -52
  store i64 %2947, i64* %3, align 8
  br label %block_.L_400fbc

block_.L_400ff5:                                  ; preds = %block_.L_400fbc
  %2948 = add i64 %2836, -8
  %2949 = add i64 %2864, 8
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i32*
  %2951 = load i32, i32* %2950, align 4
  %2952 = add i32 %2951, 1
  %2953 = zext i32 %2952 to i64
  store i64 %2953, i64* %RAX.i1121, align 8
  %2954 = icmp eq i32 %2951, -1
  %2955 = icmp eq i32 %2952, 0
  %2956 = or i1 %2954, %2955
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %14, align 1
  %2958 = and i32 %2952, 255
  %2959 = tail call i32 @llvm.ctpop.i32(i32 %2958)
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  %2962 = xor i8 %2961, 1
  store i8 %2962, i8* %21, align 1
  %2963 = xor i32 %2951, %2952
  %2964 = lshr i32 %2963, 4
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  store i8 %2966, i8* %27, align 1
  %2967 = zext i1 %2955 to i8
  store i8 %2967, i8* %30, align 1
  %2968 = lshr i32 %2952, 31
  %2969 = trunc i32 %2968 to i8
  store i8 %2969, i8* %33, align 1
  %2970 = lshr i32 %2951, 31
  %2971 = xor i32 %2968, %2970
  %2972 = add nuw nsw i32 %2971, %2968
  %2973 = icmp eq i32 %2972, 2
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %39, align 1
  %2975 = add i64 %2864, 14
  store i64 %2975, i64* %3, align 8
  store i32 %2952, i32* %2950, align 4
  %2976 = load i64, i64* %3, align 8
  %2977 = add i64 %2976, -88
  store i64 %2977, i64* %3, align 8
  br label %block_.L_400fab

block_.L_401008:                                  ; preds = %block_.L_400fab
  %2978 = add i64 %2814, -4
  %2979 = add i64 %2831, 8
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i32*
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
  %2997 = zext i1 %2985 to i8
  store i8 %2997, i8* %30, align 1
  %2998 = lshr i32 %2982, 31
  %2999 = trunc i32 %2998 to i8
  store i8 %2999, i8* %33, align 1
  %3000 = lshr i32 %2981, 31
  %3001 = xor i32 %2998, %3000
  %3002 = add nuw nsw i32 %3001, %2998
  %3003 = icmp eq i32 %3002, 2
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %39, align 1
  %3005 = add i64 %2831, 14
  store i64 %3005, i64* %3, align 8
  store i32 %2982, i32* %2980, align 4
  %3006 = load i64, i64* %3, align 8
  %3007 = add i64 %3006, -124
  store i64 %3007, i64* %3, align 8
  br label %block_.L_400f9a

block_.L_40101b:                                  ; preds = %block_.L_400f9a
  store i32 2, i32* bitcast (%G_0x619218_type* @G_0x619218 to i32*), align 8
  store i32 65, i32* bitcast (%G_0x610278_type* @G_0x610278 to i32*), align 8
  %3008 = add i64 %2809, 29
  store i64 %3008, i64* %3, align 8
  store i32 0, i32* %2784, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_401038

block_.L_401038:                                  ; preds = %block_.L_4010a6, %block_.L_40101b
  %3009 = phi i64 [ %3236, %block_.L_4010a6 ], [ %.pre39, %block_.L_40101b ]
  %3010 = load i64, i64* %RBP.i, align 8
  %3011 = add i64 %3010, -4
  %3012 = add i64 %3009, 4
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i32*
  %3014 = load i32, i32* %3013, align 4
  store i8 0, i8* %14, align 1
  %3015 = and i32 %3014, 255
  %3016 = tail call i32 @llvm.ctpop.i32(i32 %3015)
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  %3019 = xor i8 %3018, 1
  store i8 %3019, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3020 = icmp eq i32 %3014, 0
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %30, align 1
  %3022 = lshr i32 %3014, 31
  %3023 = trunc i32 %3022 to i8
  store i8 %3023, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3024 = xor i1 %3020, true
  %3025 = icmp eq i8 %3023, 0
  %3026 = and i1 %3025, %3024
  %.v115 = select i1 %3026, i64 129, i64 10
  %3027 = add i64 %3009, %.v115
  store i64 %3027, i64* %3, align 8
  br i1 %3026, label %block_.L_4010b9, label %block_401042

block_401042:                                     ; preds = %block_.L_401038
  %3028 = add i64 %3010, -8
  %3029 = add i64 %3027, 7
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  store i32 0, i32* %3030, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_401049

block_.L_401049:                                  ; preds = %block_.L_401093, %block_401042
  %3031 = phi i64 [ %3206, %block_.L_401093 ], [ %.pre40, %block_401042 ]
  %3032 = load i64, i64* %RBP.i, align 8
  %3033 = add i64 %3032, -8
  %3034 = add i64 %3031, 4
  store i64 %3034, i64* %3, align 8
  %3035 = inttoptr i64 %3033 to i32*
  %3036 = load i32, i32* %3035, align 4
  %3037 = add i32 %3036, -1
  %3038 = icmp eq i32 %3036, 0
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %14, align 1
  %3040 = and i32 %3037, 255
  %3041 = tail call i32 @llvm.ctpop.i32(i32 %3040)
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  %3044 = xor i8 %3043, 1
  store i8 %3044, i8* %21, align 1
  %3045 = xor i32 %3036, %3037
  %3046 = lshr i32 %3045, 4
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  store i8 %3048, i8* %27, align 1
  %3049 = icmp eq i32 %3037, 0
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %30, align 1
  %3051 = lshr i32 %3037, 31
  %3052 = trunc i32 %3051 to i8
  store i8 %3052, i8* %33, align 1
  %3053 = lshr i32 %3036, 31
  %3054 = xor i32 %3051, %3053
  %3055 = add nuw nsw i32 %3054, %3053
  %3056 = icmp eq i32 %3055, 2
  %3057 = zext i1 %3056 to i8
  store i8 %3057, i8* %39, align 1
  %3058 = icmp ne i8 %3052, 0
  %3059 = xor i1 %3058, %3056
  %.demorgan116 = or i1 %3049, %3059
  %.v117 = select i1 %.demorgan116, i64 10, i64 93
  %3060 = add i64 %3031, %.v117
  store i64 %3060, i64* %3, align 8
  br i1 %.demorgan116, label %block_401053, label %block_.L_4010a6

block_401053:                                     ; preds = %block_.L_401049
  %3061 = add i64 %3032, -12
  %3062 = add i64 %3060, 7
  store i64 %3062, i64* %3, align 8
  %3063 = inttoptr i64 %3061 to i32*
  store i32 0, i32* %3063, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_40105a

block_.L_40105a:                                  ; preds = %block_401064, %block_401053
  %3064 = phi i64 [ %3176, %block_401064 ], [ %.pre41, %block_401053 ]
  %3065 = load i64, i64* %RBP.i, align 8
  %3066 = add i64 %3065, -12
  %3067 = add i64 %3064, 4
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3066 to i32*
  %3069 = load i32, i32* %3068, align 4
  %3070 = add i32 %3069, -1
  %3071 = icmp eq i32 %3069, 0
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %14, align 1
  %3073 = and i32 %3070, 255
  %3074 = tail call i32 @llvm.ctpop.i32(i32 %3073)
  %3075 = trunc i32 %3074 to i8
  %3076 = and i8 %3075, 1
  %3077 = xor i8 %3076, 1
  store i8 %3077, i8* %21, align 1
  %3078 = xor i32 %3069, %3070
  %3079 = lshr i32 %3078, 4
  %3080 = trunc i32 %3079 to i8
  %3081 = and i8 %3080, 1
  store i8 %3081, i8* %27, align 1
  %3082 = icmp eq i32 %3070, 0
  %3083 = zext i1 %3082 to i8
  store i8 %3083, i8* %30, align 1
  %3084 = lshr i32 %3070, 31
  %3085 = trunc i32 %3084 to i8
  store i8 %3085, i8* %33, align 1
  %3086 = lshr i32 %3069, 31
  %3087 = xor i32 %3084, %3086
  %3088 = add nuw nsw i32 %3087, %3086
  %3089 = icmp eq i32 %3088, 2
  %3090 = zext i1 %3089 to i8
  store i8 %3090, i8* %39, align 1
  %3091 = icmp ne i8 %3085, 0
  %3092 = xor i1 %3091, %3089
  %.demorgan118 = or i1 %3082, %3092
  %.v119 = select i1 %.demorgan118, i64 10, i64 57
  %3093 = add i64 %3064, %.v119
  store i64 %3093, i64* %3, align 8
  br i1 %.demorgan118, label %block_401064, label %block_.L_401093

block_401064:                                     ; preds = %block_.L_40105a
  %3094 = add i64 %3065, -4
  %3095 = add i64 %3093, 3
  store i64 %3095, i64* %3, align 8
  %3096 = inttoptr i64 %3094 to i32*
  %3097 = load i32, i32* %3096, align 4
  %3098 = zext i32 %3097 to i64
  store i64 %3098, i64* %RAX.i1121, align 8
  %3099 = add i64 %3065, -8
  %3100 = add i64 %3093, 6
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to i32*
  %3102 = load i32, i32* %3101, align 4
  %3103 = zext i32 %3102 to i64
  store i64 %3103, i64* %RCX.i1089, align 8
  %3104 = add i64 %3093, 9
  store i64 %3104, i64* %3, align 8
  %3105 = load i32, i32* %3068, align 4
  %3106 = shl i32 %3105, 3
  %3107 = zext i32 %3106 to i64
  store i64 %3107, i64* %RDX.i1086, align 8
  %3108 = add i32 %3106, %3102
  %3109 = shl i32 %3108, 3
  %3110 = zext i32 %3109 to i64
  store i64 %3110, i64* %RCX.i1089, align 8
  %3111 = lshr i32 %3108, 28
  %3112 = and i32 %3111, 1
  %3113 = add i32 %3109, %3097
  %3114 = zext i32 %3113 to i64
  store i64 %3114, i64* %RAX.i1121, align 8
  %3115 = icmp ult i32 %3113, %3097
  %3116 = icmp ult i32 %3113, %3109
  %3117 = or i1 %3115, %3116
  %3118 = zext i1 %3117 to i8
  store i8 %3118, i8* %14, align 1
  %3119 = and i32 %3113, 255
  %3120 = tail call i32 @llvm.ctpop.i32(i32 %3119)
  %3121 = trunc i32 %3120 to i8
  %3122 = and i8 %3121, 1
  %3123 = xor i8 %3122, 1
  store i8 %3123, i8* %21, align 1
  %3124 = xor i64 %3110, %3098
  %3125 = trunc i64 %3124 to i32
  %3126 = xor i32 %3125, %3113
  %3127 = lshr i32 %3126, 4
  %3128 = trunc i32 %3127 to i8
  %3129 = and i8 %3128, 1
  store i8 %3129, i8* %27, align 1
  %3130 = icmp eq i32 %3113, 0
  %3131 = zext i1 %3130 to i8
  store i8 %3131, i8* %30, align 1
  %3132 = lshr i32 %3113, 31
  %3133 = trunc i32 %3132 to i8
  store i8 %3133, i8* %33, align 1
  %3134 = lshr i32 %3097, 31
  %3135 = xor i32 %3132, %3134
  %3136 = xor i32 %3132, %3112
  %3137 = add nuw nsw i32 %3135, %3136
  %3138 = icmp eq i32 %3137, 2
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %39, align 1
  %3140 = sext i32 %3113 to i64
  store i64 %3140, i64* %RSI.i1074, align 8
  %3141 = shl nsw i64 %3140, 2
  %3142 = add i64 %3141, ptrtoint (%G_0x6092a0___rsi_4__type* @G_0x6092a0___rsi_4_ to i64)
  %3143 = add i64 %3093, 33
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3142 to i32*
  store i32 1, i32* %3144, align 4
  %3145 = load i64, i64* %RBP.i, align 8
  %3146 = add i64 %3145, -12
  %3147 = load i64, i64* %3, align 8
  %3148 = add i64 %3147, 3
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3146 to i32*
  %3150 = load i32, i32* %3149, align 4
  %3151 = add i32 %3150, 1
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RAX.i1121, align 8
  %3153 = icmp eq i32 %3150, -1
  %3154 = icmp eq i32 %3151, 0
  %3155 = or i1 %3153, %3154
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %14, align 1
  %3157 = and i32 %3151, 255
  %3158 = tail call i32 @llvm.ctpop.i32(i32 %3157)
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  store i8 %3161, i8* %21, align 1
  %3162 = xor i32 %3150, %3151
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %27, align 1
  %3166 = zext i1 %3154 to i8
  store i8 %3166, i8* %30, align 1
  %3167 = lshr i32 %3151, 31
  %3168 = trunc i32 %3167 to i8
  store i8 %3168, i8* %33, align 1
  %3169 = lshr i32 %3150, 31
  %3170 = xor i32 %3167, %3169
  %3171 = add nuw nsw i32 %3170, %3167
  %3172 = icmp eq i32 %3171, 2
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %39, align 1
  %3174 = add i64 %3147, 9
  store i64 %3174, i64* %3, align 8
  store i32 %3151, i32* %3149, align 4
  %3175 = load i64, i64* %3, align 8
  %3176 = add i64 %3175, -52
  store i64 %3176, i64* %3, align 8
  br label %block_.L_40105a

block_.L_401093:                                  ; preds = %block_.L_40105a
  %3177 = add i64 %3065, -8
  %3178 = add i64 %3093, 8
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3177 to i32*
  %3180 = load i32, i32* %3179, align 4
  %3181 = add i32 %3180, 1
  %3182 = zext i32 %3181 to i64
  store i64 %3182, i64* %RAX.i1121, align 8
  %3183 = icmp eq i32 %3180, -1
  %3184 = icmp eq i32 %3181, 0
  %3185 = or i1 %3183, %3184
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %14, align 1
  %3187 = and i32 %3181, 255
  %3188 = tail call i32 @llvm.ctpop.i32(i32 %3187)
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  %3191 = xor i8 %3190, 1
  store i8 %3191, i8* %21, align 1
  %3192 = xor i32 %3180, %3181
  %3193 = lshr i32 %3192, 4
  %3194 = trunc i32 %3193 to i8
  %3195 = and i8 %3194, 1
  store i8 %3195, i8* %27, align 1
  %3196 = zext i1 %3184 to i8
  store i8 %3196, i8* %30, align 1
  %3197 = lshr i32 %3181, 31
  %3198 = trunc i32 %3197 to i8
  store i8 %3198, i8* %33, align 1
  %3199 = lshr i32 %3180, 31
  %3200 = xor i32 %3197, %3199
  %3201 = add nuw nsw i32 %3200, %3197
  %3202 = icmp eq i32 %3201, 2
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %39, align 1
  %3204 = add i64 %3093, 14
  store i64 %3204, i64* %3, align 8
  store i32 %3181, i32* %3179, align 4
  %3205 = load i64, i64* %3, align 8
  %3206 = add i64 %3205, -88
  store i64 %3206, i64* %3, align 8
  br label %block_.L_401049

block_.L_4010a6:                                  ; preds = %block_.L_401049
  %3207 = add i64 %3032, -4
  %3208 = add i64 %3060, 8
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3207 to i32*
  %3210 = load i32, i32* %3209, align 4
  %3211 = add i32 %3210, 1
  %3212 = zext i32 %3211 to i64
  store i64 %3212, i64* %RAX.i1121, align 8
  %3213 = icmp eq i32 %3210, -1
  %3214 = icmp eq i32 %3211, 0
  %3215 = or i1 %3213, %3214
  %3216 = zext i1 %3215 to i8
  store i8 %3216, i8* %14, align 1
  %3217 = and i32 %3211, 255
  %3218 = tail call i32 @llvm.ctpop.i32(i32 %3217)
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  %3221 = xor i8 %3220, 1
  store i8 %3221, i8* %21, align 1
  %3222 = xor i32 %3210, %3211
  %3223 = lshr i32 %3222, 4
  %3224 = trunc i32 %3223 to i8
  %3225 = and i8 %3224, 1
  store i8 %3225, i8* %27, align 1
  %3226 = zext i1 %3214 to i8
  store i8 %3226, i8* %30, align 1
  %3227 = lshr i32 %3211, 31
  %3228 = trunc i32 %3227 to i8
  store i8 %3228, i8* %33, align 1
  %3229 = lshr i32 %3210, 31
  %3230 = xor i32 %3227, %3229
  %3231 = add nuw nsw i32 %3230, %3227
  %3232 = icmp eq i32 %3231, 2
  %3233 = zext i1 %3232 to i8
  store i8 %3233, i8* %39, align 1
  %3234 = add i64 %3060, 14
  store i64 %3234, i64* %3, align 8
  store i32 %3211, i32* %3209, align 4
  %3235 = load i64, i64* %3, align 8
  %3236 = add i64 %3235, -124
  store i64 %3236, i64* %3, align 8
  br label %block_.L_401038

block_.L_4010b9:                                  ; preds = %block_.L_401038
  store i32 2, i32* bitcast (%G_0x61921c_type* @G_0x61921c to i32*), align 8
  store i32 72, i32* bitcast (%G_0x61027c_type* @G_0x61027c to i32*), align 8
  %3237 = add i64 %3027, 29
  store i64 %3237, i64* %3, align 8
  store i32 0, i32* %3013, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_4010d6

block_.L_4010d6:                                  ; preds = %block_.L_401144, %block_.L_4010b9
  %3238 = phi i64 [ %3476, %block_.L_401144 ], [ %.pre42, %block_.L_4010b9 ]
  %3239 = load i64, i64* %RBP.i, align 8
  %3240 = add i64 %3239, -4
  %3241 = add i64 %3238, 4
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3240 to i32*
  %3243 = load i32, i32* %3242, align 4
  %3244 = add i32 %3243, -1
  %3245 = icmp eq i32 %3243, 0
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %14, align 1
  %3247 = and i32 %3244, 255
  %3248 = tail call i32 @llvm.ctpop.i32(i32 %3247)
  %3249 = trunc i32 %3248 to i8
  %3250 = and i8 %3249, 1
  %3251 = xor i8 %3250, 1
  store i8 %3251, i8* %21, align 1
  %3252 = xor i32 %3243, %3244
  %3253 = lshr i32 %3252, 4
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  store i8 %3255, i8* %27, align 1
  %3256 = icmp eq i32 %3244, 0
  %3257 = zext i1 %3256 to i8
  store i8 %3257, i8* %30, align 1
  %3258 = lshr i32 %3244, 31
  %3259 = trunc i32 %3258 to i8
  store i8 %3259, i8* %33, align 1
  %3260 = lshr i32 %3243, 31
  %3261 = xor i32 %3258, %3260
  %3262 = add nuw nsw i32 %3261, %3260
  %3263 = icmp eq i32 %3262, 2
  %3264 = zext i1 %3263 to i8
  store i8 %3264, i8* %39, align 1
  %3265 = icmp ne i8 %3259, 0
  %3266 = xor i1 %3265, %3263
  %.demorgan120 = or i1 %3256, %3266
  %.v121 = select i1 %.demorgan120, i64 10, i64 129
  %3267 = add i64 %3238, %.v121
  store i64 %3267, i64* %3, align 8
  br i1 %.demorgan120, label %block_4010e0, label %block_.L_401157

block_4010e0:                                     ; preds = %block_.L_4010d6
  %3268 = add i64 %3239, -8
  %3269 = add i64 %3267, 7
  store i64 %3269, i64* %3, align 8
  %3270 = inttoptr i64 %3268 to i32*
  store i32 0, i32* %3270, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_4010e7

block_.L_4010e7:                                  ; preds = %block_.L_401131, %block_4010e0
  %3271 = phi i64 [ %3446, %block_.L_401131 ], [ %.pre43, %block_4010e0 ]
  %3272 = load i64, i64* %RBP.i, align 8
  %3273 = add i64 %3272, -8
  %3274 = add i64 %3271, 4
  store i64 %3274, i64* %3, align 8
  %3275 = inttoptr i64 %3273 to i32*
  %3276 = load i32, i32* %3275, align 4
  %3277 = add i32 %3276, -1
  %3278 = icmp eq i32 %3276, 0
  %3279 = zext i1 %3278 to i8
  store i8 %3279, i8* %14, align 1
  %3280 = and i32 %3277, 255
  %3281 = tail call i32 @llvm.ctpop.i32(i32 %3280)
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  %3284 = xor i8 %3283, 1
  store i8 %3284, i8* %21, align 1
  %3285 = xor i32 %3276, %3277
  %3286 = lshr i32 %3285, 4
  %3287 = trunc i32 %3286 to i8
  %3288 = and i8 %3287, 1
  store i8 %3288, i8* %27, align 1
  %3289 = icmp eq i32 %3277, 0
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %30, align 1
  %3291 = lshr i32 %3277, 31
  %3292 = trunc i32 %3291 to i8
  store i8 %3292, i8* %33, align 1
  %3293 = lshr i32 %3276, 31
  %3294 = xor i32 %3291, %3293
  %3295 = add nuw nsw i32 %3294, %3293
  %3296 = icmp eq i32 %3295, 2
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %39, align 1
  %3298 = icmp ne i8 %3292, 0
  %3299 = xor i1 %3298, %3296
  %.demorgan122 = or i1 %3289, %3299
  %.v123 = select i1 %.demorgan122, i64 10, i64 93
  %3300 = add i64 %3271, %.v123
  store i64 %3300, i64* %3, align 8
  br i1 %.demorgan122, label %block_4010f1, label %block_.L_401144

block_4010f1:                                     ; preds = %block_.L_4010e7
  %3301 = add i64 %3272, -12
  %3302 = add i64 %3300, 7
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i32*
  store i32 0, i32* %3303, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_4010f8

block_.L_4010f8:                                  ; preds = %block_401102, %block_4010f1
  %3304 = phi i64 [ %3416, %block_401102 ], [ %.pre44, %block_4010f1 ]
  %3305 = load i64, i64* %RBP.i, align 8
  %3306 = add i64 %3305, -12
  %3307 = add i64 %3304, 4
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3306 to i32*
  %3309 = load i32, i32* %3308, align 4
  %3310 = add i32 %3309, -1
  %3311 = icmp eq i32 %3309, 0
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %14, align 1
  %3313 = and i32 %3310, 255
  %3314 = tail call i32 @llvm.ctpop.i32(i32 %3313)
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  %3317 = xor i8 %3316, 1
  store i8 %3317, i8* %21, align 1
  %3318 = xor i32 %3309, %3310
  %3319 = lshr i32 %3318, 4
  %3320 = trunc i32 %3319 to i8
  %3321 = and i8 %3320, 1
  store i8 %3321, i8* %27, align 1
  %3322 = icmp eq i32 %3310, 0
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %30, align 1
  %3324 = lshr i32 %3310, 31
  %3325 = trunc i32 %3324 to i8
  store i8 %3325, i8* %33, align 1
  %3326 = lshr i32 %3309, 31
  %3327 = xor i32 %3324, %3326
  %3328 = add nuw nsw i32 %3327, %3326
  %3329 = icmp eq i32 %3328, 2
  %3330 = zext i1 %3329 to i8
  store i8 %3330, i8* %39, align 1
  %3331 = icmp ne i8 %3325, 0
  %3332 = xor i1 %3331, %3329
  %.demorgan124 = or i1 %3322, %3332
  %.v125 = select i1 %.demorgan124, i64 10, i64 57
  %3333 = add i64 %3304, %.v125
  store i64 %3333, i64* %3, align 8
  br i1 %.demorgan124, label %block_401102, label %block_.L_401131

block_401102:                                     ; preds = %block_.L_4010f8
  %3334 = add i64 %3305, -4
  %3335 = add i64 %3333, 3
  store i64 %3335, i64* %3, align 8
  %3336 = inttoptr i64 %3334 to i32*
  %3337 = load i32, i32* %3336, align 4
  %3338 = zext i32 %3337 to i64
  store i64 %3338, i64* %RAX.i1121, align 8
  %3339 = add i64 %3305, -8
  %3340 = add i64 %3333, 6
  store i64 %3340, i64* %3, align 8
  %3341 = inttoptr i64 %3339 to i32*
  %3342 = load i32, i32* %3341, align 4
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %RCX.i1089, align 8
  %3344 = add i64 %3333, 9
  store i64 %3344, i64* %3, align 8
  %3345 = load i32, i32* %3308, align 4
  %3346 = shl i32 %3345, 3
  %3347 = zext i32 %3346 to i64
  store i64 %3347, i64* %RDX.i1086, align 8
  %3348 = add i32 %3346, %3342
  %3349 = shl i32 %3348, 3
  %3350 = zext i32 %3349 to i64
  store i64 %3350, i64* %RCX.i1089, align 8
  %3351 = lshr i32 %3348, 28
  %3352 = and i32 %3351, 1
  %3353 = add i32 %3349, %3337
  %3354 = zext i32 %3353 to i64
  store i64 %3354, i64* %RAX.i1121, align 8
  %3355 = icmp ult i32 %3353, %3337
  %3356 = icmp ult i32 %3353, %3349
  %3357 = or i1 %3355, %3356
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %14, align 1
  %3359 = and i32 %3353, 255
  %3360 = tail call i32 @llvm.ctpop.i32(i32 %3359)
  %3361 = trunc i32 %3360 to i8
  %3362 = and i8 %3361, 1
  %3363 = xor i8 %3362, 1
  store i8 %3363, i8* %21, align 1
  %3364 = xor i64 %3350, %3338
  %3365 = trunc i64 %3364 to i32
  %3366 = xor i32 %3365, %3353
  %3367 = lshr i32 %3366, 4
  %3368 = trunc i32 %3367 to i8
  %3369 = and i8 %3368, 1
  store i8 %3369, i8* %27, align 1
  %3370 = icmp eq i32 %3353, 0
  %3371 = zext i1 %3370 to i8
  store i8 %3371, i8* %30, align 1
  %3372 = lshr i32 %3353, 31
  %3373 = trunc i32 %3372 to i8
  store i8 %3373, i8* %33, align 1
  %3374 = lshr i32 %3337, 31
  %3375 = xor i32 %3372, %3374
  %3376 = xor i32 %3372, %3352
  %3377 = add nuw nsw i32 %3375, %3376
  %3378 = icmp eq i32 %3377, 2
  %3379 = zext i1 %3378 to i8
  store i8 %3379, i8* %39, align 1
  %3380 = sext i32 %3353 to i64
  store i64 %3380, i64* %RSI.i1074, align 8
  %3381 = shl nsw i64 %3380, 2
  %3382 = add i64 %3381, ptrtoint (%G_0x609aa0___rsi_4__type* @G_0x609aa0___rsi_4_ to i64)
  %3383 = add i64 %3333, 33
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i32*
  store i32 1, i32* %3384, align 4
  %3385 = load i64, i64* %RBP.i, align 8
  %3386 = add i64 %3385, -12
  %3387 = load i64, i64* %3, align 8
  %3388 = add i64 %3387, 3
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3386 to i32*
  %3390 = load i32, i32* %3389, align 4
  %3391 = add i32 %3390, 1
  %3392 = zext i32 %3391 to i64
  store i64 %3392, i64* %RAX.i1121, align 8
  %3393 = icmp eq i32 %3390, -1
  %3394 = icmp eq i32 %3391, 0
  %3395 = or i1 %3393, %3394
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %14, align 1
  %3397 = and i32 %3391, 255
  %3398 = tail call i32 @llvm.ctpop.i32(i32 %3397)
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  %3401 = xor i8 %3400, 1
  store i8 %3401, i8* %21, align 1
  %3402 = xor i32 %3390, %3391
  %3403 = lshr i32 %3402, 4
  %3404 = trunc i32 %3403 to i8
  %3405 = and i8 %3404, 1
  store i8 %3405, i8* %27, align 1
  %3406 = zext i1 %3394 to i8
  store i8 %3406, i8* %30, align 1
  %3407 = lshr i32 %3391, 31
  %3408 = trunc i32 %3407 to i8
  store i8 %3408, i8* %33, align 1
  %3409 = lshr i32 %3390, 31
  %3410 = xor i32 %3407, %3409
  %3411 = add nuw nsw i32 %3410, %3407
  %3412 = icmp eq i32 %3411, 2
  %3413 = zext i1 %3412 to i8
  store i8 %3413, i8* %39, align 1
  %3414 = add i64 %3387, 9
  store i64 %3414, i64* %3, align 8
  store i32 %3391, i32* %3389, align 4
  %3415 = load i64, i64* %3, align 8
  %3416 = add i64 %3415, -52
  store i64 %3416, i64* %3, align 8
  br label %block_.L_4010f8

block_.L_401131:                                  ; preds = %block_.L_4010f8
  %3417 = add i64 %3305, -8
  %3418 = add i64 %3333, 8
  store i64 %3418, i64* %3, align 8
  %3419 = inttoptr i64 %3417 to i32*
  %3420 = load i32, i32* %3419, align 4
  %3421 = add i32 %3420, 1
  %3422 = zext i32 %3421 to i64
  store i64 %3422, i64* %RAX.i1121, align 8
  %3423 = icmp eq i32 %3420, -1
  %3424 = icmp eq i32 %3421, 0
  %3425 = or i1 %3423, %3424
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %14, align 1
  %3427 = and i32 %3421, 255
  %3428 = tail call i32 @llvm.ctpop.i32(i32 %3427)
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = xor i8 %3430, 1
  store i8 %3431, i8* %21, align 1
  %3432 = xor i32 %3420, %3421
  %3433 = lshr i32 %3432, 4
  %3434 = trunc i32 %3433 to i8
  %3435 = and i8 %3434, 1
  store i8 %3435, i8* %27, align 1
  %3436 = zext i1 %3424 to i8
  store i8 %3436, i8* %30, align 1
  %3437 = lshr i32 %3421, 31
  %3438 = trunc i32 %3437 to i8
  store i8 %3438, i8* %33, align 1
  %3439 = lshr i32 %3420, 31
  %3440 = xor i32 %3437, %3439
  %3441 = add nuw nsw i32 %3440, %3437
  %3442 = icmp eq i32 %3441, 2
  %3443 = zext i1 %3442 to i8
  store i8 %3443, i8* %39, align 1
  %3444 = add i64 %3333, 14
  store i64 %3444, i64* %3, align 8
  store i32 %3421, i32* %3419, align 4
  %3445 = load i64, i64* %3, align 8
  %3446 = add i64 %3445, -88
  store i64 %3446, i64* %3, align 8
  br label %block_.L_4010e7

block_.L_401144:                                  ; preds = %block_.L_4010e7
  %3447 = add i64 %3272, -4
  %3448 = add i64 %3300, 8
  store i64 %3448, i64* %3, align 8
  %3449 = inttoptr i64 %3447 to i32*
  %3450 = load i32, i32* %3449, align 4
  %3451 = add i32 %3450, 1
  %3452 = zext i32 %3451 to i64
  store i64 %3452, i64* %RAX.i1121, align 8
  %3453 = icmp eq i32 %3450, -1
  %3454 = icmp eq i32 %3451, 0
  %3455 = or i1 %3453, %3454
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %14, align 1
  %3457 = and i32 %3451, 255
  %3458 = tail call i32 @llvm.ctpop.i32(i32 %3457)
  %3459 = trunc i32 %3458 to i8
  %3460 = and i8 %3459, 1
  %3461 = xor i8 %3460, 1
  store i8 %3461, i8* %21, align 1
  %3462 = xor i32 %3450, %3451
  %3463 = lshr i32 %3462, 4
  %3464 = trunc i32 %3463 to i8
  %3465 = and i8 %3464, 1
  store i8 %3465, i8* %27, align 1
  %3466 = zext i1 %3454 to i8
  store i8 %3466, i8* %30, align 1
  %3467 = lshr i32 %3451, 31
  %3468 = trunc i32 %3467 to i8
  store i8 %3468, i8* %33, align 1
  %3469 = lshr i32 %3450, 31
  %3470 = xor i32 %3467, %3469
  %3471 = add nuw nsw i32 %3470, %3467
  %3472 = icmp eq i32 %3471, 2
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %39, align 1
  %3474 = add i64 %3300, 14
  store i64 %3474, i64* %3, align 8
  store i32 %3451, i32* %3449, align 4
  %3475 = load i64, i64* %3, align 8
  %3476 = add i64 %3475, -124
  store i64 %3476, i64* %3, align 8
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
  %3477 = add i64 %3239, -16
  %3478 = add i64 %3267, 75
  store i64 %3478, i64* %3, align 8
  %3479 = inttoptr i64 %3477 to i32*
  store i32 73, i32* %3479, align 4
  %3480 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %3481 = load i64, i64* %RBP.i, align 8
  %3482 = add i64 %3481, -16
  %3483 = add i64 %3480, 14
  store i64 %3483, i64* %3, align 8
  %3484 = inttoptr i64 %3482 to i32*
  %3485 = load i32, i32* %3484, align 4
  %3486 = zext i32 %3485 to i64
  store i64 %3486, i64* %RSI.i1074, align 8
  %3487 = add i64 %3480, -3154
  %3488 = add i64 %3480, 19
  %3489 = load i64, i64* %6, align 8
  %3490 = add i64 %3489, -8
  %3491 = inttoptr i64 %3490 to i64*
  store i64 %3488, i64* %3491, align 8
  store i64 %3490, i64* %6, align 8
  store i64 %3487, i64* %3, align 8
  %call2_4011b0 = tail call %struct.Memory* @sub_400550.Fit(%struct.State* %0, i64 %3487, %struct.Memory* %2)
  %3492 = load i32, i32* %EAX.i1111, align 4
  %3493 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3494 = and i32 %3492, 255
  %3495 = tail call i32 @llvm.ctpop.i32(i32 %3494)
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  %3498 = xor i8 %3497, 1
  store i8 %3498, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3499 = icmp eq i32 %3492, 0
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %30, align 1
  %3501 = lshr i32 %3492, 31
  %3502 = trunc i32 %3501 to i8
  store i8 %3502, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v126 = select i1 %3499, i64 31, i64 9
  %3503 = add i64 %3493, %.v126
  store i64 %3503, i64* %3, align 8
  br i1 %3499, label %block_.L_4011d4, label %block_4011be

block_4011be:                                     ; preds = %block_.L_401157
  store i64 0, i64* %RDI.i92, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3504 = load i64, i64* %RBP.i, align 8
  %3505 = add i64 %3504, -16
  %3506 = add i64 %3503, 5
  store i64 %3506, i64* %3, align 8
  %3507 = inttoptr i64 %3505 to i32*
  %3508 = load i32, i32* %3507, align 4
  %3509 = zext i32 %3508 to i64
  store i64 %3509, i64* %RSI.i1074, align 8
  %3510 = add i64 %3503, -3038
  %3511 = add i64 %3503, 10
  %3512 = load i64, i64* %6, align 8
  %3513 = add i64 %3512, -8
  %3514 = inttoptr i64 %3513 to i64*
  store i64 %3511, i64* %3514, align 8
  store i64 %3513, i64* %6, align 8
  store i64 %3510, i64* %3, align 8
  %call2_4011c3 = tail call %struct.Memory* @sub_4005e0.Place(%struct.State* %0, i64 %3510, %struct.Memory* %call2_4011b0)
  %3515 = load i32, i32* %EAX.i1111, align 4
  %3516 = load i64, i64* %3, align 8
  store i32 %3515, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %3517 = add i64 %3516, 32
  store i64 %3517, i64* %3, align 8
  br label %block_.L_4011e8

block_.L_4011d4:                                  ; preds = %block_.L_401157
  store i64 ptrtoint (%G__0x401344_type* @G__0x401344 to i64), i64* %RDI.i92, align 8
  %AL.i62 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i62, align 1
  %3518 = add i64 %3503, -3556
  %3519 = add i64 %3503, 17
  %3520 = load i64, i64* %6, align 8
  %3521 = add i64 %3520, -8
  %3522 = inttoptr i64 %3521 to i64*
  store i64 %3519, i64* %3522, align 8
  store i64 %3521, i64* %6, align 8
  store i64 %3518, i64* %3, align 8
  %3523 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011b0)
  %3524 = load i64, i64* %RBP.i, align 8
  %3525 = add i64 %3524, -20
  %3526 = load i32, i32* %EAX.i1111, align 4
  %3527 = load i64, i64* %3, align 8
  %3528 = add i64 %3527, 3
  store i64 %3528, i64* %3, align 8
  %3529 = inttoptr i64 %3525 to i32*
  store i32 %3526, i32* %3529, align 4
  %.pre45 = load i64, i64* %3, align 8
  %.pre46 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  br label %block_.L_4011e8

block_.L_4011e8:                                  ; preds = %block_.L_4011d4, %block_4011be
  %3530 = phi i32 [ %.pre46, %block_.L_4011d4 ], [ %3515, %block_4011be ]
  %3531 = phi i64 [ %.pre45, %block_.L_4011d4 ], [ %3517, %block_4011be ]
  %MEMORY.45 = phi %struct.Memory* [ %3523, %block_.L_4011d4 ], [ %call2_4011c3, %block_4011be ]
  %3532 = zext i32 %3530 to i64
  store i64 %3532, i64* %RDI.i92, align 8
  %3533 = add i64 %3531, -2680
  %3534 = add i64 %3531, 12
  %3535 = load i64, i64* %6, align 8
  %3536 = add i64 %3535, -8
  %3537 = inttoptr i64 %3536 to i64*
  store i64 %3534, i64* %3537, align 8
  store i64 %3536, i64* %6, align 8
  store i64 %3533, i64* %3, align 8
  %call2_4011ef = tail call %struct.Memory* @sub_400770.Trial(%struct.State* %0, i64 %3533, %struct.Memory* %MEMORY.45)
  %3538 = load i32, i32* %EAX.i1111, align 4
  %3539 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3540 = and i32 %3538, 255
  %3541 = tail call i32 @llvm.ctpop.i32(i32 %3540)
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  %3544 = xor i8 %3543, 1
  store i8 %3544, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3545 = icmp eq i32 %3538, 0
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %30, align 1
  %3547 = lshr i32 %3538, 31
  %3548 = trunc i32 %3547 to i8
  store i8 %3548, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v127 = select i1 %3545, i64 9, i64 34
  %3549 = add i64 %3539, %.v127
  store i64 %3549, i64* %3, align 8
  br i1 %3545, label %block_4011fd, label %block_.L_401216

block_4011fd:                                     ; preds = %block_.L_4011e8
  store i64 ptrtoint (%G__0x401356_type* @G__0x401356 to i64), i64* %RDI.i92, align 8
  %AL.i47 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i47, align 1
  %3550 = add i64 %3549, -3597
  %3551 = add i64 %3549, 17
  %3552 = load i64, i64* %6, align 8
  %3553 = add i64 %3552, -8
  %3554 = inttoptr i64 %3553 to i64*
  store i64 %3551, i64* %3554, align 8
  store i64 %3553, i64* %6, align 8
  store i64 %3550, i64* %3, align 8
  %3555 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011ef)
  %3556 = load i64, i64* %RBP.i, align 8
  %3557 = add i64 %3556, -24
  %3558 = load i32, i32* %EAX.i1111, align 4
  %3559 = load i64, i64* %3, align 8
  %3560 = add i64 %3559, 3
  store i64 %3560, i64* %3, align 8
  %3561 = inttoptr i64 %3557 to i32*
  store i32 %3558, i32* %3561, align 4
  %3562 = load i64, i64* %3, align 8
  %3563 = add i64 %3562, 47
  br label %block_.L_401240

block_.L_401216:                                  ; preds = %block_.L_4011e8
  %3564 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %3565 = add i32 %3564, -2005
  %3566 = icmp ult i32 %3564, 2005
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %14, align 1
  %3568 = and i32 %3565, 255
  %3569 = tail call i32 @llvm.ctpop.i32(i32 %3568)
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  %3572 = xor i8 %3571, 1
  store i8 %3572, i8* %21, align 1
  %3573 = xor i32 %3564, 16
  %3574 = xor i32 %3573, %3565
  %3575 = lshr i32 %3574, 4
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  store i8 %3577, i8* %27, align 1
  %3578 = icmp eq i32 %3565, 0
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %30, align 1
  %3580 = lshr i32 %3565, 31
  %3581 = trunc i32 %3580 to i8
  store i8 %3581, i8* %33, align 1
  %3582 = lshr i32 %3564, 31
  %3583 = xor i32 %3580, %3582
  %3584 = add nuw nsw i32 %3583, %3582
  %3585 = icmp eq i32 %3584, 2
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %39, align 1
  %.v128 = select i1 %3578, i64 37, i64 17
  %3587 = add i64 %3549, %.v128
  store i64 %3587, i64* %3, align 8
  br i1 %3578, label %block_.L_401216.block_.L_40123b_crit_edge, label %block_401227

block_.L_401216.block_.L_40123b_crit_edge:        ; preds = %block_.L_401216
  %.pre51 = bitcast %union.anon* %43 to i8*
  br label %block_.L_40123b

block_401227:                                     ; preds = %block_.L_401216
  store i64 ptrtoint (%G__0x401369_type* @G__0x401369 to i64), i64* %RDI.i92, align 8
  %AL.i34 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i34, align 1
  %3588 = add i64 %3587, -3639
  %3589 = add i64 %3587, 17
  %3590 = load i64, i64* %6, align 8
  %3591 = add i64 %3590, -8
  %3592 = inttoptr i64 %3591 to i64*
  store i64 %3589, i64* %3592, align 8
  store i64 %3591, i64* %6, align 8
  store i64 %3588, i64* %3, align 8
  %3593 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4011ef)
  %3594 = load i64, i64* %RBP.i, align 8
  %3595 = add i64 %3594, -28
  %3596 = load i32, i32* %EAX.i1111, align 4
  %3597 = load i64, i64* %3, align 8
  %3598 = add i64 %3597, 3
  store i64 %3598, i64* %3, align 8
  %3599 = inttoptr i64 %3595 to i32*
  store i32 %3596, i32* %3599, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_40123b

block_.L_40123b:                                  ; preds = %block_.L_401216.block_.L_40123b_crit_edge, %block_401227
  %.pre49.pre-phi = phi i8* [ %.pre51, %block_.L_401216.block_.L_40123b_crit_edge ], [ %AL.i34, %block_401227 ]
  %3600 = phi i64 [ %3587, %block_.L_401216.block_.L_40123b_crit_edge ], [ %.pre47, %block_401227 ]
  %MEMORY.46 = phi %struct.Memory* [ %call2_4011ef, %block_.L_401216.block_.L_40123b_crit_edge ], [ %3593, %block_401227 ]
  %3601 = add i64 %3600, 5
  br label %block_.L_401240

block_.L_401240:                                  ; preds = %block_.L_40123b, %block_4011fd
  %.sink = phi i64 [ %3601, %block_.L_40123b ], [ %3563, %block_4011fd ]
  %AL.i21.pre-phi = phi i8* [ %.pre49.pre-phi, %block_.L_40123b ], [ %AL.i47, %block_4011fd ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.46, %block_.L_40123b ], [ %3555, %block_4011fd ]
  store i64 ptrtoint (%G__0x40137c_type* @G__0x40137c to i64), i64* %RDI.i92, align 8
  %3602 = load i32, i32* bitcast (%G_0x603a94_type* @G_0x603a94 to i32*), align 8
  %3603 = zext i32 %3602 to i64
  store i64 %3603, i64* %RSI.i1074, align 8
  store i8 0, i8* %AL.i21.pre-phi, align 1
  %3604 = add i64 %.sink, -3664
  %3605 = add i64 %.sink, 24
  %3606 = load i64, i64* %6, align 8
  %3607 = add i64 %3606, -8
  %3608 = inttoptr i64 %3607 to i64*
  store i64 %3605, i64* %3608, align 8
  store i64 %3607, i64* %6, align 8
  store i64 %3604, i64* %3, align 8
  %3609 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.47)
  %3610 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40137c_type* @G__0x40137c to i64), i64* %RDI.i92, align 8
  %3611 = load i32, i32* bitcast (%G_0x6191c4_type* @G_0x6191c4 to i32*), align 8
  %3612 = zext i32 %3611 to i64
  store i64 %3612, i64* %RSI.i1074, align 8
  %3613 = load i64, i64* %RBP.i, align 8
  %3614 = add i64 %3613, -32
  %3615 = load i32, i32* %EAX.i1111, align 4
  %3616 = add i64 %3610, 20
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3614 to i32*
  store i32 %3615, i32* %3617, align 4
  %3618 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i21.pre-phi, align 1
  %3619 = add i64 %3618, -3708
  %3620 = add i64 %3618, 7
  %3621 = load i64, i64* %6, align 8
  %3622 = add i64 %3621, -8
  %3623 = inttoptr i64 %3622 to i64*
  store i64 %3620, i64* %3623, align 8
  store i64 %3622, i64* %6, align 8
  store i64 %3619, i64* %3, align 8
  %3624 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %3609)
  %3625 = load i64, i64* %RBP.i, align 8
  %3626 = add i64 %3625, -36
  %3627 = load i32, i32* %EAX.i1111, align 4
  %3628 = load i64, i64* %3, align 8
  %3629 = add i64 %3628, 3
  store i64 %3629, i64* %3, align 8
  %3630 = inttoptr i64 %3626 to i32*
  store i32 %3627, i32* %3630, align 4
  %3631 = load i64, i64* %6, align 8
  %3632 = load i64, i64* %3, align 8
  %3633 = add i64 %3631, 48
  store i64 %3633, i64* %6, align 8
  %3634 = icmp ugt i64 %3631, -49
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %14, align 1
  %3636 = trunc i64 %3633 to i32
  %3637 = and i32 %3636, 255
  %3638 = tail call i32 @llvm.ctpop.i32(i32 %3637)
  %3639 = trunc i32 %3638 to i8
  %3640 = and i8 %3639, 1
  %3641 = xor i8 %3640, 1
  store i8 %3641, i8* %21, align 1
  %3642 = xor i64 %3631, 16
  %3643 = xor i64 %3642, %3633
  %3644 = lshr i64 %3643, 4
  %3645 = trunc i64 %3644 to i8
  %3646 = and i8 %3645, 1
  store i8 %3646, i8* %27, align 1
  %3647 = icmp eq i64 %3633, 0
  %3648 = zext i1 %3647 to i8
  store i8 %3648, i8* %30, align 1
  %3649 = lshr i64 %3633, 63
  %3650 = trunc i64 %3649 to i8
  store i8 %3650, i8* %33, align 1
  %3651 = lshr i64 %3631, 63
  %3652 = xor i64 %3649, %3651
  %3653 = add nuw nsw i64 %3652, %3649
  %3654 = icmp eq i64 %3653, 2
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %39, align 1
  %3656 = add i64 %3632, 5
  store i64 %3656, i64* %3, align 8
  %3657 = add i64 %3631, 56
  %3658 = inttoptr i64 %3633 to i64*
  %3659 = load i64, i64* %3658, align 8
  store i64 %3659, i64* %RBP.i, align 8
  store i64 %3657, i64* %6, align 8
  %3660 = add i64 %3632, 6
  store i64 %3660, i64* %3, align 8
  %3661 = inttoptr i64 %3657 to i64*
  %3662 = load i64, i64* %3661, align 8
  store i64 %3662, i64* %3, align 8
  %3663 = add i64 %3631, 64
  store i64 %3663, i64* %6, align 8
  ret %struct.Memory* %3624
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
  %5 = add i64 %4, ptrtoint (%G_0x60df50___rax_4__type* @G_0x60df50___rax_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x60df50___rsi_4__type* @G_0x60df50___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x603aa0___rsi_4__type* @G_0x603aa0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x6042a0___rsi_4__type* @G_0x6042a0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x604aa0___rsi_4__type* @G_0x604aa0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x6052a0___rsi_4__type* @G_0x6052a0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x605aa0___rsi_4__type* @G_0x605aa0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x6062a0___rsi_4__type* @G_0x6062a0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x606aa0___rsi_4__type* @G_0x606aa0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x6072a0___rsi_4__type* @G_0x6072a0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x607aa0___rsi_4__type* @G_0x607aa0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x6082a0___rsi_4__type* @G_0x6082a0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x608aa0___rsi_4__type* @G_0x608aa0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x6092a0___rsi_4__type* @G_0x6092a0___rsi_4_ to i64)
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
  %5 = add i64 %4, ptrtoint (%G_0x609aa0___rsi_4__type* @G_0x609aa0___rsi_4_ to i64)
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
