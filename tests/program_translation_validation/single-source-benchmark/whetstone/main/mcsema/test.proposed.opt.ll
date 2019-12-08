; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x462__rip__type = type <{ [8 x i8] }>
%G_0x5cb__rip__type = type <{ [8 x i8] }>
%G_0x5e3__rip__type = type <{ [8 x i8] }>
%G_0x602080_type = type <{ [8 x i8] }>
%G_0x602090_type = type <{ [4 x i8] }>
%G_0x602098_type = type <{ [16 x i8] }>
%G_0x6020a0_type = type <{ [16 x i8] }>
%G_0x6020a8_type = type <{ [4 x i8] }>
%G_0x6020ac_type = type <{ [4 x i8] }>
%G_0x6020b0_type = type <{ [16 x i8] }>
%G_0x6020c8_type = type <{ [16 x i8] }>
%G_0x6020d0_type = type <{ [16 x i8] }>
%G_0x6020d8_type = type <{ [16 x i8] }>
%G_0x6020e0_type = type <{ [16 x i8] }>
%G_0x603__rip__type = type <{ [8 x i8] }>
%G_0x6a1__rip__type = type <{ [8 x i8] }>
%G_0x7fd__rip__type = type <{ [8 x i8] }>
%G_0x8d5__rip__type = type <{ [8 x i8] }>
%G_0x90b__rip__type = type <{ [8 x i8] }>
%G_0xd78__rip__type = type <{ [8 x i8] }>
%G_0xf2d__rip__type = type <{ [8 x i8] }>
%G_0xf71__rip__type = type <{ [8 x i8] }>
%G__0x4018f8_type = type <{ [8 x i8] }>
%G__0x4018fb_type = type <{ [8 x i8] }>
%G__0x401915_type = type <{ [8 x i8] }>
%G__0x6020c0_type = type <{ [8 x i8] }>
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
@G_0x462__rip_ = local_unnamed_addr global %G_0x462__rip__type zeroinitializer
@G_0x5cb__rip_ = local_unnamed_addr global %G_0x5cb__rip__type zeroinitializer
@G_0x5e3__rip_ = local_unnamed_addr global %G_0x5e3__rip__type zeroinitializer
@G_0x602080 = local_unnamed_addr global %G_0x602080_type zeroinitializer
@G_0x602090 = local_unnamed_addr global %G_0x602090_type zeroinitializer
@G_0x602098 = local_unnamed_addr global %G_0x602098_type zeroinitializer
@G_0x6020a0 = local_unnamed_addr global %G_0x6020a0_type zeroinitializer
@G_0x6020a8 = local_unnamed_addr global %G_0x6020a8_type zeroinitializer
@G_0x6020ac = local_unnamed_addr global %G_0x6020ac_type zeroinitializer
@G_0x6020b0 = local_unnamed_addr global %G_0x6020b0_type zeroinitializer
@G_0x6020c8 = local_unnamed_addr global %G_0x6020c8_type zeroinitializer
@G_0x6020d0 = local_unnamed_addr global %G_0x6020d0_type zeroinitializer
@G_0x6020d8 = local_unnamed_addr global %G_0x6020d8_type zeroinitializer
@G_0x6020e0 = local_unnamed_addr global %G_0x6020e0_type zeroinitializer
@G_0x603__rip_ = local_unnamed_addr global %G_0x603__rip__type zeroinitializer
@G_0x6a1__rip_ = local_unnamed_addr global %G_0x6a1__rip__type zeroinitializer
@G_0x7fd__rip_ = local_unnamed_addr global %G_0x7fd__rip__type zeroinitializer
@G_0x8d5__rip_ = local_unnamed_addr global %G_0x8d5__rip__type zeroinitializer
@G_0x90b__rip_ = local_unnamed_addr global %G_0x90b__rip__type zeroinitializer
@G_0xd78__rip_ = local_unnamed_addr global %G_0xd78__rip__type zeroinitializer
@G_0xf2d__rip_ = local_unnamed_addr global %G_0xf2d__rip__type zeroinitializer
@G_0xf71__rip_ = local_unnamed_addr global %G_0xf71__rip__type zeroinitializer
@G__0x4018f8 = global %G__0x4018f8_type zeroinitializer
@G__0x4018fb = global %G__0x4018fb_type zeroinitializer
@G__0x401915 = global %G__0x401915_type zeroinitializer
@G__0x6020c0 = global %G__0x6020c0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @atol(i64)

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @time(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_4015a0.POUT(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401610.PA(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401740.P3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4017c0.P0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -328
  store i64 %11, i64* %RSP.i16, align 8
  %12 = icmp ult i64 %8, 320
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
  %39 = add i64 %7, -12
  %40 = add i64 %10, 17
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -8
  %45 = load i32, i32* %EDI.i, align 4
  %46 = load i64, i64* %PC.i, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC.i, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %RSI.i1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %RSI.i1110, align 8
  %52 = load i64, i64* %PC.i, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC.i, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -184
  %57 = load i64, i64* %PC.i, align 8
  %58 = add i64 %57, 11
  store i64 %58, i64* %PC.i, align 8
  %59 = inttoptr i64 %56 to i64*
  store i64 100000, i64* %59, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -208
  %62 = load i64, i64* %PC.i, align 8
  %63 = add i64 %62, 10
  store i64 %63, i64* %PC.i, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -172
  %67 = load i64, i64* %PC.i, align 8
  %68 = add i64 %67, 10
  store i64 %68, i64* %PC.i, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1199 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %EAX.i1220 = bitcast %union.anon* %70 to i32*
  %RDX.i1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RCX.i1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI.i1206 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400848

block_.L_400848:                                  ; preds = %block_.L_40091d, %entry
  %71 = phi i64 [ %.pre, %entry ], [ %300, %block_.L_40091d ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.2, %block_.L_40091d ]
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -172
  %74 = add i64 %71, 6
  store i64 %74, i64* %PC.i, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RAX.i1199, align 8
  %78 = add i64 %72, -8
  %79 = add i64 %71, 9
  store i64 %79, i64* %PC.i, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %76, %81
  %83 = icmp ult i32 %76, %81
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i32 %81, %76
  %91 = xor i32 %90, %82
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %26, align 1
  %95 = icmp eq i32 %82, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %29, align 1
  %97 = lshr i32 %82, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %32, align 1
  %99 = lshr i32 %76, 31
  %100 = lshr i32 %81, 31
  %101 = xor i32 %100, %99
  %102 = xor i32 %97, %99
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %38, align 1
  %106 = icmp ne i8 %98, 0
  %107 = xor i1 %106, %104
  %.v = select i1 %107, i64 15, i64 233
  %108 = add i64 %71, %.v
  store i64 %108, i64* %3, align 8
  br i1 %107, label %block_400857, label %block_.L_400931

block_400857:                                     ; preds = %block_.L_400848
  store i64 ptrtoint (%G__0x4018f8_type* @G__0x4018f8 to i64), i64* %RSI.i1110, align 8
  store i64 2, i64* %RAX.i1199, align 8
  store i64 2, i64* %RDX.i1213, align 8
  %109 = add i64 %72, -16
  %110 = add i64 %108, 21
  store i64 %110, i64* %PC.i, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RCX.i1209, align 8
  %113 = add i64 %108, 28
  store i64 %113, i64* %PC.i, align 8
  %114 = load i32, i32* %75, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %RDI.i1206, align 8
  %116 = shl nsw i64 %115, 3
  %117 = add i64 %116, %112
  %118 = add i64 %108, 32
  store i64 %118, i64* %PC.i, align 8
  %119 = inttoptr i64 %117 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %RDI.i1206, align 8
  %121 = add i64 %108, -487
  %122 = add i64 %108, 37
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %125, align 8
  store i64 %124, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  %126 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.0)
  %127 = load i32, i32* %EAX.i1220, align 4
  %128 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %14, align 1
  %129 = and i32 %127, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %134 = icmp eq i32 %127, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %29, align 1
  %136 = lshr i32 %127, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v39 = select i1 %134, i64 36, i64 9
  %138 = add i64 %128, %.v39
  store i64 %138, i64* %3, align 8
  %.pre3 = load i64, i64* %RBP.i, align 8
  br i1 %134, label %block_.L_4008a0, label %block_400885

block_400885:                                     ; preds = %block_400857
  %139 = add i64 %.pre3, -16
  %140 = add i64 %138, 4
  store i64 %140, i64* %PC.i, align 8
  %141 = inttoptr i64 %139 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %RAX.i1199, align 8
  %143 = add i64 %.pre3, -172
  %144 = add i64 %138, 11
  store i64 %144, i64* %PC.i, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %RCX.i1209, align 8
  %148 = shl nsw i64 %147, 3
  %149 = add i64 %148, %142
  %150 = add i64 %138, 15
  store i64 %150, i64* %PC.i, align 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RAX.i1199, align 8
  %153 = add i64 %138, 18
  store i64 %153, i64* %PC.i, align 8
  %154 = inttoptr i64 %152 to i8*
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i64
  %157 = and i64 %156, 4294967295
  store i64 %157, i64* %RDX.i1213, align 8
  %158 = sext i8 %155 to i32
  %159 = add nsw i32 %158, -99
  %160 = icmp ult i8 %155, 99
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %14, align 1
  %162 = and i32 %159, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %21, align 1
  %167 = xor i32 %158, %159
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %26, align 1
  %171 = icmp eq i32 %159, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %29, align 1
  %173 = lshr i32 %159, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %32, align 1
  %175 = lshr i32 %158, 31
  %176 = xor i32 %173, %175
  %177 = add nuw nsw i32 %176, %175
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %38, align 1
  %.v40 = select i1 %171, i64 27, i64 42
  %180 = add i64 %138, %.v40
  store i64 %180, i64* %3, align 8
  br i1 %171, label %block_.L_4008a0, label %block_.L_4008af

block_.L_4008a0:                                  ; preds = %block_400885, %block_400857
  %181 = phi i64 [ %180, %block_400885 ], [ %138, %block_400857 ]
  %182 = add i64 %.pre3, -208
  %183 = add i64 %181, 10
  store i64 %183, i64* %PC.i, align 8
  %184 = inttoptr i64 %182 to i32*
  store i32 1, i32* %184, align 4
  %185 = load i64, i64* %PC.i, align 8
  %186 = add i64 %185, 115
  br label %block_.L_40091d

block_.L_4008af:                                  ; preds = %block_400885
  %187 = add i64 %180, 4
  store i64 %187, i64* %PC.i, align 8
  %188 = load i64, i64* %141, align 8
  store i64 %188, i64* %RAX.i1199, align 8
  %189 = add i64 %180, 11
  store i64 %189, i64* %PC.i, align 8
  %190 = load i32, i32* %145, align 4
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %RCX.i1209, align 8
  %192 = shl nsw i64 %191, 3
  %193 = add i64 %192, %188
  %194 = add i64 %180, 15
  store i64 %194, i64* %PC.i, align 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %RDI.i1206, align 8
  %197 = add i64 %180, -447
  %198 = add i64 %180, 20
  %199 = load i64, i64* %6, align 8
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %198, i64* %201, align 8
  store i64 %200, i64* %6, align 8
  store i64 %197, i64* %3, align 8
  %202 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %126)
  %203 = load i64, i64* %RAX.i1199, align 8
  %204 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %14, align 1
  %205 = trunc i64 %203 to i32
  %206 = and i32 %205, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206)
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %211 = icmp eq i64 %203, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %29, align 1
  %213 = lshr i64 %203, 63
  %214 = trunc i64 %213 to i8
  store i8 %214, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %215 = icmp ne i8 %214, 0
  %216 = or i1 %211, %215
  %.v41 = select i1 %216, i64 42, i64 10
  %217 = add i64 %204, %.v41
  store i64 %217, i64* %3, align 8
  br i1 %216, label %block_.L_4008ed, label %block_4008cd

block_4008cd:                                     ; preds = %block_.L_4008af
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -16
  %220 = add i64 %217, 4
  store i64 %220, i64* %PC.i, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RAX.i1199, align 8
  %223 = add i64 %218, -172
  %224 = add i64 %217, 11
  store i64 %224, i64* %PC.i, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RCX.i1209, align 8
  %228 = shl nsw i64 %227, 3
  %229 = add i64 %228, %222
  %230 = add i64 %217, 15
  store i64 %230, i64* %PC.i, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %RDI.i1206, align 8
  %233 = add i64 %217, -477
  %234 = add i64 %217, 20
  %235 = load i64, i64* %6, align 8
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %234, i64* %237, align 8
  store i64 %236, i64* %6, align 8
  store i64 %233, i64* %3, align 8
  %238 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %202)
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -184
  %241 = load i64, i64* %RAX.i1199, align 8
  %242 = load i64, i64* %PC.i, align 8
  %243 = add i64 %242, 7
  store i64 %243, i64* %PC.i, align 8
  %244 = inttoptr i64 %240 to i64*
  store i64 %241, i64* %244, align 8
  %245 = load i64, i64* %PC.i, align 8
  %246 = add i64 %245, 48
  store i64 %246, i64* %3, align 8
  %247 = add i64 %245, 53
  br label %block_.L_40091d

block_.L_4008ed:                                  ; preds = %block_.L_4008af
  store i64 ptrtoint (%G__0x4018fb_type* @G__0x4018fb to i64), i64* %RSI.i1110, align 8
  %248 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
  store i64 %248, i64* %RDI.i1206, align 8
  %AL.i1140 = bitcast %union.anon* %70 to i8*
  store i8 0, i8* %AL.i1140, align 1
  %249 = add i64 %217, -541
  %250 = add i64 %217, 25
  %251 = load i64, i64* %6, align 8
  %252 = add i64 %251, -8
  %253 = inttoptr i64 %252 to i64*
  store i64 %250, i64* %253, align 8
  store i64 %252, i64* %6, align 8
  store i64 %249, i64* %3, align 8
  %254 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %202)
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -4
  %257 = load i64, i64* %PC.i, align 8
  %258 = add i64 %257, 7
  store i64 %258, i64* %PC.i, align 8
  %259 = inttoptr i64 %256 to i32*
  store i32 1, i32* %259, align 4
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -212
  %262 = load i32, i32* %EAX.i1220, align 4
  %263 = load i64, i64* %PC.i, align 8
  %264 = add i64 %263, 6
  store i64 %264, i64* %PC.i, align 8
  %265 = inttoptr i64 %261 to i32*
  store i32 %262, i32* %265, align 4
  %266 = load i64, i64* %PC.i, align 8
  %267 = add i64 %266, 3197
  store i64 %267, i64* %3, align 8
  br label %block_.L_401590

block_.L_40091d:                                  ; preds = %block_4008cd, %block_.L_4008a0
  %268 = phi i64 [ %186, %block_.L_4008a0 ], [ %247, %block_4008cd ]
  %MEMORY.2 = phi %struct.Memory* [ %126, %block_.L_4008a0 ], [ %238, %block_4008cd ]
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -172
  %271 = add i64 %268, 6
  store i64 %271, i64* %PC.i, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, 1
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RAX.i1199, align 8
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
  %285 = xor i32 %273, %274
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %26, align 1
  %289 = icmp eq i32 %274, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %29, align 1
  %291 = lshr i32 %274, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %32, align 1
  %293 = lshr i32 %273, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %38, align 1
  %298 = add i64 %268, 15
  store i64 %298, i64* %PC.i, align 8
  store i32 %274, i32* %272, align 4
  %299 = load i64, i64* %PC.i, align 8
  %300 = add i64 %299, -228
  store i64 %300, i64* %3, align 8
  br label %block_.L_400848

block_.L_400931:                                  ; preds = %block_.L_400848
  %301 = add i64 %108, 5
  store i64 %301, i64* %3, align 8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %303 = bitcast [32 x %union.VectorReg]* %302 to i8*
  %304 = bitcast [32 x %union.VectorReg]* %302 to double*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %306 = bitcast i64* %305 to double*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %308 = bitcast %union.VectorReg* %307 to double*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %310 = bitcast i64* %309 to double*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %312 = bitcast %union.VectorReg* %311 to double*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %314 = bitcast i64* %313 to double*
  %315 = bitcast [32 x %union.VectorReg]* %302 to double*
  %316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %319 = bitcast i64* %318 to double*
  %320 = bitcast %union.VectorReg* %317 to <2 x i32>*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %322 = bitcast i64* %321 to <2 x i32>*
  %323 = bitcast [32 x %union.VectorReg]* %302 to i32*
  %324 = getelementptr inbounds i8, i8* %303, i64 4
  %325 = bitcast i8* %324 to i32*
  %326 = bitcast i64* %305 to i32*
  %327 = getelementptr inbounds i8, i8* %303, i64 12
  %328 = bitcast i8* %327 to i32*
  %329 = bitcast %union.VectorReg* %307 to <2 x i32>*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %331 = bitcast i64* %330 to <2 x i32>*
  %AL.i = bitcast %union.anon* %70 to i8*
  br label %block_.L_400936

block_.L_400936:                                  ; preds = %block_401584, %block_.L_400931
  %332 = phi i64 [ %301, %block_.L_400931 ], [ %2813, %block_401584 ]
  %333 = phi i32 [ %76, %block_.L_400931 ], [ %2814, %block_401584 ]
  %334 = phi i64 [ %77, %block_.L_400931 ], [ %.pre4, %block_401584 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400931 ], [ %2789, %block_401584 ]
  %335 = zext i32 %333 to i64
  %336 = xor i64 %335, %334
  %337 = trunc i64 %336 to i32
  %338 = and i64 %336, 4294967295
  store i64 %338, i64* %RAX.i1199, align 8
  store i8 0, i8* %14, align 1
  %339 = and i32 %337, 255
  %340 = tail call i32 @llvm.ctpop.i32(i32 %339)
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  store i8 %343, i8* %21, align 1
  %344 = icmp eq i32 %337, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %29, align 1
  %346 = lshr i32 %337, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %348 = and i64 %336, 4294967295
  store i64 %348, i64* %RDI.i1206, align 8
  %349 = add i64 %332, -598
  %350 = add i64 %332, 9
  %351 = load i64, i64* %6, align 8
  %352 = add i64 %351, -8
  %353 = inttoptr i64 %352 to i64*
  store i64 %350, i64* %353, align 8
  store i64 %352, i64* %6, align 8
  store i64 %349, i64* %3, align 8
  %354 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.3)
  %355 = load i64, i64* %PC.i, align 8
  %356 = load i64, i64* bitcast (%G_0xf71__rip__type* @G_0xf71__rip_ to i64*), align 8
  %357 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %356, i64* %357, align 1
  store double 0.000000e+00, double* %306, align 1
  %358 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %356, i64* %358, align 1
  store double 0.000000e+00, double* %310, align 1
  %359 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %356, i64* %359, align 1
  store double 0.000000e+00, double* %314, align 1
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -192
  %362 = load i64, i64* %RAX.i1199, align 8
  %363 = add i64 %355, 31
  store i64 %363, i64* %PC.i, align 8
  %364 = inttoptr i64 %361 to i64*
  store i64 %362, i64* %364, align 8
  %365 = load i64, i64* %PC.i, align 8
  %366 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  %367 = load i64, i64* %366, align 1
  store i64 %367, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %368 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  %369 = load i64, i64* %368, align 1
  store i64 %369, i64* bitcast (%G_0x6020a0_type* @G_0x6020a0 to i64*), align 8
  %370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %371 = load i64, i64* %370, align 1
  store i64 %371, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -184
  %374 = add i64 %365, 34
  store i64 %374, i64* %PC.i, align 8
  %375 = inttoptr i64 %373 to i64*
  %376 = load i64, i64* %375, align 8
  store i64 %376, i64* %RAX.i1199, align 8
  %377 = add i64 %372, -168
  %378 = add i64 %365, 41
  store i64 %378, i64* %PC.i, align 8
  %379 = inttoptr i64 %377 to i64*
  store i64 %376, i64* %379, align 8
  %380 = load i64, i64* %RBP.i, align 8
  %381 = add i64 %380, -172
  %382 = load i64, i64* %PC.i, align 8
  %383 = add i64 %382, 10
  store i64 %383, i64* %PC.i, align 8
  %384 = inttoptr i64 %381 to i32*
  store i32 1, i32* %384, align 4
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -176
  %387 = load i64, i64* %PC.i, align 8
  %388 = add i64 %387, 10
  store i64 %388, i64* %PC.i, align 8
  %389 = inttoptr i64 %386 to i32*
  store i32 1, i32* %389, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  %.pre6 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40099b

block_.L_40099b:                                  ; preds = %block_40154b, %block_.L_400936
  %390 = phi i64 [ %.pre6, %block_.L_400936 ], [ %2737, %block_40154b ]
  %391 = phi i64 [ %.pre5, %block_.L_400936 ], [ %2770, %block_40154b ]
  %MEMORY.4 = phi %struct.Memory* [ %354, %block_.L_400936 ], [ %MEMORY.27, %block_40154b ]
  %392 = load i64, i64* bitcast (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64*), align 8
  %393 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %392, i64* %393, align 1
  store double 0.000000e+00, double* %306, align 1
  %394 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %392, i64* %394, align 1
  store double 0.000000e+00, double* %310, align 1
  %395 = add i64 %390, -32
  %396 = add i64 %391, 24
  store i64 %396, i64* %PC.i, align 8
  %397 = inttoptr i64 %395 to i64*
  store i64 0, i64* %397, align 8
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -168
  %400 = load i64, i64* %PC.i, align 8
  %401 = add i64 %400, 8
  store i64 %401, i64* %PC.i, align 8
  %402 = inttoptr i64 %399 to i64*
  %403 = load i64, i64* %402, align 8
  %404 = sext i64 %403 to i128
  %405 = and i128 %404, -18446744073709551616
  %406 = zext i64 %403 to i128
  %407 = or i128 %405, %406
  %408 = mul nsw i128 %407, 12
  %409 = trunc i128 %408 to i64
  store i64 %409, i64* %RAX.i1199, align 8
  %410 = sext i64 %409 to i128
  %411 = icmp ne i128 %410, %408
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %14, align 1
  %413 = trunc i128 %408 to i32
  %414 = and i32 %413, 252
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %419 = lshr i64 %409, 63
  %420 = trunc i64 %419 to i8
  store i8 %420, i8* %32, align 1
  store i8 %412, i8* %38, align 1
  %421 = add i64 %398, -40
  %422 = add i64 %400, 12
  store i64 %422, i64* %PC.i, align 8
  %423 = inttoptr i64 %421 to i64*
  store i64 %409, i64* %423, align 8
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -168
  %426 = load i64, i64* %PC.i, align 8
  %427 = add i64 %426, 8
  store i64 %427, i64* %PC.i, align 8
  %428 = inttoptr i64 %425 to i64*
  %429 = load i64, i64* %428, align 8
  %430 = sext i64 %429 to i128
  %431 = and i128 %430, -18446744073709551616
  %432 = zext i64 %429 to i128
  %433 = or i128 %431, %432
  %434 = mul nsw i128 %433, 14
  %435 = trunc i128 %434 to i64
  store i64 %435, i64* %RAX.i1199, align 8
  %436 = sext i64 %435 to i128
  %437 = icmp ne i128 %436, %434
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %14, align 1
  %439 = trunc i128 %434 to i32
  %440 = and i32 %439, 254
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440)
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %445 = lshr i64 %435, 63
  %446 = trunc i64 %445 to i8
  store i8 %446, i8* %32, align 1
  store i8 %438, i8* %38, align 1
  %447 = add i64 %424, -48
  %448 = add i64 %426, 12
  store i64 %448, i64* %PC.i, align 8
  %449 = inttoptr i64 %447 to i64*
  store i64 %435, i64* %449, align 8
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -168
  %452 = load i64, i64* %PC.i, align 8
  %453 = add i64 %452, 11
  store i64 %453, i64* %PC.i, align 8
  %454 = inttoptr i64 %451 to i64*
  %455 = load i64, i64* %454, align 8
  %456 = sext i64 %455 to i128
  %457 = and i128 %456, -18446744073709551616
  %458 = zext i64 %455 to i128
  %459 = or i128 %457, %458
  %460 = mul nsw i128 %459, 345
  %461 = trunc i128 %460 to i64
  store i64 %461, i64* %RAX.i1199, align 8
  %462 = sext i64 %461 to i128
  %463 = icmp ne i128 %462, %460
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %14, align 1
  %465 = trunc i128 %460 to i32
  %466 = and i32 %465, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %471 = lshr i64 %461, 63
  %472 = trunc i64 %471 to i8
  store i8 %472, i8* %32, align 1
  store i8 %464, i8* %38, align 1
  %473 = add i64 %450, -56
  %474 = add i64 %452, 15
  store i64 %474, i64* %PC.i, align 8
  %475 = inttoptr i64 %473 to i64*
  store i64 %461, i64* %475, align 8
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -168
  %478 = load i64, i64* %PC.i, align 8
  %479 = add i64 %478, 11
  store i64 %479, i64* %PC.i, align 8
  %480 = inttoptr i64 %477 to i64*
  %481 = load i64, i64* %480, align 8
  %482 = sext i64 %481 to i128
  %483 = and i128 %482, -18446744073709551616
  %484 = zext i64 %481 to i128
  %485 = or i128 %483, %484
  %486 = mul nsw i128 %485, 210
  %487 = trunc i128 %486 to i64
  store i64 %487, i64* %RAX.i1199, align 8
  %488 = sext i64 %487 to i128
  %489 = icmp ne i128 %488, %486
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %14, align 1
  %491 = trunc i128 %486 to i32
  %492 = and i32 %491, 254
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492)
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %497 = lshr i64 %487, 63
  %498 = trunc i64 %497 to i8
  store i8 %498, i8* %32, align 1
  store i8 %490, i8* %38, align 1
  %499 = add i64 %476, -64
  %500 = add i64 %478, 15
  store i64 %500, i64* %PC.i, align 8
  %501 = inttoptr i64 %499 to i64*
  store i64 %487, i64* %501, align 8
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -168
  %504 = load i64, i64* %PC.i, align 8
  %505 = add i64 %504, 7
  store i64 %505, i64* %PC.i, align 8
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506, align 8
  %508 = shl i64 %507, 5
  store i64 %508, i64* %RAX.i1199, align 8
  %509 = lshr i64 %507, 59
  %510 = trunc i64 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %14, align 1
  %512 = trunc i64 %508 to i32
  %513 = and i32 %512, 224
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %518 = icmp eq i64 %508, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %29, align 1
  %520 = lshr i64 %507, 58
  %521 = trunc i64 %520 to i8
  %522 = and i8 %521, 1
  store i8 %522, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %523 = add i64 %502, -72
  %524 = add i64 %504, 15
  store i64 %524, i64* %PC.i, align 8
  %525 = inttoptr i64 %523 to i64*
  store i64 %508, i64* %525, align 8
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -168
  %528 = load i64, i64* %PC.i, align 8
  %529 = add i64 %528, 11
  store i64 %529, i64* %PC.i, align 8
  %530 = inttoptr i64 %527 to i64*
  %531 = load i64, i64* %530, align 8
  %532 = sext i64 %531 to i128
  %533 = and i128 %532, -18446744073709551616
  %534 = zext i64 %531 to i128
  %535 = or i128 %533, %534
  %536 = mul nsw i128 %535, 899
  %537 = trunc i128 %536 to i64
  store i64 %537, i64* %RAX.i1199, align 8
  %538 = sext i64 %537 to i128
  %539 = icmp ne i128 %538, %536
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %14, align 1
  %541 = trunc i128 %536 to i32
  %542 = and i32 %541, 255
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %547 = lshr i64 %537, 63
  %548 = trunc i64 %547 to i8
  store i8 %548, i8* %32, align 1
  store i8 %540, i8* %38, align 1
  %549 = add i64 %526, -80
  %550 = add i64 %528, 15
  store i64 %550, i64* %PC.i, align 8
  %551 = inttoptr i64 %549 to i64*
  store i64 %537, i64* %551, align 8
  %552 = load i64, i64* %RBP.i, align 8
  %553 = add i64 %552, -168
  %554 = load i64, i64* %PC.i, align 8
  %555 = add i64 %554, 11
  store i64 %555, i64* %PC.i, align 8
  %556 = inttoptr i64 %553 to i64*
  %557 = load i64, i64* %556, align 8
  %558 = sext i64 %557 to i128
  %559 = and i128 %558, -18446744073709551616
  %560 = zext i64 %557 to i128
  %561 = or i128 %559, %560
  %562 = mul nsw i128 %561, 616
  %563 = trunc i128 %562 to i64
  store i64 %563, i64* %RAX.i1199, align 8
  %564 = sext i64 %563 to i128
  %565 = icmp ne i128 %564, %562
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %14, align 1
  %567 = trunc i128 %562 to i32
  %568 = and i32 %567, 248
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %573 = lshr i64 %563, 63
  %574 = trunc i64 %573 to i8
  store i8 %574, i8* %32, align 1
  store i8 %566, i8* %38, align 1
  %575 = add i64 %552, -88
  %576 = add i64 %554, 15
  store i64 %576, i64* %PC.i, align 8
  %577 = inttoptr i64 %575 to i64*
  store i64 %563, i64* %577, align 8
  %578 = load i64, i64* %RBP.i, align 8
  %579 = add i64 %578, -96
  %580 = load i64, i64* %PC.i, align 8
  %581 = add i64 %580, 8
  store i64 %581, i64* %PC.i, align 8
  %582 = inttoptr i64 %579 to i64*
  store i64 0, i64* %582, align 8
  %583 = load i64, i64* %RBP.i, align 8
  %584 = add i64 %583, -168
  %585 = load i64, i64* %PC.i, align 8
  %586 = add i64 %585, 8
  store i64 %586, i64* %PC.i, align 8
  %587 = inttoptr i64 %584 to i64*
  %588 = load i64, i64* %587, align 8
  %589 = sext i64 %588 to i128
  %590 = and i128 %589, -18446744073709551616
  %591 = zext i64 %588 to i128
  %592 = or i128 %590, %591
  %593 = mul nsw i128 %592, 93
  %594 = trunc i128 %593 to i64
  store i64 %594, i64* %RAX.i1199, align 8
  %595 = sext i64 %594 to i128
  %596 = icmp ne i128 %595, %593
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %14, align 1
  %598 = trunc i128 %593 to i32
  %599 = and i32 %598, 255
  %600 = tail call i32 @llvm.ctpop.i32(i32 %599)
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = xor i8 %602, 1
  store i8 %603, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %604 = lshr i64 %594, 63
  %605 = trunc i64 %604 to i8
  store i8 %605, i8* %32, align 1
  store i8 %597, i8* %38, align 1
  %606 = add i64 %583, -104
  %607 = add i64 %585, 12
  store i64 %607, i64* %PC.i, align 8
  %608 = inttoptr i64 %606 to i64*
  store i64 %594, i64* %608, align 8
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -112
  %611 = load i64, i64* %PC.i, align 8
  %612 = add i64 %611, 5
  store i64 %612, i64* %PC.i, align 8
  %613 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  %614 = load i64, i64* %613, align 1
  %615 = inttoptr i64 %610 to i64*
  store i64 %614, i64* %615, align 8
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -120
  %618 = load i64, i64* %PC.i, align 8
  %619 = add i64 %618, 5
  store i64 %619, i64* %PC.i, align 8
  %620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %621 = load i64, i64* %620, align 1
  %622 = inttoptr i64 %617 to i64*
  store i64 %621, i64* %622, align 8
  %623 = load i64, i64* %RBP.i, align 8
  %624 = add i64 %623, -128
  %625 = load i64, i64* %PC.i, align 8
  %626 = add i64 %625, 5
  store i64 %626, i64* %PC.i, align 8
  %627 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %628 = load i64, i64* %627, align 1
  %629 = inttoptr i64 %624 to i64*
  store i64 %628, i64* %629, align 8
  %630 = load i64, i64* %RBP.i, align 8
  %631 = add i64 %630, -136
  %632 = load i64, i64* %PC.i, align 8
  %633 = add i64 %632, 8
  store i64 %633, i64* %PC.i, align 8
  %634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %635 = load i64, i64* %634, align 1
  %636 = inttoptr i64 %631 to i64*
  store i64 %635, i64* %636, align 8
  %637 = load i64, i64* %RBP.i, align 8
  %638 = add i64 %637, -24
  %639 = load i64, i64* %PC.i, align 8
  %640 = add i64 %639, 8
  store i64 %640, i64* %PC.i, align 8
  %641 = inttoptr i64 %638 to i64*
  store i64 1, i64* %641, align 8
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_400a49

block_.L_400a49:                                  ; preds = %block_400a57, %block_.L_40099b
  %642 = phi i64 [ %819, %block_400a57 ], [ %.pre7, %block_.L_40099b ]
  %643 = load i64, i64* %RBP.i, align 8
  %644 = add i64 %643, -24
  %645 = add i64 %642, 4
  store i64 %645, i64* %PC.i, align 8
  %646 = inttoptr i64 %644 to i64*
  %647 = load i64, i64* %646, align 8
  store i64 %647, i64* %RAX.i1199, align 8
  %648 = add i64 %643, -32
  %649 = add i64 %642, 8
  store i64 %649, i64* %PC.i, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  %652 = sub i64 %647, %651
  %653 = icmp ult i64 %647, %651
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %14, align 1
  %655 = trunc i64 %652 to i32
  %656 = and i32 %655, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %21, align 1
  %661 = xor i64 %651, %647
  %662 = xor i64 %661, %652
  %663 = lshr i64 %662, 4
  %664 = trunc i64 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %26, align 1
  %666 = icmp eq i64 %652, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %29, align 1
  %668 = lshr i64 %652, 63
  %669 = trunc i64 %668 to i8
  store i8 %669, i8* %32, align 1
  %670 = lshr i64 %647, 63
  %671 = lshr i64 %651, 63
  %672 = xor i64 %671, %670
  %673 = xor i64 %668, %670
  %674 = add nuw nsw i64 %673, %672
  %675 = icmp eq i64 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %38, align 1
  %677 = icmp ne i8 %669, 0
  %678 = xor i1 %677, %675
  %.demorgan = or i1 %666, %678
  %.v42 = select i1 %.demorgan, i64 14, i64 205
  %679 = add i64 %642, %.v42
  store i64 %679, i64* %3, align 8
  br i1 %.demorgan, label %block_400a57, label %block_.L_400b16

block_400a57:                                     ; preds = %block_.L_400a49
  store i64 -9223372036854775808, i64* %RAX.i1199, align 8
  %680 = add i64 %643, -112
  %681 = add i64 %679, 15
  store i64 %681, i64* %PC.i, align 8
  %682 = inttoptr i64 %680 to double*
  %683 = load double, double* %682, align 8
  store double %683, double* %304, align 1
  store double 0.000000e+00, double* %306, align 1
  %684 = add i64 %643, -120
  %685 = add i64 %679, 20
  store i64 %685, i64* %PC.i, align 8
  %686 = inttoptr i64 %684 to double*
  %687 = load double, double* %686, align 8
  %688 = fadd double %683, %687
  store double %688, double* %304, align 1
  store i64 0, i64* %305, align 1
  %689 = add i64 %643, -128
  %690 = add i64 %679, 25
  store i64 %690, i64* %PC.i, align 8
  %691 = inttoptr i64 %689 to double*
  %692 = load double, double* %691, align 8
  %693 = fadd double %688, %692
  store double %693, double* %304, align 1
  store i64 0, i64* %305, align 1
  %694 = add i64 %643, -136
  %695 = add i64 %679, 33
  store i64 %695, i64* %PC.i, align 8
  %696 = inttoptr i64 %694 to double*
  %697 = load double, double* %696, align 8
  %698 = fsub double %693, %697
  %699 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %700 = fmul double %698, %699
  store double %700, double* %304, align 1
  store i64 0, i64* %305, align 1
  %701 = add i64 %679, 47
  store i64 %701, i64* %PC.i, align 8
  store double %700, double* %682, align 8
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -112
  %704 = load i64, i64* %PC.i, align 8
  %705 = add i64 %704, 5
  store i64 %705, i64* %PC.i, align 8
  %706 = inttoptr i64 %703 to double*
  %707 = load double, double* %706, align 8
  store double %707, double* %304, align 1
  store double 0.000000e+00, double* %306, align 1
  %708 = add i64 %702, -120
  %709 = add i64 %704, 10
  store i64 %709, i64* %PC.i, align 8
  %710 = inttoptr i64 %708 to double*
  %711 = load double, double* %710, align 8
  %712 = fadd double %707, %711
  store double %712, double* %304, align 1
  store i64 0, i64* %305, align 1
  %713 = add i64 %702, -128
  %714 = add i64 %704, 15
  store i64 %714, i64* %PC.i, align 8
  %715 = inttoptr i64 %713 to double*
  %716 = load double, double* %715, align 8
  %717 = fsub double %712, %716
  store double %717, double* %304, align 1
  store i64 0, i64* %305, align 1
  %718 = add i64 %702, -136
  %719 = add i64 %704, 23
  store i64 %719, i64* %PC.i, align 8
  %720 = inttoptr i64 %718 to double*
  %721 = load double, double* %720, align 8
  %722 = fadd double %717, %721
  %723 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %724 = fmul double %722, %723
  store double %724, double* %304, align 1
  store i64 0, i64* %305, align 1
  %725 = add i64 %704, 37
  store i64 %725, i64* %PC.i, align 8
  store double %724, double* %710, align 8
  %726 = load i64, i64* %RBP.i, align 8
  %727 = add i64 %726, -112
  %728 = load i64, i64* %PC.i, align 8
  %729 = add i64 %728, 5
  store i64 %729, i64* %PC.i, align 8
  %730 = inttoptr i64 %727 to double*
  %731 = load double, double* %730, align 8
  store double %731, double* %304, align 1
  store double 0.000000e+00, double* %306, align 1
  %732 = add i64 %726, -120
  %733 = add i64 %728, 10
  store i64 %733, i64* %PC.i, align 8
  %734 = inttoptr i64 %732 to double*
  %735 = load double, double* %734, align 8
  %736 = fsub double %731, %735
  store double %736, double* %304, align 1
  store i64 0, i64* %305, align 1
  %737 = add i64 %726, -128
  %738 = add i64 %728, 15
  store i64 %738, i64* %PC.i, align 8
  %739 = inttoptr i64 %737 to double*
  %740 = load double, double* %739, align 8
  %741 = fadd double %736, %740
  store double %741, double* %304, align 1
  store i64 0, i64* %305, align 1
  %742 = add i64 %726, -136
  %743 = add i64 %728, 23
  store i64 %743, i64* %PC.i, align 8
  %744 = inttoptr i64 %742 to double*
  %745 = load double, double* %744, align 8
  %746 = fadd double %741, %745
  %747 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %748 = fmul double %746, %747
  store double %748, double* %304, align 1
  store i64 0, i64* %305, align 1
  %749 = add i64 %728, 37
  store i64 %749, i64* %PC.i, align 8
  store double %748, double* %739, align 8
  %750 = load i64, i64* %RBP.i, align 8
  %751 = add i64 %750, -112
  %752 = load i64, i64* %PC.i, align 8
  %753 = add i64 %752, 5
  store i64 %753, i64* %PC.i, align 8
  %754 = inttoptr i64 %751 to i64*
  %755 = load i64, i64* %754, align 8
  %756 = load i64, i64* %RAX.i1199, align 8
  %757 = xor i64 %756, %755
  store i64 %757, i64* %RCX.i1209, align 8
  store i8 0, i8* %14, align 1
  %758 = trunc i64 %757 to i32
  %759 = and i32 %758, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %21, align 1
  %764 = icmp eq i64 %757, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %29, align 1
  %766 = lshr i64 %757, 63
  %767 = trunc i64 %766 to i8
  store i8 %767, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %757, i64* %316, align 1
  store i64 0, i64* %305, align 1
  %768 = add i64 %750, -120
  %769 = add i64 %752, 23
  store i64 %769, i64* %PC.i, align 8
  %770 = bitcast i64 %757 to double
  %771 = inttoptr i64 %768 to double*
  %772 = load double, double* %771, align 8
  %773 = fadd double %770, %772
  store double %773, double* %304, align 1
  store i64 0, i64* %305, align 1
  %774 = add i64 %750, -128
  %775 = add i64 %752, 28
  store i64 %775, i64* %PC.i, align 8
  %776 = inttoptr i64 %774 to double*
  %777 = load double, double* %776, align 8
  %778 = fadd double %773, %777
  store double %778, double* %304, align 1
  store i64 0, i64* %305, align 1
  %779 = add i64 %750, -136
  %780 = add i64 %752, 36
  store i64 %780, i64* %PC.i, align 8
  %781 = inttoptr i64 %779 to double*
  %782 = load double, double* %781, align 8
  %783 = fadd double %778, %782
  %784 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %785 = fmul double %783, %784
  store double %785, double* %304, align 1
  store i64 0, i64* %305, align 1
  %786 = add i64 %752, 53
  store i64 %786, i64* %PC.i, align 8
  store double %785, double* %781, align 8
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -24
  %789 = load i64, i64* %PC.i, align 8
  %790 = add i64 %789, 4
  store i64 %790, i64* %PC.i, align 8
  %791 = inttoptr i64 %788 to i64*
  %792 = load i64, i64* %791, align 8
  %793 = add i64 %792, 1
  store i64 %793, i64* %RAX.i1199, align 8
  %794 = icmp eq i64 %792, -1
  %795 = icmp eq i64 %793, 0
  %796 = or i1 %794, %795
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %14, align 1
  %798 = trunc i64 %793 to i32
  %799 = and i32 %798, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %21, align 1
  %804 = xor i64 %792, %793
  %805 = lshr i64 %804, 4
  %806 = trunc i64 %805 to i8
  %807 = and i8 %806, 1
  store i8 %807, i8* %26, align 1
  %808 = icmp eq i64 %793, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %29, align 1
  %810 = lshr i64 %793, 63
  %811 = trunc i64 %810 to i8
  store i8 %811, i8* %32, align 1
  %812 = lshr i64 %792, 63
  %813 = xor i64 %810, %812
  %814 = add nuw nsw i64 %813, %810
  %815 = icmp eq i64 %814, 2
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %38, align 1
  %817 = add i64 %789, 12
  store i64 %817, i64* %PC.i, align 8
  store i64 %793, i64* %791, align 8
  %818 = load i64, i64* %PC.i, align 8
  %819 = add i64 %818, -200
  store i64 %819, i64* %3, align 8
  br label %block_.L_400a49

block_.L_400b16:                                  ; preds = %block_.L_400a49
  %820 = add i64 %643, -176
  %821 = add i64 %679, 6
  store i64 %821, i64* %PC.i, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RAX.i1199, align 8
  %825 = add i64 %643, -172
  %826 = add i64 %679, 12
  store i64 %826, i64* %PC.i, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = sub i32 %823, %828
  %830 = icmp ult i32 %823, %828
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %14, align 1
  %832 = and i32 %829, 255
  %833 = tail call i32 @llvm.ctpop.i32(i32 %832)
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  store i8 %836, i8* %21, align 1
  %837 = xor i32 %828, %823
  %838 = xor i32 %837, %829
  %839 = lshr i32 %838, 4
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  store i8 %841, i8* %26, align 1
  %842 = icmp eq i32 %829, 0
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %29, align 1
  %844 = lshr i32 %829, 31
  %845 = trunc i32 %844 to i8
  store i8 %845, i8* %32, align 1
  %846 = lshr i32 %823, 31
  %847 = lshr i32 %828, 31
  %848 = xor i32 %847, %846
  %849 = xor i32 %844, %846
  %850 = add nuw nsw i32 %849, %848
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %38, align 1
  %.v43 = select i1 %842, i64 18, i64 58
  %853 = add i64 %679, %.v43
  store i64 %853, i64* %3, align 8
  br i1 %842, label %block_400b28, label %block_.L_400b50

block_400b28:                                     ; preds = %block_.L_400b16
  %854 = add i64 %853, 4
  store i64 %854, i64* %PC.i, align 8
  %855 = load i64, i64* %650, align 8
  store i64 %855, i64* %RDI.i1206, align 8
  %856 = add i64 %853, 8
  store i64 %856, i64* %PC.i, align 8
  %857 = load i64, i64* %650, align 8
  store i64 %857, i64* %RSI.i1110, align 8
  %858 = add i64 %853, 12
  store i64 %858, i64* %PC.i, align 8
  %859 = load i64, i64* %650, align 8
  store i64 %859, i64* %RDX.i1213, align 8
  %860 = add i64 %643, -112
  %861 = add i64 %853, 17
  store i64 %861, i64* %PC.i, align 8
  %862 = inttoptr i64 %860 to i64*
  %863 = load i64, i64* %862, align 8
  %864 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %863, i64* %864, align 1
  store double 0.000000e+00, double* %306, align 1
  %865 = add i64 %643, -120
  %866 = add i64 %853, 22
  store i64 %866, i64* %PC.i, align 8
  %867 = inttoptr i64 %865 to i64*
  %868 = load i64, i64* %867, align 8
  %869 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %868, i64* %869, align 1
  store double 0.000000e+00, double* %310, align 1
  %870 = add i64 %643, -128
  %871 = add i64 %853, 27
  store i64 %871, i64* %PC.i, align 8
  %872 = inttoptr i64 %870 to i64*
  %873 = load i64, i64* %872, align 8
  %874 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %873, i64* %874, align 1
  store double 0.000000e+00, double* %314, align 1
  %875 = add i64 %643, -136
  %876 = add i64 %853, 35
  store i64 %876, i64* %PC.i, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  %879 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %878, i64* %879, align 1
  store double 0.000000e+00, double* %319, align 1
  %880 = add i64 %853, 2680
  %881 = add i64 %853, 40
  %882 = load i64, i64* %6, align 8
  %883 = add i64 %882, -8
  %884 = inttoptr i64 %883 to i64*
  store i64 %881, i64* %884, align 8
  store i64 %883, i64* %6, align 8
  store i64 %880, i64* %3, align 8
  %call2_400b4b = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %880, %struct.Memory* %MEMORY.4)
  %.pre8 = load i64, i64* %PC.i, align 8
  %.pre9 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400b50

block_.L_400b50:                                  ; preds = %block_.L_400b16, %block_400b28
  %885 = phi i64 [ %643, %block_.L_400b16 ], [ %.pre9, %block_400b28 ]
  %886 = phi i64 [ %853, %block_.L_400b16 ], [ %.pre8, %block_400b28 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.4, %block_.L_400b16 ], [ %call2_400b4b, %block_400b28 ]
  %887 = load i64, i64* bitcast (%G_0xd78__rip__type* @G_0xd78__rip_ to i64*), align 8
  %888 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %887, i64* %888, align 1
  store double 0.000000e+00, double* %306, align 1
  %889 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %887, i64* %889, align 1
  store double 0.000000e+00, double* %310, align 1
  store i64 %887, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %887, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %887, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %887, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %890 = add i64 %885, -24
  %891 = add i64 %886, 60
  store i64 %891, i64* %PC.i, align 8
  %892 = inttoptr i64 %890 to i64*
  store i64 1, i64* %892, align 8
  %.pre10 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b8c

block_.L_400b8c:                                  ; preds = %block_400b9a, %block_.L_400b50
  %893 = phi i64 [ %998, %block_400b9a ], [ %.pre10, %block_.L_400b50 ]
  %894 = load i64, i64* %RBP.i, align 8
  %895 = add i64 %894, -24
  %896 = add i64 %893, 4
  store i64 %896, i64* %PC.i, align 8
  %897 = inttoptr i64 %895 to i64*
  %898 = load i64, i64* %897, align 8
  store i64 %898, i64* %RAX.i1199, align 8
  %899 = add i64 %894, -40
  %900 = add i64 %893, 8
  store i64 %900, i64* %PC.i, align 8
  %901 = inttoptr i64 %899 to i64*
  %902 = load i64, i64* %901, align 8
  %903 = sub i64 %898, %902
  %904 = icmp ult i64 %898, %902
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %14, align 1
  %906 = trunc i64 %903 to i32
  %907 = and i32 %906, 255
  %908 = tail call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  store i8 %911, i8* %21, align 1
  %912 = xor i64 %902, %898
  %913 = xor i64 %912, %903
  %914 = lshr i64 %913, 4
  %915 = trunc i64 %914 to i8
  %916 = and i8 %915, 1
  store i8 %916, i8* %26, align 1
  %917 = icmp eq i64 %903, 0
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %29, align 1
  %919 = lshr i64 %903, 63
  %920 = trunc i64 %919 to i8
  store i8 %920, i8* %32, align 1
  %921 = lshr i64 %898, 63
  %922 = lshr i64 %902, 63
  %923 = xor i64 %922, %921
  %924 = xor i64 %919, %921
  %925 = add nuw nsw i64 %924, %923
  %926 = icmp eq i64 %925, 2
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %38, align 1
  %928 = icmp ne i8 %920, 0
  %929 = xor i1 %928, %926
  %.demorgan44 = or i1 %917, %929
  %.v45 = select i1 %.demorgan44, i64 14, i64 270
  %930 = add i64 %893, %.v45
  store i64 %930, i64* %3, align 8
  br i1 %.demorgan44, label %block_400b9a, label %block_.L_400c9a

block_400b9a:                                     ; preds = %block_.L_400b8c
  store i64 -9223372036854775808, i64* %RAX.i1199, align 8
  %931 = load double, double* bitcast (%G_0x6020c8_type* @G_0x6020c8 to double*), align 8
  %932 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %933 = fadd double %931, %932
  %934 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %935 = fadd double %933, %934
  %936 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %937 = fsub double %935, %936
  %938 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %939 = fmul double %937, %938
  store double %939, double* bitcast (%G_0x6020c8_type* @G_0x6020c8 to double*), align 8
  %940 = fadd double %939, %932
  %941 = fsub double %940, %934
  %942 = fadd double %941, %936
  %943 = fmul double %942, %938
  store double %943, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %944 = fsub double %939, %943
  %945 = fadd double %944, %934
  %946 = fadd double %945, %936
  %947 = fmul double %946, %938
  store double %947, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %948 = bitcast double %939 to i64
  %949 = xor i64 %948, -9223372036854775808
  store i64 %949, i64* %RCX.i1209, align 8
  store i8 0, i8* %14, align 1
  %950 = trunc i64 %948 to i32
  %951 = and i32 %950, 255
  %952 = tail call i32 @llvm.ctpop.i32(i32 %951)
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  store i8 %955, i8* %21, align 1
  %956 = icmp eq i64 %949, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %29, align 1
  %958 = lshr i64 %949, 63
  %959 = trunc i64 %958 to i8
  store i8 %959, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %960 = bitcast i64 %949 to double
  %961 = fadd double %960, %943
  %962 = fadd double %961, %947
  %963 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %964 = fadd double %962, %963
  %965 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %966 = fmul double %964, %965
  store double %966, double* %304, align 1
  store i64 0, i64* %305, align 1
  store double %966, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %967 = load i64, i64* %RBP.i, align 8
  %968 = add i64 %967, -24
  %969 = add i64 %930, 243
  store i64 %969, i64* %PC.i, align 8
  %970 = inttoptr i64 %968 to i64*
  %971 = load i64, i64* %970, align 8
  %972 = add i64 %971, 1
  store i64 %972, i64* %RAX.i1199, align 8
  %973 = icmp eq i64 %971, -1
  %974 = icmp eq i64 %972, 0
  %975 = or i1 %973, %974
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %14, align 1
  %977 = trunc i64 %972 to i32
  %978 = and i32 %977, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %21, align 1
  %983 = xor i64 %971, %972
  %984 = lshr i64 %983, 4
  %985 = trunc i64 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %26, align 1
  %987 = icmp eq i64 %972, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %29, align 1
  %989 = lshr i64 %972, 63
  %990 = trunc i64 %989 to i8
  store i8 %990, i8* %32, align 1
  %991 = lshr i64 %971, 63
  %992 = xor i64 %989, %991
  %993 = add nuw nsw i64 %992, %989
  %994 = icmp eq i64 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %38, align 1
  %996 = add i64 %930, 251
  store i64 %996, i64* %PC.i, align 8
  store i64 %972, i64* %970, align 8
  %997 = load i64, i64* %PC.i, align 8
  %998 = add i64 %997, -265
  store i64 %998, i64* %3, align 8
  br label %block_.L_400b8c

block_.L_400c9a:                                  ; preds = %block_.L_400b8c
  %999 = add i64 %894, -176
  %1000 = add i64 %930, 6
  store i64 %1000, i64* %PC.i, align 8
  %1001 = inttoptr i64 %999 to i32*
  %1002 = load i32, i32* %1001, align 4
  %1003 = zext i32 %1002 to i64
  store i64 %1003, i64* %RAX.i1199, align 8
  %1004 = add i64 %894, -172
  %1005 = add i64 %930, 12
  store i64 %1005, i64* %PC.i, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = sub i32 %1002, %1007
  %1009 = icmp ult i32 %1002, %1007
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %14, align 1
  %1011 = and i32 %1008, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %21, align 1
  %1016 = xor i32 %1007, %1002
  %1017 = xor i32 %1016, %1008
  %1018 = lshr i32 %1017, 4
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %26, align 1
  %1021 = icmp eq i32 %1008, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %29, align 1
  %1023 = lshr i32 %1008, 31
  %1024 = trunc i32 %1023 to i8
  store i8 %1024, i8* %32, align 1
  %1025 = lshr i32 %1002, 31
  %1026 = lshr i32 %1007, 31
  %1027 = xor i32 %1026, %1025
  %1028 = xor i32 %1023, %1025
  %1029 = add nuw nsw i32 %1028, %1027
  %1030 = icmp eq i32 %1029, 2
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %38, align 1
  %.v46 = select i1 %1021, i64 18, i64 71
  %1032 = add i64 %930, %.v46
  store i64 %1032, i64* %3, align 8
  br i1 %1021, label %block_400cac, label %block_.L_400ce1

block_400cac:                                     ; preds = %block_.L_400c9a
  %1033 = add i64 %1032, 4
  store i64 %1033, i64* %PC.i, align 8
  %1034 = load i64, i64* %901, align 8
  store i64 %1034, i64* %RDI.i1206, align 8
  %1035 = add i64 %894, -48
  %1036 = add i64 %1032, 8
  store i64 %1036, i64* %PC.i, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %RSI.i1110, align 8
  %1039 = add i64 %1032, 12
  store i64 %1039, i64* %PC.i, align 8
  %1040 = load i64, i64* %901, align 8
  store i64 %1040, i64* %RDX.i1213, align 8
  %1041 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  %1042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1041, i64* %1042, align 1
  store double 0.000000e+00, double* %306, align 1
  %1043 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  %1044 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1043, i64* %1044, align 1
  store double 0.000000e+00, double* %310, align 1
  %1045 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %1046 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1045, i64* %1046, align 1
  store double 0.000000e+00, double* %314, align 1
  %1047 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %1048 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1047, i64* %1048, align 1
  store double 0.000000e+00, double* %319, align 1
  %1049 = add i64 %1032, 2292
  %1050 = add i64 %1032, 53
  %1051 = load i64, i64* %6, align 8
  %1052 = add i64 %1051, -8
  %1053 = inttoptr i64 %1052 to i64*
  store i64 %1050, i64* %1053, align 8
  store i64 %1052, i64* %6, align 8
  store i64 %1049, i64* %3, align 8
  %call2_400cdc = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1049, %struct.Memory* %MEMORY.6)
  %.pre11 = load i64, i64* %RBP.i, align 8
  %.pre12 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ce1

block_.L_400ce1:                                  ; preds = %block_.L_400c9a, %block_400cac
  %1054 = phi i64 [ %1032, %block_.L_400c9a ], [ %.pre12, %block_400cac ]
  %1055 = phi i64 [ %894, %block_.L_400c9a ], [ %.pre11, %block_400cac ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.6, %block_.L_400c9a ], [ %call2_400cdc, %block_400cac ]
  %1056 = add i64 %1055, -24
  %1057 = add i64 %1054, 8
  store i64 %1057, i64* %PC.i, align 8
  %1058 = inttoptr i64 %1056 to i64*
  store i64 1, i64* %1058, align 8
  %.pre13 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ce9

block_.L_400ce9:                                  ; preds = %block_400cf7, %block_.L_400ce1
  %1059 = phi i64 [ %.pre13, %block_.L_400ce1 ], [ %1134, %block_400cf7 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.8, %block_.L_400ce1 ], [ %call2_400d01, %block_400cf7 ]
  %1060 = load i64, i64* %RBP.i, align 8
  %1061 = add i64 %1060, -24
  %1062 = add i64 %1059, 4
  store i64 %1062, i64* %PC.i, align 8
  %1063 = inttoptr i64 %1061 to i64*
  %1064 = load i64, i64* %1063, align 8
  store i64 %1064, i64* %RAX.i1199, align 8
  %1065 = add i64 %1060, -48
  %1066 = add i64 %1059, 8
  store i64 %1066, i64* %PC.i, align 8
  %1067 = inttoptr i64 %1065 to i64*
  %1068 = load i64, i64* %1067, align 8
  %1069 = sub i64 %1064, %1068
  %1070 = icmp ult i64 %1064, %1068
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %14, align 1
  %1072 = trunc i64 %1069 to i32
  %1073 = and i32 %1072, 255
  %1074 = tail call i32 @llvm.ctpop.i32(i32 %1073)
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = xor i8 %1076, 1
  store i8 %1077, i8* %21, align 1
  %1078 = xor i64 %1068, %1064
  %1079 = xor i64 %1078, %1069
  %1080 = lshr i64 %1079, 4
  %1081 = trunc i64 %1080 to i8
  %1082 = and i8 %1081, 1
  store i8 %1082, i8* %26, align 1
  %1083 = icmp eq i64 %1069, 0
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %29, align 1
  %1085 = lshr i64 %1069, 63
  %1086 = trunc i64 %1085 to i8
  store i8 %1086, i8* %32, align 1
  %1087 = lshr i64 %1064, 63
  %1088 = lshr i64 %1068, 63
  %1089 = xor i64 %1088, %1087
  %1090 = xor i64 %1085, %1087
  %1091 = add nuw nsw i64 %1090, %1089
  %1092 = icmp eq i64 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %38, align 1
  %1094 = icmp ne i8 %1086, 0
  %1095 = xor i1 %1094, %1092
  %.demorgan47 = or i1 %1083, %1095
  %.v48 = select i1 %.demorgan47, i64 14, i64 46
  %1096 = add i64 %1059, %.v48
  store i64 %1096, i64* %3, align 8
  br i1 %.demorgan47, label %block_400cf7, label %block_.L_400d17

block_400cf7:                                     ; preds = %block_.L_400ce9
  store i64 ptrtoint (%G__0x6020c0_type* @G__0x6020c0 to i64), i64* %RDI.i1206, align 8
  %1097 = add i64 %1096, 2329
  %1098 = add i64 %1096, 15
  %1099 = load i64, i64* %6, align 8
  %1100 = add i64 %1099, -8
  %1101 = inttoptr i64 %1100 to i64*
  store i64 %1098, i64* %1101, align 8
  store i64 %1100, i64* %6, align 8
  store i64 %1097, i64* %3, align 8
  %call2_400d01 = tail call %struct.Memory* @sub_401610.PA(%struct.State* %0, i64 %1097, %struct.Memory* %MEMORY.9)
  %1102 = load i64, i64* %RBP.i, align 8
  %1103 = add i64 %1102, -24
  %1104 = load i64, i64* %PC.i, align 8
  %1105 = add i64 %1104, 4
  store i64 %1105, i64* %PC.i, align 8
  %1106 = inttoptr i64 %1103 to i64*
  %1107 = load i64, i64* %1106, align 8
  %1108 = add i64 %1107, 1
  store i64 %1108, i64* %RAX.i1199, align 8
  %1109 = icmp eq i64 %1107, -1
  %1110 = icmp eq i64 %1108, 0
  %1111 = or i1 %1109, %1110
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %14, align 1
  %1113 = trunc i64 %1108 to i32
  %1114 = and i32 %1113, 255
  %1115 = tail call i32 @llvm.ctpop.i32(i32 %1114)
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  store i8 %1118, i8* %21, align 1
  %1119 = xor i64 %1107, %1108
  %1120 = lshr i64 %1119, 4
  %1121 = trunc i64 %1120 to i8
  %1122 = and i8 %1121, 1
  store i8 %1122, i8* %26, align 1
  %1123 = icmp eq i64 %1108, 0
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %29, align 1
  %1125 = lshr i64 %1108, 63
  %1126 = trunc i64 %1125 to i8
  store i8 %1126, i8* %32, align 1
  %1127 = lshr i64 %1107, 63
  %1128 = xor i64 %1125, %1127
  %1129 = add nuw nsw i64 %1128, %1125
  %1130 = icmp eq i64 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %38, align 1
  %1132 = add i64 %1104, 12
  store i64 %1132, i64* %PC.i, align 8
  store i64 %1108, i64* %1106, align 8
  %1133 = load i64, i64* %PC.i, align 8
  %1134 = add i64 %1133, -41
  store i64 %1134, i64* %3, align 8
  br label %block_.L_400ce9

block_.L_400d17:                                  ; preds = %block_.L_400ce9
  %1135 = add i64 %1060, -176
  %1136 = add i64 %1096, 6
  store i64 %1136, i64* %PC.i, align 8
  %1137 = inttoptr i64 %1135 to i32*
  %1138 = load i32, i32* %1137, align 4
  %1139 = zext i32 %1138 to i64
  store i64 %1139, i64* %RAX.i1199, align 8
  %1140 = add i64 %1060, -172
  %1141 = add i64 %1096, 12
  store i64 %1141, i64* %PC.i, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = sub i32 %1138, %1143
  %1145 = icmp ult i32 %1138, %1143
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %14, align 1
  %1147 = and i32 %1144, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %21, align 1
  %1152 = xor i32 %1143, %1138
  %1153 = xor i32 %1152, %1144
  %1154 = lshr i32 %1153, 4
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  store i8 %1156, i8* %26, align 1
  %1157 = icmp eq i32 %1144, 0
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %29, align 1
  %1159 = lshr i32 %1144, 31
  %1160 = trunc i32 %1159 to i8
  store i8 %1160, i8* %32, align 1
  %1161 = lshr i32 %1138, 31
  %1162 = lshr i32 %1143, 31
  %1163 = xor i32 %1162, %1161
  %1164 = xor i32 %1159, %1161
  %1165 = add nuw nsw i32 %1164, %1163
  %1166 = icmp eq i32 %1165, 2
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %38, align 1
  %.v49 = select i1 %1157, i64 18, i64 71
  %1168 = add i64 %1096, %.v49
  store i64 %1168, i64* %3, align 8
  br i1 %1157, label %block_400d29, label %block_.L_400d5e

block_400d29:                                     ; preds = %block_.L_400d17
  %1169 = add i64 %1168, 4
  store i64 %1169, i64* %PC.i, align 8
  %1170 = load i64, i64* %1067, align 8
  store i64 %1170, i64* %RDI.i1206, align 8
  %1171 = add i64 %1060, -40
  %1172 = add i64 %1168, 8
  store i64 %1172, i64* %PC.i, align 8
  %1173 = inttoptr i64 %1171 to i64*
  %1174 = load i64, i64* %1173, align 8
  store i64 %1174, i64* %RSI.i1110, align 8
  %1175 = add i64 %1168, 12
  store i64 %1175, i64* %PC.i, align 8
  %1176 = load i64, i64* %1173, align 8
  store i64 %1176, i64* %RDX.i1213, align 8
  %1177 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  %1178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1177, i64* %1178, align 1
  store double 0.000000e+00, double* %306, align 1
  %1179 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  %1180 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1179, i64* %1180, align 1
  store double 0.000000e+00, double* %310, align 1
  %1181 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %1182 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1181, i64* %1182, align 1
  store double 0.000000e+00, double* %314, align 1
  %1183 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %1184 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1183, i64* %1184, align 1
  store double 0.000000e+00, double* %319, align 1
  %1185 = add i64 %1168, 2167
  %1186 = add i64 %1168, 53
  %1187 = load i64, i64* %6, align 8
  %1188 = add i64 %1187, -8
  %1189 = inttoptr i64 %1188 to i64*
  store i64 %1186, i64* %1189, align 8
  store i64 %1188, i64* %6, align 8
  store i64 %1185, i64* %3, align 8
  %call2_400d59 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1185, %struct.Memory* %MEMORY.9)
  %.pre14 = load i64, i64* %PC.i, align 8
  %.pre15 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d5e

block_.L_400d5e:                                  ; preds = %block_.L_400d17, %block_400d29
  %1190 = phi i64 [ %1060, %block_.L_400d17 ], [ %.pre15, %block_400d29 ]
  %1191 = phi i64 [ %1168, %block_.L_400d17 ], [ %.pre14, %block_400d29 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_400d17 ], [ %call2_400d59, %block_400d29 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1192 = add i64 %1190, -24
  %1193 = add i64 %1191, 19
  store i64 %1193, i64* %PC.i, align 8
  %1194 = inttoptr i64 %1192 to i64*
  store i64 1, i64* %1194, align 8
  %.pre16 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d71

block_.L_400d71:                                  ; preds = %block_.L_400dfa, %block_.L_400d5e
  %1195 = phi i32 [ %1286, %block_.L_400dfa ], [ 1, %block_.L_400d5e ]
  %1196 = phi i64 [ %1315, %block_.L_400dfa ], [ %.pre16, %block_.L_400d5e ]
  %1197 = load i64, i64* %RBP.i, align 8
  %1198 = add i64 %1197, -24
  %1199 = add i64 %1196, 4
  store i64 %1199, i64* %PC.i, align 8
  %1200 = inttoptr i64 %1198 to i64*
  %1201 = load i64, i64* %1200, align 8
  store i64 %1201, i64* %RAX.i1199, align 8
  %1202 = add i64 %1197, -56
  %1203 = add i64 %1196, 8
  store i64 %1203, i64* %PC.i, align 8
  %1204 = inttoptr i64 %1202 to i64*
  %1205 = load i64, i64* %1204, align 8
  %1206 = sub i64 %1201, %1205
  %1207 = icmp ult i64 %1201, %1205
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %14, align 1
  %1209 = trunc i64 %1206 to i32
  %1210 = and i32 %1209, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  %1215 = xor i64 %1205, %1201
  %1216 = xor i64 %1215, %1206
  %1217 = lshr i64 %1216, 4
  %1218 = trunc i64 %1217 to i8
  %1219 = and i8 %1218, 1
  store i8 %1219, i8* %26, align 1
  %1220 = icmp eq i64 %1206, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %29, align 1
  %1222 = lshr i64 %1206, 63
  %1223 = trunc i64 %1222 to i8
  store i8 %1223, i8* %32, align 1
  %1224 = lshr i64 %1201, 63
  %1225 = lshr i64 %1205, 63
  %1226 = xor i64 %1225, %1224
  %1227 = xor i64 %1222, %1224
  %1228 = add nuw nsw i64 %1227, %1226
  %1229 = icmp eq i64 %1228, 2
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %38, align 1
  %1231 = icmp ne i8 %1223, 0
  %1232 = xor i1 %1231, %1229
  %.demorgan50 = or i1 %1220, %1232
  %.v51 = select i1 %.demorgan50, i64 14, i64 159
  %1233 = add i64 %1196, %.v51
  store i64 %1233, i64* %3, align 8
  br i1 %.demorgan50, label %block_400d7f, label %block_.L_400e10

block_400d7f:                                     ; preds = %block_.L_400d71
  %1234 = add nsw i32 %1195, -1
  %1235 = icmp eq i32 %1195, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %14, align 1
  %1237 = and i32 %1234, 255
  %1238 = tail call i32 @llvm.ctpop.i32(i32 %1237)
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = xor i8 %1240, 1
  store i8 %1241, i8* %21, align 1
  %1242 = xor i32 %1195, %1234
  %1243 = lshr i32 %1242, 4
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  store i8 %1245, i8* %26, align 1
  %1246 = icmp eq i32 %1234, 0
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %29, align 1
  %1248 = lshr i32 %1234, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v52 = select i1 %1246, i64 14, i64 30
  %1250 = add i64 %1233, %.v52
  %1251 = add i64 %1250, 11
  store i64 %1251, i64* %PC.i, align 8
  br i1 %1246, label %block_400d8d, label %block_.L_400d9d

block_400d8d:                                     ; preds = %block_400d7f
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1252 = add i64 %1250, 27
  store i64 %1252, i64* %3, align 8
  br label %block_.L_400da8

block_.L_400d9d:                                  ; preds = %block_400d7f
  store i32 3, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400da8

block_.L_400da8:                                  ; preds = %block_.L_400d9d, %block_400d8d
  %1253 = phi i32 [ 1, %block_.L_400d9d ], [ 0, %block_400d8d ]
  %1254 = phi i64 [ %1251, %block_.L_400d9d ], [ %1252, %block_400d8d ]
  store i8 0, i8* %14, align 1
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1253)
  %1256 = trunc i32 %1255 to i8
  %1257 = xor i8 %1256, 1
  store i8 %1257, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1258 = icmp eq i32 %1253, 0
  %1259 = trunc i32 %1253 to i8
  %1260 = xor i8 %1259, 1
  store i8 %1260, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v53 = select i1 %1258, i64 30, i64 14
  %1261 = add i64 %1254, %.v53
  %1262 = add i64 %1261, 11
  store i64 %1262, i64* %PC.i, align 8
  br i1 %1258, label %block_.L_400dc6, label %block_400db6

block_400db6:                                     ; preds = %block_.L_400da8
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1263 = add i64 %1261, 27
  store i64 %1263, i64* %3, align 8
  br label %block_.L_400dd1

block_.L_400dc6:                                  ; preds = %block_.L_400da8
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400dd1

block_.L_400dd1:                                  ; preds = %block_.L_400dc6, %block_400db6
  %1264 = phi i32 [ 1, %block_.L_400dc6 ], [ 0, %block_400db6 ]
  %1265 = phi i64 [ %1262, %block_.L_400dc6 ], [ %1263, %block_400db6 ]
  %1266 = add nsw i32 %1264, -1
  %1267 = trunc i32 %1264 to i8
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %14, align 1
  %1269 = and i32 %1266, 255
  %1270 = tail call i32 @llvm.ctpop.i32(i32 %1269)
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  store i8 %1273, i8* %21, align 1
  %1274 = lshr i32 %1266, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  store i8 %1276, i8* %26, align 1
  %1277 = icmp eq i32 %1266, 0
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %29, align 1
  %1279 = lshr i32 %1266, 31
  %1280 = trunc i32 %1279 to i8
  store i8 %1280, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1281 = icmp ne i8 %1280, 0
  %.v54 = select i1 %1281, i64 14, i64 30
  %1282 = add i64 %1265, %.v54
  %1283 = add i64 %1282, 11
  store i64 %1283, i64* %PC.i, align 8
  br i1 %1281, label %block_400ddf, label %block_.L_400def

block_400ddf:                                     ; preds = %block_.L_400dd1
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1284 = add i64 %1282, 27
  store i64 %1284, i64* %3, align 8
  br label %block_.L_400dfa

block_.L_400def:                                  ; preds = %block_.L_400dd1
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400dfa

block_.L_400dfa:                                  ; preds = %block_.L_400def, %block_400ddf
  %1285 = phi i64 [ %1283, %block_.L_400def ], [ %1284, %block_400ddf ]
  %1286 = phi i32 [ 0, %block_.L_400def ], [ 1, %block_400ddf ]
  %1287 = add i64 %1285, 9
  store i64 %1287, i64* %PC.i, align 8
  %1288 = load i64, i64* %1200, align 8
  %1289 = add i64 %1288, 1
  store i64 %1289, i64* %RAX.i1199, align 8
  %1290 = icmp eq i64 %1288, -1
  %1291 = icmp eq i64 %1289, 0
  %1292 = or i1 %1290, %1291
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %14, align 1
  %1294 = trunc i64 %1289 to i32
  %1295 = and i32 %1294, 255
  %1296 = tail call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  store i8 %1299, i8* %21, align 1
  %1300 = xor i64 %1288, %1289
  %1301 = lshr i64 %1300, 4
  %1302 = trunc i64 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %26, align 1
  %1304 = icmp eq i64 %1289, 0
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %29, align 1
  %1306 = lshr i64 %1289, 63
  %1307 = trunc i64 %1306 to i8
  store i8 %1307, i8* %32, align 1
  %1308 = lshr i64 %1288, 63
  %1309 = xor i64 %1306, %1308
  %1310 = add nuw nsw i64 %1309, %1306
  %1311 = icmp eq i64 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %38, align 1
  %1313 = add i64 %1285, 17
  store i64 %1313, i64* %PC.i, align 8
  store i64 %1289, i64* %1200, align 8
  %1314 = load i64, i64* %PC.i, align 8
  %1315 = add i64 %1314, -154
  store i64 %1315, i64* %3, align 8
  br label %block_.L_400d71

block_.L_400e10:                                  ; preds = %block_.L_400d71
  %1316 = add i64 %1197, -176
  %1317 = add i64 %1233, 6
  store i64 %1317, i64* %PC.i, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RAX.i1199, align 8
  %1321 = add i64 %1197, -172
  %1322 = add i64 %1233, 12
  store i64 %1322, i64* %PC.i, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = sub i32 %1319, %1324
  %1326 = icmp ult i32 %1319, %1324
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %14, align 1
  %1328 = and i32 %1325, 255
  %1329 = tail call i32 @llvm.ctpop.i32(i32 %1328)
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  store i8 %1332, i8* %21, align 1
  %1333 = xor i32 %1324, %1319
  %1334 = xor i32 %1333, %1325
  %1335 = lshr i32 %1334, 4
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  store i8 %1337, i8* %26, align 1
  %1338 = icmp eq i32 %1325, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %29, align 1
  %1340 = lshr i32 %1325, 31
  %1341 = trunc i32 %1340 to i8
  store i8 %1341, i8* %32, align 1
  %1342 = lshr i32 %1319, 31
  %1343 = lshr i32 %1324, 31
  %1344 = xor i32 %1343, %1342
  %1345 = xor i32 %1340, %1342
  %1346 = add nuw nsw i32 %1345, %1344
  %1347 = icmp eq i32 %1346, 2
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %38, align 1
  %.v55 = select i1 %1338, i64 18, i64 66
  %1349 = add i64 %1233, %.v55
  store i64 %1349, i64* %3, align 8
  br i1 %1338, label %block_400e22, label %block_.L_400e52

block_400e22:                                     ; preds = %block_.L_400e10
  %1350 = add i64 %1349, 4
  store i64 %1350, i64* %PC.i, align 8
  %1351 = load i64, i64* %1204, align 8
  store i64 %1351, i64* %RDI.i1206, align 8
  %1352 = sext i32 %1195 to i64
  store i64 %1352, i64* %RSI.i1110, align 8
  store i64 %1352, i64* %RDX.i1213, align 8
  %1353 = add i64 %1197, -112
  %1354 = add i64 %1349, 25
  store i64 %1354, i64* %PC.i, align 8
  %1355 = inttoptr i64 %1353 to i64*
  %1356 = load i64, i64* %1355, align 8
  %1357 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1356, i64* %1357, align 1
  store double 0.000000e+00, double* %306, align 1
  %1358 = add i64 %1197, -120
  %1359 = add i64 %1349, 30
  store i64 %1359, i64* %PC.i, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  %1362 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1361, i64* %1362, align 1
  store double 0.000000e+00, double* %310, align 1
  %1363 = add i64 %1197, -128
  %1364 = add i64 %1349, 35
  store i64 %1364, i64* %PC.i, align 8
  %1365 = inttoptr i64 %1363 to i64*
  %1366 = load i64, i64* %1365, align 8
  %1367 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1366, i64* %1367, align 1
  store double 0.000000e+00, double* %314, align 1
  %1368 = add i64 %1197, -136
  %1369 = add i64 %1349, 43
  store i64 %1369, i64* %PC.i, align 8
  %1370 = inttoptr i64 %1368 to i64*
  %1371 = load i64, i64* %1370, align 8
  %1372 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1371, i64* %1372, align 1
  store double 0.000000e+00, double* %319, align 1
  %1373 = add i64 %1349, 1918
  %1374 = add i64 %1349, 48
  %1375 = load i64, i64* %6, align 8
  %1376 = add i64 %1375, -8
  %1377 = inttoptr i64 %1376 to i64*
  store i64 %1374, i64* %1377, align 8
  store i64 %1376, i64* %6, align 8
  store i64 %1373, i64* %3, align 8
  %call2_400e4d = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1373, %struct.Memory* %MEMORY.10)
  %.pre17 = load i64, i64* %PC.i, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400e52

block_.L_400e52:                                  ; preds = %block_.L_400e10, %block_400e22
  %1378 = phi i64 [ %1197, %block_.L_400e10 ], [ %.pre18, %block_400e22 ]
  %1379 = phi i64 [ %1349, %block_.L_400e10 ], [ %.pre17, %block_400e22 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.10, %block_.L_400e10 ], [ %call2_400e4d, %block_400e22 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1380 = add i64 %1378, -24
  %1381 = add i64 %1379, 41
  store i64 %1381, i64* %PC.i, align 8
  %1382 = inttoptr i64 %1380 to i64*
  store i64 1, i64* %1382, align 8
  %.pre19 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e7b

block_.L_400e7b:                                  ; preds = %block_400e89, %block_.L_400e52
  %1383 = phi i64 [ %1529, %block_400e89 ], [ %.pre19, %block_.L_400e52 ]
  %1384 = load i64, i64* %RBP.i, align 8
  %1385 = add i64 %1384, -24
  %1386 = add i64 %1383, 4
  store i64 %1386, i64* %PC.i, align 8
  %1387 = inttoptr i64 %1385 to i64*
  %1388 = load i64, i64* %1387, align 8
  store i64 %1388, i64* %RAX.i1199, align 8
  %1389 = add i64 %1384, -64
  %1390 = add i64 %1383, 8
  store i64 %1390, i64* %PC.i, align 8
  %1391 = inttoptr i64 %1389 to i64*
  %1392 = load i64, i64* %1391, align 8
  %1393 = sub i64 %1388, %1392
  %1394 = icmp ult i64 %1388, %1392
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %14, align 1
  %1396 = trunc i64 %1393 to i32
  %1397 = and i32 %1396, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %21, align 1
  %1402 = xor i64 %1392, %1388
  %1403 = xor i64 %1402, %1393
  %1404 = lshr i64 %1403, 4
  %1405 = trunc i64 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %26, align 1
  %1407 = icmp eq i64 %1393, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %29, align 1
  %1409 = lshr i64 %1393, 63
  %1410 = trunc i64 %1409 to i8
  store i8 %1410, i8* %32, align 1
  %1411 = lshr i64 %1388, 63
  %1412 = lshr i64 %1392, 63
  %1413 = xor i64 %1412, %1411
  %1414 = xor i64 %1409, %1411
  %1415 = add nuw nsw i64 %1414, %1413
  %1416 = icmp eq i64 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %38, align 1
  %1418 = icmp ne i8 %1410, 0
  %1419 = xor i1 %1418, %1416
  %.demorgan56 = or i1 %1407, %1419
  %.v57 = select i1 %.demorgan56, i64 14, i64 259
  %1420 = add i64 %1383, %.v57
  store i64 %1420, i64* %3, align 8
  br i1 %.demorgan56, label %block_400e89, label %block_.L_400f7e

block_400e89:                                     ; preds = %block_.L_400e7b
  %1421 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1422 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1423 = sub i32 %1422, %1421
  %1424 = sext i32 %1421 to i64
  %1425 = sext i32 %1423 to i64
  %1426 = mul nsw i64 %1425, %1424
  %1427 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1428 = sub i32 %1427, %1422
  %1429 = shl i64 %1426, 32
  %1430 = ashr exact i64 %1429, 32
  %1431 = sext i32 %1428 to i64
  %1432 = mul nsw i64 %1431, %1430
  %1433 = trunc i64 %1432 to i32
  store i32 %1433, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1434 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1435 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1436 = sub i32 %1433, %1435
  %1437 = add i32 %1427, %1436
  %1438 = mul i32 %1434, %1437
  store i32 %1438, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1439 = sub i32 %1435, %1438
  %1440 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1441 = add i32 %1440, %1438
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RCX.i1209, align 8
  %1443 = sext i32 %1439 to i64
  %1444 = sext i32 %1441 to i64
  %1445 = mul nsw i64 %1444, %1443
  %1446 = trunc i64 %1445 to i32
  store i32 %1446, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1447 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1448 = add i32 %1447, %1440
  %1449 = add i32 %1446, %1448
  %1450 = sitofp i32 %1449 to double
  %1451 = shl i64 %1445, 32
  %1452 = add i64 %1451, -4294967296
  %1453 = ashr exact i64 %1452, 29
  %1454 = add nsw i64 %1453, 6299840
  %1455 = add i64 %1420, 179
  store i64 %1455, i64* %PC.i, align 8
  %1456 = inttoptr i64 %1454 to double*
  store double %1450, double* %1456, align 8
  %1457 = load i64, i64* %PC.i, align 8
  %1458 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1459 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1460 = sext i32 %1458 to i64
  %1461 = sext i32 %1459 to i64
  %1462 = mul nsw i64 %1461, %1460
  %1463 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1464 = shl i64 %1462, 32
  %1465 = ashr exact i64 %1464, 32
  %1466 = sext i32 %1463 to i64
  %1467 = mul nsw i64 %1466, %1465
  %1468 = trunc i64 %1467 to i32
  %1469 = sitofp i32 %1468 to double
  store double %1469, double* %304, align 1
  %1470 = add i32 %1459, -1
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RAX.i1199, align 8
  %1472 = icmp eq i32 %1459, 0
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %14, align 1
  %1474 = and i32 %1470, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %21, align 1
  %1479 = xor i32 %1459, %1470
  %1480 = lshr i32 %1479, 4
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  store i8 %1482, i8* %26, align 1
  %1483 = icmp eq i32 %1470, 0
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %29, align 1
  %1485 = lshr i32 %1470, 31
  %1486 = trunc i32 %1485 to i8
  store i8 %1486, i8* %32, align 1
  %1487 = lshr i32 %1459, 31
  %1488 = xor i32 %1485, %1487
  %1489 = add nuw nsw i32 %1488, %1487
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %38, align 1
  %1492 = sext i32 %1470 to i64
  store i64 %1492, i64* %RDX.i1213, align 8
  %1493 = shl nsw i64 %1492, 3
  %1494 = add nsw i64 %1493, 6299840
  %1495 = add i64 %1457, 49
  store i64 %1495, i64* %PC.i, align 8
  %1496 = inttoptr i64 %1494 to double*
  store double %1469, double* %1496, align 8
  %1497 = load i64, i64* %RBP.i, align 8
  %1498 = add i64 %1497, -24
  %1499 = load i64, i64* %PC.i, align 8
  %1500 = add i64 %1499, 4
  store i64 %1500, i64* %PC.i, align 8
  %1501 = inttoptr i64 %1498 to i64*
  %1502 = load i64, i64* %1501, align 8
  %1503 = add i64 %1502, 1
  store i64 %1503, i64* %RAX.i1199, align 8
  %1504 = icmp eq i64 %1502, -1
  %1505 = icmp eq i64 %1503, 0
  %1506 = or i1 %1504, %1505
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %14, align 1
  %1508 = trunc i64 %1503 to i32
  %1509 = and i32 %1508, 255
  %1510 = tail call i32 @llvm.ctpop.i32(i32 %1509)
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  %1513 = xor i8 %1512, 1
  store i8 %1513, i8* %21, align 1
  %1514 = xor i64 %1502, %1503
  %1515 = lshr i64 %1514, 4
  %1516 = trunc i64 %1515 to i8
  %1517 = and i8 %1516, 1
  store i8 %1517, i8* %26, align 1
  %1518 = icmp eq i64 %1503, 0
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %29, align 1
  %1520 = lshr i64 %1503, 63
  %1521 = trunc i64 %1520 to i8
  store i8 %1521, i8* %32, align 1
  %1522 = lshr i64 %1502, 63
  %1523 = xor i64 %1520, %1522
  %1524 = add nuw nsw i64 %1523, %1520
  %1525 = icmp eq i64 %1524, 2
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %38, align 1
  %1527 = add i64 %1499, 12
  store i64 %1527, i64* %PC.i, align 8
  store i64 %1503, i64* %1501, align 8
  %1528 = load i64, i64* %PC.i, align 8
  %1529 = add i64 %1528, -254
  store i64 %1529, i64* %3, align 8
  br label %block_.L_400e7b

block_.L_400f7e:                                  ; preds = %block_.L_400e7b
  %1530 = add i64 %1384, -176
  %1531 = add i64 %1420, 6
  store i64 %1531, i64* %PC.i, align 8
  %1532 = inttoptr i64 %1530 to i32*
  %1533 = load i32, i32* %1532, align 4
  %1534 = zext i32 %1533 to i64
  store i64 %1534, i64* %RAX.i1199, align 8
  %1535 = add i64 %1384, -172
  %1536 = add i64 %1420, 12
  store i64 %1536, i64* %PC.i, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = sub i32 %1533, %1538
  %1540 = icmp ult i32 %1533, %1538
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %14, align 1
  %1542 = and i32 %1539, 255
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %21, align 1
  %1547 = xor i32 %1538, %1533
  %1548 = xor i32 %1547, %1539
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %26, align 1
  %1552 = icmp eq i32 %1539, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %29, align 1
  %1554 = lshr i32 %1539, 31
  %1555 = trunc i32 %1554 to i8
  store i8 %1555, i8* %32, align 1
  %1556 = lshr i32 %1533, 31
  %1557 = lshr i32 %1538, 31
  %1558 = xor i32 %1557, %1556
  %1559 = xor i32 %1554, %1556
  %1560 = add nuw nsw i32 %1559, %1558
  %1561 = icmp eq i32 %1560, 2
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %38, align 1
  %.v58 = select i1 %1552, i64 18, i64 79
  %1563 = add i64 %1420, %.v58
  store i64 %1563, i64* %3, align 8
  br i1 %1552, label %block_400f90, label %block_.L_400fcd

block_400f90:                                     ; preds = %block_.L_400f7e
  %1564 = add i64 %1563, 4
  store i64 %1564, i64* %PC.i, align 8
  %1565 = load i64, i64* %1391, align 8
  store i64 %1565, i64* %RDI.i1206, align 8
  %1566 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1567 = sext i32 %1566 to i64
  store i64 %1567, i64* %RSI.i1110, align 8
  %1568 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1569 = sext i32 %1568 to i64
  store i64 %1569, i64* %RDX.i1213, align 8
  %1570 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  %1571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1570, i64* %1571, align 1
  store double 0.000000e+00, double* %306, align 1
  %1572 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  %1573 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1572, i64* %1573, align 1
  store double 0.000000e+00, double* %310, align 1
  %1574 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %1575 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1574, i64* %1575, align 1
  store double 0.000000e+00, double* %314, align 1
  %1576 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %1577 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1576, i64* %1577, align 1
  store double 0.000000e+00, double* %319, align 1
  %1578 = add i64 %1563, 1552
  %1579 = add i64 %1563, 61
  %1580 = load i64, i64* %6, align 8
  %1581 = add i64 %1580, -8
  %1582 = inttoptr i64 %1581 to i64*
  store i64 %1579, i64* %1582, align 8
  store i64 %1581, i64* %6, align 8
  store i64 %1578, i64* %3, align 8
  %call2_400fc8 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1578, %struct.Memory* %MEMORY.15)
  %.pre20 = load i64, i64* %PC.i, align 8
  %.pre21 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400fcd

block_.L_400fcd:                                  ; preds = %block_.L_400f7e, %block_400f90
  %1583 = phi i64 [ %1384, %block_.L_400f7e ], [ %.pre21, %block_400f90 ]
  %1584 = phi i64 [ %1563, %block_.L_400f7e ], [ %.pre20, %block_400f90 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_.L_400f7e ], [ %call2_400fc8, %block_400f90 ]
  %1585 = load i64, i64* bitcast (%G_0x90b__rip__type* @G_0x90b__rip_ to i64*), align 8
  %1586 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1585, i64* %1586, align 1
  store double 0.000000e+00, double* %306, align 1
  %1587 = add i64 %1583, -144
  %1588 = add i64 %1584, 16
  store i64 %1588, i64* %PC.i, align 8
  %1589 = inttoptr i64 %1587 to i64*
  store i64 %1585, i64* %1589, align 8
  %1590 = load i64, i64* %RBP.i, align 8
  %1591 = add i64 %1590, -152
  %1592 = load i64, i64* %PC.i, align 8
  %1593 = add i64 %1592, 8
  store i64 %1593, i64* %PC.i, align 8
  %1594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1595 = load i64, i64* %1594, align 1
  %1596 = inttoptr i64 %1591 to i64*
  store i64 %1595, i64* %1596, align 8
  %1597 = load i64, i64* %RBP.i, align 8
  %1598 = add i64 %1597, -24
  %1599 = load i64, i64* %PC.i, align 8
  %1600 = add i64 %1599, 8
  store i64 %1600, i64* %PC.i, align 8
  %1601 = inttoptr i64 %1598 to i64*
  store i64 1, i64* %1601, align 8
  %.pre22 = load i64, i64* %PC.i, align 8
  br label %block_.L_400fed

block_.L_400fed:                                  ; preds = %block_400ffb, %block_.L_400fcd
  %1602 = phi i64 [ %.pre22, %block_.L_400fcd ], [ %1980, %block_400ffb ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400fcd ], [ %call2_4011ba, %block_400ffb ]
  %1603 = load i64, i64* %RBP.i, align 8
  %1604 = add i64 %1603, -24
  %1605 = add i64 %1602, 4
  store i64 %1605, i64* %PC.i, align 8
  %1606 = inttoptr i64 %1604 to i64*
  %1607 = load i64, i64* %1606, align 8
  store i64 %1607, i64* %RAX.i1199, align 8
  %1608 = add i64 %1603, -72
  %1609 = add i64 %1602, 8
  store i64 %1609, i64* %PC.i, align 8
  %1610 = inttoptr i64 %1608 to i64*
  %1611 = load i64, i64* %1610, align 8
  %1612 = sub i64 %1607, %1611
  %1613 = icmp ult i64 %1607, %1611
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %14, align 1
  %1615 = trunc i64 %1612 to i32
  %1616 = and i32 %1615, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %21, align 1
  %1621 = xor i64 %1611, %1607
  %1622 = xor i64 %1621, %1612
  %1623 = lshr i64 %1622, 4
  %1624 = trunc i64 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %26, align 1
  %1626 = icmp eq i64 %1612, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %29, align 1
  %1628 = lshr i64 %1612, 63
  %1629 = trunc i64 %1628 to i8
  store i8 %1629, i8* %32, align 1
  %1630 = lshr i64 %1607, 63
  %1631 = lshr i64 %1611, 63
  %1632 = xor i64 %1631, %1630
  %1633 = xor i64 %1628, %1630
  %1634 = add nuw nsw i64 %1633, %1632
  %1635 = icmp eq i64 %1634, 2
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %38, align 1
  %1637 = icmp ne i8 %1629, 0
  %1638 = xor i1 %1637, %1635
  %.demorgan59 = or i1 %1626, %1638
  %.v60 = select i1 %.demorgan59, i64 14, i64 503
  %1639 = add i64 %1602, %.v60
  store i64 %1639, i64* %3, align 8
  br i1 %.demorgan59, label %block_400ffb, label %block_.L_4011e4

block_400ffb:                                     ; preds = %block_.L_400fed
  %1640 = load i64, i64* bitcast (%G_0x8d5__rip__type* @G_0x8d5__rip_ to i64*), align 8
  %1641 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1640, i64* %1641, align 1
  store double 0.000000e+00, double* %306, align 1
  %1642 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %1643 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1642, i64* %1643, align 1
  store double 0.000000e+00, double* %310, align 1
  %1644 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  %1645 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1644, i64* %1645, align 1
  store double 0.000000e+00, double* %314, align 1
  %1646 = add i64 %1603, -144
  %1647 = add i64 %1639, 34
  store i64 %1647, i64* %PC.i, align 8
  %1648 = inttoptr i64 %1646 to i64*
  %1649 = load i64, i64* %1648, align 8
  %1650 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1649, i64* %1650, align 1
  store double 0.000000e+00, double* %319, align 1
  %1651 = add i64 %1603, -224
  %1652 = add i64 %1639, 42
  store i64 %1652, i64* %PC.i, align 8
  %1653 = inttoptr i64 %1651 to i64*
  store i64 %1640, i64* %1653, align 8
  %1654 = load i64, i64* %PC.i, align 8
  %1655 = load <2 x i32>, <2 x i32>* %320, align 1
  %1656 = load <2 x i32>, <2 x i32>* %322, align 1
  %1657 = extractelement <2 x i32> %1655, i32 0
  store i32 %1657, i32* %323, align 1
  %1658 = extractelement <2 x i32> %1655, i32 1
  store i32 %1658, i32* %325, align 1
  %1659 = extractelement <2 x i32> %1656, i32 0
  store i32 %1659, i32* %326, align 1
  %1660 = extractelement <2 x i32> %1656, i32 1
  store i32 %1660, i32* %328, align 1
  %1661 = load i64, i64* %RBP.i, align 8
  %1662 = add i64 %1661, -232
  %1663 = add i64 %1654, 11
  store i64 %1663, i64* %PC.i, align 8
  %1664 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  %1665 = load i64, i64* %1664, align 1
  %1666 = inttoptr i64 %1662 to i64*
  store i64 %1665, i64* %1666, align 8
  %1667 = load i64, i64* %RBP.i, align 8
  %1668 = add i64 %1667, -240
  %1669 = load i64, i64* %PC.i, align 8
  %1670 = add i64 %1669, 8
  store i64 %1670, i64* %PC.i, align 8
  %1671 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  %1672 = load i64, i64* %1671, align 1
  %1673 = inttoptr i64 %1668 to i64*
  store i64 %1672, i64* %1673, align 8
  %1674 = load i64, i64* %PC.i, align 8
  %1675 = add i64 %1674, -2360
  %1676 = add i64 %1674, 5
  %1677 = load i64, i64* %6, align 8
  %1678 = add i64 %1677, -8
  %1679 = inttoptr i64 %1678 to i64*
  store i64 %1676, i64* %1679, align 8
  store i64 %1678, i64* %6, align 8
  store i64 %1675, i64* %3, align 8
  %call2_401038 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1675, %struct.Memory* %MEMORY.18)
  %1680 = load i64, i64* %RBP.i, align 8
  %1681 = add i64 %1680, -232
  %1682 = load i64, i64* %PC.i, align 8
  %1683 = add i64 %1682, 8
  store i64 %1683, i64* %PC.i, align 8
  %1684 = inttoptr i64 %1681 to double*
  %1685 = load double, double* %1684, align 8
  %1686 = load double, double* %315, align 1
  %1687 = fmul double %1685, %1686
  store double %1687, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1688 = add i64 %1680, -144
  %1689 = add i64 %1682, 20
  store i64 %1689, i64* %PC.i, align 8
  %1690 = inttoptr i64 %1688 to i64*
  %1691 = load i64, i64* %1690, align 8
  %1692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1691, i64* %1692, align 1
  store double 0.000000e+00, double* %306, align 1
  %1693 = add i64 %1680, -248
  %1694 = add i64 %1682, 28
  store i64 %1694, i64* %PC.i, align 8
  %1695 = inttoptr i64 %1693 to double*
  store double %1687, double* %1695, align 8
  %1696 = load i64, i64* %PC.i, align 8
  %1697 = add i64 %1696, -2457
  %1698 = add i64 %1696, 5
  %1699 = load i64, i64* %6, align 8
  %1700 = add i64 %1699, -8
  %1701 = inttoptr i64 %1700 to i64*
  store i64 %1698, i64* %1701, align 8
  store i64 %1700, i64* %6, align 8
  store i64 %1697, i64* %3, align 8
  %call2_401059 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1697, %struct.Memory* %call2_401038)
  %1702 = load i64, i64* %RBP.i, align 8
  %1703 = add i64 %1702, -248
  %1704 = load i64, i64* %PC.i, align 8
  %1705 = add i64 %1704, 8
  store i64 %1705, i64* %PC.i, align 8
  %1706 = inttoptr i64 %1703 to double*
  %1707 = load double, double* %1706, align 8
  %1708 = load double, double* %315, align 1
  %1709 = fmul double %1707, %1708
  store double %1709, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1710 = add i64 %1702, -144
  %1711 = add i64 %1704, 20
  store i64 %1711, i64* %PC.i, align 8
  %1712 = inttoptr i64 %1710 to double*
  %1713 = load double, double* %1712, align 8
  store double %1713, double* %304, align 1
  store double 0.000000e+00, double* %306, align 1
  %1714 = add i64 %1702, -152
  %1715 = add i64 %1704, 28
  store i64 %1715, i64* %PC.i, align 8
  %1716 = inttoptr i64 %1714 to double*
  %1717 = load double, double* %1716, align 8
  %1718 = fadd double %1713, %1717
  store double %1718, double* %304, align 1
  store i64 0, i64* %305, align 1
  %1719 = add i64 %1702, -256
  %1720 = add i64 %1704, 36
  store i64 %1720, i64* %PC.i, align 8
  %1721 = inttoptr i64 %1719 to double*
  store double %1709, double* %1721, align 8
  %1722 = load i64, i64* %PC.i, align 8
  %1723 = add i64 %1722, -2498
  %1724 = add i64 %1722, 5
  %1725 = load i64, i64* %6, align 8
  %1726 = add i64 %1725, -8
  %1727 = inttoptr i64 %1726 to i64*
  store i64 %1724, i64* %1727, align 8
  store i64 %1726, i64* %6, align 8
  store i64 %1723, i64* %3, align 8
  %call2_401082 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1723, %struct.Memory* %call2_401059)
  %1728 = load i64, i64* %RBP.i, align 8
  %1729 = add i64 %1728, -144
  %1730 = load i64, i64* %PC.i, align 8
  %1731 = add i64 %1730, 8
  store i64 %1731, i64* %PC.i, align 8
  %1732 = inttoptr i64 %1729 to double*
  %1733 = load double, double* %1732, align 8
  store double %1733, double* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %1734 = add i64 %1728, -152
  %1735 = add i64 %1730, 16
  store i64 %1735, i64* %PC.i, align 8
  %1736 = inttoptr i64 %1734 to double*
  %1737 = load double, double* %1736, align 8
  %1738 = fsub double %1733, %1737
  store double %1738, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1739 = add i64 %1728, -264
  %1740 = add i64 %1730, 24
  store i64 %1740, i64* %PC.i, align 8
  %1741 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1742 = load i64, i64* %1741, align 1
  %1743 = inttoptr i64 %1739 to i64*
  store i64 %1742, i64* %1743, align 8
  %1744 = load i64, i64* %PC.i, align 8
  %1745 = load <2 x i32>, <2 x i32>* %329, align 1
  %1746 = load <2 x i32>, <2 x i32>* %331, align 1
  %1747 = extractelement <2 x i32> %1745, i32 0
  store i32 %1747, i32* %323, align 1
  %1748 = extractelement <2 x i32> %1745, i32 1
  store i32 %1748, i32* %325, align 1
  %1749 = extractelement <2 x i32> %1746, i32 0
  store i32 %1749, i32* %326, align 1
  %1750 = extractelement <2 x i32> %1746, i32 1
  store i32 %1750, i32* %328, align 1
  %1751 = add i64 %1744, -2527
  %1752 = add i64 %1744, 8
  %1753 = load i64, i64* %6, align 8
  %1754 = add i64 %1753, -8
  %1755 = inttoptr i64 %1754 to i64*
  store i64 %1752, i64* %1755, align 8
  store i64 %1754, i64* %6, align 8
  store i64 %1751, i64* %3, align 8
  %call2_4010a2 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1751, %struct.Memory* %call2_401082)
  %1756 = load i64, i64* %RBP.i, align 8
  %1757 = add i64 %1756, -264
  %1758 = load i64, i64* %PC.i, align 8
  %1759 = add i64 %1758, 8
  store i64 %1759, i64* %PC.i, align 8
  %1760 = inttoptr i64 %1757 to double*
  %1761 = load double, double* %1760, align 8
  %1762 = load double, double* %315, align 1
  %1763 = fadd double %1761, %1762
  store double %1763, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1764 = add i64 %1756, -224
  %1765 = add i64 %1758, 20
  store i64 %1765, i64* %PC.i, align 8
  %1766 = inttoptr i64 %1764 to double*
  %1767 = load double, double* %1766, align 8
  store double %1767, double* %304, align 1
  store double 0.000000e+00, double* %306, align 1
  %1768 = fsub double %1763, %1767
  store double %1768, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1769 = add i64 %1756, -256
  %1770 = add i64 %1758, 32
  store i64 %1770, i64* %PC.i, align 8
  %1771 = inttoptr i64 %1769 to double*
  %1772 = load double, double* %1771, align 8
  %1773 = fdiv double %1772, %1768
  store double %1773, double* %312, align 1
  store i64 0, i64* %313, align 1
  %1774 = bitcast double %1773 to <2 x i32>
  %1775 = extractelement <2 x i32> %1774, i32 0
  store i32 %1775, i32* %323, align 1
  %1776 = extractelement <2 x i32> %1774, i32 1
  store i32 %1776, i32* %325, align 1
  store i32 0, i32* %326, align 1
  store i32 0, i32* %328, align 1
  %1777 = add i64 %1758, -2583
  %1778 = add i64 %1758, 44
  %1779 = load i64, i64* %6, align 8
  %1780 = add i64 %1779, -8
  %1781 = inttoptr i64 %1780 to i64*
  store i64 %1778, i64* %1781, align 8
  store i64 %1780, i64* %6, align 8
  store i64 %1777, i64* %3, align 8
  %call2_4010ce = tail call %struct.Memory* @ext_atan(%struct.State* %0, i64 %1777, %struct.Memory* %call2_4010a2)
  %1782 = load i64, i64* %PC.i, align 8
  %1783 = load i64, i64* bitcast (%G_0x7fd__rip__type* @G_0x7fd__rip_ to i64*), align 8
  %1784 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1783, i64* %1784, align 1
  store double 0.000000e+00, double* %310, align 1
  %1785 = load i64, i64* %RBP.i, align 8
  %1786 = add i64 %1785, -240
  %1787 = add i64 %1782, 16
  store i64 %1787, i64* %PC.i, align 8
  %1788 = inttoptr i64 %1786 to double*
  %1789 = load double, double* %1788, align 8
  %1790 = load double, double* %315, align 1
  %1791 = fmul double %1789, %1790
  %1792 = add i64 %1785, -144
  %1793 = add i64 %1782, 28
  store i64 %1793, i64* %PC.i, align 8
  %1794 = inttoptr i64 %1792 to double*
  store double %1791, double* %1794, align 8
  %1795 = load i64, i64* %PC.i, align 8
  %1796 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %1797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1796, i64* %1797, align 1
  store double 0.000000e+00, double* %306, align 1
  %1798 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  %1799 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1798, i64* %1799, align 1
  store double 0.000000e+00, double* %314, align 1
  %1800 = load i64, i64* %RBP.i, align 8
  %1801 = add i64 %1800, -152
  %1802 = add i64 %1795, 26
  store i64 %1802, i64* %PC.i, align 8
  %1803 = inttoptr i64 %1801 to i64*
  %1804 = load i64, i64* %1803, align 8
  %1805 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1804, i64* %1805, align 1
  store double 0.000000e+00, double* %319, align 1
  %1806 = add i64 %1800, -272
  %1807 = add i64 %1795, 34
  store i64 %1807, i64* %PC.i, align 8
  %1808 = inttoptr i64 %1806 to i64*
  store i64 %1796, i64* %1808, align 8
  %1809 = load i64, i64* %PC.i, align 8
  %1810 = load <2 x i32>, <2 x i32>* %320, align 1
  %1811 = load <2 x i32>, <2 x i32>* %322, align 1
  %1812 = extractelement <2 x i32> %1810, i32 0
  store i32 %1812, i32* %323, align 1
  %1813 = extractelement <2 x i32> %1810, i32 1
  store i32 %1813, i32* %325, align 1
  %1814 = extractelement <2 x i32> %1811, i32 0
  store i32 %1814, i32* %326, align 1
  %1815 = extractelement <2 x i32> %1811, i32 1
  store i32 %1815, i32* %328, align 1
  %1816 = load i64, i64* %RBP.i, align 8
  %1817 = add i64 %1816, -280
  %1818 = add i64 %1809, 11
  store i64 %1818, i64* %PC.i, align 8
  %1819 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  %1820 = load i64, i64* %1819, align 1
  %1821 = inttoptr i64 %1817 to i64*
  store i64 %1820, i64* %1821, align 8
  %1822 = load i64, i64* %RBP.i, align 8
  %1823 = add i64 %1822, -288
  %1824 = load i64, i64* %PC.i, align 8
  %1825 = add i64 %1824, 8
  store i64 %1825, i64* %PC.i, align 8
  %1826 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  %1827 = load i64, i64* %1826, align 1
  %1828 = inttoptr i64 %1823 to i64*
  store i64 %1827, i64* %1828, align 8
  %1829 = load i64, i64* %PC.i, align 8
  %1830 = add i64 %1829, -2596
  %1831 = add i64 %1829, 5
  %1832 = load i64, i64* %6, align 8
  %1833 = add i64 %1832, -8
  %1834 = inttoptr i64 %1833 to i64*
  store i64 %1831, i64* %1834, align 8
  store i64 %1833, i64* %6, align 8
  store i64 %1830, i64* %3, align 8
  %call2_401124 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1830, %struct.Memory* %call2_4010ce)
  %1835 = load i64, i64* %RBP.i, align 8
  %1836 = add i64 %1835, -288
  %1837 = load i64, i64* %PC.i, align 8
  %1838 = add i64 %1837, 8
  store i64 %1838, i64* %PC.i, align 8
  %1839 = inttoptr i64 %1836 to double*
  %1840 = load double, double* %1839, align 8
  %1841 = load double, double* %315, align 1
  %1842 = fmul double %1840, %1841
  store double %1842, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1843 = add i64 %1835, -152
  %1844 = add i64 %1837, 20
  store i64 %1844, i64* %PC.i, align 8
  %1845 = inttoptr i64 %1843 to i64*
  %1846 = load i64, i64* %1845, align 8
  %1847 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1846, i64* %1847, align 1
  store double 0.000000e+00, double* %306, align 1
  %1848 = add i64 %1835, -296
  %1849 = add i64 %1837, 28
  store i64 %1849, i64* %PC.i, align 8
  %1850 = inttoptr i64 %1848 to double*
  store double %1842, double* %1850, align 8
  %1851 = load i64, i64* %PC.i, align 8
  %1852 = add i64 %1851, -2693
  %1853 = add i64 %1851, 5
  %1854 = load i64, i64* %6, align 8
  %1855 = add i64 %1854, -8
  %1856 = inttoptr i64 %1855 to i64*
  store i64 %1853, i64* %1856, align 8
  store i64 %1855, i64* %6, align 8
  store i64 %1852, i64* %3, align 8
  %call2_401145 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1852, %struct.Memory* %call2_401124)
  %1857 = load i64, i64* %RBP.i, align 8
  %1858 = add i64 %1857, -296
  %1859 = load i64, i64* %PC.i, align 8
  %1860 = add i64 %1859, 8
  store i64 %1860, i64* %PC.i, align 8
  %1861 = inttoptr i64 %1858 to double*
  %1862 = load double, double* %1861, align 8
  %1863 = load double, double* %315, align 1
  %1864 = fmul double %1862, %1863
  store double %1864, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1865 = add i64 %1857, -144
  %1866 = add i64 %1859, 20
  store i64 %1866, i64* %PC.i, align 8
  %1867 = inttoptr i64 %1865 to double*
  %1868 = load double, double* %1867, align 8
  store double %1868, double* %304, align 1
  store double 0.000000e+00, double* %306, align 1
  %1869 = add i64 %1857, -152
  %1870 = add i64 %1859, 28
  store i64 %1870, i64* %PC.i, align 8
  %1871 = inttoptr i64 %1869 to double*
  %1872 = load double, double* %1871, align 8
  %1873 = fadd double %1868, %1872
  store double %1873, double* %304, align 1
  store i64 0, i64* %305, align 1
  %1874 = add i64 %1857, -304
  %1875 = add i64 %1859, 36
  store i64 %1875, i64* %PC.i, align 8
  %1876 = inttoptr i64 %1874 to double*
  store double %1864, double* %1876, align 8
  %1877 = load i64, i64* %PC.i, align 8
  %1878 = add i64 %1877, -2734
  %1879 = add i64 %1877, 5
  %1880 = load i64, i64* %6, align 8
  %1881 = add i64 %1880, -8
  %1882 = inttoptr i64 %1881 to i64*
  store i64 %1879, i64* %1882, align 8
  store i64 %1881, i64* %6, align 8
  store i64 %1878, i64* %3, align 8
  %call2_40116e = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1878, %struct.Memory* %call2_401145)
  %1883 = load i64, i64* %RBP.i, align 8
  %1884 = add i64 %1883, -144
  %1885 = load i64, i64* %PC.i, align 8
  %1886 = add i64 %1885, 8
  store i64 %1886, i64* %PC.i, align 8
  %1887 = inttoptr i64 %1884 to double*
  %1888 = load double, double* %1887, align 8
  store double %1888, double* %308, align 1
  store double 0.000000e+00, double* %310, align 1
  %1889 = add i64 %1883, -152
  %1890 = add i64 %1885, 16
  store i64 %1890, i64* %PC.i, align 8
  %1891 = inttoptr i64 %1889 to double*
  %1892 = load double, double* %1891, align 8
  %1893 = fsub double %1888, %1892
  store double %1893, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1894 = add i64 %1883, -312
  %1895 = add i64 %1885, 24
  store i64 %1895, i64* %PC.i, align 8
  %1896 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1897 = load i64, i64* %1896, align 1
  %1898 = inttoptr i64 %1894 to i64*
  store i64 %1897, i64* %1898, align 8
  %1899 = load i64, i64* %PC.i, align 8
  %1900 = load <2 x i32>, <2 x i32>* %329, align 1
  %1901 = load <2 x i32>, <2 x i32>* %331, align 1
  %1902 = extractelement <2 x i32> %1900, i32 0
  store i32 %1902, i32* %323, align 1
  %1903 = extractelement <2 x i32> %1900, i32 1
  store i32 %1903, i32* %325, align 1
  %1904 = extractelement <2 x i32> %1901, i32 0
  store i32 %1904, i32* %326, align 1
  %1905 = extractelement <2 x i32> %1901, i32 1
  store i32 %1905, i32* %328, align 1
  %1906 = add i64 %1899, -2763
  %1907 = add i64 %1899, 8
  %1908 = load i64, i64* %6, align 8
  %1909 = add i64 %1908, -8
  %1910 = inttoptr i64 %1909 to i64*
  store i64 %1907, i64* %1910, align 8
  store i64 %1909, i64* %6, align 8
  store i64 %1906, i64* %3, align 8
  %call2_40118e = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1906, %struct.Memory* %call2_40116e)
  %1911 = load i64, i64* %RBP.i, align 8
  %1912 = add i64 %1911, -312
  %1913 = load i64, i64* %PC.i, align 8
  %1914 = add i64 %1913, 8
  store i64 %1914, i64* %PC.i, align 8
  %1915 = inttoptr i64 %1912 to double*
  %1916 = load double, double* %1915, align 8
  %1917 = load double, double* %315, align 1
  %1918 = fadd double %1916, %1917
  store double %1918, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1919 = add i64 %1911, -280
  %1920 = add i64 %1913, 20
  store i64 %1920, i64* %PC.i, align 8
  %1921 = inttoptr i64 %1919 to double*
  %1922 = load double, double* %1921, align 8
  store double %1922, double* %304, align 1
  store double 0.000000e+00, double* %306, align 1
  %1923 = fsub double %1918, %1922
  store double %1923, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1924 = add i64 %1911, -304
  %1925 = add i64 %1913, 32
  store i64 %1925, i64* %PC.i, align 8
  %1926 = inttoptr i64 %1924 to double*
  %1927 = load double, double* %1926, align 8
  %1928 = fdiv double %1927, %1923
  store double %1928, double* %312, align 1
  store i64 0, i64* %313, align 1
  %1929 = bitcast double %1928 to <2 x i32>
  %1930 = extractelement <2 x i32> %1929, i32 0
  store i32 %1930, i32* %323, align 1
  %1931 = extractelement <2 x i32> %1929, i32 1
  store i32 %1931, i32* %325, align 1
  store i32 0, i32* %326, align 1
  store i32 0, i32* %328, align 1
  %1932 = add i64 %1913, -2819
  %1933 = add i64 %1913, 44
  %1934 = load i64, i64* %6, align 8
  %1935 = add i64 %1934, -8
  %1936 = inttoptr i64 %1935 to i64*
  store i64 %1933, i64* %1936, align 8
  store i64 %1935, i64* %6, align 8
  store i64 %1932, i64* %3, align 8
  %call2_4011ba = tail call %struct.Memory* @ext_atan(%struct.State* %0, i64 %1932, %struct.Memory* %call2_40118e)
  %1937 = load i64, i64* %RBP.i, align 8
  %1938 = add i64 %1937, -272
  %1939 = load i64, i64* %PC.i, align 8
  %1940 = add i64 %1939, 8
  store i64 %1940, i64* %PC.i, align 8
  %1941 = inttoptr i64 %1938 to double*
  %1942 = load double, double* %1941, align 8
  %1943 = load double, double* %315, align 1
  %1944 = fmul double %1942, %1943
  store double %1944, double* %308, align 1
  store i64 0, i64* %309, align 1
  %1945 = add i64 %1937, -152
  %1946 = add i64 %1939, 20
  store i64 %1946, i64* %PC.i, align 8
  %1947 = inttoptr i64 %1945 to double*
  store double %1944, double* %1947, align 8
  %1948 = load i64, i64* %RBP.i, align 8
  %1949 = add i64 %1948, -24
  %1950 = load i64, i64* %PC.i, align 8
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i, align 8
  %1952 = inttoptr i64 %1949 to i64*
  %1953 = load i64, i64* %1952, align 8
  %1954 = add i64 %1953, 1
  store i64 %1954, i64* %RAX.i1199, align 8
  %1955 = icmp eq i64 %1953, -1
  %1956 = icmp eq i64 %1954, 0
  %1957 = or i1 %1955, %1956
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %14, align 1
  %1959 = trunc i64 %1954 to i32
  %1960 = and i32 %1959, 255
  %1961 = tail call i32 @llvm.ctpop.i32(i32 %1960)
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  %1964 = xor i8 %1963, 1
  store i8 %1964, i8* %21, align 1
  %1965 = xor i64 %1953, %1954
  %1966 = lshr i64 %1965, 4
  %1967 = trunc i64 %1966 to i8
  %1968 = and i8 %1967, 1
  store i8 %1968, i8* %26, align 1
  %1969 = icmp eq i64 %1954, 0
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %29, align 1
  %1971 = lshr i64 %1954, 63
  %1972 = trunc i64 %1971 to i8
  store i8 %1972, i8* %32, align 1
  %1973 = lshr i64 %1953, 63
  %1974 = xor i64 %1971, %1973
  %1975 = add nuw nsw i64 %1974, %1971
  %1976 = icmp eq i64 %1975, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %38, align 1
  %1978 = add i64 %1950, 12
  store i64 %1978, i64* %PC.i, align 8
  store i64 %1954, i64* %1952, align 8
  %1979 = load i64, i64* %PC.i, align 8
  %1980 = add i64 %1979, -498
  store i64 %1980, i64* %3, align 8
  br label %block_.L_400fed

block_.L_4011e4:                                  ; preds = %block_.L_400fed
  %1981 = add i64 %1603, -176
  %1982 = add i64 %1639, 6
  store i64 %1982, i64* %PC.i, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RAX.i1199, align 8
  %1986 = add i64 %1603, -172
  %1987 = add i64 %1639, 12
  store i64 %1987, i64* %PC.i, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = sub i32 %1984, %1989
  %1991 = icmp ult i32 %1984, %1989
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %14, align 1
  %1993 = and i32 %1990, 255
  %1994 = tail call i32 @llvm.ctpop.i32(i32 %1993)
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = xor i8 %1996, 1
  store i8 %1997, i8* %21, align 1
  %1998 = xor i32 %1989, %1984
  %1999 = xor i32 %1998, %1990
  %2000 = lshr i32 %1999, 4
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  store i8 %2002, i8* %26, align 1
  %2003 = icmp eq i32 %1990, 0
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %29, align 1
  %2005 = lshr i32 %1990, 31
  %2006 = trunc i32 %2005 to i8
  store i8 %2006, i8* %32, align 1
  %2007 = lshr i32 %1984, 31
  %2008 = lshr i32 %1989, 31
  %2009 = xor i32 %2008, %2007
  %2010 = xor i32 %2005, %2007
  %2011 = add nuw nsw i32 %2010, %2009
  %2012 = icmp eq i32 %2011, 2
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %38, align 1
  %.v61 = select i1 %2003, i64 18, i64 75
  %2014 = add i64 %1639, %.v61
  store i64 %2014, i64* %3, align 8
  br i1 %2003, label %block_4011f6, label %block_.L_40122f

block_4011f6:                                     ; preds = %block_.L_4011e4
  %2015 = add i64 %2014, 4
  store i64 %2015, i64* %PC.i, align 8
  %2016 = load i64, i64* %1610, align 8
  store i64 %2016, i64* %RDI.i1206, align 8
  %2017 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2018 = sext i32 %2017 to i64
  store i64 %2018, i64* %RSI.i1110, align 8
  %2019 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2020 = sext i32 %2019 to i64
  store i64 %2020, i64* %RDX.i1213, align 8
  %2021 = add i64 %1603, -144
  %2022 = add i64 %2014, 28
  store i64 %2022, i64* %PC.i, align 8
  %2023 = inttoptr i64 %2021 to i64*
  %2024 = load i64, i64* %2023, align 8
  %2025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2024, i64* %2025, align 1
  store double 0.000000e+00, double* %306, align 1
  %2026 = add i64 %2014, 36
  store i64 %2026, i64* %PC.i, align 8
  %2027 = inttoptr i64 %2021 to i64*
  %2028 = load i64, i64* %2027, align 8
  %2029 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2028, i64* %2029, align 1
  store double 0.000000e+00, double* %310, align 1
  %2030 = add i64 %1603, -152
  %2031 = add i64 %2014, 44
  store i64 %2031, i64* %PC.i, align 8
  %2032 = inttoptr i64 %2030 to i64*
  %2033 = load i64, i64* %2032, align 8
  %2034 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2033, i64* %2034, align 1
  store double 0.000000e+00, double* %314, align 1
  %2035 = add i64 %2014, 52
  store i64 %2035, i64* %PC.i, align 8
  %2036 = inttoptr i64 %2030 to i64*
  %2037 = load i64, i64* %2036, align 8
  %2038 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2037, i64* %2038, align 1
  store double 0.000000e+00, double* %319, align 1
  %2039 = add i64 %2014, 938
  %2040 = add i64 %2014, 57
  %2041 = load i64, i64* %6, align 8
  %2042 = add i64 %2041, -8
  %2043 = inttoptr i64 %2042 to i64*
  store i64 %2040, i64* %2043, align 8
  store i64 %2042, i64* %6, align 8
  store i64 %2039, i64* %3, align 8
  %call2_40122a = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2039, %struct.Memory* %MEMORY.18)
  %.pre23 = load i64, i64* %PC.i, align 8
  %.pre24 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40122f

block_.L_40122f:                                  ; preds = %block_.L_4011e4, %block_4011f6
  %2044 = phi i64 [ %1603, %block_.L_4011e4 ], [ %.pre24, %block_4011f6 ]
  %2045 = phi i64 [ %2014, %block_.L_4011e4 ], [ %.pre23, %block_4011f6 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_4011e4 ], [ %call2_40122a, %block_4011f6 ]
  %2046 = load i64, i64* bitcast (%G_0x6a1__rip__type* @G_0x6a1__rip_ to i64*), align 8
  %2047 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2046, i64* %2047, align 1
  store double 0.000000e+00, double* %306, align 1
  %2048 = add i64 %2044, -144
  %2049 = add i64 %2045, 16
  store i64 %2049, i64* %PC.i, align 8
  %2050 = inttoptr i64 %2048 to i64*
  store i64 %2046, i64* %2050, align 8
  %2051 = load i64, i64* %RBP.i, align 8
  %2052 = add i64 %2051, -152
  %2053 = load i64, i64* %PC.i, align 8
  %2054 = add i64 %2053, 8
  store i64 %2054, i64* %PC.i, align 8
  %2055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2056 = load i64, i64* %2055, align 1
  %2057 = inttoptr i64 %2052 to i64*
  store i64 %2056, i64* %2057, align 8
  %2058 = load i64, i64* %RBP.i, align 8
  %2059 = add i64 %2058, -160
  %2060 = load i64, i64* %PC.i, align 8
  %2061 = add i64 %2060, 8
  store i64 %2061, i64* %PC.i, align 8
  %2062 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2063 = load i64, i64* %2062, align 1
  %2064 = inttoptr i64 %2059 to i64*
  store i64 %2063, i64* %2064, align 8
  %2065 = load i64, i64* %RBP.i, align 8
  %2066 = add i64 %2065, -24
  %2067 = load i64, i64* %PC.i, align 8
  %2068 = add i64 %2067, 8
  store i64 %2068, i64* %PC.i, align 8
  %2069 = inttoptr i64 %2066 to i64*
  store i64 1, i64* %2069, align 8
  %.pre25 = load i64, i64* %PC.i, align 8
  br label %block_.L_401257

block_.L_401257:                                  ; preds = %block_401265, %block_.L_40122f
  %2070 = phi i64 [ %.pre25, %block_.L_40122f ], [ %2156, %block_401265 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_.L_40122f ], [ %call2_40127c, %block_401265 ]
  %2071 = load i64, i64* %RBP.i, align 8
  %2072 = add i64 %2071, -24
  %2073 = add i64 %2070, 4
  store i64 %2073, i64* %PC.i, align 8
  %2074 = inttoptr i64 %2072 to i64*
  %2075 = load i64, i64* %2074, align 8
  store i64 %2075, i64* %RAX.i1199, align 8
  %2076 = add i64 %2071, -80
  %2077 = add i64 %2070, 8
  store i64 %2077, i64* %PC.i, align 8
  %2078 = inttoptr i64 %2076 to i64*
  %2079 = load i64, i64* %2078, align 8
  %2080 = sub i64 %2075, %2079
  %2081 = icmp ult i64 %2075, %2079
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %14, align 1
  %2083 = trunc i64 %2080 to i32
  %2084 = and i32 %2083, 255
  %2085 = tail call i32 @llvm.ctpop.i32(i32 %2084)
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  %2088 = xor i8 %2087, 1
  store i8 %2088, i8* %21, align 1
  %2089 = xor i64 %2079, %2075
  %2090 = xor i64 %2089, %2080
  %2091 = lshr i64 %2090, 4
  %2092 = trunc i64 %2091 to i8
  %2093 = and i8 %2092, 1
  store i8 %2093, i8* %26, align 1
  %2094 = icmp eq i64 %2080, 0
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %29, align 1
  %2096 = lshr i64 %2080, 63
  %2097 = trunc i64 %2096 to i8
  store i8 %2097, i8* %32, align 1
  %2098 = lshr i64 %2075, 63
  %2099 = lshr i64 %2079, 63
  %2100 = xor i64 %2099, %2098
  %2101 = xor i64 %2096, %2098
  %2102 = add nuw nsw i64 %2101, %2100
  %2103 = icmp eq i64 %2102, 2
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %38, align 1
  %2105 = icmp ne i8 %2097, 0
  %2106 = xor i1 %2105, %2103
  %.demorgan62 = or i1 %2094, %2106
  %.v63 = select i1 %.demorgan62, i64 14, i64 59
  %2107 = add i64 %2070, %.v63
  store i64 %2107, i64* %3, align 8
  br i1 %.demorgan62, label %block_401265, label %block_.L_401292

block_401265:                                     ; preds = %block_.L_401257
  %2108 = add i64 %2071, -160
  store i64 %2108, i64* %RDI.i1206, align 8
  %2109 = add i64 %2071, -144
  %2110 = add i64 %2107, 15
  store i64 %2110, i64* %PC.i, align 8
  %2111 = inttoptr i64 %2109 to i64*
  %2112 = load i64, i64* %2111, align 8
  %2113 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2112, i64* %2113, align 1
  store double 0.000000e+00, double* %306, align 1
  %2114 = add i64 %2071, -152
  %2115 = add i64 %2107, 23
  store i64 %2115, i64* %PC.i, align 8
  %2116 = inttoptr i64 %2114 to i64*
  %2117 = load i64, i64* %2116, align 8
  %2118 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2117, i64* %2118, align 1
  store double 0.000000e+00, double* %310, align 1
  %2119 = add i64 %2107, 1243
  %2120 = add i64 %2107, 28
  %2121 = load i64, i64* %6, align 8
  %2122 = add i64 %2121, -8
  %2123 = inttoptr i64 %2122 to i64*
  store i64 %2120, i64* %2123, align 8
  store i64 %2122, i64* %6, align 8
  store i64 %2119, i64* %3, align 8
  %call2_40127c = tail call %struct.Memory* @sub_401740.P3(%struct.State* %0, i64 %2119, %struct.Memory* %MEMORY.20)
  %2124 = load i64, i64* %RBP.i, align 8
  %2125 = add i64 %2124, -24
  %2126 = load i64, i64* %PC.i, align 8
  %2127 = add i64 %2126, 4
  store i64 %2127, i64* %PC.i, align 8
  %2128 = inttoptr i64 %2125 to i64*
  %2129 = load i64, i64* %2128, align 8
  %2130 = add i64 %2129, 1
  store i64 %2130, i64* %RAX.i1199, align 8
  %2131 = icmp eq i64 %2129, -1
  %2132 = icmp eq i64 %2130, 0
  %2133 = or i1 %2131, %2132
  %2134 = zext i1 %2133 to i8
  store i8 %2134, i8* %14, align 1
  %2135 = trunc i64 %2130 to i32
  %2136 = and i32 %2135, 255
  %2137 = tail call i32 @llvm.ctpop.i32(i32 %2136)
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  %2140 = xor i8 %2139, 1
  store i8 %2140, i8* %21, align 1
  %2141 = xor i64 %2129, %2130
  %2142 = lshr i64 %2141, 4
  %2143 = trunc i64 %2142 to i8
  %2144 = and i8 %2143, 1
  store i8 %2144, i8* %26, align 1
  %2145 = icmp eq i64 %2130, 0
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %29, align 1
  %2147 = lshr i64 %2130, 63
  %2148 = trunc i64 %2147 to i8
  store i8 %2148, i8* %32, align 1
  %2149 = lshr i64 %2129, 63
  %2150 = xor i64 %2147, %2149
  %2151 = add nuw nsw i64 %2150, %2147
  %2152 = icmp eq i64 %2151, 2
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %38, align 1
  %2154 = add i64 %2126, 12
  store i64 %2154, i64* %PC.i, align 8
  store i64 %2130, i64* %2128, align 8
  %2155 = load i64, i64* %PC.i, align 8
  %2156 = add i64 %2155, -54
  store i64 %2156, i64* %3, align 8
  br label %block_.L_401257

block_.L_401292:                                  ; preds = %block_.L_401257
  %2157 = add i64 %2071, -176
  %2158 = add i64 %2107, 6
  store i64 %2158, i64* %PC.i, align 8
  %2159 = inttoptr i64 %2157 to i32*
  %2160 = load i32, i32* %2159, align 4
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RAX.i1199, align 8
  %2162 = add i64 %2071, -172
  %2163 = add i64 %2107, 12
  store i64 %2163, i64* %PC.i, align 8
  %2164 = inttoptr i64 %2162 to i32*
  %2165 = load i32, i32* %2164, align 4
  %2166 = sub i32 %2160, %2165
  %2167 = icmp ult i32 %2160, %2165
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %14, align 1
  %2169 = and i32 %2166, 255
  %2170 = tail call i32 @llvm.ctpop.i32(i32 %2169)
  %2171 = trunc i32 %2170 to i8
  %2172 = and i8 %2171, 1
  %2173 = xor i8 %2172, 1
  store i8 %2173, i8* %21, align 1
  %2174 = xor i32 %2165, %2160
  %2175 = xor i32 %2174, %2166
  %2176 = lshr i32 %2175, 4
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  store i8 %2178, i8* %26, align 1
  %2179 = icmp eq i32 %2166, 0
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %29, align 1
  %2181 = lshr i32 %2166, 31
  %2182 = trunc i32 %2181 to i8
  store i8 %2182, i8* %32, align 1
  %2183 = lshr i32 %2160, 31
  %2184 = lshr i32 %2165, 31
  %2185 = xor i32 %2184, %2183
  %2186 = xor i32 %2181, %2183
  %2187 = add nuw nsw i32 %2186, %2185
  %2188 = icmp eq i32 %2187, 2
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %38, align 1
  %.v64 = select i1 %2179, i64 18, i64 75
  %2190 = add i64 %2107, %.v64
  store i64 %2190, i64* %3, align 8
  br i1 %2179, label %block_4012a4, label %block_.L_4012dd

block_4012a4:                                     ; preds = %block_.L_401292
  %2191 = add i64 %2190, 4
  store i64 %2191, i64* %PC.i, align 8
  %2192 = load i64, i64* %2078, align 8
  store i64 %2192, i64* %RDI.i1206, align 8
  %2193 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2194 = sext i32 %2193 to i64
  store i64 %2194, i64* %RSI.i1110, align 8
  %2195 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2196 = sext i32 %2195 to i64
  store i64 %2196, i64* %RDX.i1213, align 8
  %2197 = add i64 %2071, -144
  %2198 = add i64 %2190, 28
  store i64 %2198, i64* %PC.i, align 8
  %2199 = inttoptr i64 %2197 to i64*
  %2200 = load i64, i64* %2199, align 8
  %2201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2200, i64* %2201, align 1
  store double 0.000000e+00, double* %306, align 1
  %2202 = add i64 %2071, -152
  %2203 = add i64 %2190, 36
  store i64 %2203, i64* %PC.i, align 8
  %2204 = inttoptr i64 %2202 to i64*
  %2205 = load i64, i64* %2204, align 8
  %2206 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2205, i64* %2206, align 1
  store double 0.000000e+00, double* %310, align 1
  %2207 = add i64 %2071, -160
  %2208 = add i64 %2190, 44
  store i64 %2208, i64* %PC.i, align 8
  %2209 = inttoptr i64 %2207 to i64*
  %2210 = load i64, i64* %2209, align 8
  %2211 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2210, i64* %2211, align 1
  store double 0.000000e+00, double* %314, align 1
  %2212 = add i64 %2190, 52
  store i64 %2212, i64* %PC.i, align 8
  %2213 = inttoptr i64 %2207 to i64*
  %2214 = load i64, i64* %2213, align 8
  %2215 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2214, i64* %2215, align 1
  store double 0.000000e+00, double* %319, align 1
  %2216 = add i64 %2190, 764
  %2217 = add i64 %2190, 57
  %2218 = load i64, i64* %6, align 8
  %2219 = add i64 %2218, -8
  %2220 = inttoptr i64 %2219 to i64*
  store i64 %2217, i64* %2220, align 8
  store i64 %2219, i64* %6, align 8
  store i64 %2216, i64* %3, align 8
  %call2_4012d8 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2216, %struct.Memory* %MEMORY.20)
  %.pre26 = load i64, i64* %PC.i, align 8
  %.pre27 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4012dd

block_.L_4012dd:                                  ; preds = %block_.L_401292, %block_4012a4
  %2221 = phi i64 [ %2071, %block_.L_401292 ], [ %.pre27, %block_4012a4 ]
  %2222 = phi i64 [ %2190, %block_.L_401292 ], [ %.pre26, %block_4012a4 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_.L_401292 ], [ %call2_4012d8, %block_4012a4 ]
  %2223 = load i64, i64* bitcast (%G_0x603__rip__type* @G_0x603__rip_ to i64*), align 8
  %2224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2223, i64* %2224, align 1
  store double 0.000000e+00, double* %306, align 1
  %2225 = load i64, i64* bitcast (%G_0x5cb__rip__type* @G_0x5cb__rip_ to i64*), align 8
  %2226 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2225, i64* %2226, align 1
  store double 0.000000e+00, double* %310, align 1
  %2227 = load i64, i64* bitcast (%G_0x5e3__rip__type* @G_0x5e3__rip_ to i64*), align 8
  %2228 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2227, i64* %2228, align 1
  store double 0.000000e+00, double* %314, align 1
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  store i64 %2227, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %2225, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %2223, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %2229 = add i64 %2221, -24
  %2230 = add i64 %2222, 92
  store i64 %2230, i64* %PC.i, align 8
  %2231 = inttoptr i64 %2229 to i64*
  store i64 1, i64* %2231, align 8
  %.pre28 = load i64, i64* %PC.i, align 8
  br label %block_.L_401339

block_.L_401339:                                  ; preds = %block_401347, %block_.L_4012dd
  %2232 = phi i64 [ %.pre28, %block_.L_4012dd ], [ %2307, %block_401347 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4012dd ], [ %call2_401347, %block_401347 ]
  %2233 = load i64, i64* %RBP.i, align 8
  %2234 = add i64 %2233, -24
  %2235 = add i64 %2232, 4
  store i64 %2235, i64* %PC.i, align 8
  %2236 = inttoptr i64 %2234 to i64*
  %2237 = load i64, i64* %2236, align 8
  store i64 %2237, i64* %RAX.i1199, align 8
  %2238 = add i64 %2233, -88
  %2239 = add i64 %2232, 8
  store i64 %2239, i64* %PC.i, align 8
  %2240 = inttoptr i64 %2238 to i64*
  %2241 = load i64, i64* %2240, align 8
  %2242 = sub i64 %2237, %2241
  %2243 = icmp ult i64 %2237, %2241
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %14, align 1
  %2245 = trunc i64 %2242 to i32
  %2246 = and i32 %2245, 255
  %2247 = tail call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  store i8 %2250, i8* %21, align 1
  %2251 = xor i64 %2241, %2237
  %2252 = xor i64 %2251, %2242
  %2253 = lshr i64 %2252, 4
  %2254 = trunc i64 %2253 to i8
  %2255 = and i8 %2254, 1
  store i8 %2255, i8* %26, align 1
  %2256 = icmp eq i64 %2242, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %29, align 1
  %2258 = lshr i64 %2242, 63
  %2259 = trunc i64 %2258 to i8
  store i8 %2259, i8* %32, align 1
  %2260 = lshr i64 %2237, 63
  %2261 = lshr i64 %2241, 63
  %2262 = xor i64 %2261, %2260
  %2263 = xor i64 %2258, %2260
  %2264 = add nuw nsw i64 %2263, %2262
  %2265 = icmp eq i64 %2264, 2
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %38, align 1
  %2267 = icmp ne i8 %2259, 0
  %2268 = xor i1 %2267, %2265
  %.demorgan65 = or i1 %2256, %2268
  %.v66 = select i1 %.demorgan65, i64 14, i64 36
  %2269 = add i64 %2232, %.v66
  store i64 %2269, i64* %3, align 8
  br i1 %.demorgan65, label %block_401347, label %block_.L_40135d

block_401347:                                     ; preds = %block_.L_401339
  %2270 = add i64 %2269, 1145
  %2271 = add i64 %2269, 5
  %2272 = load i64, i64* %6, align 8
  %2273 = add i64 %2272, -8
  %2274 = inttoptr i64 %2273 to i64*
  store i64 %2271, i64* %2274, align 8
  store i64 %2273, i64* %6, align 8
  store i64 %2270, i64* %3, align 8
  %call2_401347 = tail call %struct.Memory* @sub_4017c0.P0(%struct.State* %0, i64 %2270, %struct.Memory* %MEMORY.22)
  %2275 = load i64, i64* %RBP.i, align 8
  %2276 = add i64 %2275, -24
  %2277 = load i64, i64* %PC.i, align 8
  %2278 = add i64 %2277, 4
  store i64 %2278, i64* %PC.i, align 8
  %2279 = inttoptr i64 %2276 to i64*
  %2280 = load i64, i64* %2279, align 8
  %2281 = add i64 %2280, 1
  store i64 %2281, i64* %RAX.i1199, align 8
  %2282 = icmp eq i64 %2280, -1
  %2283 = icmp eq i64 %2281, 0
  %2284 = or i1 %2282, %2283
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %14, align 1
  %2286 = trunc i64 %2281 to i32
  %2287 = and i32 %2286, 255
  %2288 = tail call i32 @llvm.ctpop.i32(i32 %2287)
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = xor i8 %2290, 1
  store i8 %2291, i8* %21, align 1
  %2292 = xor i64 %2280, %2281
  %2293 = lshr i64 %2292, 4
  %2294 = trunc i64 %2293 to i8
  %2295 = and i8 %2294, 1
  store i8 %2295, i8* %26, align 1
  %2296 = icmp eq i64 %2281, 0
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %29, align 1
  %2298 = lshr i64 %2281, 63
  %2299 = trunc i64 %2298 to i8
  store i8 %2299, i8* %32, align 1
  %2300 = lshr i64 %2280, 63
  %2301 = xor i64 %2298, %2300
  %2302 = add nuw nsw i64 %2301, %2298
  %2303 = icmp eq i64 %2302, 2
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %38, align 1
  %2305 = add i64 %2277, 12
  store i64 %2305, i64* %PC.i, align 8
  store i64 %2281, i64* %2279, align 8
  %2306 = load i64, i64* %PC.i, align 8
  %2307 = add i64 %2306, -31
  store i64 %2307, i64* %3, align 8
  br label %block_.L_401339

block_.L_40135d:                                  ; preds = %block_.L_401339
  %2308 = add i64 %2233, -176
  %2309 = add i64 %2269, 6
  store i64 %2309, i64* %PC.i, align 8
  %2310 = inttoptr i64 %2308 to i32*
  %2311 = load i32, i32* %2310, align 4
  %2312 = zext i32 %2311 to i64
  store i64 %2312, i64* %RAX.i1199, align 8
  %2313 = add i64 %2233, -172
  %2314 = add i64 %2269, 12
  store i64 %2314, i64* %PC.i, align 8
  %2315 = inttoptr i64 %2313 to i32*
  %2316 = load i32, i32* %2315, align 4
  %2317 = sub i32 %2311, %2316
  %2318 = icmp ult i32 %2311, %2316
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %14, align 1
  %2320 = and i32 %2317, 255
  %2321 = tail call i32 @llvm.ctpop.i32(i32 %2320)
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  %2324 = xor i8 %2323, 1
  store i8 %2324, i8* %21, align 1
  %2325 = xor i32 %2316, %2311
  %2326 = xor i32 %2325, %2317
  %2327 = lshr i32 %2326, 4
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  store i8 %2329, i8* %26, align 1
  %2330 = icmp eq i32 %2317, 0
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %29, align 1
  %2332 = lshr i32 %2317, 31
  %2333 = trunc i32 %2332 to i8
  store i8 %2333, i8* %32, align 1
  %2334 = lshr i32 %2311, 31
  %2335 = lshr i32 %2316, 31
  %2336 = xor i32 %2335, %2334
  %2337 = xor i32 %2332, %2334
  %2338 = add nuw nsw i32 %2337, %2336
  %2339 = icmp eq i32 %2338, 2
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %38, align 1
  %.v67 = select i1 %2330, i64 18, i64 79
  %2341 = add i64 %2269, %.v67
  store i64 %2341, i64* %3, align 8
  br i1 %2330, label %block_40136f, label %block_.L_4013ac

block_40136f:                                     ; preds = %block_.L_40135d
  %2342 = add i64 %2341, 4
  store i64 %2342, i64* %PC.i, align 8
  %2343 = load i64, i64* %2240, align 8
  store i64 %2343, i64* %RDI.i1206, align 8
  %2344 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2345 = sext i32 %2344 to i64
  store i64 %2345, i64* %RSI.i1110, align 8
  %2346 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2347 = sext i32 %2346 to i64
  store i64 %2347, i64* %RDX.i1213, align 8
  %2348 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  %2349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2348, i64* %2349, align 1
  store double 0.000000e+00, double* %306, align 1
  %2350 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  %2351 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2350, i64* %2351, align 1
  store double 0.000000e+00, double* %310, align 1
  %2352 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %2353 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2352, i64* %2353, align 1
  store double 0.000000e+00, double* %314, align 1
  %2354 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %2355 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2354, i64* %2355, align 1
  store double 0.000000e+00, double* %319, align 1
  %2356 = add i64 %2341, 561
  %2357 = add i64 %2341, 61
  %2358 = load i64, i64* %6, align 8
  %2359 = add i64 %2358, -8
  %2360 = inttoptr i64 %2359 to i64*
  store i64 %2357, i64* %2360, align 8
  store i64 %2359, i64* %6, align 8
  store i64 %2356, i64* %3, align 8
  %call2_4013a7 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2356, %struct.Memory* %MEMORY.22)
  %.pre29 = load i64, i64* %PC.i, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4013ac

block_.L_4013ac:                                  ; preds = %block_.L_40135d, %block_40136f
  %2361 = phi i64 [ %2233, %block_.L_40135d ], [ %.pre30, %block_40136f ]
  %2362 = phi i64 [ %2341, %block_.L_40135d ], [ %.pre29, %block_40136f ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.22, %block_.L_40135d ], [ %call2_4013a7, %block_40136f ]
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2363 = add i64 %2361, -24
  %2364 = add i64 %2362, 30
  store i64 %2364, i64* %PC.i, align 8
  %2365 = inttoptr i64 %2363 to i64*
  store i64 1, i64* %2365, align 8
  %.pre31 = load i64, i64* %PC.i, align 8
  br label %block_.L_4013ca

block_.L_4013ca:                                  ; preds = %block_4013d8, %block_.L_4013ac
  %2366 = phi i32 [ %2367, %block_4013d8 ], [ 3, %block_.L_4013ac ]
  %2367 = phi i32 [ %2366, %block_4013d8 ], [ 2, %block_.L_4013ac ]
  %2368 = phi i64 [ %2462, %block_4013d8 ], [ %.pre31, %block_.L_4013ac ]
  %2369 = load i64, i64* %RBP.i, align 8
  %2370 = add i64 %2369, -24
  %2371 = add i64 %2368, 4
  store i64 %2371, i64* %PC.i, align 8
  %2372 = inttoptr i64 %2370 to i64*
  %2373 = load i64, i64* %2372, align 8
  store i64 %2373, i64* %RAX.i1199, align 8
  %2374 = add i64 %2369, -96
  %2375 = add i64 %2368, 8
  store i64 %2375, i64* %PC.i, align 8
  %2376 = inttoptr i64 %2374 to i64*
  %2377 = load i64, i64* %2376, align 8
  %2378 = sub i64 %2373, %2377
  %2379 = icmp ult i64 %2373, %2377
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %14, align 1
  %2381 = trunc i64 %2378 to i32
  %2382 = and i32 %2381, 255
  %2383 = tail call i32 @llvm.ctpop.i32(i32 %2382)
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  %2386 = xor i8 %2385, 1
  store i8 %2386, i8* %21, align 1
  %2387 = xor i64 %2377, %2373
  %2388 = xor i64 %2387, %2378
  %2389 = lshr i64 %2388, 4
  %2390 = trunc i64 %2389 to i8
  %2391 = and i8 %2390, 1
  store i8 %2391, i8* %26, align 1
  %2392 = icmp eq i64 %2378, 0
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %29, align 1
  %2394 = lshr i64 %2378, 63
  %2395 = trunc i64 %2394 to i8
  store i8 %2395, i8* %32, align 1
  %2396 = lshr i64 %2373, 63
  %2397 = lshr i64 %2377, 63
  %2398 = xor i64 %2397, %2396
  %2399 = xor i64 %2394, %2396
  %2400 = add nuw nsw i64 %2399, %2398
  %2401 = icmp eq i64 %2400, 2
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %38, align 1
  %2403 = icmp ne i8 %2395, 0
  %2404 = xor i1 %2403, %2401
  %.demorgan68 = or i1 %2392, %2404
  %.v69 = select i1 %.demorgan68, i64 14, i64 122
  %2405 = add i64 %2368, %.v69
  store i64 %2405, i64* %3, align 8
  br i1 %.demorgan68, label %block_4013d8, label %block_.L_401444

block_4013d8:                                     ; preds = %block_.L_4013ca
  %2406 = zext i32 %2367 to i64
  %2407 = add i32 %2366, %2367
  %2408 = icmp ult i32 %2407, %2366
  %2409 = lshr i32 %2407, 31
  %2410 = lshr i32 %2367, 31
  %2411 = lshr i32 %2366, 31
  %2412 = xor i32 %2409, %2410
  %2413 = xor i32 %2409, %2411
  %2414 = add nuw nsw i32 %2412, %2413
  %2415 = icmp eq i32 %2414, 2
  %2416 = zext i1 %2415 to i8
  %2417 = xor i32 %2366, %2407
  store i32 %2366, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i64 %2406, i64* %RAX.i1199, align 8
  %2418 = zext i1 %2408 to i8
  store i8 %2418, i8* %14, align 1
  %2419 = and i32 %2367, 255
  %2420 = tail call i32 @llvm.ctpop.i32(i32 %2419)
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  %2423 = xor i8 %2422, 1
  store i8 %2423, i8* %21, align 1
  %2424 = xor i32 %2417, %2367
  %2425 = lshr i32 %2424, 4
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  store i8 %2427, i8* %26, align 1
  %2428 = icmp eq i32 %2367, 0
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %29, align 1
  %2430 = trunc i32 %2410 to i8
  store i8 %2430, i8* %32, align 1
  store i8 %2416, i8* %38, align 1
  store i32 %2367, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2431 = load i64, i64* %RBP.i, align 8
  %2432 = add i64 %2431, -24
  %2433 = add i64 %2405, 95
  store i64 %2433, i64* %PC.i, align 8
  %2434 = inttoptr i64 %2432 to i64*
  %2435 = load i64, i64* %2434, align 8
  %2436 = add i64 %2435, 1
  store i64 %2436, i64* %RAX.i1199, align 8
  %2437 = icmp eq i64 %2435, -1
  %2438 = icmp eq i64 %2436, 0
  %2439 = or i1 %2437, %2438
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %14, align 1
  %2441 = trunc i64 %2436 to i32
  %2442 = and i32 %2441, 255
  %2443 = tail call i32 @llvm.ctpop.i32(i32 %2442)
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  %2446 = xor i8 %2445, 1
  store i8 %2446, i8* %21, align 1
  %2447 = xor i64 %2435, %2436
  %2448 = lshr i64 %2447, 4
  %2449 = trunc i64 %2448 to i8
  %2450 = and i8 %2449, 1
  store i8 %2450, i8* %26, align 1
  %2451 = icmp eq i64 %2436, 0
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %29, align 1
  %2453 = lshr i64 %2436, 63
  %2454 = trunc i64 %2453 to i8
  store i8 %2454, i8* %32, align 1
  %2455 = lshr i64 %2435, 63
  %2456 = xor i64 %2453, %2455
  %2457 = add nuw nsw i64 %2456, %2453
  %2458 = icmp eq i64 %2457, 2
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %38, align 1
  %2460 = add i64 %2405, 103
  store i64 %2460, i64* %PC.i, align 8
  store i64 %2436, i64* %2434, align 8
  %2461 = load i64, i64* %PC.i, align 8
  %2462 = add i64 %2461, -117
  store i64 %2462, i64* %3, align 8
  br label %block_.L_4013ca

block_.L_401444:                                  ; preds = %block_.L_4013ca
  %2463 = add i64 %2369, -176
  %2464 = add i64 %2405, 6
  store i64 %2464, i64* %PC.i, align 8
  %2465 = inttoptr i64 %2463 to i32*
  %2466 = load i32, i32* %2465, align 4
  %2467 = zext i32 %2466 to i64
  store i64 %2467, i64* %RAX.i1199, align 8
  %2468 = add i64 %2369, -172
  %2469 = add i64 %2405, 12
  store i64 %2469, i64* %PC.i, align 8
  %2470 = inttoptr i64 %2468 to i32*
  %2471 = load i32, i32* %2470, align 4
  %2472 = sub i32 %2466, %2471
  %2473 = icmp ult i32 %2466, %2471
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %14, align 1
  %2475 = and i32 %2472, 255
  %2476 = tail call i32 @llvm.ctpop.i32(i32 %2475)
  %2477 = trunc i32 %2476 to i8
  %2478 = and i8 %2477, 1
  %2479 = xor i8 %2478, 1
  store i8 %2479, i8* %21, align 1
  %2480 = xor i32 %2471, %2466
  %2481 = xor i32 %2480, %2472
  %2482 = lshr i32 %2481, 4
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  store i8 %2484, i8* %26, align 1
  %2485 = icmp eq i32 %2472, 0
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %29, align 1
  %2487 = lshr i32 %2472, 31
  %2488 = trunc i32 %2487 to i8
  store i8 %2488, i8* %32, align 1
  %2489 = lshr i32 %2466, 31
  %2490 = lshr i32 %2471, 31
  %2491 = xor i32 %2490, %2489
  %2492 = xor i32 %2487, %2489
  %2493 = add nuw nsw i32 %2492, %2491
  %2494 = icmp eq i32 %2493, 2
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %38, align 1
  %.v70 = select i1 %2485, i64 18, i64 66
  %2496 = add i64 %2405, %.v70
  store i64 %2496, i64* %3, align 8
  br i1 %2485, label %block_401456, label %block_.L_401486

block_401456:                                     ; preds = %block_.L_401444
  %2497 = add i64 %2496, 4
  store i64 %2497, i64* %PC.i, align 8
  %2498 = load i64, i64* %2376, align 8
  store i64 %2498, i64* %RDI.i1206, align 8
  %2499 = sext i32 %2367 to i64
  store i64 %2499, i64* %RSI.i1110, align 8
  %2500 = sext i32 %2366 to i64
  store i64 %2500, i64* %RDX.i1213, align 8
  %2501 = add i64 %2369, -112
  %2502 = add i64 %2496, 25
  store i64 %2502, i64* %PC.i, align 8
  %2503 = inttoptr i64 %2501 to i64*
  %2504 = load i64, i64* %2503, align 8
  %2505 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2504, i64* %2505, align 1
  store double 0.000000e+00, double* %306, align 1
  %2506 = add i64 %2369, -120
  %2507 = add i64 %2496, 30
  store i64 %2507, i64* %PC.i, align 8
  %2508 = inttoptr i64 %2506 to i64*
  %2509 = load i64, i64* %2508, align 8
  %2510 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2509, i64* %2510, align 1
  store double 0.000000e+00, double* %310, align 1
  %2511 = add i64 %2369, -128
  %2512 = add i64 %2496, 35
  store i64 %2512, i64* %PC.i, align 8
  %2513 = inttoptr i64 %2511 to i64*
  %2514 = load i64, i64* %2513, align 8
  %2515 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2514, i64* %2515, align 1
  store double 0.000000e+00, double* %314, align 1
  %2516 = add i64 %2369, -136
  %2517 = add i64 %2496, 43
  store i64 %2517, i64* %PC.i, align 8
  %2518 = inttoptr i64 %2516 to i64*
  %2519 = load i64, i64* %2518, align 8
  %2520 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2519, i64* %2520, align 1
  store double 0.000000e+00, double* %319, align 1
  %2521 = add i64 %2496, 330
  %2522 = add i64 %2496, 48
  %2523 = load i64, i64* %6, align 8
  %2524 = add i64 %2523, -8
  %2525 = inttoptr i64 %2524 to i64*
  store i64 %2522, i64* %2525, align 8
  store i64 %2524, i64* %6, align 8
  store i64 %2521, i64* %3, align 8
  %call2_401481 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2521, %struct.Memory* %MEMORY.23)
  %.pre32 = load i64, i64* %PC.i, align 8
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401486

block_.L_401486:                                  ; preds = %block_.L_401444, %block_401456
  %2526 = phi i64 [ %2369, %block_.L_401444 ], [ %.pre33, %block_401456 ]
  %2527 = phi i64 [ %2496, %block_.L_401444 ], [ %.pre32, %block_401456 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.23, %block_.L_401444 ], [ %call2_401481, %block_401456 ]
  %2528 = load i64, i64* bitcast (%G_0x462__rip__type* @G_0x462__rip_ to i64*), align 8
  %2529 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2528, i64* %2529, align 1
  store double 0.000000e+00, double* %306, align 1
  %2530 = add i64 %2526, -144
  %2531 = add i64 %2527, 16
  store i64 %2531, i64* %PC.i, align 8
  %2532 = inttoptr i64 %2530 to i64*
  store i64 %2528, i64* %2532, align 8
  %2533 = load i64, i64* %RBP.i, align 8
  %2534 = add i64 %2533, -24
  %2535 = load i64, i64* %PC.i, align 8
  %2536 = add i64 %2535, 8
  store i64 %2536, i64* %PC.i, align 8
  %2537 = inttoptr i64 %2534 to i64*
  store i64 1, i64* %2537, align 8
  %.pre34 = load i64, i64* %PC.i, align 8
  br label %block_.L_40149e

block_.L_40149e:                                  ; preds = %block_4014ac, %block_.L_401486
  %2538 = phi i64 [ %.pre34, %block_.L_401486 ], [ %2642, %block_4014ac ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_.L_401486 ], [ %call2_4014c7, %block_4014ac ]
  %2539 = load i64, i64* %RBP.i, align 8
  %2540 = add i64 %2539, -24
  %2541 = add i64 %2538, 4
  store i64 %2541, i64* %PC.i, align 8
  %2542 = inttoptr i64 %2540 to i64*
  %2543 = load i64, i64* %2542, align 8
  store i64 %2543, i64* %RAX.i1199, align 8
  %2544 = add i64 %2539, -104
  %2545 = add i64 %2538, 8
  store i64 %2545, i64* %PC.i, align 8
  %2546 = inttoptr i64 %2544 to i64*
  %2547 = load i64, i64* %2546, align 8
  %2548 = sub i64 %2543, %2547
  %2549 = icmp ult i64 %2543, %2547
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %14, align 1
  %2551 = trunc i64 %2548 to i32
  %2552 = and i32 %2551, 255
  %2553 = tail call i32 @llvm.ctpop.i32(i32 %2552)
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  %2556 = xor i8 %2555, 1
  store i8 %2556, i8* %21, align 1
  %2557 = xor i64 %2547, %2543
  %2558 = xor i64 %2557, %2548
  %2559 = lshr i64 %2558, 4
  %2560 = trunc i64 %2559 to i8
  %2561 = and i8 %2560, 1
  store i8 %2561, i8* %26, align 1
  %2562 = icmp eq i64 %2548, 0
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %29, align 1
  %2564 = lshr i64 %2548, 63
  %2565 = trunc i64 %2564 to i8
  store i8 %2565, i8* %32, align 1
  %2566 = lshr i64 %2543, 63
  %2567 = lshr i64 %2547, 63
  %2568 = xor i64 %2567, %2566
  %2569 = xor i64 %2564, %2566
  %2570 = add nuw nsw i64 %2569, %2568
  %2571 = icmp eq i64 %2570, 2
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %38, align 1
  %2573 = icmp ne i8 %2565, 0
  %2574 = xor i1 %2573, %2571
  %.demorgan71 = or i1 %2562, %2574
  %.v72 = select i1 %.demorgan71, i64 14, i64 71
  %2575 = add i64 %2538, %.v72
  store i64 %2575, i64* %3, align 8
  br i1 %.demorgan71, label %block_4014ac, label %block_.L_4014e5

block_4014ac:                                     ; preds = %block_.L_40149e
  %2576 = add i64 %2539, -144
  %2577 = add i64 %2575, 8
  store i64 %2577, i64* %PC.i, align 8
  %2578 = inttoptr i64 %2576 to i64*
  %2579 = load i64, i64* %2578, align 8
  %2580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2579, i64* %2580, align 1
  store double 0.000000e+00, double* %306, align 1
  %2581 = add i64 %2575, -3580
  %2582 = add i64 %2575, 13
  %2583 = load i64, i64* %6, align 8
  %2584 = add i64 %2583, -8
  %2585 = inttoptr i64 %2584 to i64*
  store i64 %2582, i64* %2585, align 8
  store i64 %2584, i64* %6, align 8
  store i64 %2581, i64* %3, align 8
  %2586 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %MEMORY.26)
  %2587 = load i64, i64* %PC.i, align 8
  %2588 = load double, double* %304, align 1
  %2589 = load double, double* bitcast (%G_0x6020a0_type* @G_0x6020a0 to double*), align 8
  %2590 = fdiv double %2588, %2589
  store double %2590, double* %304, align 1
  %2591 = add i64 %2587, -3641
  %2592 = add i64 %2587, 14
  %2593 = load i64, i64* %6, align 8
  %2594 = add i64 %2593, -8
  %2595 = inttoptr i64 %2594 to i64*
  store i64 %2592, i64* %2595, align 8
  store i64 %2594, i64* %6, align 8
  store i64 %2591, i64* %3, align 8
  %2596 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %2586)
  %2597 = load i64, i64* %PC.i, align 8
  %2598 = add i64 %2597, -3511
  %2599 = add i64 %2597, 5
  %2600 = load i64, i64* %6, align 8
  %2601 = add i64 %2600, -8
  %2602 = inttoptr i64 %2601 to i64*
  store i64 %2599, i64* %2602, align 8
  store i64 %2601, i64* %6, align 8
  store i64 %2598, i64* %3, align 8
  %call2_4014c7 = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %2598, %struct.Memory* %2596)
  %2603 = load i64, i64* %RBP.i, align 8
  %2604 = add i64 %2603, -144
  %2605 = load i64, i64* %PC.i, align 8
  %2606 = add i64 %2605, 8
  store i64 %2606, i64* %PC.i, align 8
  %2607 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2608 = load i64, i64* %2607, align 1
  %2609 = inttoptr i64 %2604 to i64*
  store i64 %2608, i64* %2609, align 8
  %2610 = load i64, i64* %RBP.i, align 8
  %2611 = add i64 %2610, -24
  %2612 = load i64, i64* %PC.i, align 8
  %2613 = add i64 %2612, 4
  store i64 %2613, i64* %PC.i, align 8
  %2614 = inttoptr i64 %2611 to i64*
  %2615 = load i64, i64* %2614, align 8
  %2616 = add i64 %2615, 1
  store i64 %2616, i64* %RAX.i1199, align 8
  %2617 = icmp eq i64 %2615, -1
  %2618 = icmp eq i64 %2616, 0
  %2619 = or i1 %2617, %2618
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %14, align 1
  %2621 = trunc i64 %2616 to i32
  %2622 = and i32 %2621, 255
  %2623 = tail call i32 @llvm.ctpop.i32(i32 %2622)
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  %2626 = xor i8 %2625, 1
  store i8 %2626, i8* %21, align 1
  %2627 = xor i64 %2615, %2616
  %2628 = lshr i64 %2627, 4
  %2629 = trunc i64 %2628 to i8
  %2630 = and i8 %2629, 1
  store i8 %2630, i8* %26, align 1
  %2631 = icmp eq i64 %2616, 0
  %2632 = zext i1 %2631 to i8
  store i8 %2632, i8* %29, align 1
  %2633 = lshr i64 %2616, 63
  %2634 = trunc i64 %2633 to i8
  store i8 %2634, i8* %32, align 1
  %2635 = lshr i64 %2615, 63
  %2636 = xor i64 %2633, %2635
  %2637 = add nuw nsw i64 %2636, %2633
  %2638 = icmp eq i64 %2637, 2
  %2639 = zext i1 %2638 to i8
  store i8 %2639, i8* %38, align 1
  %2640 = add i64 %2612, 12
  store i64 %2640, i64* %PC.i, align 8
  store i64 %2616, i64* %2614, align 8
  %2641 = load i64, i64* %PC.i, align 8
  %2642 = add i64 %2641, -66
  store i64 %2642, i64* %3, align 8
  br label %block_.L_40149e

block_.L_4014e5:                                  ; preds = %block_.L_40149e
  %2643 = add i64 %2539, -176
  %2644 = add i64 %2575, 6
  store i64 %2644, i64* %PC.i, align 8
  %2645 = inttoptr i64 %2643 to i32*
  %2646 = load i32, i32* %2645, align 4
  %2647 = zext i32 %2646 to i64
  store i64 %2647, i64* %RAX.i1199, align 8
  %2648 = add i64 %2539, -172
  %2649 = add i64 %2575, 12
  store i64 %2649, i64* %PC.i, align 8
  %2650 = inttoptr i64 %2648 to i32*
  %2651 = load i32, i32* %2650, align 4
  %2652 = sub i32 %2646, %2651
  %2653 = icmp ult i32 %2646, %2651
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %14, align 1
  %2655 = and i32 %2652, 255
  %2656 = tail call i32 @llvm.ctpop.i32(i32 %2655)
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  %2659 = xor i8 %2658, 1
  store i8 %2659, i8* %21, align 1
  %2660 = xor i32 %2651, %2646
  %2661 = xor i32 %2660, %2652
  %2662 = lshr i32 %2661, 4
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  store i8 %2664, i8* %26, align 1
  %2665 = icmp eq i32 %2652, 0
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %29, align 1
  %2667 = lshr i32 %2652, 31
  %2668 = trunc i32 %2667 to i8
  store i8 %2668, i8* %32, align 1
  %2669 = lshr i32 %2646, 31
  %2670 = lshr i32 %2651, 31
  %2671 = xor i32 %2670, %2669
  %2672 = xor i32 %2667, %2669
  %2673 = add nuw nsw i32 %2672, %2671
  %2674 = icmp eq i32 %2673, 2
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %38, align 1
  %.v73 = select i1 %2665, i64 18, i64 75
  %2676 = add i64 %2575, %.v73
  store i64 %2676, i64* %3, align 8
  br i1 %2665, label %block_4014f7, label %block_.L_401530

block_4014f7:                                     ; preds = %block_.L_4014e5
  %2677 = add i64 %2676, 4
  store i64 %2677, i64* %PC.i, align 8
  %2678 = load i64, i64* %2546, align 8
  store i64 %2678, i64* %RDI.i1206, align 8
  %2679 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2680 = sext i32 %2679 to i64
  store i64 %2680, i64* %RSI.i1110, align 8
  %2681 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2682 = sext i32 %2681 to i64
  store i64 %2682, i64* %RDX.i1213, align 8
  %2683 = add i64 %2539, -144
  %2684 = add i64 %2676, 28
  store i64 %2684, i64* %PC.i, align 8
  %2685 = inttoptr i64 %2683 to i64*
  %2686 = load i64, i64* %2685, align 8
  %2687 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2686, i64* %2687, align 1
  store double 0.000000e+00, double* %306, align 1
  %2688 = add i64 %2676, 36
  store i64 %2688, i64* %PC.i, align 8
  %2689 = inttoptr i64 %2683 to i64*
  %2690 = load i64, i64* %2689, align 8
  %2691 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %307, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2690, i64* %2691, align 1
  store double 0.000000e+00, double* %310, align 1
  %2692 = add i64 %2676, 44
  store i64 %2692, i64* %PC.i, align 8
  %2693 = inttoptr i64 %2683 to i64*
  %2694 = load i64, i64* %2693, align 8
  %2695 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %311, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2694, i64* %2695, align 1
  store double 0.000000e+00, double* %314, align 1
  %2696 = add i64 %2676, 52
  store i64 %2696, i64* %PC.i, align 8
  %2697 = inttoptr i64 %2683 to i64*
  %2698 = load i64, i64* %2697, align 8
  %2699 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %317, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2698, i64* %2699, align 1
  store double 0.000000e+00, double* %319, align 1
  %2700 = add i64 %2676, 169
  %2701 = add i64 %2676, 57
  %2702 = load i64, i64* %6, align 8
  %2703 = add i64 %2702, -8
  %2704 = inttoptr i64 %2703 to i64*
  store i64 %2701, i64* %2704, align 8
  store i64 %2703, i64* %6, align 8
  store i64 %2700, i64* %3, align 8
  %call2_40152b = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2700, %struct.Memory* %MEMORY.26)
  %.pre35 = load i64, i64* %RBP.i, align 8
  %.pre36 = load i64, i64* %PC.i, align 8
  br label %block_.L_401530

block_.L_401530:                                  ; preds = %block_.L_4014e5, %block_4014f7
  %2705 = phi i64 [ %2676, %block_.L_4014e5 ], [ %.pre36, %block_4014f7 ]
  %2706 = phi i64 [ %2539, %block_.L_4014e5 ], [ %.pre35, %block_4014f7 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_4014e5 ], [ %call2_40152b, %block_4014f7 ]
  %2707 = add i64 %2706, -176
  %2708 = add i64 %2705, 6
  store i64 %2708, i64* %PC.i, align 8
  %2709 = inttoptr i64 %2707 to i32*
  %2710 = load i32, i32* %2709, align 4
  %2711 = add i32 %2710, 1
  %2712 = zext i32 %2711 to i64
  store i64 %2712, i64* %RAX.i1199, align 8
  %2713 = icmp eq i32 %2710, -1
  %2714 = icmp eq i32 %2711, 0
  %2715 = or i1 %2713, %2714
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %14, align 1
  %2717 = and i32 %2711, 255
  %2718 = tail call i32 @llvm.ctpop.i32(i32 %2717)
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  store i8 %2721, i8* %21, align 1
  %2722 = xor i32 %2710, %2711
  %2723 = lshr i32 %2722, 4
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  store i8 %2725, i8* %26, align 1
  %2726 = icmp eq i32 %2711, 0
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %29, align 1
  %2728 = lshr i32 %2711, 31
  %2729 = trunc i32 %2728 to i8
  store i8 %2729, i8* %32, align 1
  %2730 = lshr i32 %2710, 31
  %2731 = xor i32 %2728, %2730
  %2732 = add nuw nsw i32 %2731, %2728
  %2733 = icmp eq i32 %2732, 2
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %38, align 1
  %2735 = add i64 %2705, 15
  store i64 %2735, i64* %PC.i, align 8
  store i32 %2711, i32* %2709, align 4
  %2736 = load i32, i32* %EAX.i1220, align 4
  %2737 = load i64, i64* %RBP.i, align 8
  %2738 = add i64 %2737, -172
  %2739 = load i64, i64* %PC.i, align 8
  %2740 = add i64 %2739, 6
  store i64 %2740, i64* %PC.i, align 8
  %2741 = inttoptr i64 %2738 to i32*
  %2742 = load i32, i32* %2741, align 4
  %2743 = sub i32 %2736, %2742
  %2744 = icmp ult i32 %2736, %2742
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %14, align 1
  %2746 = and i32 %2743, 255
  %2747 = tail call i32 @llvm.ctpop.i32(i32 %2746)
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = xor i8 %2749, 1
  store i8 %2750, i8* %21, align 1
  %2751 = xor i32 %2742, %2736
  %2752 = xor i32 %2751, %2743
  %2753 = lshr i32 %2752, 4
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  store i8 %2755, i8* %26, align 1
  %2756 = icmp eq i32 %2743, 0
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %29, align 1
  %2758 = lshr i32 %2743, 31
  %2759 = trunc i32 %2758 to i8
  store i8 %2759, i8* %32, align 1
  %2760 = lshr i32 %2736, 31
  %2761 = lshr i32 %2742, 31
  %2762 = xor i32 %2761, %2760
  %2763 = xor i32 %2758, %2760
  %2764 = add nuw nsw i32 %2763, %2762
  %2765 = icmp eq i32 %2764, 2
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %38, align 1
  %2767 = icmp ne i8 %2759, 0
  %2768 = xor i1 %2767, %2765
  %.demorgan74 = or i1 %2756, %2768
  %.v75 = select i1 %.demorgan74, i64 12, i64 17
  %2769 = add i64 %2739, %.v75
  store i64 %2769, i64* %3, align 8
  br i1 %.demorgan74, label %block_40154b, label %block_.L_401550

block_40154b:                                     ; preds = %block_.L_401530
  %2770 = add i64 %2769, -2992
  store i64 %2770, i64* %3, align 8
  br label %block_.L_40099b

block_.L_401550:                                  ; preds = %block_.L_401530
  store i64 0, i64* %RAX.i1199, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDI.i1206, align 8
  %2771 = add i64 %2769, -3696
  %2772 = add i64 %2769, 9
  %2773 = load i64, i64* %6, align 8
  %2774 = add i64 %2773, -8
  %2775 = inttoptr i64 %2774 to i64*
  store i64 %2772, i64* %2775, align 8
  store i64 %2774, i64* %6, align 8
  store i64 %2771, i64* %3, align 8
  %2776 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.27)
  %2777 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x401915_type* @G__0x401915 to i64), i64* %RDI.i1206, align 8
  %2778 = load i64, i64* %RBP.i, align 8
  %2779 = add i64 %2778, -200
  %2780 = load i64, i64* %RAX.i1199, align 8
  %2781 = add i64 %2777, 17
  store i64 %2781, i64* %PC.i, align 8
  %2782 = inttoptr i64 %2779 to i64*
  store i64 %2780, i64* %2782, align 8
  %2783 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i, align 1
  %2784 = add i64 %2783, -3786
  %2785 = add i64 %2783, 7
  %2786 = load i64, i64* %6, align 8
  %2787 = add i64 %2786, -8
  %2788 = inttoptr i64 %2787 to i64*
  store i64 %2785, i64* %2788, align 8
  store i64 %2787, i64* %6, align 8
  store i64 %2784, i64* %3, align 8
  %2789 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2776)
  %2790 = load i64, i64* %RBP.i, align 8
  %2791 = add i64 %2790, -208
  %2792 = load i64, i64* %PC.i, align 8
  %2793 = add i64 %2792, 7
  store i64 %2793, i64* %PC.i, align 8
  %2794 = inttoptr i64 %2791 to i32*
  %2795 = load i32, i32* %2794, align 4
  store i8 0, i8* %14, align 1
  %2796 = and i32 %2795, 255
  %2797 = tail call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  store i8 %2800, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2801 = icmp eq i32 %2795, 0
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %29, align 1
  %2803 = lshr i32 %2795, 31
  %2804 = trunc i32 %2803 to i8
  store i8 %2804, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2805 = add i64 %2790, -316
  %2806 = load i32, i32* %EAX.i1220, align 4
  %2807 = add i64 %2792, 13
  store i64 %2807, i64* %PC.i, align 8
  %2808 = inttoptr i64 %2805 to i32*
  store i32 %2806, i32* %2808, align 4
  %2809 = load i64, i64* %PC.i, align 8
  %2810 = load i8, i8* %29, align 1
  %2811 = icmp ne i8 %2810, 0
  %.v76 = select i1 %2811, i64 11, i64 6
  %2812 = add i64 %2809, %.v76
  store i64 %2812, i64* %3, align 8
  %cmpBr_40157e = icmp eq i8 %2810, 1
  br i1 %cmpBr_40157e, label %block_.L_401589, label %block_401584

block_401584:                                     ; preds = %block_.L_401550
  %2813 = add i64 %2812, -3150
  store i64 %2813, i64* %3, align 8
  %.pre4 = load i64, i64* %RAX.i1199, align 8
  %2814 = trunc i64 %.pre4 to i32
  br label %block_.L_400936

block_.L_401589:                                  ; preds = %block_.L_401550
  %2815 = load i64, i64* %RBP.i, align 8
  %2816 = add i64 %2815, -4
  %2817 = add i64 %2812, 7
  store i64 %2817, i64* %PC.i, align 8
  %2818 = inttoptr i64 %2816 to i32*
  store i32 0, i32* %2818, align 4
  %.pre37 = load i64, i64* %PC.i, align 8
  br label %block_.L_401590

block_.L_401590:                                  ; preds = %block_.L_401589, %block_.L_4008ed
  %2819 = phi i64 [ %.pre37, %block_.L_401589 ], [ %267, %block_.L_4008ed ]
  %MEMORY.28 = phi %struct.Memory* [ %2789, %block_.L_401589 ], [ %254, %block_.L_4008ed ]
  %2820 = load i64, i64* %RBP.i, align 8
  %2821 = add i64 %2820, -4
  %2822 = add i64 %2819, 3
  store i64 %2822, i64* %PC.i, align 8
  %2823 = inttoptr i64 %2821 to i32*
  %2824 = load i32, i32* %2823, align 4
  %2825 = zext i32 %2824 to i64
  store i64 %2825, i64* %RAX.i1199, align 8
  %2826 = load i64, i64* %RSP.i16, align 8
  %2827 = add i64 %2826, 320
  store i64 %2827, i64* %RSP.i16, align 8
  %2828 = icmp ugt i64 %2826, -321
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %14, align 1
  %2830 = trunc i64 %2827 to i32
  %2831 = and i32 %2830, 255
  %2832 = tail call i32 @llvm.ctpop.i32(i32 %2831)
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  %2835 = xor i8 %2834, 1
  store i8 %2835, i8* %21, align 1
  %2836 = xor i64 %2826, %2827
  %2837 = lshr i64 %2836, 4
  %2838 = trunc i64 %2837 to i8
  %2839 = and i8 %2838, 1
  store i8 %2839, i8* %26, align 1
  %2840 = icmp eq i64 %2827, 0
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %29, align 1
  %2842 = lshr i64 %2827, 63
  %2843 = trunc i64 %2842 to i8
  store i8 %2843, i8* %32, align 1
  %2844 = lshr i64 %2826, 63
  %2845 = xor i64 %2842, %2844
  %2846 = add nuw nsw i64 %2845, %2842
  %2847 = icmp eq i64 %2846, 2
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %38, align 1
  %2849 = add i64 %2819, 11
  store i64 %2849, i64* %PC.i, align 8
  %2850 = add i64 %2826, 328
  %2851 = inttoptr i64 %2827 to i64*
  %2852 = load i64, i64* %2851, align 8
  store i64 %2852, i64* %RBP.i, align 8
  store i64 %2850, i64* %6, align 8
  %2853 = add i64 %2819, 12
  store i64 %2853, i64* %PC.i, align 8
  %2854 = inttoptr i64 %2850 to i64*
  %2855 = load i64, i64* %2854, align 8
  store i64 %2855, i64* %3, align 8
  %2856 = add i64 %2826, 336
  store i64 %2856, i64* %6, align 8
  ret %struct.Memory* %MEMORY.28
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

define %struct.Memory* @routine_subq__0x140___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -320
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 320
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x186a0__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 100000, i64* %7, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400931(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4018f8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4018f8_type* @G__0x4018f8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0xac__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rdi_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_4008a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0xac__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsbl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x63___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -99
  %8 = icmp ult i32 %4, 99
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
  %17 = xor i32 %4, %7
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

define %struct.Memory* @routine_jne_.L_4008af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x1__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40091d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.atol_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_4008ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400918(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4018fb___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4018fb_type* @G__0x4018fb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401590(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400848(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400936(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.time_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0xf71__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xf71__rip__type* @G_0xf71__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xf71__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xf71__rip__type* @G_0xf71__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xf71__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xf71__rip__type* @G_0xf71__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x602098(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x6020a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020a0_type* @G_0x6020a0 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6020b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xf2d__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xf2d__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xf2d__rip__type* @G_0xf2d__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0xc__MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 12
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0xe__MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 14
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 254
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

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0x159__MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 345
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
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

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0xd2__MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 210
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 254
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

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x383__MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 899
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
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

define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0x268__MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 616
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 248
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

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x5d__MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = sext i64 %8 to i128
  %10 = and i128 %9, -18446744073709551616
  %11 = zext i64 %8 to i128
  %12 = or i128 %10, %11
  %13 = mul nsw i128 %12, 93
  %14 = trunc i128 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = sext i64 %14 to i128
  %16 = icmp ne i128 %15, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i128 %13 to i32
  %20 = and i32 %19, 255
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

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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

define %struct.Memory* @routine_jg_.L_400b16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x602098___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %19 = xor i64 %3, %6
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %6, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %6, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = xor i64 %27, %30
  %32 = add nuw nsw i64 %31, %27
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400a49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xac__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
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

define %struct.Memory* @routine_jne_.L_400b50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.POUT(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0xd78__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xd78__rip__type* @G_0xd78__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xd78__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xd78__rip__type* @G_0xd78__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x6020c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6020d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6020d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6020e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400c9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x6020c8___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x6020d0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x6020d8___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x6020e0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6020c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x6020d8___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x6020e0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x6020d0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b8c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400ce1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6020d0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6020d8___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6020e0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

define %struct.Memory* @routine_jg_.L_400d17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x6020c0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6020c0_type* @G__0x6020c0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.PA(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400ce9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400d5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x602090(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

define %struct.Memory* @routine_jg_.L_400e10(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpl__0x1__0x602090(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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
  %16 = xor i32 %5, %6
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

define %struct.Memory* @routine_jne_.L_400d9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x2__0x602090(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400da8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3__0x602090(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__0x602090(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
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
  %16 = xor i32 %5, %6
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

define %struct.Memory* @routine_jle_.L_400dc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x602090(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
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

define %struct.Memory* @routine_jge_.L_400def(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400e52(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x602090___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x602090___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__0x6020ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3__0x6020a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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

define %struct.Memory* @routine_jg_.L_400f7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_0x602090___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6020ac___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x602090___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
  store i64 %13, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0x6020a8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x6020ac___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x602090(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6020a8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x6020ac___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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

define %struct.Memory* @routine_imull_0x6020ac___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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

define %struct.Memory* @routine_subl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__eax__0x6020ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x6020ac___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x602090___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x6020a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x6020ac___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x6020a8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
  %18 = trunc i64 %3 to i32
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

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6020c0___rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 6299840
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %9 = load i64, i64* %8, align 1
  %10 = inttoptr i64 %5 to i64*
  store i64 %9, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x6020a8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, %8
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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

define %struct.Memory* @routine_movl_0x6020ac___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400fcd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x6020ac___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x90b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x90b__rip__type* @G_0x90b__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_4011e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x8d5__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8d5__rip__type* @G_0x8d5__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602098___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6020b0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_callq_.atan_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x7fd__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x7fd__rip__type* @G_0x7fd__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xf0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602098___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x118__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x138__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x138__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x130__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40122f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6a1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6a1__rip__type* @G_0x6a1__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_401292(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_callq_.P3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_401257(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4012dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x603__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x603__rip__type* @G_0x603__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x5cb__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x5cb__rip__type* @G_0x5cb__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x5e3__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x5e3__rip__type* @G_0x5e3__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x6020c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x6020d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

define %struct.Memory* @routine_jg_.L_40135d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_callq_.P0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_401339(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4013ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3__0x6020ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x60__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_401444(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_subl_0x602090___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4013ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401486(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x462__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x462__rip__type* @G_0x462__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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

define %struct.Memory* @routine_jg_.L_4014e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_callq_.log_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_divsd_0x6020a0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x6020a0_type* @G_0x6020a0 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.exp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_40149e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401530(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_401550(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_40099b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401915___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401915_type* @G__0x401915 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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

define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_je_.L_401589(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_addq__0x140___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 320
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -321
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
  %17 = xor i64 %3, %6
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
