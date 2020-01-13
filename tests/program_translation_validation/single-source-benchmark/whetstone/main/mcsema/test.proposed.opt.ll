; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x462__rip__4199566__type = type <{ [16 x i8] }>
%G_0x5cb__rip__4199149__type = type <{ [16 x i8] }>
%G_0x5e3__rip__4199157__type = type <{ [16 x i8] }>
%G_0x602080_type = type <{ [8 x i8] }>
%G_0x602090_type = type <{ [8 x i8] }>
%G_0x602098_type = type <{ [16 x i8] }>
%G_0x6020a0_type = type <{ [16 x i8] }>
%G_0x6020a8_type = type <{ [4 x i8] }>
%G_0x6020ac_type = type <{ [8 x i8] }>
%G_0x6020b0_type = type <{ [16 x i8] }>
%G_0x6020c8_type = type <{ [16 x i8] }>
%G_0x6020d0_type = type <{ [16 x i8] }>
%G_0x6020d8_type = type <{ [16 x i8] }>
%G_0x6020e0_type = type <{ [16 x i8] }>
%G_0x603__rip__4199141__type = type <{ [16 x i8] }>
%G_0x6a1__rip__4198967__type = type <{ [16 x i8] }>
%G_0x7fd__rip__4198619__type = type <{ [16 x i8] }>
%G_0x8d5__rip__4198403__type = type <{ [16 x i8] }>
%G_0x90b__rip__4198357__type = type <{ [16 x i8] }>
%G_0xd78__rip__4197208__type = type <{ [16 x i8] }>
%G_0xd78__rip__4197216__type = type <{ [16 x i8] }>
%G_0xf2d__rip__4196771__type = type <{ [16 x i8] }>
%G_0xf2d__rip__4196779__type = type <{ [16 x i8] }>
%G_0xf71__rip__4196679__type = type <{ [16 x i8] }>
%G_0xf71__rip__4196687__type = type <{ [16 x i8] }>
%G_0xf71__rip__4196695__type = type <{ [16 x i8] }>
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
@G_0x462__rip__4199566_ = local_unnamed_addr global %G_0x462__rip__4199566__type zeroinitializer
@G_0x5cb__rip__4199149_ = local_unnamed_addr global %G_0x5cb__rip__4199149__type zeroinitializer
@G_0x5e3__rip__4199157_ = local_unnamed_addr global %G_0x5e3__rip__4199157__type zeroinitializer
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
@G_0x603__rip__4199141_ = local_unnamed_addr global %G_0x603__rip__4199141__type zeroinitializer
@G_0x6a1__rip__4198967_ = local_unnamed_addr global %G_0x6a1__rip__4198967__type zeroinitializer
@G_0x7fd__rip__4198619_ = local_unnamed_addr global %G_0x7fd__rip__4198619__type zeroinitializer
@G_0x8d5__rip__4198403_ = local_unnamed_addr global %G_0x8d5__rip__4198403__type zeroinitializer
@G_0x90b__rip__4198357_ = local_unnamed_addr global %G_0x90b__rip__4198357__type zeroinitializer
@G_0xd78__rip__4197208_ = local_unnamed_addr global %G_0xd78__rip__4197208__type zeroinitializer
@G_0xd78__rip__4197216_ = local_unnamed_addr global %G_0xd78__rip__4197216__type zeroinitializer
@G_0xf2d__rip__4196771_ = local_unnamed_addr global %G_0xf2d__rip__4196771__type zeroinitializer
@G_0xf2d__rip__4196779_ = local_unnamed_addr global %G_0xf2d__rip__4196779__type zeroinitializer
@G_0xf71__rip__4196679_ = local_unnamed_addr global %G_0xf71__rip__4196679__type zeroinitializer
@G_0xf71__rip__4196687_ = local_unnamed_addr global %G_0xf71__rip__4196687__type zeroinitializer
@G_0xf71__rip__4196695_ = local_unnamed_addr global %G_0xf71__rip__4196695__type zeroinitializer
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
  %11 = add i64 %7, -328
  store i64 %11, i64* %6, align 8
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
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -8
  %45 = load i32, i32* %EDI.i, align 4
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %RSI.i1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %RSI.i1110, align 8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -184
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 11
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i64*
  store i64 100000, i64* %59, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -208
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 10
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -172
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 10
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1199 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %EAX.i1220 = bitcast %union.anon* %70 to i32*
  %RDX.i1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RCX.i1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI.i1206 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400848

block_.L_400848:                                  ; preds = %block_.L_40091d, %entry
  %71 = phi i64 [ %.pre, %entry ], [ %299, %block_.L_40091d ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.2, %block_.L_40091d ]
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -172
  %74 = add i64 %71, 6
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RAX.i1199, align 8
  %78 = add i64 %72, -8
  %79 = add i64 %71, 9
  store i64 %79, i64* %3, align 8
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
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RCX.i1209, align 8
  %113 = add i64 %108, 28
  store i64 %113, i64* %3, align 8
  %114 = load i32, i32* %75, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %RDI.i1206, align 8
  %116 = shl nsw i64 %115, 3
  %117 = add i64 %116, %112
  %118 = add i64 %108, 32
  store i64 %118, i64* %3, align 8
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
  %128 = load i64, i64* %3, align 8
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
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %RAX.i1199, align 8
  %143 = add i64 %.pre3, -172
  %144 = add i64 %138, 11
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %RCX.i1209, align 8
  %148 = shl nsw i64 %147, 3
  %149 = add i64 %148, %142
  %150 = add i64 %138, 15
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RAX.i1199, align 8
  %153 = add i64 %138, 18
  store i64 %153, i64* %3, align 8
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
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  store i32 1, i32* %184, align 4
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 115
  br label %block_.L_40091d

block_.L_4008af:                                  ; preds = %block_400885
  %187 = add i64 %180, 4
  store i64 %187, i64* %3, align 8
  %188 = load i64, i64* %141, align 8
  store i64 %188, i64* %RAX.i1199, align 8
  %189 = add i64 %180, 11
  store i64 %189, i64* %3, align 8
  %190 = load i32, i32* %145, align 4
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %RCX.i1209, align 8
  %192 = shl nsw i64 %191, 3
  %193 = add i64 %192, %188
  %194 = add i64 %180, 15
  store i64 %194, i64* %3, align 8
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
  %204 = load i64, i64* %3, align 8
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
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RAX.i1199, align 8
  %223 = add i64 %218, -172
  %224 = add i64 %217, 11
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RCX.i1209, align 8
  %228 = shl nsw i64 %227, 3
  %229 = add i64 %228, %222
  %230 = add i64 %217, 15
  store i64 %230, i64* %3, align 8
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
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 7
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %240 to i64*
  store i64 %241, i64* %244, align 8
  %245 = load i64, i64* %3, align 8
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
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 7
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %256 to i32*
  store i32 1, i32* %259, align 4
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -212
  %262 = load i32, i32* %EAX.i1220, align 4
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 6
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %261 to i32*
  store i32 %262, i32* %265, align 4
  %266 = load i64, i64* %3, align 8
  %267 = add i64 %266, 3197
  store i64 %267, i64* %3, align 8
  br label %block_.L_401590

block_.L_40091d:                                  ; preds = %block_4008cd, %block_.L_4008a0
  %268 = phi i64 [ %186, %block_.L_4008a0 ], [ %247, %block_4008cd ]
  %MEMORY.2 = phi %struct.Memory* [ %126, %block_.L_4008a0 ], [ %238, %block_4008cd ]
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -172
  %271 = add i64 %268, 6
  store i64 %271, i64* %3, align 8
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
  %289 = zext i1 %277 to i8
  store i8 %289, i8* %29, align 1
  %290 = lshr i32 %274, 31
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %32, align 1
  %292 = lshr i32 %273, 31
  %293 = xor i32 %290, %292
  %294 = add nuw nsw i32 %293, %290
  %295 = icmp eq i32 %294, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %38, align 1
  %297 = add i64 %268, 15
  store i64 %297, i64* %3, align 8
  store i32 %274, i32* %272, align 4
  %298 = load i64, i64* %3, align 8
  %299 = add i64 %298, -228
  store i64 %299, i64* %3, align 8
  br label %block_.L_400848

block_.L_400931:                                  ; preds = %block_.L_400848
  %300 = add i64 %108, 5
  store i64 %300, i64* %3, align 8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %302 = bitcast [32 x %union.VectorReg]* %301 to i8*
  %303 = bitcast [32 x %union.VectorReg]* %301 to double*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %305 = bitcast i64* %304 to double*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %307 = bitcast %union.VectorReg* %306 to double*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %309 = bitcast i64* %308 to double*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %311 = bitcast %union.VectorReg* %310 to double*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %313 = bitcast i64* %312 to double*
  %314 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %301, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %317 = bitcast i64* %316 to double*
  %318 = bitcast %union.VectorReg* %315 to <2 x i32>*
  %319 = bitcast i64* %316 to <2 x i32>*
  %320 = bitcast [32 x %union.VectorReg]* %301 to i32*
  %321 = getelementptr inbounds i8, i8* %302, i64 4
  %322 = bitcast i8* %321 to i32*
  %323 = bitcast i64* %304 to i32*
  %324 = getelementptr inbounds i8, i8* %302, i64 12
  %325 = bitcast i8* %324 to i32*
  %326 = bitcast %union.VectorReg* %306 to <2 x i32>*
  %327 = bitcast i64* %308 to <2 x i32>*
  %AL.i = bitcast %union.anon* %70 to i8*
  br label %block_.L_400936

block_.L_400936:                                  ; preds = %block_401584, %block_.L_400931
  %328 = phi i64 [ %300, %block_.L_400931 ], [ %2732, %block_401584 ]
  %329 = phi i32 [ %76, %block_.L_400931 ], [ %2733, %block_401584 ]
  %330 = phi i64 [ %77, %block_.L_400931 ], [ %.pre4, %block_401584 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400931 ], [ %2708, %block_401584 ]
  %331 = zext i32 %329 to i64
  %332 = xor i64 %331, %330
  %333 = trunc i64 %332 to i32
  %334 = and i64 %332, 4294967295
  store i64 %334, i64* %RAX.i1199, align 8
  store i8 0, i8* %14, align 1
  %335 = and i32 %333, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335)
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %21, align 1
  %340 = icmp eq i32 %333, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %29, align 1
  %342 = lshr i32 %333, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %334, i64* %RDI.i1206, align 8
  %344 = add i64 %328, -598
  %345 = add i64 %328, 9
  %346 = load i64, i64* %6, align 8
  %347 = add i64 %346, -8
  %348 = inttoptr i64 %347 to i64*
  store i64 %345, i64* %348, align 8
  store i64 %347, i64* %6, align 8
  store i64 %344, i64* %3, align 8
  %349 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.3)
  %350 = load i64, i64* %3, align 8
  %351 = load i64, i64* bitcast (%G_0xf71__rip__4196679__type* @G_0xf71__rip__4196679_ to i64*), align 8
  store i64 %351, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %352 = load i64, i64* bitcast (%G_0xf71__rip__4196687__type* @G_0xf71__rip__4196687_ to i64*), align 8
  %353 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %306, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %352, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %354 = load i64, i64* bitcast (%G_0xf71__rip__4196695__type* @G_0xf71__rip__4196695_ to i64*), align 8
  %355 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %310, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %354, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -192
  %358 = load i64, i64* %RAX.i1199, align 8
  %359 = add i64 %350, 31
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %357 to i64*
  store i64 %358, i64* %360, align 8
  %361 = load i64, i64* %3, align 8
  %362 = load i64, i64* %355, align 1
  store i64 %362, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  %363 = load i64, i64* %353, align 1
  store i64 %363, i64* bitcast (%G_0x6020a0_type* @G_0x6020a0 to i64*), align 8
  %364 = load i64, i64* %314, align 1
  store i64 %364, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -184
  %367 = add i64 %361, 34
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %RAX.i1199, align 8
  %370 = add i64 %365, -168
  %371 = add i64 %361, 41
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i64*
  store i64 %369, i64* %372, align 8
  %373 = load i64, i64* %RBP.i, align 8
  %374 = add i64 %373, -172
  %375 = load i64, i64* %3, align 8
  %376 = add i64 %375, 10
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %374 to i32*
  store i32 1, i32* %377, align 4
  %378 = load i64, i64* %RBP.i, align 8
  %379 = add i64 %378, -176
  %380 = load i64, i64* %3, align 8
  %381 = add i64 %380, 10
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %379 to i32*
  store i32 1, i32* %382, align 4
  %.pre5 = load i64, i64* %3, align 8
  %.pre6 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40099b

block_.L_40099b:                                  ; preds = %block_40154b, %block_.L_400936
  %383 = phi i64 [ %.pre6, %block_.L_400936 ], [ %2656, %block_40154b ]
  %384 = phi i64 [ %.pre5, %block_.L_400936 ], [ %2689, %block_40154b ]
  %MEMORY.4 = phi %struct.Memory* [ %349, %block_.L_400936 ], [ %MEMORY.27, %block_40154b ]
  %385 = load i64, i64* bitcast (%G_0xf2d__rip__4196771__type* @G_0xf2d__rip__4196771_ to i64*), align 8
  store i64 %385, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %386 = load i64, i64* bitcast (%G_0xf2d__rip__4196779__type* @G_0xf2d__rip__4196779_ to i64*), align 8
  store i64 %386, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %387 = add i64 %383, -32
  %388 = add i64 %384, 24
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i64*
  store i64 0, i64* %389, align 8
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -168
  %392 = load i64, i64* %3, align 8
  %393 = add i64 %392, 8
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %391 to i64*
  %395 = load i64, i64* %394, align 8
  %396 = sext i64 %395 to i128
  %397 = and i128 %396, -18446744073709551616
  %398 = zext i64 %395 to i128
  %399 = or i128 %397, %398
  %400 = mul nsw i128 %399, 12
  %401 = trunc i128 %400 to i64
  store i64 %401, i64* %RAX.i1199, align 8
  %402 = sext i64 %401 to i128
  %403 = icmp ne i128 %402, %400
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %14, align 1
  %405 = trunc i128 %400 to i32
  %406 = and i32 %405, 252
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %411 = lshr i64 %401, 63
  %412 = trunc i64 %411 to i8
  store i8 %412, i8* %32, align 1
  store i8 %404, i8* %38, align 1
  %413 = add i64 %390, -40
  %414 = add i64 %392, 12
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i64*
  store i64 %401, i64* %415, align 8
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -168
  %418 = load i64, i64* %3, align 8
  %419 = add i64 %418, 8
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %417 to i64*
  %421 = load i64, i64* %420, align 8
  %422 = sext i64 %421 to i128
  %423 = and i128 %422, -18446744073709551616
  %424 = zext i64 %421 to i128
  %425 = or i128 %423, %424
  %426 = mul nsw i128 %425, 14
  %427 = trunc i128 %426 to i64
  store i64 %427, i64* %RAX.i1199, align 8
  %428 = sext i64 %427 to i128
  %429 = icmp ne i128 %428, %426
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %14, align 1
  %431 = trunc i128 %426 to i32
  %432 = and i32 %431, 254
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %437 = lshr i64 %427, 63
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %32, align 1
  store i8 %430, i8* %38, align 1
  %439 = add i64 %416, -48
  %440 = add i64 %418, 12
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i64*
  store i64 %427, i64* %441, align 8
  %442 = load i64, i64* %RBP.i, align 8
  %443 = add i64 %442, -168
  %444 = load i64, i64* %3, align 8
  %445 = add i64 %444, 11
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %443 to i64*
  %447 = load i64, i64* %446, align 8
  %448 = sext i64 %447 to i128
  %449 = and i128 %448, -18446744073709551616
  %450 = zext i64 %447 to i128
  %451 = or i128 %449, %450
  %452 = mul nsw i128 %451, 345
  %453 = trunc i128 %452 to i64
  store i64 %453, i64* %RAX.i1199, align 8
  %454 = sext i64 %453 to i128
  %455 = icmp ne i128 %454, %452
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %14, align 1
  %457 = trunc i128 %452 to i32
  %458 = and i32 %457, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %463 = lshr i64 %453, 63
  %464 = trunc i64 %463 to i8
  store i8 %464, i8* %32, align 1
  store i8 %456, i8* %38, align 1
  %465 = add i64 %442, -56
  %466 = add i64 %444, 15
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i64*
  store i64 %453, i64* %467, align 8
  %468 = load i64, i64* %RBP.i, align 8
  %469 = add i64 %468, -168
  %470 = load i64, i64* %3, align 8
  %471 = add i64 %470, 11
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %469 to i64*
  %473 = load i64, i64* %472, align 8
  %474 = sext i64 %473 to i128
  %475 = and i128 %474, -18446744073709551616
  %476 = zext i64 %473 to i128
  %477 = or i128 %475, %476
  %478 = mul nsw i128 %477, 210
  %479 = trunc i128 %478 to i64
  store i64 %479, i64* %RAX.i1199, align 8
  %480 = sext i64 %479 to i128
  %481 = icmp ne i128 %480, %478
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %14, align 1
  %483 = trunc i128 %478 to i32
  %484 = and i32 %483, 254
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %489 = lshr i64 %479, 63
  %490 = trunc i64 %489 to i8
  store i8 %490, i8* %32, align 1
  store i8 %482, i8* %38, align 1
  %491 = add i64 %468, -64
  %492 = add i64 %470, 15
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i64*
  store i64 %479, i64* %493, align 8
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -168
  %496 = load i64, i64* %3, align 8
  %497 = add i64 %496, 7
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %495 to i64*
  %499 = load i64, i64* %498, align 8
  %500 = shl i64 %499, 5
  store i64 %500, i64* %RAX.i1199, align 8
  %501 = lshr i64 %499, 59
  %502 = trunc i64 %501 to i8
  %503 = and i8 %502, 1
  store i8 %503, i8* %14, align 1
  %504 = trunc i64 %500 to i32
  %505 = and i32 %504, 224
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  store i8 %509, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %510 = icmp eq i64 %500, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %29, align 1
  %512 = lshr i64 %499, 58
  %513 = trunc i64 %512 to i8
  %514 = and i8 %513, 1
  store i8 %514, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %515 = add i64 %494, -72
  %516 = add i64 %496, 15
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i64*
  store i64 %500, i64* %517, align 8
  %518 = load i64, i64* %RBP.i, align 8
  %519 = add i64 %518, -168
  %520 = load i64, i64* %3, align 8
  %521 = add i64 %520, 11
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %519 to i64*
  %523 = load i64, i64* %522, align 8
  %524 = sext i64 %523 to i128
  %525 = and i128 %524, -18446744073709551616
  %526 = zext i64 %523 to i128
  %527 = or i128 %525, %526
  %528 = mul nsw i128 %527, 899
  %529 = trunc i128 %528 to i64
  store i64 %529, i64* %RAX.i1199, align 8
  %530 = sext i64 %529 to i128
  %531 = icmp ne i128 %530, %528
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %14, align 1
  %533 = trunc i128 %528 to i32
  %534 = and i32 %533, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %539 = lshr i64 %529, 63
  %540 = trunc i64 %539 to i8
  store i8 %540, i8* %32, align 1
  store i8 %532, i8* %38, align 1
  %541 = add i64 %518, -80
  %542 = add i64 %520, 15
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i64*
  store i64 %529, i64* %543, align 8
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -168
  %546 = load i64, i64* %3, align 8
  %547 = add i64 %546, 11
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %545 to i64*
  %549 = load i64, i64* %548, align 8
  %550 = sext i64 %549 to i128
  %551 = and i128 %550, -18446744073709551616
  %552 = zext i64 %549 to i128
  %553 = or i128 %551, %552
  %554 = mul nsw i128 %553, 616
  %555 = trunc i128 %554 to i64
  store i64 %555, i64* %RAX.i1199, align 8
  %556 = sext i64 %555 to i128
  %557 = icmp ne i128 %556, %554
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %14, align 1
  %559 = trunc i128 %554 to i32
  %560 = and i32 %559, 248
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %565 = lshr i64 %555, 63
  %566 = trunc i64 %565 to i8
  store i8 %566, i8* %32, align 1
  store i8 %558, i8* %38, align 1
  %567 = add i64 %544, -88
  %568 = add i64 %546, 15
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i64*
  store i64 %555, i64* %569, align 8
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -96
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 8
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %571 to i64*
  store i64 0, i64* %574, align 8
  %575 = load i64, i64* %RBP.i, align 8
  %576 = add i64 %575, -168
  %577 = load i64, i64* %3, align 8
  %578 = add i64 %577, 8
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %576 to i64*
  %580 = load i64, i64* %579, align 8
  %581 = sext i64 %580 to i128
  %582 = and i128 %581, -18446744073709551616
  %583 = zext i64 %580 to i128
  %584 = or i128 %582, %583
  %585 = mul nsw i128 %584, 93
  %586 = trunc i128 %585 to i64
  store i64 %586, i64* %RAX.i1199, align 8
  %587 = sext i64 %586 to i128
  %588 = icmp ne i128 %587, %585
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %14, align 1
  %590 = trunc i128 %585 to i32
  %591 = and i32 %590, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %596 = lshr i64 %586, 63
  %597 = trunc i64 %596 to i8
  store i8 %597, i8* %32, align 1
  store i8 %589, i8* %38, align 1
  %598 = add i64 %575, -104
  %599 = add i64 %577, 12
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i64*
  store i64 %586, i64* %600, align 8
  %601 = load i64, i64* %RBP.i, align 8
  %602 = add i64 %601, -112
  %603 = load i64, i64* %3, align 8
  %604 = add i64 %603, 5
  store i64 %604, i64* %3, align 8
  %605 = load i64, i64* %353, align 1
  %606 = inttoptr i64 %602 to i64*
  store i64 %605, i64* %606, align 8
  %607 = load i64, i64* %RBP.i, align 8
  %608 = add i64 %607, -120
  %609 = load i64, i64* %3, align 8
  %610 = add i64 %609, 5
  store i64 %610, i64* %3, align 8
  %611 = load i64, i64* %314, align 1
  %612 = inttoptr i64 %608 to i64*
  store i64 %611, i64* %612, align 8
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -128
  %615 = load i64, i64* %3, align 8
  %616 = add i64 %615, 5
  store i64 %616, i64* %3, align 8
  %617 = load i64, i64* %314, align 1
  %618 = inttoptr i64 %614 to i64*
  store i64 %617, i64* %618, align 8
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -136
  %621 = load i64, i64* %3, align 8
  %622 = add i64 %621, 8
  store i64 %622, i64* %3, align 8
  %623 = load i64, i64* %314, align 1
  %624 = inttoptr i64 %620 to i64*
  store i64 %623, i64* %624, align 8
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -24
  %627 = load i64, i64* %3, align 8
  %628 = add i64 %627, 8
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %626 to i64*
  store i64 1, i64* %629, align 8
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400a49

block_.L_400a49:                                  ; preds = %block_400a57, %block_.L_40099b
  %630 = phi i64 [ %806, %block_400a57 ], [ %.pre7, %block_.L_40099b ]
  %631 = load i64, i64* %RBP.i, align 8
  %632 = add i64 %631, -24
  %633 = add i64 %630, 4
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i64*
  %635 = load i64, i64* %634, align 8
  store i64 %635, i64* %RAX.i1199, align 8
  %636 = add i64 %631, -32
  %637 = add i64 %630, 8
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  %640 = sub i64 %635, %639
  %641 = icmp ult i64 %635, %639
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %14, align 1
  %643 = trunc i64 %640 to i32
  %644 = and i32 %643, 255
  %645 = tail call i32 @llvm.ctpop.i32(i32 %644)
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  %648 = xor i8 %647, 1
  store i8 %648, i8* %21, align 1
  %649 = xor i64 %639, %635
  %650 = xor i64 %649, %640
  %651 = lshr i64 %650, 4
  %652 = trunc i64 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %26, align 1
  %654 = icmp eq i64 %640, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %29, align 1
  %656 = lshr i64 %640, 63
  %657 = trunc i64 %656 to i8
  store i8 %657, i8* %32, align 1
  %658 = lshr i64 %635, 63
  %659 = lshr i64 %639, 63
  %660 = xor i64 %659, %658
  %661 = xor i64 %656, %658
  %662 = add nuw nsw i64 %661, %660
  %663 = icmp eq i64 %662, 2
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %38, align 1
  %665 = icmp ne i8 %657, 0
  %666 = xor i1 %665, %663
  %.demorgan = or i1 %654, %666
  %.v42 = select i1 %.demorgan, i64 14, i64 205
  %667 = add i64 %630, %.v42
  store i64 %667, i64* %3, align 8
  br i1 %.demorgan, label %block_400a57, label %block_.L_400b16

block_400a57:                                     ; preds = %block_.L_400a49
  store i64 -9223372036854775808, i64* %RAX.i1199, align 8
  %668 = add i64 %631, -112
  %669 = add i64 %667, 15
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to double*
  %671 = load double, double* %670, align 8
  store double %671, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %672 = add i64 %631, -120
  %673 = add i64 %667, 20
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to double*
  %675 = load double, double* %674, align 8
  %676 = fadd double %671, %675
  store double %676, double* %303, align 1
  store i64 0, i64* %304, align 1
  %677 = add i64 %631, -128
  %678 = add i64 %667, 25
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to double*
  %680 = load double, double* %679, align 8
  %681 = fadd double %676, %680
  store double %681, double* %303, align 1
  store i64 0, i64* %304, align 1
  %682 = add i64 %631, -136
  %683 = add i64 %667, 33
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to double*
  %685 = load double, double* %684, align 8
  %686 = fsub double %681, %685
  %687 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %688 = fmul double %686, %687
  store double %688, double* %303, align 1
  store i64 0, i64* %304, align 1
  %689 = add i64 %667, 47
  store i64 %689, i64* %3, align 8
  store double %688, double* %670, align 8
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -112
  %692 = load i64, i64* %3, align 8
  %693 = add i64 %692, 5
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %691 to double*
  %695 = load double, double* %694, align 8
  store double %695, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %696 = add i64 %690, -120
  %697 = add i64 %692, 10
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to double*
  %699 = load double, double* %698, align 8
  %700 = fadd double %695, %699
  store double %700, double* %303, align 1
  store i64 0, i64* %304, align 1
  %701 = add i64 %690, -128
  %702 = add i64 %692, 15
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to double*
  %704 = load double, double* %703, align 8
  %705 = fsub double %700, %704
  store double %705, double* %303, align 1
  store i64 0, i64* %304, align 1
  %706 = add i64 %690, -136
  %707 = add i64 %692, 23
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to double*
  %709 = load double, double* %708, align 8
  %710 = fadd double %705, %709
  %711 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %712 = fmul double %710, %711
  store double %712, double* %303, align 1
  store i64 0, i64* %304, align 1
  %713 = add i64 %692, 37
  store i64 %713, i64* %3, align 8
  store double %712, double* %698, align 8
  %714 = load i64, i64* %RBP.i, align 8
  %715 = add i64 %714, -112
  %716 = load i64, i64* %3, align 8
  %717 = add i64 %716, 5
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %715 to double*
  %719 = load double, double* %718, align 8
  store double %719, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %720 = add i64 %714, -120
  %721 = add i64 %716, 10
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to double*
  %723 = load double, double* %722, align 8
  %724 = fsub double %719, %723
  store double %724, double* %303, align 1
  store i64 0, i64* %304, align 1
  %725 = add i64 %714, -128
  %726 = add i64 %716, 15
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to double*
  %728 = load double, double* %727, align 8
  %729 = fadd double %724, %728
  store double %729, double* %303, align 1
  store i64 0, i64* %304, align 1
  %730 = add i64 %714, -136
  %731 = add i64 %716, 23
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to double*
  %733 = load double, double* %732, align 8
  %734 = fadd double %729, %733
  %735 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %736 = fmul double %734, %735
  store double %736, double* %303, align 1
  store i64 0, i64* %304, align 1
  %737 = add i64 %716, 37
  store i64 %737, i64* %3, align 8
  store double %736, double* %727, align 8
  %738 = load i64, i64* %RBP.i, align 8
  %739 = add i64 %738, -112
  %740 = load i64, i64* %3, align 8
  %741 = add i64 %740, 5
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %739 to i64*
  %743 = load i64, i64* %742, align 8
  %744 = load i64, i64* %RAX.i1199, align 8
  %745 = xor i64 %744, %743
  store i64 %745, i64* %RCX.i1209, align 8
  store i8 0, i8* %14, align 1
  %746 = trunc i64 %745 to i32
  %747 = and i32 %746, 255
  %748 = tail call i32 @llvm.ctpop.i32(i32 %747)
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  %751 = xor i8 %750, 1
  store i8 %751, i8* %21, align 1
  %752 = icmp eq i64 %745, 0
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %29, align 1
  %754 = lshr i64 %745, 63
  %755 = trunc i64 %754 to i8
  store i8 %755, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %745, i64* %314, align 1
  store i64 0, i64* %304, align 1
  %756 = add i64 %738, -120
  %757 = add i64 %740, 23
  store i64 %757, i64* %3, align 8
  %758 = bitcast i64 %745 to double
  %759 = inttoptr i64 %756 to double*
  %760 = load double, double* %759, align 8
  %761 = fadd double %758, %760
  store double %761, double* %303, align 1
  store i64 0, i64* %304, align 1
  %762 = add i64 %738, -128
  %763 = add i64 %740, 28
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to double*
  %765 = load double, double* %764, align 8
  %766 = fadd double %761, %765
  store double %766, double* %303, align 1
  store i64 0, i64* %304, align 1
  %767 = add i64 %738, -136
  %768 = add i64 %740, 36
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to double*
  %770 = load double, double* %769, align 8
  %771 = fadd double %766, %770
  %772 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %773 = fmul double %771, %772
  store double %773, double* %303, align 1
  store i64 0, i64* %304, align 1
  %774 = add i64 %740, 53
  store i64 %774, i64* %3, align 8
  store double %773, double* %769, align 8
  %775 = load i64, i64* %RBP.i, align 8
  %776 = add i64 %775, -24
  %777 = load i64, i64* %3, align 8
  %778 = add i64 %777, 4
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %776 to i64*
  %780 = load i64, i64* %779, align 8
  %781 = add i64 %780, 1
  store i64 %781, i64* %RAX.i1199, align 8
  %782 = icmp eq i64 %780, -1
  %783 = icmp eq i64 %781, 0
  %784 = or i1 %782, %783
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %14, align 1
  %786 = trunc i64 %781 to i32
  %787 = and i32 %786, 255
  %788 = tail call i32 @llvm.ctpop.i32(i32 %787)
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  store i8 %791, i8* %21, align 1
  %792 = xor i64 %780, %781
  %793 = lshr i64 %792, 4
  %794 = trunc i64 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %26, align 1
  %796 = zext i1 %783 to i8
  store i8 %796, i8* %29, align 1
  %797 = lshr i64 %781, 63
  %798 = trunc i64 %797 to i8
  store i8 %798, i8* %32, align 1
  %799 = lshr i64 %780, 63
  %800 = xor i64 %797, %799
  %801 = add nuw nsw i64 %800, %797
  %802 = icmp eq i64 %801, 2
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %38, align 1
  %804 = add i64 %777, 12
  store i64 %804, i64* %3, align 8
  store i64 %781, i64* %779, align 8
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, -200
  store i64 %806, i64* %3, align 8
  br label %block_.L_400a49

block_.L_400b16:                                  ; preds = %block_.L_400a49
  %807 = add i64 %631, -176
  %808 = add i64 %667, 6
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RAX.i1199, align 8
  %812 = add i64 %631, -172
  %813 = add i64 %667, 12
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = sub i32 %810, %815
  %817 = icmp ult i32 %810, %815
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %14, align 1
  %819 = and i32 %816, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %21, align 1
  %824 = xor i32 %815, %810
  %825 = xor i32 %824, %816
  %826 = lshr i32 %825, 4
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %26, align 1
  %829 = icmp eq i32 %816, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %29, align 1
  %831 = lshr i32 %816, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %32, align 1
  %833 = lshr i32 %810, 31
  %834 = lshr i32 %815, 31
  %835 = xor i32 %834, %833
  %836 = xor i32 %831, %833
  %837 = add nuw nsw i32 %836, %835
  %838 = icmp eq i32 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %38, align 1
  %.v43 = select i1 %829, i64 18, i64 58
  %840 = add i64 %667, %.v43
  store i64 %840, i64* %3, align 8
  br i1 %829, label %block_400b28, label %block_.L_400b50

block_400b28:                                     ; preds = %block_.L_400b16
  %841 = add i64 %840, 4
  store i64 %841, i64* %3, align 8
  %842 = load i64, i64* %638, align 8
  store i64 %842, i64* %RDI.i1206, align 8
  %843 = add i64 %840, 8
  store i64 %843, i64* %3, align 8
  %844 = load i64, i64* %638, align 8
  store i64 %844, i64* %RSI.i1110, align 8
  %845 = add i64 %840, 12
  store i64 %845, i64* %3, align 8
  %846 = load i64, i64* %638, align 8
  store i64 %846, i64* %RDX.i1213, align 8
  %847 = add i64 %631, -112
  %848 = add i64 %840, 17
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i64*
  %850 = load i64, i64* %849, align 8
  store i64 %850, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %851 = add i64 %631, -120
  %852 = add i64 %840, 22
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %855 = add i64 %631, -128
  %856 = add i64 %840, 27
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i64*
  %858 = load i64, i64* %857, align 8
  store i64 %858, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %859 = add i64 %631, -136
  %860 = add i64 %840, 35
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i64*
  %862 = load i64, i64* %861, align 8
  %863 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %862, i64* %863, align 1
  store double 0.000000e+00, double* %317, align 1
  %864 = add i64 %840, 2680
  %865 = add i64 %840, 40
  %866 = load i64, i64* %6, align 8
  %867 = add i64 %866, -8
  %868 = inttoptr i64 %867 to i64*
  store i64 %865, i64* %868, align 8
  store i64 %867, i64* %6, align 8
  store i64 %864, i64* %3, align 8
  %call2_400b4b = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %864, %struct.Memory* %MEMORY.4)
  %.pre8 = load i64, i64* %3, align 8
  %.pre9 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400b50

block_.L_400b50:                                  ; preds = %block_.L_400b16, %block_400b28
  %869 = phi i64 [ %631, %block_.L_400b16 ], [ %.pre9, %block_400b28 ]
  %870 = phi i64 [ %840, %block_.L_400b16 ], [ %.pre8, %block_400b28 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.4, %block_.L_400b16 ], [ %call2_400b4b, %block_400b28 ]
  %871 = load i64, i64* bitcast (%G_0xd78__rip__4197208__type* @G_0xd78__rip__4197208_ to i64*), align 8
  store i64 %871, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %872 = load i64, i64* bitcast (%G_0xd78__rip__4197216__type* @G_0xd78__rip__4197216_ to i64*), align 8
  store i64 %872, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  store i64 %872, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %871, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %871, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %871, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %873 = add i64 %869, -24
  %874 = add i64 %870, 60
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i64*
  store i64 1, i64* %875, align 8
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_400b8c

block_.L_400b8c:                                  ; preds = %block_400b9a, %block_.L_400b50
  %876 = phi i64 [ %980, %block_400b9a ], [ %.pre10, %block_.L_400b50 ]
  %877 = load i64, i64* %RBP.i, align 8
  %878 = add i64 %877, -24
  %879 = add i64 %876, 4
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i64*
  %881 = load i64, i64* %880, align 8
  store i64 %881, i64* %RAX.i1199, align 8
  %882 = add i64 %877, -40
  %883 = add i64 %876, 8
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i64*
  %885 = load i64, i64* %884, align 8
  %886 = sub i64 %881, %885
  %887 = icmp ult i64 %881, %885
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %14, align 1
  %889 = trunc i64 %886 to i32
  %890 = and i32 %889, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  %895 = xor i64 %885, %881
  %896 = xor i64 %895, %886
  %897 = lshr i64 %896, 4
  %898 = trunc i64 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %26, align 1
  %900 = icmp eq i64 %886, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %29, align 1
  %902 = lshr i64 %886, 63
  %903 = trunc i64 %902 to i8
  store i8 %903, i8* %32, align 1
  %904 = lshr i64 %881, 63
  %905 = lshr i64 %885, 63
  %906 = xor i64 %905, %904
  %907 = xor i64 %902, %904
  %908 = add nuw nsw i64 %907, %906
  %909 = icmp eq i64 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %38, align 1
  %911 = icmp ne i8 %903, 0
  %912 = xor i1 %911, %909
  %.demorgan44 = or i1 %900, %912
  %.v45 = select i1 %.demorgan44, i64 14, i64 270
  %913 = add i64 %876, %.v45
  store i64 %913, i64* %3, align 8
  br i1 %.demorgan44, label %block_400b9a, label %block_.L_400c9a

block_400b9a:                                     ; preds = %block_.L_400b8c
  store i64 -9223372036854775808, i64* %RAX.i1199, align 8
  %914 = load double, double* bitcast (%G_0x6020c8_type* @G_0x6020c8 to double*), align 8
  %915 = load double, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %916 = fadd double %914, %915
  %917 = load double, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %918 = fadd double %916, %917
  %919 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %920 = fsub double %918, %919
  %921 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %922 = fmul double %920, %921
  store double %922, double* bitcast (%G_0x6020c8_type* @G_0x6020c8 to double*), align 8
  %923 = fadd double %922, %915
  %924 = fsub double %923, %917
  %925 = fadd double %924, %919
  %926 = fmul double %925, %921
  store double %926, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
  %927 = fsub double %922, %926
  %928 = fadd double %927, %917
  %929 = fadd double %928, %919
  %930 = fmul double %929, %921
  store double %930, double* bitcast (%G_0x6020d8_type* @G_0x6020d8 to double*), align 8
  %931 = bitcast double %922 to i64
  %932 = xor i64 %931, -9223372036854775808
  store i64 %932, i64* %RCX.i1209, align 8
  store i8 0, i8* %14, align 1
  %933 = trunc i64 %931 to i32
  %934 = and i32 %933, 255
  %935 = tail call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  store i8 %938, i8* %21, align 1
  %939 = icmp eq i64 %932, 0
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %29, align 1
  %941 = lshr i64 %932, 63
  %942 = trunc i64 %941 to i8
  store i8 %942, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %943 = bitcast i64 %932 to double
  %944 = fadd double %943, %926
  %945 = fadd double %944, %930
  %946 = load double, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %947 = fadd double %945, %946
  %948 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
  %949 = fmul double %947, %948
  store double %949, double* %303, align 1
  store i64 0, i64* %304, align 1
  store double %949, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %950 = load i64, i64* %RBP.i, align 8
  %951 = add i64 %950, -24
  %952 = add i64 %913, 243
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i64*
  %954 = load i64, i64* %953, align 8
  %955 = add i64 %954, 1
  store i64 %955, i64* %RAX.i1199, align 8
  %956 = icmp eq i64 %954, -1
  %957 = icmp eq i64 %955, 0
  %958 = or i1 %956, %957
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %14, align 1
  %960 = trunc i64 %955 to i32
  %961 = and i32 %960, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %21, align 1
  %966 = xor i64 %954, %955
  %967 = lshr i64 %966, 4
  %968 = trunc i64 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %26, align 1
  %970 = zext i1 %957 to i8
  store i8 %970, i8* %29, align 1
  %971 = lshr i64 %955, 63
  %972 = trunc i64 %971 to i8
  store i8 %972, i8* %32, align 1
  %973 = lshr i64 %954, 63
  %974 = xor i64 %971, %973
  %975 = add nuw nsw i64 %974, %971
  %976 = icmp eq i64 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %38, align 1
  %978 = add i64 %913, 251
  store i64 %978, i64* %3, align 8
  store i64 %955, i64* %953, align 8
  %979 = load i64, i64* %3, align 8
  %980 = add i64 %979, -265
  store i64 %980, i64* %3, align 8
  br label %block_.L_400b8c

block_.L_400c9a:                                  ; preds = %block_.L_400b8c
  %981 = add i64 %877, -176
  %982 = add i64 %913, 6
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RAX.i1199, align 8
  %986 = add i64 %877, -172
  %987 = add i64 %913, 12
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = sub i32 %984, %989
  %991 = icmp ult i32 %984, %989
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %14, align 1
  %993 = and i32 %990, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  %998 = xor i32 %989, %984
  %999 = xor i32 %998, %990
  %1000 = lshr i32 %999, 4
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  store i8 %1002, i8* %26, align 1
  %1003 = icmp eq i32 %990, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %29, align 1
  %1005 = lshr i32 %990, 31
  %1006 = trunc i32 %1005 to i8
  store i8 %1006, i8* %32, align 1
  %1007 = lshr i32 %984, 31
  %1008 = lshr i32 %989, 31
  %1009 = xor i32 %1008, %1007
  %1010 = xor i32 %1005, %1007
  %1011 = add nuw nsw i32 %1010, %1009
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %38, align 1
  %.v46 = select i1 %1003, i64 18, i64 71
  %1014 = add i64 %913, %.v46
  store i64 %1014, i64* %3, align 8
  br i1 %1003, label %block_400cac, label %block_.L_400ce1

block_400cac:                                     ; preds = %block_.L_400c9a
  %1015 = add i64 %1014, 4
  store i64 %1015, i64* %3, align 8
  %1016 = load i64, i64* %884, align 8
  store i64 %1016, i64* %RDI.i1206, align 8
  %1017 = add i64 %877, -48
  %1018 = add i64 %1014, 8
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i64*
  %1020 = load i64, i64* %1019, align 8
  store i64 %1020, i64* %RSI.i1110, align 8
  %1021 = add i64 %1014, 12
  store i64 %1021, i64* %3, align 8
  %1022 = load i64, i64* %884, align 8
  store i64 %1022, i64* %RDX.i1213, align 8
  %1023 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %1023, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1024 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %1024, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1025 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %1025, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1026 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %1027 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1026, i64* %1027, align 1
  store double 0.000000e+00, double* %317, align 1
  %1028 = add i64 %1014, 2292
  %1029 = add i64 %1014, 53
  %1030 = load i64, i64* %6, align 8
  %1031 = add i64 %1030, -8
  %1032 = inttoptr i64 %1031 to i64*
  store i64 %1029, i64* %1032, align 8
  store i64 %1031, i64* %6, align 8
  store i64 %1028, i64* %3, align 8
  %call2_400cdc = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1028, %struct.Memory* %MEMORY.6)
  %.pre11 = load i64, i64* %RBP.i, align 8
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_400ce1

block_.L_400ce1:                                  ; preds = %block_.L_400c9a, %block_400cac
  %1033 = phi i64 [ %1014, %block_.L_400c9a ], [ %.pre12, %block_400cac ]
  %1034 = phi i64 [ %877, %block_.L_400c9a ], [ %.pre11, %block_400cac ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.6, %block_.L_400c9a ], [ %call2_400cdc, %block_400cac ]
  %1035 = add i64 %1034, -24
  %1036 = add i64 %1033, 8
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  store i64 1, i64* %1037, align 8
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400ce9

block_.L_400ce9:                                  ; preds = %block_400cf7, %block_.L_400ce1
  %1038 = phi i64 [ %.pre13, %block_.L_400ce1 ], [ %1112, %block_400cf7 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.8, %block_.L_400ce1 ], [ %call2_400d01, %block_400cf7 ]
  %1039 = load i64, i64* %RBP.i, align 8
  %1040 = add i64 %1039, -24
  %1041 = add i64 %1038, 4
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i64*
  %1043 = load i64, i64* %1042, align 8
  store i64 %1043, i64* %RAX.i1199, align 8
  %1044 = add i64 %1039, -48
  %1045 = add i64 %1038, 8
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i64*
  %1047 = load i64, i64* %1046, align 8
  %1048 = sub i64 %1043, %1047
  %1049 = icmp ult i64 %1043, %1047
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %14, align 1
  %1051 = trunc i64 %1048 to i32
  %1052 = and i32 %1051, 255
  %1053 = tail call i32 @llvm.ctpop.i32(i32 %1052)
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %21, align 1
  %1057 = xor i64 %1047, %1043
  %1058 = xor i64 %1057, %1048
  %1059 = lshr i64 %1058, 4
  %1060 = trunc i64 %1059 to i8
  %1061 = and i8 %1060, 1
  store i8 %1061, i8* %26, align 1
  %1062 = icmp eq i64 %1048, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %29, align 1
  %1064 = lshr i64 %1048, 63
  %1065 = trunc i64 %1064 to i8
  store i8 %1065, i8* %32, align 1
  %1066 = lshr i64 %1043, 63
  %1067 = lshr i64 %1047, 63
  %1068 = xor i64 %1067, %1066
  %1069 = xor i64 %1064, %1066
  %1070 = add nuw nsw i64 %1069, %1068
  %1071 = icmp eq i64 %1070, 2
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %38, align 1
  %1073 = icmp ne i8 %1065, 0
  %1074 = xor i1 %1073, %1071
  %.demorgan47 = or i1 %1062, %1074
  %.v48 = select i1 %.demorgan47, i64 14, i64 46
  %1075 = add i64 %1038, %.v48
  store i64 %1075, i64* %3, align 8
  br i1 %.demorgan47, label %block_400cf7, label %block_.L_400d17

block_400cf7:                                     ; preds = %block_.L_400ce9
  store i64 ptrtoint (%G__0x6020c0_type* @G__0x6020c0 to i64), i64* %RDI.i1206, align 8
  %1076 = add i64 %1075, 2329
  %1077 = add i64 %1075, 15
  %1078 = load i64, i64* %6, align 8
  %1079 = add i64 %1078, -8
  %1080 = inttoptr i64 %1079 to i64*
  store i64 %1077, i64* %1080, align 8
  store i64 %1079, i64* %6, align 8
  store i64 %1076, i64* %3, align 8
  %call2_400d01 = tail call %struct.Memory* @sub_401610.PA(%struct.State* %0, i64 %1076, %struct.Memory* %MEMORY.9)
  %1081 = load i64, i64* %RBP.i, align 8
  %1082 = add i64 %1081, -24
  %1083 = load i64, i64* %3, align 8
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1082 to i64*
  %1086 = load i64, i64* %1085, align 8
  %1087 = add i64 %1086, 1
  store i64 %1087, i64* %RAX.i1199, align 8
  %1088 = icmp eq i64 %1086, -1
  %1089 = icmp eq i64 %1087, 0
  %1090 = or i1 %1088, %1089
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %14, align 1
  %1092 = trunc i64 %1087 to i32
  %1093 = and i32 %1092, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %21, align 1
  %1098 = xor i64 %1086, %1087
  %1099 = lshr i64 %1098, 4
  %1100 = trunc i64 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %26, align 1
  %1102 = zext i1 %1089 to i8
  store i8 %1102, i8* %29, align 1
  %1103 = lshr i64 %1087, 63
  %1104 = trunc i64 %1103 to i8
  store i8 %1104, i8* %32, align 1
  %1105 = lshr i64 %1086, 63
  %1106 = xor i64 %1103, %1105
  %1107 = add nuw nsw i64 %1106, %1103
  %1108 = icmp eq i64 %1107, 2
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %38, align 1
  %1110 = add i64 %1083, 12
  store i64 %1110, i64* %3, align 8
  store i64 %1087, i64* %1085, align 8
  %1111 = load i64, i64* %3, align 8
  %1112 = add i64 %1111, -41
  store i64 %1112, i64* %3, align 8
  br label %block_.L_400ce9

block_.L_400d17:                                  ; preds = %block_.L_400ce9
  %1113 = add i64 %1039, -176
  %1114 = add i64 %1075, 6
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  %1116 = load i32, i32* %1115, align 4
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RAX.i1199, align 8
  %1118 = add i64 %1039, -172
  %1119 = add i64 %1075, 12
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = sub i32 %1116, %1121
  %1123 = icmp ult i32 %1116, %1121
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %14, align 1
  %1125 = and i32 %1122, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %21, align 1
  %1130 = xor i32 %1121, %1116
  %1131 = xor i32 %1130, %1122
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %26, align 1
  %1135 = icmp eq i32 %1122, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %29, align 1
  %1137 = lshr i32 %1122, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %32, align 1
  %1139 = lshr i32 %1116, 31
  %1140 = lshr i32 %1121, 31
  %1141 = xor i32 %1140, %1139
  %1142 = xor i32 %1137, %1139
  %1143 = add nuw nsw i32 %1142, %1141
  %1144 = icmp eq i32 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %38, align 1
  %.v49 = select i1 %1135, i64 18, i64 71
  %1146 = add i64 %1075, %.v49
  store i64 %1146, i64* %3, align 8
  br i1 %1135, label %block_400d29, label %block_.L_400d5e

block_400d29:                                     ; preds = %block_.L_400d17
  %1147 = add i64 %1146, 4
  store i64 %1147, i64* %3, align 8
  %1148 = load i64, i64* %1046, align 8
  store i64 %1148, i64* %RDI.i1206, align 8
  %1149 = add i64 %1039, -40
  %1150 = add i64 %1146, 8
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i64*
  %1152 = load i64, i64* %1151, align 8
  store i64 %1152, i64* %RSI.i1110, align 8
  %1153 = add i64 %1146, 12
  store i64 %1153, i64* %3, align 8
  %1154 = load i64, i64* %1151, align 8
  store i64 %1154, i64* %RDX.i1213, align 8
  %1155 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %1155, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1156 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %1156, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1157 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %1157, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1158 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %1159 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1158, i64* %1159, align 1
  store double 0.000000e+00, double* %317, align 1
  %1160 = add i64 %1146, 2167
  %1161 = add i64 %1146, 53
  %1162 = load i64, i64* %6, align 8
  %1163 = add i64 %1162, -8
  %1164 = inttoptr i64 %1163 to i64*
  store i64 %1161, i64* %1164, align 8
  store i64 %1163, i64* %6, align 8
  store i64 %1160, i64* %3, align 8
  %call2_400d59 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1160, %struct.Memory* %MEMORY.9)
  %.pre14 = load i64, i64* %3, align 8
  %.pre15 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d5e

block_.L_400d5e:                                  ; preds = %block_.L_400d17, %block_400d29
  %1165 = phi i64 [ %1039, %block_.L_400d17 ], [ %.pre15, %block_400d29 ]
  %1166 = phi i64 [ %1146, %block_.L_400d17 ], [ %.pre14, %block_400d29 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_400d17 ], [ %call2_400d59, %block_400d29 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1167 = add i64 %1165, -24
  %1168 = add i64 %1166, 19
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i64*
  store i64 1, i64* %1169, align 8
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_400d71

block_.L_400d71:                                  ; preds = %block_.L_400dfa, %block_.L_400d5e
  %1170 = phi i64 [ %1293, %block_.L_400dfa ], [ %.pre16, %block_.L_400d5e ]
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -24
  %1173 = add i64 %1170, 4
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i64*
  %1175 = load i64, i64* %1174, align 8
  store i64 %1175, i64* %RAX.i1199, align 8
  %1176 = add i64 %1171, -56
  %1177 = add i64 %1170, 8
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i64*
  %1179 = load i64, i64* %1178, align 8
  %1180 = sub i64 %1175, %1179
  %1181 = icmp ult i64 %1175, %1179
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %14, align 1
  %1183 = trunc i64 %1180 to i32
  %1184 = and i32 %1183, 255
  %1185 = tail call i32 @llvm.ctpop.i32(i32 %1184)
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  store i8 %1188, i8* %21, align 1
  %1189 = xor i64 %1179, %1175
  %1190 = xor i64 %1189, %1180
  %1191 = lshr i64 %1190, 4
  %1192 = trunc i64 %1191 to i8
  %1193 = and i8 %1192, 1
  store i8 %1193, i8* %26, align 1
  %1194 = icmp eq i64 %1180, 0
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %29, align 1
  %1196 = lshr i64 %1180, 63
  %1197 = trunc i64 %1196 to i8
  store i8 %1197, i8* %32, align 1
  %1198 = lshr i64 %1175, 63
  %1199 = lshr i64 %1179, 63
  %1200 = xor i64 %1199, %1198
  %1201 = xor i64 %1196, %1198
  %1202 = add nuw nsw i64 %1201, %1200
  %1203 = icmp eq i64 %1202, 2
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %38, align 1
  %1205 = icmp ne i8 %1197, 0
  %1206 = xor i1 %1205, %1203
  %.demorgan50 = or i1 %1194, %1206
  %.v51 = select i1 %.demorgan50, i64 14, i64 159
  %1207 = add i64 %1170, %.v51
  store i64 %1207, i64* %3, align 8
  br i1 %.demorgan50, label %block_400d7f, label %block_.L_400e10

block_400d7f:                                     ; preds = %block_.L_400d71
  %1208 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1209 = add i32 %1208, -1
  %1210 = icmp eq i32 %1208, 0
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %14, align 1
  %1212 = and i32 %1209, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %21, align 1
  %1217 = xor i32 %1208, %1209
  %1218 = lshr i32 %1217, 4
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %26, align 1
  %1221 = icmp eq i32 %1209, 0
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %29, align 1
  %1223 = lshr i32 %1209, 31
  %1224 = trunc i32 %1223 to i8
  store i8 %1224, i8* %32, align 1
  %1225 = lshr i32 %1208, 31
  %1226 = xor i32 %1223, %1225
  %1227 = add nuw nsw i32 %1226, %1225
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %38, align 1
  %.v52 = select i1 %1221, i64 14, i64 30
  %1230 = add i64 %1207, %.v52
  %1231 = add i64 %1230, 11
  store i64 %1231, i64* %3, align 8
  br i1 %1221, label %block_400d8d, label %block_.L_400d9d

block_400d8d:                                     ; preds = %block_400d7f
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1232 = add i64 %1230, 27
  store i64 %1232, i64* %3, align 8
  br label %block_.L_400da8

block_.L_400d9d:                                  ; preds = %block_400d7f
  store i32 3, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400da8

block_.L_400da8:                                  ; preds = %block_.L_400d9d, %block_400d8d
  %1233 = phi i32 [ 1, %block_.L_400d9d ], [ 0, %block_400d8d ]
  %1234 = phi i64 [ %1231, %block_.L_400d9d ], [ %1232, %block_400d8d ]
  store i8 0, i8* %14, align 1
  %1235 = tail call i32 @llvm.ctpop.i32(i32 %1233)
  %1236 = trunc i32 %1235 to i8
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1238 = icmp eq i32 %1233, 0
  %1239 = trunc i32 %1233 to i8
  %1240 = xor i8 %1239, 1
  store i8 %1240, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v53 = select i1 %1238, i64 30, i64 14
  %1241 = add i64 %1234, %.v53
  %1242 = add i64 %1241, 11
  store i64 %1242, i64* %3, align 8
  br i1 %1238, label %block_.L_400dc6, label %block_400db6

block_400db6:                                     ; preds = %block_.L_400da8
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1243 = add i64 %1241, 27
  store i64 %1243, i64* %3, align 8
  br label %block_.L_400dd1

block_.L_400dc6:                                  ; preds = %block_.L_400da8
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400dd1

block_.L_400dd1:                                  ; preds = %block_.L_400dc6, %block_400db6
  %1244 = phi i32 [ 1, %block_.L_400dc6 ], [ 0, %block_400db6 ]
  %1245 = phi i64 [ %1242, %block_.L_400dc6 ], [ %1243, %block_400db6 ]
  %1246 = add nsw i32 %1244, -1
  %1247 = trunc i32 %1244 to i8
  %1248 = xor i8 %1247, 1
  store i8 %1248, i8* %14, align 1
  %1249 = and i32 %1246, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %21, align 1
  %1254 = lshr i32 %1246, 4
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  store i8 %1256, i8* %26, align 1
  %1257 = icmp eq i32 %1246, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %29, align 1
  %1259 = lshr i32 %1246, 31
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1261 = icmp ne i8 %1260, 0
  %.v54 = select i1 %1261, i64 14, i64 30
  %1262 = add i64 %1245, %.v54
  %1263 = add i64 %1262, 11
  store i64 %1263, i64* %3, align 8
  br i1 %1261, label %block_400ddf, label %block_.L_400def

block_400ddf:                                     ; preds = %block_.L_400dd1
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1264 = add i64 %1262, 27
  store i64 %1264, i64* %3, align 8
  br label %block_.L_400dfa

block_.L_400def:                                  ; preds = %block_.L_400dd1
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400dfa

block_.L_400dfa:                                  ; preds = %block_.L_400def, %block_400ddf
  %1265 = phi i64 [ %1263, %block_.L_400def ], [ %1264, %block_400ddf ]
  %1266 = add i64 %1265, 9
  store i64 %1266, i64* %3, align 8
  %1267 = load i64, i64* %1174, align 8
  %1268 = add i64 %1267, 1
  store i64 %1268, i64* %RAX.i1199, align 8
  %1269 = icmp eq i64 %1267, -1
  %1270 = icmp eq i64 %1268, 0
  %1271 = or i1 %1269, %1270
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %14, align 1
  %1273 = trunc i64 %1268 to i32
  %1274 = and i32 %1273, 255
  %1275 = tail call i32 @llvm.ctpop.i32(i32 %1274)
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = xor i8 %1277, 1
  store i8 %1278, i8* %21, align 1
  %1279 = xor i64 %1267, %1268
  %1280 = lshr i64 %1279, 4
  %1281 = trunc i64 %1280 to i8
  %1282 = and i8 %1281, 1
  store i8 %1282, i8* %26, align 1
  %1283 = zext i1 %1270 to i8
  store i8 %1283, i8* %29, align 1
  %1284 = lshr i64 %1268, 63
  %1285 = trunc i64 %1284 to i8
  store i8 %1285, i8* %32, align 1
  %1286 = lshr i64 %1267, 63
  %1287 = xor i64 %1284, %1286
  %1288 = add nuw nsw i64 %1287, %1284
  %1289 = icmp eq i64 %1288, 2
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %38, align 1
  %1291 = add i64 %1265, 17
  store i64 %1291, i64* %3, align 8
  store i64 %1268, i64* %1174, align 8
  %1292 = load i64, i64* %3, align 8
  %1293 = add i64 %1292, -154
  store i64 %1293, i64* %3, align 8
  br label %block_.L_400d71

block_.L_400e10:                                  ; preds = %block_.L_400d71
  %1294 = add i64 %1171, -176
  %1295 = add i64 %1207, 6
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RAX.i1199, align 8
  %1299 = add i64 %1171, -172
  %1300 = add i64 %1207, 12
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = sub i32 %1297, %1302
  %1304 = icmp ult i32 %1297, %1302
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %14, align 1
  %1306 = and i32 %1303, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %21, align 1
  %1311 = xor i32 %1302, %1297
  %1312 = xor i32 %1311, %1303
  %1313 = lshr i32 %1312, 4
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %26, align 1
  %1316 = icmp eq i32 %1303, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %29, align 1
  %1318 = lshr i32 %1303, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %32, align 1
  %1320 = lshr i32 %1297, 31
  %1321 = lshr i32 %1302, 31
  %1322 = xor i32 %1321, %1320
  %1323 = xor i32 %1318, %1320
  %1324 = add nuw nsw i32 %1323, %1322
  %1325 = icmp eq i32 %1324, 2
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %38, align 1
  %.v55 = select i1 %1316, i64 18, i64 66
  %1327 = add i64 %1207, %.v55
  store i64 %1327, i64* %3, align 8
  br i1 %1316, label %block_400e22, label %block_.L_400e52

block_400e22:                                     ; preds = %block_.L_400e10
  %1328 = add i64 %1327, 4
  store i64 %1328, i64* %3, align 8
  %1329 = load i64, i64* %1178, align 8
  store i64 %1329, i64* %RDI.i1206, align 8
  %1330 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1331 = sext i32 %1330 to i64
  store i64 %1331, i64* %RSI.i1110, align 8
  store i64 %1331, i64* %RDX.i1213, align 8
  %1332 = add i64 %1171, -112
  %1333 = add i64 %1327, 25
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i64*
  %1335 = load i64, i64* %1334, align 8
  store i64 %1335, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1336 = add i64 %1171, -120
  %1337 = add i64 %1327, 30
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i64*
  %1339 = load i64, i64* %1338, align 8
  store i64 %1339, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1340 = add i64 %1171, -128
  %1341 = add i64 %1327, 35
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i64*
  %1343 = load i64, i64* %1342, align 8
  store i64 %1343, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1344 = add i64 %1171, -136
  %1345 = add i64 %1327, 43
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i64*
  %1347 = load i64, i64* %1346, align 8
  %1348 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1347, i64* %1348, align 1
  store double 0.000000e+00, double* %317, align 1
  %1349 = add i64 %1327, 1918
  %1350 = add i64 %1327, 48
  %1351 = load i64, i64* %6, align 8
  %1352 = add i64 %1351, -8
  %1353 = inttoptr i64 %1352 to i64*
  store i64 %1350, i64* %1353, align 8
  store i64 %1352, i64* %6, align 8
  store i64 %1349, i64* %3, align 8
  %call2_400e4d = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1349, %struct.Memory* %MEMORY.10)
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400e52

block_.L_400e52:                                  ; preds = %block_.L_400e10, %block_400e22
  %1354 = phi i64 [ %1171, %block_.L_400e10 ], [ %.pre18, %block_400e22 ]
  %1355 = phi i64 [ %1327, %block_.L_400e10 ], [ %.pre17, %block_400e22 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.10, %block_.L_400e10 ], [ %call2_400e4d, %block_400e22 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1356 = add i64 %1354, -24
  %1357 = add i64 %1355, 41
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i64*
  store i64 1, i64* %1358, align 8
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_400e7b

block_.L_400e7b:                                  ; preds = %block_400e89, %block_.L_400e52
  %1359 = phi i64 [ %1504, %block_400e89 ], [ %.pre19, %block_.L_400e52 ]
  %1360 = load i64, i64* %RBP.i, align 8
  %1361 = add i64 %1360, -24
  %1362 = add i64 %1359, 4
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i64*
  %1364 = load i64, i64* %1363, align 8
  store i64 %1364, i64* %RAX.i1199, align 8
  %1365 = add i64 %1360, -64
  %1366 = add i64 %1359, 8
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i64*
  %1368 = load i64, i64* %1367, align 8
  %1369 = sub i64 %1364, %1368
  %1370 = icmp ult i64 %1364, %1368
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %14, align 1
  %1372 = trunc i64 %1369 to i32
  %1373 = and i32 %1372, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %21, align 1
  %1378 = xor i64 %1368, %1364
  %1379 = xor i64 %1378, %1369
  %1380 = lshr i64 %1379, 4
  %1381 = trunc i64 %1380 to i8
  %1382 = and i8 %1381, 1
  store i8 %1382, i8* %26, align 1
  %1383 = icmp eq i64 %1369, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %29, align 1
  %1385 = lshr i64 %1369, 63
  %1386 = trunc i64 %1385 to i8
  store i8 %1386, i8* %32, align 1
  %1387 = lshr i64 %1364, 63
  %1388 = lshr i64 %1368, 63
  %1389 = xor i64 %1388, %1387
  %1390 = xor i64 %1385, %1387
  %1391 = add nuw nsw i64 %1390, %1389
  %1392 = icmp eq i64 %1391, 2
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %38, align 1
  %1394 = icmp ne i8 %1386, 0
  %1395 = xor i1 %1394, %1392
  %.demorgan56 = or i1 %1383, %1395
  %.v57 = select i1 %.demorgan56, i64 14, i64 259
  %1396 = add i64 %1359, %.v57
  store i64 %1396, i64* %3, align 8
  br i1 %.demorgan56, label %block_400e89, label %block_.L_400f7e

block_400e89:                                     ; preds = %block_.L_400e7b
  %1397 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1398 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1399 = sub i32 %1398, %1397
  %1400 = sext i32 %1397 to i64
  %1401 = sext i32 %1399 to i64
  %1402 = mul nsw i64 %1401, %1400
  %1403 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1404 = sub i32 %1403, %1398
  %1405 = shl i64 %1402, 32
  %1406 = ashr exact i64 %1405, 32
  %1407 = sext i32 %1404 to i64
  %1408 = mul nsw i64 %1407, %1406
  %1409 = trunc i64 %1408 to i32
  store i32 %1409, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1410 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1411 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1412 = sub i32 %1409, %1411
  %1413 = add i32 %1403, %1412
  %1414 = mul i32 %1410, %1413
  store i32 %1414, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1415 = sub i32 %1411, %1414
  %1416 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1417 = add i32 %1416, %1414
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RCX.i1209, align 8
  %1419 = sext i32 %1415 to i64
  %1420 = sext i32 %1417 to i64
  %1421 = mul nsw i64 %1420, %1419
  %1422 = trunc i64 %1421 to i32
  store i32 %1422, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1423 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1424 = add i32 %1423, %1416
  %1425 = add i32 %1422, %1424
  %1426 = sitofp i32 %1425 to double
  %1427 = shl i64 %1421, 32
  %1428 = add i64 %1427, -4294967296
  %1429 = ashr exact i64 %1428, 29
  %1430 = add nsw i64 %1429, 6299840
  %1431 = add i64 %1396, 179
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to double*
  store double %1426, double* %1432, align 8
  %1433 = load i64, i64* %3, align 8
  %1434 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1435 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1436 = sext i32 %1434 to i64
  %1437 = sext i32 %1435 to i64
  %1438 = mul nsw i64 %1437, %1436
  %1439 = load i32, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1440 = shl i64 %1438, 32
  %1441 = ashr exact i64 %1440, 32
  %1442 = sext i32 %1439 to i64
  %1443 = mul nsw i64 %1442, %1441
  %1444 = trunc i64 %1443 to i32
  %1445 = sitofp i32 %1444 to double
  store double %1445, double* %303, align 1
  %1446 = add i32 %1435, -1
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RAX.i1199, align 8
  %1448 = icmp eq i32 %1435, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %14, align 1
  %1450 = and i32 %1446, 255
  %1451 = tail call i32 @llvm.ctpop.i32(i32 %1450)
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  store i8 %1454, i8* %21, align 1
  %1455 = xor i32 %1435, %1446
  %1456 = lshr i32 %1455, 4
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  store i8 %1458, i8* %26, align 1
  %1459 = icmp eq i32 %1446, 0
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %29, align 1
  %1461 = lshr i32 %1446, 31
  %1462 = trunc i32 %1461 to i8
  store i8 %1462, i8* %32, align 1
  %1463 = lshr i32 %1435, 31
  %1464 = xor i32 %1461, %1463
  %1465 = add nuw nsw i32 %1464, %1463
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %38, align 1
  %1468 = sext i32 %1446 to i64
  store i64 %1468, i64* %RDX.i1213, align 8
  %1469 = shl nsw i64 %1468, 3
  %1470 = add nsw i64 %1469, 6299840
  %1471 = add i64 %1433, 49
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to double*
  store double %1445, double* %1472, align 8
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -24
  %1475 = load i64, i64* %3, align 8
  %1476 = add i64 %1475, 4
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1474 to i64*
  %1478 = load i64, i64* %1477, align 8
  %1479 = add i64 %1478, 1
  store i64 %1479, i64* %RAX.i1199, align 8
  %1480 = icmp eq i64 %1478, -1
  %1481 = icmp eq i64 %1479, 0
  %1482 = or i1 %1480, %1481
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %14, align 1
  %1484 = trunc i64 %1479 to i32
  %1485 = and i32 %1484, 255
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485)
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %21, align 1
  %1490 = xor i64 %1478, %1479
  %1491 = lshr i64 %1490, 4
  %1492 = trunc i64 %1491 to i8
  %1493 = and i8 %1492, 1
  store i8 %1493, i8* %26, align 1
  %1494 = zext i1 %1481 to i8
  store i8 %1494, i8* %29, align 1
  %1495 = lshr i64 %1479, 63
  %1496 = trunc i64 %1495 to i8
  store i8 %1496, i8* %32, align 1
  %1497 = lshr i64 %1478, 63
  %1498 = xor i64 %1495, %1497
  %1499 = add nuw nsw i64 %1498, %1495
  %1500 = icmp eq i64 %1499, 2
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %38, align 1
  %1502 = add i64 %1475, 12
  store i64 %1502, i64* %3, align 8
  store i64 %1479, i64* %1477, align 8
  %1503 = load i64, i64* %3, align 8
  %1504 = add i64 %1503, -254
  store i64 %1504, i64* %3, align 8
  br label %block_.L_400e7b

block_.L_400f7e:                                  ; preds = %block_.L_400e7b
  %1505 = add i64 %1360, -176
  %1506 = add i64 %1396, 6
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RAX.i1199, align 8
  %1510 = add i64 %1360, -172
  %1511 = add i64 %1396, 12
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i32*
  %1513 = load i32, i32* %1512, align 4
  %1514 = sub i32 %1508, %1513
  %1515 = icmp ult i32 %1508, %1513
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %14, align 1
  %1517 = and i32 %1514, 255
  %1518 = tail call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %21, align 1
  %1522 = xor i32 %1513, %1508
  %1523 = xor i32 %1522, %1514
  %1524 = lshr i32 %1523, 4
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  store i8 %1526, i8* %26, align 1
  %1527 = icmp eq i32 %1514, 0
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %29, align 1
  %1529 = lshr i32 %1514, 31
  %1530 = trunc i32 %1529 to i8
  store i8 %1530, i8* %32, align 1
  %1531 = lshr i32 %1508, 31
  %1532 = lshr i32 %1513, 31
  %1533 = xor i32 %1532, %1531
  %1534 = xor i32 %1529, %1531
  %1535 = add nuw nsw i32 %1534, %1533
  %1536 = icmp eq i32 %1535, 2
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %38, align 1
  %.v58 = select i1 %1527, i64 18, i64 79
  %1538 = add i64 %1396, %.v58
  store i64 %1538, i64* %3, align 8
  br i1 %1527, label %block_400f90, label %block_.L_400fcd

block_400f90:                                     ; preds = %block_.L_400f7e
  %1539 = add i64 %1538, 4
  store i64 %1539, i64* %3, align 8
  %1540 = load i64, i64* %1367, align 8
  store i64 %1540, i64* %RDI.i1206, align 8
  %1541 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1542 = sext i32 %1541 to i64
  store i64 %1542, i64* %RSI.i1110, align 8
  %1543 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1544 = sext i32 %1543 to i64
  store i64 %1544, i64* %RDX.i1213, align 8
  %1545 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %1545, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1546 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %1546, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1547 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %1547, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1548 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %1549 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1548, i64* %1549, align 1
  store double 0.000000e+00, double* %317, align 1
  %1550 = add i64 %1538, 1552
  %1551 = add i64 %1538, 61
  %1552 = load i64, i64* %6, align 8
  %1553 = add i64 %1552, -8
  %1554 = inttoptr i64 %1553 to i64*
  store i64 %1551, i64* %1554, align 8
  store i64 %1553, i64* %6, align 8
  store i64 %1550, i64* %3, align 8
  %call2_400fc8 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1550, %struct.Memory* %MEMORY.15)
  %.pre20 = load i64, i64* %3, align 8
  %.pre21 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400fcd

block_.L_400fcd:                                  ; preds = %block_.L_400f7e, %block_400f90
  %1555 = phi i64 [ %1360, %block_.L_400f7e ], [ %.pre21, %block_400f90 ]
  %1556 = phi i64 [ %1538, %block_.L_400f7e ], [ %.pre20, %block_400f90 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_.L_400f7e ], [ %call2_400fc8, %block_400f90 ]
  %1557 = load i64, i64* bitcast (%G_0x90b__rip__4198357__type* @G_0x90b__rip__4198357_ to i64*), align 8
  store i64 %1557, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1558 = add i64 %1555, -144
  %1559 = add i64 %1556, 16
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i64*
  store i64 %1557, i64* %1560, align 8
  %1561 = load i64, i64* %RBP.i, align 8
  %1562 = add i64 %1561, -152
  %1563 = load i64, i64* %3, align 8
  %1564 = add i64 %1563, 8
  store i64 %1564, i64* %3, align 8
  %1565 = load i64, i64* %314, align 1
  %1566 = inttoptr i64 %1562 to i64*
  store i64 %1565, i64* %1566, align 8
  %1567 = load i64, i64* %RBP.i, align 8
  %1568 = add i64 %1567, -24
  %1569 = load i64, i64* %3, align 8
  %1570 = add i64 %1569, 8
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1568 to i64*
  store i64 1, i64* %1571, align 8
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_400fed

block_.L_400fed:                                  ; preds = %block_400ffb, %block_.L_400fcd
  %1572 = phi i64 [ %.pre22, %block_.L_400fcd ], [ %1934, %block_400ffb ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400fcd ], [ %call2_4011ba, %block_400ffb ]
  %1573 = load i64, i64* %RBP.i, align 8
  %1574 = add i64 %1573, -24
  %1575 = add i64 %1572, 4
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to i64*
  %1577 = load i64, i64* %1576, align 8
  store i64 %1577, i64* %RAX.i1199, align 8
  %1578 = add i64 %1573, -72
  %1579 = add i64 %1572, 8
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to i64*
  %1581 = load i64, i64* %1580, align 8
  %1582 = sub i64 %1577, %1581
  %1583 = icmp ult i64 %1577, %1581
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %14, align 1
  %1585 = trunc i64 %1582 to i32
  %1586 = and i32 %1585, 255
  %1587 = tail call i32 @llvm.ctpop.i32(i32 %1586)
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %21, align 1
  %1591 = xor i64 %1581, %1577
  %1592 = xor i64 %1591, %1582
  %1593 = lshr i64 %1592, 4
  %1594 = trunc i64 %1593 to i8
  %1595 = and i8 %1594, 1
  store i8 %1595, i8* %26, align 1
  %1596 = icmp eq i64 %1582, 0
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %29, align 1
  %1598 = lshr i64 %1582, 63
  %1599 = trunc i64 %1598 to i8
  store i8 %1599, i8* %32, align 1
  %1600 = lshr i64 %1577, 63
  %1601 = lshr i64 %1581, 63
  %1602 = xor i64 %1601, %1600
  %1603 = xor i64 %1598, %1600
  %1604 = add nuw nsw i64 %1603, %1602
  %1605 = icmp eq i64 %1604, 2
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %38, align 1
  %1607 = icmp ne i8 %1599, 0
  %1608 = xor i1 %1607, %1605
  %.demorgan59 = or i1 %1596, %1608
  %.v60 = select i1 %.demorgan59, i64 14, i64 503
  %1609 = add i64 %1572, %.v60
  store i64 %1609, i64* %3, align 8
  br i1 %.demorgan59, label %block_400ffb, label %block_.L_4011e4

block_400ffb:                                     ; preds = %block_.L_400fed
  %1610 = load i64, i64* bitcast (%G_0x8d5__rip__4198403__type* @G_0x8d5__rip__4198403_ to i64*), align 8
  store i64 %1610, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1611 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  store i64 %1611, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1612 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  store i64 %1612, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1613 = add i64 %1573, -144
  %1614 = add i64 %1609, 34
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to i64*
  %1616 = load i64, i64* %1615, align 8
  %1617 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1616, i64* %1617, align 1
  store double 0.000000e+00, double* %317, align 1
  %1618 = add i64 %1573, -224
  %1619 = add i64 %1609, 42
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i64*
  store i64 %1610, i64* %1620, align 8
  %1621 = load i64, i64* %3, align 8
  %1622 = load <2 x i32>, <2 x i32>* %318, align 1
  %1623 = load <2 x i32>, <2 x i32>* %319, align 1
  %1624 = extractelement <2 x i32> %1622, i32 0
  store i32 %1624, i32* %320, align 1
  %1625 = extractelement <2 x i32> %1622, i32 1
  store i32 %1625, i32* %322, align 1
  %1626 = extractelement <2 x i32> %1623, i32 0
  store i32 %1626, i32* %323, align 1
  %1627 = extractelement <2 x i32> %1623, i32 1
  store i32 %1627, i32* %325, align 1
  %1628 = load i64, i64* %RBP.i, align 8
  %1629 = add i64 %1628, -232
  %1630 = add i64 %1621, 11
  store i64 %1630, i64* %3, align 8
  %1631 = load i64, i64* %355, align 1
  %1632 = inttoptr i64 %1629 to i64*
  store i64 %1631, i64* %1632, align 8
  %1633 = load i64, i64* %RBP.i, align 8
  %1634 = add i64 %1633, -240
  %1635 = load i64, i64* %3, align 8
  %1636 = add i64 %1635, 8
  store i64 %1636, i64* %3, align 8
  %1637 = load i64, i64* %353, align 1
  %1638 = inttoptr i64 %1634 to i64*
  store i64 %1637, i64* %1638, align 8
  %1639 = load i64, i64* %3, align 8
  %1640 = add i64 %1639, -2360
  %1641 = add i64 %1639, 5
  %1642 = load i64, i64* %6, align 8
  %1643 = add i64 %1642, -8
  %1644 = inttoptr i64 %1643 to i64*
  store i64 %1641, i64* %1644, align 8
  store i64 %1643, i64* %6, align 8
  store i64 %1640, i64* %3, align 8
  %call2_401038 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1640, %struct.Memory* %MEMORY.18)
  %1645 = load i64, i64* %RBP.i, align 8
  %1646 = add i64 %1645, -232
  %1647 = load i64, i64* %3, align 8
  %1648 = add i64 %1647, 8
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1646 to double*
  %1650 = load double, double* %1649, align 8
  %1651 = load double, double* %303, align 1
  %1652 = fmul double %1650, %1651
  store double %1652, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1653 = add i64 %1645, -144
  %1654 = add i64 %1647, 20
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i64*
  %1656 = load i64, i64* %1655, align 8
  store i64 %1656, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1657 = add i64 %1645, -248
  %1658 = add i64 %1647, 28
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to double*
  store double %1652, double* %1659, align 8
  %1660 = load i64, i64* %3, align 8
  %1661 = add i64 %1660, -2457
  %1662 = add i64 %1660, 5
  %1663 = load i64, i64* %6, align 8
  %1664 = add i64 %1663, -8
  %1665 = inttoptr i64 %1664 to i64*
  store i64 %1662, i64* %1665, align 8
  store i64 %1664, i64* %6, align 8
  store i64 %1661, i64* %3, align 8
  %call2_401059 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1661, %struct.Memory* %call2_401038)
  %1666 = load i64, i64* %RBP.i, align 8
  %1667 = add i64 %1666, -248
  %1668 = load i64, i64* %3, align 8
  %1669 = add i64 %1668, 8
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1667 to double*
  %1671 = load double, double* %1670, align 8
  %1672 = load double, double* %303, align 1
  %1673 = fmul double %1671, %1672
  store double %1673, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1674 = add i64 %1666, -144
  %1675 = add i64 %1668, 20
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to double*
  %1677 = load double, double* %1676, align 8
  store double %1677, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1678 = add i64 %1666, -152
  %1679 = add i64 %1668, 28
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to double*
  %1681 = load double, double* %1680, align 8
  %1682 = fadd double %1677, %1681
  store double %1682, double* %303, align 1
  store i64 0, i64* %304, align 1
  %1683 = add i64 %1666, -256
  %1684 = add i64 %1668, 36
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to double*
  store double %1673, double* %1685, align 8
  %1686 = load i64, i64* %3, align 8
  %1687 = add i64 %1686, -2498
  %1688 = add i64 %1686, 5
  %1689 = load i64, i64* %6, align 8
  %1690 = add i64 %1689, -8
  %1691 = inttoptr i64 %1690 to i64*
  store i64 %1688, i64* %1691, align 8
  store i64 %1690, i64* %6, align 8
  store i64 %1687, i64* %3, align 8
  %call2_401082 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1687, %struct.Memory* %call2_401059)
  %1692 = load i64, i64* %RBP.i, align 8
  %1693 = add i64 %1692, -144
  %1694 = load i64, i64* %3, align 8
  %1695 = add i64 %1694, 8
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1693 to double*
  %1697 = load double, double* %1696, align 8
  store double %1697, double* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1698 = add i64 %1692, -152
  %1699 = add i64 %1694, 16
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to double*
  %1701 = load double, double* %1700, align 8
  %1702 = fsub double %1697, %1701
  store double %1702, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1703 = add i64 %1692, -264
  %1704 = add i64 %1694, 24
  store i64 %1704, i64* %3, align 8
  %1705 = load i64, i64* %314, align 1
  %1706 = inttoptr i64 %1703 to i64*
  store i64 %1705, i64* %1706, align 8
  %1707 = load i64, i64* %3, align 8
  %1708 = load <2 x i32>, <2 x i32>* %326, align 1
  %1709 = load <2 x i32>, <2 x i32>* %327, align 1
  %1710 = extractelement <2 x i32> %1708, i32 0
  store i32 %1710, i32* %320, align 1
  %1711 = extractelement <2 x i32> %1708, i32 1
  store i32 %1711, i32* %322, align 1
  %1712 = extractelement <2 x i32> %1709, i32 0
  store i32 %1712, i32* %323, align 1
  %1713 = extractelement <2 x i32> %1709, i32 1
  store i32 %1713, i32* %325, align 1
  %1714 = add i64 %1707, -2527
  %1715 = add i64 %1707, 8
  %1716 = load i64, i64* %6, align 8
  %1717 = add i64 %1716, -8
  %1718 = inttoptr i64 %1717 to i64*
  store i64 %1715, i64* %1718, align 8
  store i64 %1717, i64* %6, align 8
  store i64 %1714, i64* %3, align 8
  %call2_4010a2 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1714, %struct.Memory* %call2_401082)
  %1719 = load i64, i64* %RBP.i, align 8
  %1720 = add i64 %1719, -264
  %1721 = load i64, i64* %3, align 8
  %1722 = add i64 %1721, 8
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1720 to double*
  %1724 = load double, double* %1723, align 8
  %1725 = load double, double* %303, align 1
  %1726 = fadd double %1724, %1725
  store double %1726, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1727 = add i64 %1719, -224
  %1728 = add i64 %1721, 20
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to double*
  %1730 = load double, double* %1729, align 8
  store double %1730, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1731 = fsub double %1726, %1730
  store double %1731, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1732 = add i64 %1719, -256
  %1733 = add i64 %1721, 32
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to double*
  %1735 = load double, double* %1734, align 8
  %1736 = fdiv double %1735, %1731
  store double %1736, double* %311, align 1
  store i64 0, i64* %312, align 1
  %1737 = bitcast double %1736 to <2 x i32>
  %1738 = extractelement <2 x i32> %1737, i32 0
  store i32 %1738, i32* %320, align 1
  %1739 = extractelement <2 x i32> %1737, i32 1
  store i32 %1739, i32* %322, align 1
  store i32 0, i32* %323, align 1
  store i32 0, i32* %325, align 1
  %1740 = add i64 %1721, -2583
  %1741 = add i64 %1721, 44
  %1742 = load i64, i64* %6, align 8
  %1743 = add i64 %1742, -8
  %1744 = inttoptr i64 %1743 to i64*
  store i64 %1741, i64* %1744, align 8
  store i64 %1743, i64* %6, align 8
  store i64 %1740, i64* %3, align 8
  %call2_4010ce = tail call %struct.Memory* @ext_atan(%struct.State* %0, i64 %1740, %struct.Memory* %call2_4010a2)
  %1745 = load i64, i64* %3, align 8
  %1746 = load i64, i64* bitcast (%G_0x7fd__rip__4198619__type* @G_0x7fd__rip__4198619_ to i64*), align 8
  store i64 %1746, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1747 = load i64, i64* %RBP.i, align 8
  %1748 = add i64 %1747, -240
  %1749 = add i64 %1745, 16
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to double*
  %1751 = load double, double* %1750, align 8
  %1752 = load double, double* %303, align 1
  %1753 = fmul double %1751, %1752
  %1754 = add i64 %1747, -144
  %1755 = add i64 %1745, 28
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1754 to double*
  store double %1753, double* %1756, align 8
  %1757 = load i64, i64* %3, align 8
  %1758 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  store i64 %1758, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1759 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  store i64 %1759, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1760 = load i64, i64* %RBP.i, align 8
  %1761 = add i64 %1760, -152
  %1762 = add i64 %1757, 26
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i64*
  %1764 = load i64, i64* %1763, align 8
  store i64 %1764, i64* %1617, align 1
  store double 0.000000e+00, double* %317, align 1
  %1765 = add i64 %1760, -272
  %1766 = add i64 %1757, 34
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i64*
  store i64 %1758, i64* %1767, align 8
  %1768 = load i64, i64* %3, align 8
  %1769 = load <2 x i32>, <2 x i32>* %318, align 1
  %1770 = load <2 x i32>, <2 x i32>* %319, align 1
  %1771 = extractelement <2 x i32> %1769, i32 0
  store i32 %1771, i32* %320, align 1
  %1772 = extractelement <2 x i32> %1769, i32 1
  store i32 %1772, i32* %322, align 1
  %1773 = extractelement <2 x i32> %1770, i32 0
  store i32 %1773, i32* %323, align 1
  %1774 = extractelement <2 x i32> %1770, i32 1
  store i32 %1774, i32* %325, align 1
  %1775 = load i64, i64* %RBP.i, align 8
  %1776 = add i64 %1775, -280
  %1777 = add i64 %1768, 11
  store i64 %1777, i64* %3, align 8
  %1778 = load i64, i64* %353, align 1
  %1779 = inttoptr i64 %1776 to i64*
  store i64 %1778, i64* %1779, align 8
  %1780 = load i64, i64* %RBP.i, align 8
  %1781 = add i64 %1780, -288
  %1782 = load i64, i64* %3, align 8
  %1783 = add i64 %1782, 8
  store i64 %1783, i64* %3, align 8
  %1784 = load i64, i64* %355, align 1
  %1785 = inttoptr i64 %1781 to i64*
  store i64 %1784, i64* %1785, align 8
  %1786 = load i64, i64* %3, align 8
  %1787 = add i64 %1786, -2596
  %1788 = add i64 %1786, 5
  %1789 = load i64, i64* %6, align 8
  %1790 = add i64 %1789, -8
  %1791 = inttoptr i64 %1790 to i64*
  store i64 %1788, i64* %1791, align 8
  store i64 %1790, i64* %6, align 8
  store i64 %1787, i64* %3, align 8
  %call2_401124 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1787, %struct.Memory* %call2_4010ce)
  %1792 = load i64, i64* %RBP.i, align 8
  %1793 = add i64 %1792, -288
  %1794 = load i64, i64* %3, align 8
  %1795 = add i64 %1794, 8
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1793 to double*
  %1797 = load double, double* %1796, align 8
  %1798 = load double, double* %303, align 1
  %1799 = fmul double %1797, %1798
  store double %1799, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1800 = add i64 %1792, -152
  %1801 = add i64 %1794, 20
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1804 = add i64 %1792, -296
  %1805 = add i64 %1794, 28
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to double*
  store double %1799, double* %1806, align 8
  %1807 = load i64, i64* %3, align 8
  %1808 = add i64 %1807, -2693
  %1809 = add i64 %1807, 5
  %1810 = load i64, i64* %6, align 8
  %1811 = add i64 %1810, -8
  %1812 = inttoptr i64 %1811 to i64*
  store i64 %1809, i64* %1812, align 8
  store i64 %1811, i64* %6, align 8
  store i64 %1808, i64* %3, align 8
  %call2_401145 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1808, %struct.Memory* %call2_401124)
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -296
  %1815 = load i64, i64* %3, align 8
  %1816 = add i64 %1815, 8
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1814 to double*
  %1818 = load double, double* %1817, align 8
  %1819 = load double, double* %303, align 1
  %1820 = fmul double %1818, %1819
  store double %1820, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1821 = add i64 %1813, -144
  %1822 = add i64 %1815, 20
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to double*
  %1824 = load double, double* %1823, align 8
  store double %1824, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1825 = add i64 %1813, -152
  %1826 = add i64 %1815, 28
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to double*
  %1828 = load double, double* %1827, align 8
  %1829 = fadd double %1824, %1828
  store double %1829, double* %303, align 1
  store i64 0, i64* %304, align 1
  %1830 = add i64 %1813, -304
  %1831 = add i64 %1815, 36
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to double*
  store double %1820, double* %1832, align 8
  %1833 = load i64, i64* %3, align 8
  %1834 = add i64 %1833, -2734
  %1835 = add i64 %1833, 5
  %1836 = load i64, i64* %6, align 8
  %1837 = add i64 %1836, -8
  %1838 = inttoptr i64 %1837 to i64*
  store i64 %1835, i64* %1838, align 8
  store i64 %1837, i64* %6, align 8
  store i64 %1834, i64* %3, align 8
  %call2_40116e = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1834, %struct.Memory* %call2_401145)
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -144
  %1841 = load i64, i64* %3, align 8
  %1842 = add i64 %1841, 8
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1840 to double*
  %1844 = load double, double* %1843, align 8
  store double %1844, double* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1845 = add i64 %1839, -152
  %1846 = add i64 %1841, 16
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to double*
  %1848 = load double, double* %1847, align 8
  %1849 = fsub double %1844, %1848
  store double %1849, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1850 = add i64 %1839, -312
  %1851 = add i64 %1841, 24
  store i64 %1851, i64* %3, align 8
  %1852 = load i64, i64* %314, align 1
  %1853 = inttoptr i64 %1850 to i64*
  store i64 %1852, i64* %1853, align 8
  %1854 = load i64, i64* %3, align 8
  %1855 = load <2 x i32>, <2 x i32>* %326, align 1
  %1856 = load <2 x i32>, <2 x i32>* %327, align 1
  %1857 = extractelement <2 x i32> %1855, i32 0
  store i32 %1857, i32* %320, align 1
  %1858 = extractelement <2 x i32> %1855, i32 1
  store i32 %1858, i32* %322, align 1
  %1859 = extractelement <2 x i32> %1856, i32 0
  store i32 %1859, i32* %323, align 1
  %1860 = extractelement <2 x i32> %1856, i32 1
  store i32 %1860, i32* %325, align 1
  %1861 = add i64 %1854, -2763
  %1862 = add i64 %1854, 8
  %1863 = load i64, i64* %6, align 8
  %1864 = add i64 %1863, -8
  %1865 = inttoptr i64 %1864 to i64*
  store i64 %1862, i64* %1865, align 8
  store i64 %1864, i64* %6, align 8
  store i64 %1861, i64* %3, align 8
  %call2_40118e = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1861, %struct.Memory* %call2_40116e)
  %1866 = load i64, i64* %RBP.i, align 8
  %1867 = add i64 %1866, -312
  %1868 = load i64, i64* %3, align 8
  %1869 = add i64 %1868, 8
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1867 to double*
  %1871 = load double, double* %1870, align 8
  %1872 = load double, double* %303, align 1
  %1873 = fadd double %1871, %1872
  store double %1873, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1874 = add i64 %1866, -280
  %1875 = add i64 %1868, 20
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to double*
  %1877 = load double, double* %1876, align 8
  store double %1877, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1878 = fsub double %1873, %1877
  store double %1878, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1879 = add i64 %1866, -304
  %1880 = add i64 %1868, 32
  store i64 %1880, i64* %3, align 8
  %1881 = inttoptr i64 %1879 to double*
  %1882 = load double, double* %1881, align 8
  %1883 = fdiv double %1882, %1878
  store double %1883, double* %311, align 1
  store i64 0, i64* %312, align 1
  %1884 = bitcast double %1883 to <2 x i32>
  %1885 = extractelement <2 x i32> %1884, i32 0
  store i32 %1885, i32* %320, align 1
  %1886 = extractelement <2 x i32> %1884, i32 1
  store i32 %1886, i32* %322, align 1
  store i32 0, i32* %323, align 1
  store i32 0, i32* %325, align 1
  %1887 = add i64 %1868, -2819
  %1888 = add i64 %1868, 44
  %1889 = load i64, i64* %6, align 8
  %1890 = add i64 %1889, -8
  %1891 = inttoptr i64 %1890 to i64*
  store i64 %1888, i64* %1891, align 8
  store i64 %1890, i64* %6, align 8
  store i64 %1887, i64* %3, align 8
  %call2_4011ba = tail call %struct.Memory* @ext_atan(%struct.State* %0, i64 %1887, %struct.Memory* %call2_40118e)
  %1892 = load i64, i64* %RBP.i, align 8
  %1893 = add i64 %1892, -272
  %1894 = load i64, i64* %3, align 8
  %1895 = add i64 %1894, 8
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1893 to double*
  %1897 = load double, double* %1896, align 8
  %1898 = load double, double* %303, align 1
  %1899 = fmul double %1897, %1898
  store double %1899, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1900 = add i64 %1892, -152
  %1901 = add i64 %1894, 20
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to double*
  store double %1899, double* %1902, align 8
  %1903 = load i64, i64* %RBP.i, align 8
  %1904 = add i64 %1903, -24
  %1905 = load i64, i64* %3, align 8
  %1906 = add i64 %1905, 4
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1904 to i64*
  %1908 = load i64, i64* %1907, align 8
  %1909 = add i64 %1908, 1
  store i64 %1909, i64* %RAX.i1199, align 8
  %1910 = icmp eq i64 %1908, -1
  %1911 = icmp eq i64 %1909, 0
  %1912 = or i1 %1910, %1911
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %14, align 1
  %1914 = trunc i64 %1909 to i32
  %1915 = and i32 %1914, 255
  %1916 = tail call i32 @llvm.ctpop.i32(i32 %1915)
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = xor i8 %1918, 1
  store i8 %1919, i8* %21, align 1
  %1920 = xor i64 %1908, %1909
  %1921 = lshr i64 %1920, 4
  %1922 = trunc i64 %1921 to i8
  %1923 = and i8 %1922, 1
  store i8 %1923, i8* %26, align 1
  %1924 = zext i1 %1911 to i8
  store i8 %1924, i8* %29, align 1
  %1925 = lshr i64 %1909, 63
  %1926 = trunc i64 %1925 to i8
  store i8 %1926, i8* %32, align 1
  %1927 = lshr i64 %1908, 63
  %1928 = xor i64 %1925, %1927
  %1929 = add nuw nsw i64 %1928, %1925
  %1930 = icmp eq i64 %1929, 2
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %38, align 1
  %1932 = add i64 %1905, 12
  store i64 %1932, i64* %3, align 8
  store i64 %1909, i64* %1907, align 8
  %1933 = load i64, i64* %3, align 8
  %1934 = add i64 %1933, -498
  store i64 %1934, i64* %3, align 8
  br label %block_.L_400fed

block_.L_4011e4:                                  ; preds = %block_.L_400fed
  %1935 = add i64 %1573, -176
  %1936 = add i64 %1609, 6
  store i64 %1936, i64* %3, align 8
  %1937 = inttoptr i64 %1935 to i32*
  %1938 = load i32, i32* %1937, align 4
  %1939 = zext i32 %1938 to i64
  store i64 %1939, i64* %RAX.i1199, align 8
  %1940 = add i64 %1573, -172
  %1941 = add i64 %1609, 12
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = sub i32 %1938, %1943
  %1945 = icmp ult i32 %1938, %1943
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = and i32 %1944, 255
  %1948 = tail call i32 @llvm.ctpop.i32(i32 %1947)
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  %1951 = xor i8 %1950, 1
  store i8 %1951, i8* %21, align 1
  %1952 = xor i32 %1943, %1938
  %1953 = xor i32 %1952, %1944
  %1954 = lshr i32 %1953, 4
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  store i8 %1956, i8* %26, align 1
  %1957 = icmp eq i32 %1944, 0
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %29, align 1
  %1959 = lshr i32 %1944, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %32, align 1
  %1961 = lshr i32 %1938, 31
  %1962 = lshr i32 %1943, 31
  %1963 = xor i32 %1962, %1961
  %1964 = xor i32 %1959, %1961
  %1965 = add nuw nsw i32 %1964, %1963
  %1966 = icmp eq i32 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %38, align 1
  %.v61 = select i1 %1957, i64 18, i64 75
  %1968 = add i64 %1609, %.v61
  store i64 %1968, i64* %3, align 8
  br i1 %1957, label %block_4011f6, label %block_.L_40122f

block_4011f6:                                     ; preds = %block_.L_4011e4
  %1969 = add i64 %1968, 4
  store i64 %1969, i64* %3, align 8
  %1970 = load i64, i64* %1580, align 8
  store i64 %1970, i64* %RDI.i1206, align 8
  %1971 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1972 = sext i32 %1971 to i64
  store i64 %1972, i64* %RSI.i1110, align 8
  %1973 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1974 = sext i32 %1973 to i64
  store i64 %1974, i64* %RDX.i1213, align 8
  %1975 = add i64 %1573, -144
  %1976 = add i64 %1968, 28
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i64*
  %1978 = load i64, i64* %1977, align 8
  store i64 %1978, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1979 = add i64 %1968, 36
  store i64 %1979, i64* %3, align 8
  %1980 = load i64, i64* %1977, align 8
  store i64 %1980, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1981 = add i64 %1573, -152
  %1982 = add i64 %1968, 44
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i64*
  %1984 = load i64, i64* %1983, align 8
  store i64 %1984, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1985 = add i64 %1968, 52
  store i64 %1985, i64* %3, align 8
  %1986 = load i64, i64* %1983, align 8
  %1987 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1986, i64* %1987, align 1
  store double 0.000000e+00, double* %317, align 1
  %1988 = add i64 %1968, 938
  %1989 = add i64 %1968, 57
  %1990 = load i64, i64* %6, align 8
  %1991 = add i64 %1990, -8
  %1992 = inttoptr i64 %1991 to i64*
  store i64 %1989, i64* %1992, align 8
  store i64 %1991, i64* %6, align 8
  store i64 %1988, i64* %3, align 8
  %call2_40122a = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1988, %struct.Memory* %MEMORY.18)
  %.pre23 = load i64, i64* %3, align 8
  %.pre24 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40122f

block_.L_40122f:                                  ; preds = %block_.L_4011e4, %block_4011f6
  %1993 = phi i64 [ %1573, %block_.L_4011e4 ], [ %.pre24, %block_4011f6 ]
  %1994 = phi i64 [ %1968, %block_.L_4011e4 ], [ %.pre23, %block_4011f6 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_4011e4 ], [ %call2_40122a, %block_4011f6 ]
  %1995 = load i64, i64* bitcast (%G_0x6a1__rip__4198967__type* @G_0x6a1__rip__4198967_ to i64*), align 8
  store i64 %1995, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1996 = add i64 %1993, -144
  %1997 = add i64 %1994, 16
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i64*
  store i64 %1995, i64* %1998, align 8
  %1999 = load i64, i64* %RBP.i, align 8
  %2000 = add i64 %1999, -152
  %2001 = load i64, i64* %3, align 8
  %2002 = add i64 %2001, 8
  store i64 %2002, i64* %3, align 8
  %2003 = load i64, i64* %314, align 1
  %2004 = inttoptr i64 %2000 to i64*
  store i64 %2003, i64* %2004, align 8
  %2005 = load i64, i64* %RBP.i, align 8
  %2006 = add i64 %2005, -160
  %2007 = load i64, i64* %3, align 8
  %2008 = add i64 %2007, 8
  store i64 %2008, i64* %3, align 8
  %2009 = load i64, i64* %314, align 1
  %2010 = inttoptr i64 %2006 to i64*
  store i64 %2009, i64* %2010, align 8
  %2011 = load i64, i64* %RBP.i, align 8
  %2012 = add i64 %2011, -24
  %2013 = load i64, i64* %3, align 8
  %2014 = add i64 %2013, 8
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2012 to i64*
  store i64 1, i64* %2015, align 8
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_401257

block_.L_401257:                                  ; preds = %block_401265, %block_.L_40122f
  %2016 = phi i64 [ %.pre25, %block_.L_40122f ], [ %2099, %block_401265 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_.L_40122f ], [ %call2_40127c, %block_401265 ]
  %2017 = load i64, i64* %RBP.i, align 8
  %2018 = add i64 %2017, -24
  %2019 = add i64 %2016, 4
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i64*
  %2021 = load i64, i64* %2020, align 8
  store i64 %2021, i64* %RAX.i1199, align 8
  %2022 = add i64 %2017, -80
  %2023 = add i64 %2016, 8
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i64*
  %2025 = load i64, i64* %2024, align 8
  %2026 = sub i64 %2021, %2025
  %2027 = icmp ult i64 %2021, %2025
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %14, align 1
  %2029 = trunc i64 %2026 to i32
  %2030 = and i32 %2029, 255
  %2031 = tail call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  store i8 %2034, i8* %21, align 1
  %2035 = xor i64 %2025, %2021
  %2036 = xor i64 %2035, %2026
  %2037 = lshr i64 %2036, 4
  %2038 = trunc i64 %2037 to i8
  %2039 = and i8 %2038, 1
  store i8 %2039, i8* %26, align 1
  %2040 = icmp eq i64 %2026, 0
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %29, align 1
  %2042 = lshr i64 %2026, 63
  %2043 = trunc i64 %2042 to i8
  store i8 %2043, i8* %32, align 1
  %2044 = lshr i64 %2021, 63
  %2045 = lshr i64 %2025, 63
  %2046 = xor i64 %2045, %2044
  %2047 = xor i64 %2042, %2044
  %2048 = add nuw nsw i64 %2047, %2046
  %2049 = icmp eq i64 %2048, 2
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %38, align 1
  %2051 = icmp ne i8 %2043, 0
  %2052 = xor i1 %2051, %2049
  %.demorgan62 = or i1 %2040, %2052
  %.v63 = select i1 %.demorgan62, i64 14, i64 59
  %2053 = add i64 %2016, %.v63
  store i64 %2053, i64* %3, align 8
  br i1 %.demorgan62, label %block_401265, label %block_.L_401292

block_401265:                                     ; preds = %block_.L_401257
  %2054 = add i64 %2017, -160
  store i64 %2054, i64* %RDI.i1206, align 8
  %2055 = add i64 %2017, -144
  %2056 = add i64 %2053, 15
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i64*
  %2058 = load i64, i64* %2057, align 8
  store i64 %2058, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2059 = add i64 %2017, -152
  %2060 = add i64 %2053, 23
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i64*
  %2062 = load i64, i64* %2061, align 8
  store i64 %2062, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2063 = add i64 %2053, 1243
  %2064 = add i64 %2053, 28
  %2065 = load i64, i64* %6, align 8
  %2066 = add i64 %2065, -8
  %2067 = inttoptr i64 %2066 to i64*
  store i64 %2064, i64* %2067, align 8
  store i64 %2066, i64* %6, align 8
  store i64 %2063, i64* %3, align 8
  %call2_40127c = tail call %struct.Memory* @sub_401740.P3(%struct.State* %0, i64 %2063, %struct.Memory* %MEMORY.20)
  %2068 = load i64, i64* %RBP.i, align 8
  %2069 = add i64 %2068, -24
  %2070 = load i64, i64* %3, align 8
  %2071 = add i64 %2070, 4
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2069 to i64*
  %2073 = load i64, i64* %2072, align 8
  %2074 = add i64 %2073, 1
  store i64 %2074, i64* %RAX.i1199, align 8
  %2075 = icmp eq i64 %2073, -1
  %2076 = icmp eq i64 %2074, 0
  %2077 = or i1 %2075, %2076
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %14, align 1
  %2079 = trunc i64 %2074 to i32
  %2080 = and i32 %2079, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %21, align 1
  %2085 = xor i64 %2073, %2074
  %2086 = lshr i64 %2085, 4
  %2087 = trunc i64 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %26, align 1
  %2089 = zext i1 %2076 to i8
  store i8 %2089, i8* %29, align 1
  %2090 = lshr i64 %2074, 63
  %2091 = trunc i64 %2090 to i8
  store i8 %2091, i8* %32, align 1
  %2092 = lshr i64 %2073, 63
  %2093 = xor i64 %2090, %2092
  %2094 = add nuw nsw i64 %2093, %2090
  %2095 = icmp eq i64 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %38, align 1
  %2097 = add i64 %2070, 12
  store i64 %2097, i64* %3, align 8
  store i64 %2074, i64* %2072, align 8
  %2098 = load i64, i64* %3, align 8
  %2099 = add i64 %2098, -54
  store i64 %2099, i64* %3, align 8
  br label %block_.L_401257

block_.L_401292:                                  ; preds = %block_.L_401257
  %2100 = add i64 %2017, -176
  %2101 = add i64 %2053, 6
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = zext i32 %2103 to i64
  store i64 %2104, i64* %RAX.i1199, align 8
  %2105 = add i64 %2017, -172
  %2106 = add i64 %2053, 12
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i32*
  %2108 = load i32, i32* %2107, align 4
  %2109 = sub i32 %2103, %2108
  %2110 = icmp ult i32 %2103, %2108
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %14, align 1
  %2112 = and i32 %2109, 255
  %2113 = tail call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  store i8 %2116, i8* %21, align 1
  %2117 = xor i32 %2108, %2103
  %2118 = xor i32 %2117, %2109
  %2119 = lshr i32 %2118, 4
  %2120 = trunc i32 %2119 to i8
  %2121 = and i8 %2120, 1
  store i8 %2121, i8* %26, align 1
  %2122 = icmp eq i32 %2109, 0
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %29, align 1
  %2124 = lshr i32 %2109, 31
  %2125 = trunc i32 %2124 to i8
  store i8 %2125, i8* %32, align 1
  %2126 = lshr i32 %2103, 31
  %2127 = lshr i32 %2108, 31
  %2128 = xor i32 %2127, %2126
  %2129 = xor i32 %2124, %2126
  %2130 = add nuw nsw i32 %2129, %2128
  %2131 = icmp eq i32 %2130, 2
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %38, align 1
  %.v64 = select i1 %2122, i64 18, i64 75
  %2133 = add i64 %2053, %.v64
  store i64 %2133, i64* %3, align 8
  br i1 %2122, label %block_4012a4, label %block_.L_4012dd

block_4012a4:                                     ; preds = %block_.L_401292
  %2134 = add i64 %2133, 4
  store i64 %2134, i64* %3, align 8
  %2135 = load i64, i64* %2024, align 8
  store i64 %2135, i64* %RDI.i1206, align 8
  %2136 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2137 = sext i32 %2136 to i64
  store i64 %2137, i64* %RSI.i1110, align 8
  %2138 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2139 = sext i32 %2138 to i64
  store i64 %2139, i64* %RDX.i1213, align 8
  %2140 = add i64 %2017, -144
  %2141 = add i64 %2133, 28
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i64*
  %2143 = load i64, i64* %2142, align 8
  store i64 %2143, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2144 = add i64 %2017, -152
  %2145 = add i64 %2133, 36
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2144 to i64*
  %2147 = load i64, i64* %2146, align 8
  store i64 %2147, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2148 = add i64 %2017, -160
  %2149 = add i64 %2133, 44
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2148 to i64*
  %2151 = load i64, i64* %2150, align 8
  store i64 %2151, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %2152 = add i64 %2133, 52
  store i64 %2152, i64* %3, align 8
  %2153 = load i64, i64* %2150, align 8
  %2154 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2153, i64* %2154, align 1
  store double 0.000000e+00, double* %317, align 1
  %2155 = add i64 %2133, 764
  %2156 = add i64 %2133, 57
  %2157 = load i64, i64* %6, align 8
  %2158 = add i64 %2157, -8
  %2159 = inttoptr i64 %2158 to i64*
  store i64 %2156, i64* %2159, align 8
  store i64 %2158, i64* %6, align 8
  store i64 %2155, i64* %3, align 8
  %call2_4012d8 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2155, %struct.Memory* %MEMORY.20)
  %.pre26 = load i64, i64* %3, align 8
  %.pre27 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4012dd

block_.L_4012dd:                                  ; preds = %block_.L_401292, %block_4012a4
  %2160 = phi i64 [ %2017, %block_.L_401292 ], [ %.pre27, %block_4012a4 ]
  %2161 = phi i64 [ %2133, %block_.L_401292 ], [ %.pre26, %block_4012a4 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_.L_401292 ], [ %call2_4012d8, %block_4012a4 ]
  %2162 = load i64, i64* bitcast (%G_0x603__rip__4199141__type* @G_0x603__rip__4199141_ to i64*), align 8
  store i64 %2162, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2163 = load i64, i64* bitcast (%G_0x5cb__rip__4199149__type* @G_0x5cb__rip__4199149_ to i64*), align 8
  store i64 %2163, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2164 = load i64, i64* bitcast (%G_0x5e3__rip__4199157__type* @G_0x5e3__rip__4199157_ to i64*), align 8
  store i64 %2164, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  store i64 %2164, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %2163, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %2162, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %2165 = add i64 %2160, -24
  %2166 = add i64 %2161, 92
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i64*
  store i64 1, i64* %2167, align 8
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_401339

block_.L_401339:                                  ; preds = %block_401347, %block_.L_4012dd
  %2168 = phi i64 [ %.pre28, %block_.L_4012dd ], [ %2242, %block_401347 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4012dd ], [ %call2_401347, %block_401347 ]
  %2169 = load i64, i64* %RBP.i, align 8
  %2170 = add i64 %2169, -24
  %2171 = add i64 %2168, 4
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2170 to i64*
  %2173 = load i64, i64* %2172, align 8
  store i64 %2173, i64* %RAX.i1199, align 8
  %2174 = add i64 %2169, -88
  %2175 = add i64 %2168, 8
  store i64 %2175, i64* %3, align 8
  %2176 = inttoptr i64 %2174 to i64*
  %2177 = load i64, i64* %2176, align 8
  %2178 = sub i64 %2173, %2177
  %2179 = icmp ult i64 %2173, %2177
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %14, align 1
  %2181 = trunc i64 %2178 to i32
  %2182 = and i32 %2181, 255
  %2183 = tail call i32 @llvm.ctpop.i32(i32 %2182)
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  %2186 = xor i8 %2185, 1
  store i8 %2186, i8* %21, align 1
  %2187 = xor i64 %2177, %2173
  %2188 = xor i64 %2187, %2178
  %2189 = lshr i64 %2188, 4
  %2190 = trunc i64 %2189 to i8
  %2191 = and i8 %2190, 1
  store i8 %2191, i8* %26, align 1
  %2192 = icmp eq i64 %2178, 0
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %29, align 1
  %2194 = lshr i64 %2178, 63
  %2195 = trunc i64 %2194 to i8
  store i8 %2195, i8* %32, align 1
  %2196 = lshr i64 %2173, 63
  %2197 = lshr i64 %2177, 63
  %2198 = xor i64 %2197, %2196
  %2199 = xor i64 %2194, %2196
  %2200 = add nuw nsw i64 %2199, %2198
  %2201 = icmp eq i64 %2200, 2
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %38, align 1
  %2203 = icmp ne i8 %2195, 0
  %2204 = xor i1 %2203, %2201
  %.demorgan65 = or i1 %2192, %2204
  %.v66 = select i1 %.demorgan65, i64 14, i64 36
  %2205 = add i64 %2168, %.v66
  store i64 %2205, i64* %3, align 8
  br i1 %.demorgan65, label %block_401347, label %block_.L_40135d

block_401347:                                     ; preds = %block_.L_401339
  %2206 = add i64 %2205, 1145
  %2207 = add i64 %2205, 5
  %2208 = load i64, i64* %6, align 8
  %2209 = add i64 %2208, -8
  %2210 = inttoptr i64 %2209 to i64*
  store i64 %2207, i64* %2210, align 8
  store i64 %2209, i64* %6, align 8
  store i64 %2206, i64* %3, align 8
  %call2_401347 = tail call %struct.Memory* @sub_4017c0.P0(%struct.State* %0, i64 %2206, %struct.Memory* %MEMORY.22)
  %2211 = load i64, i64* %RBP.i, align 8
  %2212 = add i64 %2211, -24
  %2213 = load i64, i64* %3, align 8
  %2214 = add i64 %2213, 4
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2212 to i64*
  %2216 = load i64, i64* %2215, align 8
  %2217 = add i64 %2216, 1
  store i64 %2217, i64* %RAX.i1199, align 8
  %2218 = icmp eq i64 %2216, -1
  %2219 = icmp eq i64 %2217, 0
  %2220 = or i1 %2218, %2219
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %14, align 1
  %2222 = trunc i64 %2217 to i32
  %2223 = and i32 %2222, 255
  %2224 = tail call i32 @llvm.ctpop.i32(i32 %2223)
  %2225 = trunc i32 %2224 to i8
  %2226 = and i8 %2225, 1
  %2227 = xor i8 %2226, 1
  store i8 %2227, i8* %21, align 1
  %2228 = xor i64 %2216, %2217
  %2229 = lshr i64 %2228, 4
  %2230 = trunc i64 %2229 to i8
  %2231 = and i8 %2230, 1
  store i8 %2231, i8* %26, align 1
  %2232 = zext i1 %2219 to i8
  store i8 %2232, i8* %29, align 1
  %2233 = lshr i64 %2217, 63
  %2234 = trunc i64 %2233 to i8
  store i8 %2234, i8* %32, align 1
  %2235 = lshr i64 %2216, 63
  %2236 = xor i64 %2233, %2235
  %2237 = add nuw nsw i64 %2236, %2233
  %2238 = icmp eq i64 %2237, 2
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %38, align 1
  %2240 = add i64 %2213, 12
  store i64 %2240, i64* %3, align 8
  store i64 %2217, i64* %2215, align 8
  %2241 = load i64, i64* %3, align 8
  %2242 = add i64 %2241, -31
  store i64 %2242, i64* %3, align 8
  br label %block_.L_401339

block_.L_40135d:                                  ; preds = %block_.L_401339
  %2243 = add i64 %2169, -176
  %2244 = add i64 %2205, 6
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i32*
  %2246 = load i32, i32* %2245, align 4
  %2247 = zext i32 %2246 to i64
  store i64 %2247, i64* %RAX.i1199, align 8
  %2248 = add i64 %2169, -172
  %2249 = add i64 %2205, 12
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2248 to i32*
  %2251 = load i32, i32* %2250, align 4
  %2252 = sub i32 %2246, %2251
  %2253 = icmp ult i32 %2246, %2251
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %14, align 1
  %2255 = and i32 %2252, 255
  %2256 = tail call i32 @llvm.ctpop.i32(i32 %2255)
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  %2259 = xor i8 %2258, 1
  store i8 %2259, i8* %21, align 1
  %2260 = xor i32 %2251, %2246
  %2261 = xor i32 %2260, %2252
  %2262 = lshr i32 %2261, 4
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  store i8 %2264, i8* %26, align 1
  %2265 = icmp eq i32 %2252, 0
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %29, align 1
  %2267 = lshr i32 %2252, 31
  %2268 = trunc i32 %2267 to i8
  store i8 %2268, i8* %32, align 1
  %2269 = lshr i32 %2246, 31
  %2270 = lshr i32 %2251, 31
  %2271 = xor i32 %2270, %2269
  %2272 = xor i32 %2267, %2269
  %2273 = add nuw nsw i32 %2272, %2271
  %2274 = icmp eq i32 %2273, 2
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %38, align 1
  %.v67 = select i1 %2265, i64 18, i64 79
  %2276 = add i64 %2205, %.v67
  store i64 %2276, i64* %3, align 8
  br i1 %2265, label %block_40136f, label %block_.L_4013ac

block_40136f:                                     ; preds = %block_.L_40135d
  %2277 = add i64 %2276, 4
  store i64 %2277, i64* %3, align 8
  %2278 = load i64, i64* %2176, align 8
  store i64 %2278, i64* %RDI.i1206, align 8
  %2279 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2280 = sext i32 %2279 to i64
  store i64 %2280, i64* %RSI.i1110, align 8
  %2281 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2282 = sext i32 %2281 to i64
  store i64 %2282, i64* %RDX.i1213, align 8
  %2283 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %2283, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2284 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %2284, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2285 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %2285, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %2286 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %2287 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2286, i64* %2287, align 1
  store double 0.000000e+00, double* %317, align 1
  %2288 = add i64 %2276, 561
  %2289 = add i64 %2276, 61
  %2290 = load i64, i64* %6, align 8
  %2291 = add i64 %2290, -8
  %2292 = inttoptr i64 %2291 to i64*
  store i64 %2289, i64* %2292, align 8
  store i64 %2291, i64* %6, align 8
  store i64 %2288, i64* %3, align 8
  %call2_4013a7 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2288, %struct.Memory* %MEMORY.22)
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4013ac

block_.L_4013ac:                                  ; preds = %block_.L_40135d, %block_40136f
  %2293 = phi i64 [ %2169, %block_.L_40135d ], [ %.pre30, %block_40136f ]
  %2294 = phi i64 [ %2276, %block_.L_40135d ], [ %.pre29, %block_40136f ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.22, %block_.L_40135d ], [ %call2_4013a7, %block_40136f ]
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2295 = add i64 %2293, -24
  %2296 = add i64 %2294, 30
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2295 to i64*
  store i64 1, i64* %2297, align 8
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_4013ca

block_.L_4013ca:                                  ; preds = %block_4013d8, %block_.L_4013ac
  %2298 = phi i64 [ %2393, %block_4013d8 ], [ %.pre31, %block_.L_4013ac ]
  %2299 = load i64, i64* %RBP.i, align 8
  %2300 = add i64 %2299, -24
  %2301 = add i64 %2298, 4
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2300 to i64*
  %2303 = load i64, i64* %2302, align 8
  store i64 %2303, i64* %RAX.i1199, align 8
  %2304 = add i64 %2299, -96
  %2305 = add i64 %2298, 8
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i64*
  %2307 = load i64, i64* %2306, align 8
  %2308 = sub i64 %2303, %2307
  %2309 = icmp ult i64 %2303, %2307
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %14, align 1
  %2311 = trunc i64 %2308 to i32
  %2312 = and i32 %2311, 255
  %2313 = tail call i32 @llvm.ctpop.i32(i32 %2312)
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  %2316 = xor i8 %2315, 1
  store i8 %2316, i8* %21, align 1
  %2317 = xor i64 %2307, %2303
  %2318 = xor i64 %2317, %2308
  %2319 = lshr i64 %2318, 4
  %2320 = trunc i64 %2319 to i8
  %2321 = and i8 %2320, 1
  store i8 %2321, i8* %26, align 1
  %2322 = icmp eq i64 %2308, 0
  %2323 = zext i1 %2322 to i8
  store i8 %2323, i8* %29, align 1
  %2324 = lshr i64 %2308, 63
  %2325 = trunc i64 %2324 to i8
  store i8 %2325, i8* %32, align 1
  %2326 = lshr i64 %2303, 63
  %2327 = lshr i64 %2307, 63
  %2328 = xor i64 %2327, %2326
  %2329 = xor i64 %2324, %2326
  %2330 = add nuw nsw i64 %2329, %2328
  %2331 = icmp eq i64 %2330, 2
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %38, align 1
  %2333 = icmp ne i8 %2325, 0
  %2334 = xor i1 %2333, %2331
  %.demorgan68 = or i1 %2322, %2334
  %.v69 = select i1 %.demorgan68, i64 14, i64 122
  %2335 = add i64 %2298, %.v69
  store i64 %2335, i64* %3, align 8
  br i1 %.demorgan68, label %block_4013d8, label %block_.L_401444

block_4013d8:                                     ; preds = %block_.L_4013ca
  %2336 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2337 = zext i32 %2336 to i64
  %2338 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2339 = add i32 %2338, %2336
  %2340 = icmp ult i32 %2339, %2338
  %2341 = lshr i32 %2339, 31
  %2342 = lshr i32 %2336, 31
  %2343 = lshr i32 %2338, 31
  %2344 = xor i32 %2341, %2342
  %2345 = xor i32 %2341, %2343
  %2346 = add nuw nsw i32 %2344, %2345
  %2347 = icmp eq i32 %2346, 2
  %2348 = zext i1 %2347 to i8
  %2349 = xor i32 %2338, %2339
  store i32 %2338, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i64 %2337, i64* %RAX.i1199, align 8
  %2350 = zext i1 %2340 to i8
  store i8 %2350, i8* %14, align 1
  %2351 = and i32 %2336, 255
  %2352 = tail call i32 @llvm.ctpop.i32(i32 %2351)
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = xor i8 %2354, 1
  store i8 %2355, i8* %21, align 1
  %2356 = xor i32 %2349, %2336
  %2357 = lshr i32 %2356, 4
  %2358 = trunc i32 %2357 to i8
  %2359 = and i8 %2358, 1
  store i8 %2359, i8* %26, align 1
  %2360 = icmp eq i32 %2336, 0
  %2361 = zext i1 %2360 to i8
  store i8 %2361, i8* %29, align 1
  %2362 = trunc i32 %2342 to i8
  store i8 %2362, i8* %32, align 1
  store i8 %2348, i8* %38, align 1
  store i32 %2336, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -24
  %2365 = add i64 %2335, 95
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i64*
  %2367 = load i64, i64* %2366, align 8
  %2368 = add i64 %2367, 1
  store i64 %2368, i64* %RAX.i1199, align 8
  %2369 = icmp eq i64 %2367, -1
  %2370 = icmp eq i64 %2368, 0
  %2371 = or i1 %2369, %2370
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %14, align 1
  %2373 = trunc i64 %2368 to i32
  %2374 = and i32 %2373, 255
  %2375 = tail call i32 @llvm.ctpop.i32(i32 %2374)
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  %2378 = xor i8 %2377, 1
  store i8 %2378, i8* %21, align 1
  %2379 = xor i64 %2367, %2368
  %2380 = lshr i64 %2379, 4
  %2381 = trunc i64 %2380 to i8
  %2382 = and i8 %2381, 1
  store i8 %2382, i8* %26, align 1
  %2383 = zext i1 %2370 to i8
  store i8 %2383, i8* %29, align 1
  %2384 = lshr i64 %2368, 63
  %2385 = trunc i64 %2384 to i8
  store i8 %2385, i8* %32, align 1
  %2386 = lshr i64 %2367, 63
  %2387 = xor i64 %2384, %2386
  %2388 = add nuw nsw i64 %2387, %2384
  %2389 = icmp eq i64 %2388, 2
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %38, align 1
  %2391 = add i64 %2335, 103
  store i64 %2391, i64* %3, align 8
  store i64 %2368, i64* %2366, align 8
  %2392 = load i64, i64* %3, align 8
  %2393 = add i64 %2392, -117
  store i64 %2393, i64* %3, align 8
  br label %block_.L_4013ca

block_.L_401444:                                  ; preds = %block_.L_4013ca
  %2394 = add i64 %2299, -176
  %2395 = add i64 %2335, 6
  store i64 %2395, i64* %3, align 8
  %2396 = inttoptr i64 %2394 to i32*
  %2397 = load i32, i32* %2396, align 4
  %2398 = zext i32 %2397 to i64
  store i64 %2398, i64* %RAX.i1199, align 8
  %2399 = add i64 %2299, -172
  %2400 = add i64 %2335, 12
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i32*
  %2402 = load i32, i32* %2401, align 4
  %2403 = sub i32 %2397, %2402
  %2404 = icmp ult i32 %2397, %2402
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %14, align 1
  %2406 = and i32 %2403, 255
  %2407 = tail call i32 @llvm.ctpop.i32(i32 %2406)
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = xor i8 %2409, 1
  store i8 %2410, i8* %21, align 1
  %2411 = xor i32 %2402, %2397
  %2412 = xor i32 %2411, %2403
  %2413 = lshr i32 %2412, 4
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  store i8 %2415, i8* %26, align 1
  %2416 = icmp eq i32 %2403, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %29, align 1
  %2418 = lshr i32 %2403, 31
  %2419 = trunc i32 %2418 to i8
  store i8 %2419, i8* %32, align 1
  %2420 = lshr i32 %2397, 31
  %2421 = lshr i32 %2402, 31
  %2422 = xor i32 %2421, %2420
  %2423 = xor i32 %2418, %2420
  %2424 = add nuw nsw i32 %2423, %2422
  %2425 = icmp eq i32 %2424, 2
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %38, align 1
  %.v70 = select i1 %2416, i64 18, i64 66
  %2427 = add i64 %2335, %.v70
  store i64 %2427, i64* %3, align 8
  br i1 %2416, label %block_401456, label %block_.L_401486

block_401456:                                     ; preds = %block_.L_401444
  %2428 = add i64 %2427, 4
  store i64 %2428, i64* %3, align 8
  %2429 = load i64, i64* %2306, align 8
  store i64 %2429, i64* %RDI.i1206, align 8
  %2430 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2431 = sext i32 %2430 to i64
  store i64 %2431, i64* %RSI.i1110, align 8
  %2432 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2433 = sext i32 %2432 to i64
  store i64 %2433, i64* %RDX.i1213, align 8
  %2434 = add i64 %2299, -112
  %2435 = add i64 %2427, 25
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i64*
  %2437 = load i64, i64* %2436, align 8
  store i64 %2437, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2438 = add i64 %2299, -120
  %2439 = add i64 %2427, 30
  store i64 %2439, i64* %3, align 8
  %2440 = inttoptr i64 %2438 to i64*
  %2441 = load i64, i64* %2440, align 8
  store i64 %2441, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2442 = add i64 %2299, -128
  %2443 = add i64 %2427, 35
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i64*
  %2445 = load i64, i64* %2444, align 8
  store i64 %2445, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %2446 = add i64 %2299, -136
  %2447 = add i64 %2427, 43
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i64*
  %2449 = load i64, i64* %2448, align 8
  %2450 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2449, i64* %2450, align 1
  store double 0.000000e+00, double* %317, align 1
  %2451 = add i64 %2427, 330
  %2452 = add i64 %2427, 48
  %2453 = load i64, i64* %6, align 8
  %2454 = add i64 %2453, -8
  %2455 = inttoptr i64 %2454 to i64*
  store i64 %2452, i64* %2455, align 8
  store i64 %2454, i64* %6, align 8
  store i64 %2451, i64* %3, align 8
  %call2_401481 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2451, %struct.Memory* %MEMORY.23)
  %.pre32 = load i64, i64* %3, align 8
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401486

block_.L_401486:                                  ; preds = %block_.L_401444, %block_401456
  %2456 = phi i64 [ %2299, %block_.L_401444 ], [ %.pre33, %block_401456 ]
  %2457 = phi i64 [ %2427, %block_.L_401444 ], [ %.pre32, %block_401456 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.23, %block_.L_401444 ], [ %call2_401481, %block_401456 ]
  %2458 = load i64, i64* bitcast (%G_0x462__rip__4199566__type* @G_0x462__rip__4199566_ to i64*), align 8
  store i64 %2458, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2459 = add i64 %2456, -144
  %2460 = add i64 %2457, 16
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i64*
  store i64 %2458, i64* %2461, align 8
  %2462 = load i64, i64* %RBP.i, align 8
  %2463 = add i64 %2462, -24
  %2464 = load i64, i64* %3, align 8
  %2465 = add i64 %2464, 8
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2463 to i64*
  store i64 1, i64* %2466, align 8
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_40149e

block_.L_40149e:                                  ; preds = %block_4014ac, %block_.L_401486
  %2467 = phi i64 [ %.pre34, %block_.L_401486 ], [ %2568, %block_4014ac ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_.L_401486 ], [ %call2_4014c7, %block_4014ac ]
  %2468 = load i64, i64* %RBP.i, align 8
  %2469 = add i64 %2468, -24
  %2470 = add i64 %2467, 4
  store i64 %2470, i64* %3, align 8
  %2471 = inttoptr i64 %2469 to i64*
  %2472 = load i64, i64* %2471, align 8
  store i64 %2472, i64* %RAX.i1199, align 8
  %2473 = add i64 %2468, -104
  %2474 = add i64 %2467, 8
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i64*
  %2476 = load i64, i64* %2475, align 8
  %2477 = sub i64 %2472, %2476
  %2478 = icmp ult i64 %2472, %2476
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %14, align 1
  %2480 = trunc i64 %2477 to i32
  %2481 = and i32 %2480, 255
  %2482 = tail call i32 @llvm.ctpop.i32(i32 %2481)
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  store i8 %2485, i8* %21, align 1
  %2486 = xor i64 %2476, %2472
  %2487 = xor i64 %2486, %2477
  %2488 = lshr i64 %2487, 4
  %2489 = trunc i64 %2488 to i8
  %2490 = and i8 %2489, 1
  store i8 %2490, i8* %26, align 1
  %2491 = icmp eq i64 %2477, 0
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %29, align 1
  %2493 = lshr i64 %2477, 63
  %2494 = trunc i64 %2493 to i8
  store i8 %2494, i8* %32, align 1
  %2495 = lshr i64 %2472, 63
  %2496 = lshr i64 %2476, 63
  %2497 = xor i64 %2496, %2495
  %2498 = xor i64 %2493, %2495
  %2499 = add nuw nsw i64 %2498, %2497
  %2500 = icmp eq i64 %2499, 2
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %38, align 1
  %2502 = icmp ne i8 %2494, 0
  %2503 = xor i1 %2502, %2500
  %.demorgan71 = or i1 %2491, %2503
  %.v72 = select i1 %.demorgan71, i64 14, i64 71
  %2504 = add i64 %2467, %.v72
  store i64 %2504, i64* %3, align 8
  br i1 %.demorgan71, label %block_4014ac, label %block_.L_4014e5

block_4014ac:                                     ; preds = %block_.L_40149e
  %2505 = add i64 %2468, -144
  %2506 = add i64 %2504, 8
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i64*
  %2508 = load i64, i64* %2507, align 8
  store i64 %2508, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2509 = add i64 %2504, -3580
  %2510 = add i64 %2504, 13
  %2511 = load i64, i64* %6, align 8
  %2512 = add i64 %2511, -8
  %2513 = inttoptr i64 %2512 to i64*
  store i64 %2510, i64* %2513, align 8
  store i64 %2512, i64* %6, align 8
  store i64 %2509, i64* %3, align 8
  %2514 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %MEMORY.26)
  %2515 = load i64, i64* %3, align 8
  %2516 = load double, double* %303, align 1
  %2517 = load double, double* bitcast (%G_0x6020a0_type* @G_0x6020a0 to double*), align 8
  %2518 = fdiv double %2516, %2517
  store double %2518, double* %303, align 1
  %2519 = add i64 %2515, -3641
  %2520 = add i64 %2515, 14
  %2521 = load i64, i64* %6, align 8
  %2522 = add i64 %2521, -8
  %2523 = inttoptr i64 %2522 to i64*
  store i64 %2520, i64* %2523, align 8
  store i64 %2522, i64* %6, align 8
  store i64 %2519, i64* %3, align 8
  %2524 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %2514)
  %2525 = load i64, i64* %3, align 8
  %2526 = add i64 %2525, -3511
  %2527 = add i64 %2525, 5
  %2528 = load i64, i64* %6, align 8
  %2529 = add i64 %2528, -8
  %2530 = inttoptr i64 %2529 to i64*
  store i64 %2527, i64* %2530, align 8
  store i64 %2529, i64* %6, align 8
  store i64 %2526, i64* %3, align 8
  %call2_4014c7 = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %2526, %struct.Memory* %2524)
  %2531 = load i64, i64* %RBP.i, align 8
  %2532 = add i64 %2531, -144
  %2533 = load i64, i64* %3, align 8
  %2534 = add i64 %2533, 8
  store i64 %2534, i64* %3, align 8
  %2535 = load i64, i64* %314, align 1
  %2536 = inttoptr i64 %2532 to i64*
  store i64 %2535, i64* %2536, align 8
  %2537 = load i64, i64* %RBP.i, align 8
  %2538 = add i64 %2537, -24
  %2539 = load i64, i64* %3, align 8
  %2540 = add i64 %2539, 4
  store i64 %2540, i64* %3, align 8
  %2541 = inttoptr i64 %2538 to i64*
  %2542 = load i64, i64* %2541, align 8
  %2543 = add i64 %2542, 1
  store i64 %2543, i64* %RAX.i1199, align 8
  %2544 = icmp eq i64 %2542, -1
  %2545 = icmp eq i64 %2543, 0
  %2546 = or i1 %2544, %2545
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %14, align 1
  %2548 = trunc i64 %2543 to i32
  %2549 = and i32 %2548, 255
  %2550 = tail call i32 @llvm.ctpop.i32(i32 %2549)
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = xor i8 %2552, 1
  store i8 %2553, i8* %21, align 1
  %2554 = xor i64 %2542, %2543
  %2555 = lshr i64 %2554, 4
  %2556 = trunc i64 %2555 to i8
  %2557 = and i8 %2556, 1
  store i8 %2557, i8* %26, align 1
  %2558 = zext i1 %2545 to i8
  store i8 %2558, i8* %29, align 1
  %2559 = lshr i64 %2543, 63
  %2560 = trunc i64 %2559 to i8
  store i8 %2560, i8* %32, align 1
  %2561 = lshr i64 %2542, 63
  %2562 = xor i64 %2559, %2561
  %2563 = add nuw nsw i64 %2562, %2559
  %2564 = icmp eq i64 %2563, 2
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %38, align 1
  %2566 = add i64 %2539, 12
  store i64 %2566, i64* %3, align 8
  store i64 %2543, i64* %2541, align 8
  %2567 = load i64, i64* %3, align 8
  %2568 = add i64 %2567, -66
  store i64 %2568, i64* %3, align 8
  br label %block_.L_40149e

block_.L_4014e5:                                  ; preds = %block_.L_40149e
  %2569 = add i64 %2468, -176
  %2570 = add i64 %2504, 6
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2569 to i32*
  %2572 = load i32, i32* %2571, align 4
  %2573 = zext i32 %2572 to i64
  store i64 %2573, i64* %RAX.i1199, align 8
  %2574 = add i64 %2468, -172
  %2575 = add i64 %2504, 12
  store i64 %2575, i64* %3, align 8
  %2576 = inttoptr i64 %2574 to i32*
  %2577 = load i32, i32* %2576, align 4
  %2578 = sub i32 %2572, %2577
  %2579 = icmp ult i32 %2572, %2577
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %14, align 1
  %2581 = and i32 %2578, 255
  %2582 = tail call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  store i8 %2585, i8* %21, align 1
  %2586 = xor i32 %2577, %2572
  %2587 = xor i32 %2586, %2578
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %26, align 1
  %2591 = icmp eq i32 %2578, 0
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %29, align 1
  %2593 = lshr i32 %2578, 31
  %2594 = trunc i32 %2593 to i8
  store i8 %2594, i8* %32, align 1
  %2595 = lshr i32 %2572, 31
  %2596 = lshr i32 %2577, 31
  %2597 = xor i32 %2596, %2595
  %2598 = xor i32 %2593, %2595
  %2599 = add nuw nsw i32 %2598, %2597
  %2600 = icmp eq i32 %2599, 2
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %38, align 1
  %.v73 = select i1 %2591, i64 18, i64 75
  %2602 = add i64 %2504, %.v73
  store i64 %2602, i64* %3, align 8
  br i1 %2591, label %block_4014f7, label %block_.L_401530

block_4014f7:                                     ; preds = %block_.L_4014e5
  %2603 = add i64 %2602, 4
  store i64 %2603, i64* %3, align 8
  %2604 = load i64, i64* %2475, align 8
  store i64 %2604, i64* %RDI.i1206, align 8
  %2605 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2606 = sext i32 %2605 to i64
  store i64 %2606, i64* %RSI.i1110, align 8
  %2607 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2608 = sext i32 %2607 to i64
  store i64 %2608, i64* %RDX.i1213, align 8
  %2609 = add i64 %2468, -144
  %2610 = add i64 %2602, 28
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i64*
  %2612 = load i64, i64* %2611, align 8
  store i64 %2612, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2613 = add i64 %2602, 36
  store i64 %2613, i64* %3, align 8
  %2614 = load i64, i64* %2611, align 8
  store i64 %2614, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2615 = add i64 %2602, 44
  store i64 %2615, i64* %3, align 8
  %2616 = load i64, i64* %2611, align 8
  store i64 %2616, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %2617 = add i64 %2602, 52
  store i64 %2617, i64* %3, align 8
  %2618 = load i64, i64* %2611, align 8
  %2619 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2618, i64* %2619, align 1
  store double 0.000000e+00, double* %317, align 1
  %2620 = add i64 %2602, 169
  %2621 = add i64 %2602, 57
  %2622 = load i64, i64* %6, align 8
  %2623 = add i64 %2622, -8
  %2624 = inttoptr i64 %2623 to i64*
  store i64 %2621, i64* %2624, align 8
  store i64 %2623, i64* %6, align 8
  store i64 %2620, i64* %3, align 8
  %call2_40152b = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2620, %struct.Memory* %MEMORY.26)
  %.pre35 = load i64, i64* %RBP.i, align 8
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_401530

block_.L_401530:                                  ; preds = %block_.L_4014e5, %block_4014f7
  %2625 = phi i64 [ %2602, %block_.L_4014e5 ], [ %.pre36, %block_4014f7 ]
  %2626 = phi i64 [ %2468, %block_.L_4014e5 ], [ %.pre35, %block_4014f7 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_4014e5 ], [ %call2_40152b, %block_4014f7 ]
  %2627 = add i64 %2626, -176
  %2628 = add i64 %2625, 6
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2627 to i32*
  %2630 = load i32, i32* %2629, align 4
  %2631 = add i32 %2630, 1
  %2632 = zext i32 %2631 to i64
  store i64 %2632, i64* %RAX.i1199, align 8
  %2633 = icmp eq i32 %2630, -1
  %2634 = icmp eq i32 %2631, 0
  %2635 = or i1 %2633, %2634
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %14, align 1
  %2637 = and i32 %2631, 255
  %2638 = tail call i32 @llvm.ctpop.i32(i32 %2637)
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  %2641 = xor i8 %2640, 1
  store i8 %2641, i8* %21, align 1
  %2642 = xor i32 %2630, %2631
  %2643 = lshr i32 %2642, 4
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  store i8 %2645, i8* %26, align 1
  %2646 = zext i1 %2634 to i8
  store i8 %2646, i8* %29, align 1
  %2647 = lshr i32 %2631, 31
  %2648 = trunc i32 %2647 to i8
  store i8 %2648, i8* %32, align 1
  %2649 = lshr i32 %2630, 31
  %2650 = xor i32 %2647, %2649
  %2651 = add nuw nsw i32 %2650, %2647
  %2652 = icmp eq i32 %2651, 2
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %38, align 1
  %2654 = add i64 %2625, 15
  store i64 %2654, i64* %3, align 8
  store i32 %2631, i32* %2629, align 4
  %2655 = load i32, i32* %EAX.i1220, align 4
  %2656 = load i64, i64* %RBP.i, align 8
  %2657 = add i64 %2656, -172
  %2658 = load i64, i64* %3, align 8
  %2659 = add i64 %2658, 6
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2657 to i32*
  %2661 = load i32, i32* %2660, align 4
  %2662 = sub i32 %2655, %2661
  %2663 = icmp ult i32 %2655, %2661
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %14, align 1
  %2665 = and i32 %2662, 255
  %2666 = tail call i32 @llvm.ctpop.i32(i32 %2665)
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = xor i8 %2668, 1
  store i8 %2669, i8* %21, align 1
  %2670 = xor i32 %2661, %2655
  %2671 = xor i32 %2670, %2662
  %2672 = lshr i32 %2671, 4
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  store i8 %2674, i8* %26, align 1
  %2675 = icmp eq i32 %2662, 0
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %29, align 1
  %2677 = lshr i32 %2662, 31
  %2678 = trunc i32 %2677 to i8
  store i8 %2678, i8* %32, align 1
  %2679 = lshr i32 %2655, 31
  %2680 = lshr i32 %2661, 31
  %2681 = xor i32 %2680, %2679
  %2682 = xor i32 %2677, %2679
  %2683 = add nuw nsw i32 %2682, %2681
  %2684 = icmp eq i32 %2683, 2
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %38, align 1
  %2686 = icmp ne i8 %2678, 0
  %2687 = xor i1 %2686, %2684
  %.demorgan74 = or i1 %2675, %2687
  %.v75 = select i1 %.demorgan74, i64 12, i64 17
  %2688 = add i64 %2658, %.v75
  store i64 %2688, i64* %3, align 8
  br i1 %.demorgan74, label %block_40154b, label %block_.L_401550

block_40154b:                                     ; preds = %block_.L_401530
  %2689 = add i64 %2688, -2992
  store i64 %2689, i64* %3, align 8
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
  %2690 = add i64 %2688, -3696
  %2691 = add i64 %2688, 9
  %2692 = load i64, i64* %6, align 8
  %2693 = add i64 %2692, -8
  %2694 = inttoptr i64 %2693 to i64*
  store i64 %2691, i64* %2694, align 8
  store i64 %2693, i64* %6, align 8
  store i64 %2690, i64* %3, align 8
  %2695 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.27)
  %2696 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x401915_type* @G__0x401915 to i64), i64* %RDI.i1206, align 8
  %2697 = load i64, i64* %RBP.i, align 8
  %2698 = add i64 %2697, -200
  %2699 = load i64, i64* %RAX.i1199, align 8
  %2700 = add i64 %2696, 17
  store i64 %2700, i64* %3, align 8
  %2701 = inttoptr i64 %2698 to i64*
  store i64 %2699, i64* %2701, align 8
  %2702 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %2703 = add i64 %2702, -3786
  %2704 = add i64 %2702, 7
  %2705 = load i64, i64* %6, align 8
  %2706 = add i64 %2705, -8
  %2707 = inttoptr i64 %2706 to i64*
  store i64 %2704, i64* %2707, align 8
  store i64 %2706, i64* %6, align 8
  store i64 %2703, i64* %3, align 8
  %2708 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2695)
  %2709 = load i64, i64* %RBP.i, align 8
  %2710 = add i64 %2709, -208
  %2711 = load i64, i64* %3, align 8
  %2712 = add i64 %2711, 7
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2710 to i32*
  %2714 = load i32, i32* %2713, align 4
  store i8 0, i8* %14, align 1
  %2715 = and i32 %2714, 255
  %2716 = tail call i32 @llvm.ctpop.i32(i32 %2715)
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  %2719 = xor i8 %2718, 1
  store i8 %2719, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2720 = icmp eq i32 %2714, 0
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %29, align 1
  %2722 = lshr i32 %2714, 31
  %2723 = trunc i32 %2722 to i8
  store i8 %2723, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2724 = add i64 %2709, -316
  %2725 = load i32, i32* %EAX.i1220, align 4
  %2726 = add i64 %2711, 13
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2724 to i32*
  store i32 %2725, i32* %2727, align 4
  %2728 = load i64, i64* %3, align 8
  %2729 = load i8, i8* %29, align 1
  %2730 = icmp ne i8 %2729, 0
  %.v76 = select i1 %2730, i64 11, i64 6
  %2731 = add i64 %2728, %.v76
  store i64 %2731, i64* %3, align 8
  %cmpBr_40157e = icmp eq i8 %2729, 1
  br i1 %cmpBr_40157e, label %block_.L_401589, label %block_401584

block_401584:                                     ; preds = %block_.L_401550
  %2732 = add i64 %2731, -3150
  store i64 %2732, i64* %3, align 8
  %.pre4 = load i64, i64* %RAX.i1199, align 8
  %2733 = trunc i64 %.pre4 to i32
  br label %block_.L_400936

block_.L_401589:                                  ; preds = %block_.L_401550
  %2734 = load i64, i64* %RBP.i, align 8
  %2735 = add i64 %2734, -4
  %2736 = add i64 %2731, 7
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to i32*
  store i32 0, i32* %2737, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_401590

block_.L_401590:                                  ; preds = %block_.L_401589, %block_.L_4008ed
  %2738 = phi i64 [ %.pre37, %block_.L_401589 ], [ %267, %block_.L_4008ed ]
  %MEMORY.28 = phi %struct.Memory* [ %2708, %block_.L_401589 ], [ %254, %block_.L_4008ed ]
  %2739 = load i64, i64* %RBP.i, align 8
  %2740 = add i64 %2739, -4
  %2741 = add i64 %2738, 3
  store i64 %2741, i64* %3, align 8
  %2742 = inttoptr i64 %2740 to i32*
  %2743 = load i32, i32* %2742, align 4
  %2744 = zext i32 %2743 to i64
  store i64 %2744, i64* %RAX.i1199, align 8
  %2745 = load i64, i64* %6, align 8
  %2746 = add i64 %2745, 320
  store i64 %2746, i64* %6, align 8
  %2747 = icmp ugt i64 %2745, -321
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %14, align 1
  %2749 = trunc i64 %2746 to i32
  %2750 = and i32 %2749, 255
  %2751 = tail call i32 @llvm.ctpop.i32(i32 %2750)
  %2752 = trunc i32 %2751 to i8
  %2753 = and i8 %2752, 1
  %2754 = xor i8 %2753, 1
  store i8 %2754, i8* %21, align 1
  %2755 = xor i64 %2745, %2746
  %2756 = lshr i64 %2755, 4
  %2757 = trunc i64 %2756 to i8
  %2758 = and i8 %2757, 1
  store i8 %2758, i8* %26, align 1
  %2759 = icmp eq i64 %2746, 0
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %29, align 1
  %2761 = lshr i64 %2746, 63
  %2762 = trunc i64 %2761 to i8
  store i8 %2762, i8* %32, align 1
  %2763 = lshr i64 %2745, 63
  %2764 = xor i64 %2761, %2763
  %2765 = add nuw nsw i64 %2764, %2761
  %2766 = icmp eq i64 %2765, 2
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %38, align 1
  %2768 = add i64 %2738, 11
  store i64 %2768, i64* %3, align 8
  %2769 = add i64 %2745, 328
  %2770 = inttoptr i64 %2746 to i64*
  %2771 = load i64, i64* %2770, align 8
  store i64 %2771, i64* %RBP.i, align 8
  store i64 %2769, i64* %6, align 8
  %2772 = add i64 %2738, 12
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2769 to i64*
  %2774 = load i64, i64* %2773, align 8
  store i64 %2774, i64* %3, align 8
  %2775 = add i64 %2745, 336
  store i64 %2775, i64* %6, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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

define %struct.Memory* @routine_je_.L_4008a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400936(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xf71__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xf71__rip__4196679__type* @G_0xf71__rip__4196679_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0xf71__rip__4196687__type* @G_0xf71__rip__4196687_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0xf71__rip__4196695__type* @G_0xf71__rip__4196695_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0xf2d__rip__4196771__type* @G_0xf2d__rip__4196771_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0xf2d__rip__4196779__type* @G_0xf2d__rip__4196779_ to i64*), align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xd78__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xd78__rip__4197208__type* @G_0xd78__rip__4197208_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0xd78__rip__4197216__type* @G_0xd78__rip__4197216_ to i64*), align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ce9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  %18 = xor i32 %6, %7
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %5 = load i64, i64* bitcast (%G_0x90b__rip__4198357__type* @G_0x90b__rip__4198357_ to i64*), align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x8d5__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8d5__rip__4198403__type* @G_0x8d5__rip__4198403_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x7fd__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x7fd__rip__4198619__type* @G_0x7fd__rip__4198619_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %5 = load i64, i64* bitcast (%G_0x6a1__rip__4198967__type* @G_0x6a1__rip__4198967_ to i64*), align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401257(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %5 = load i64, i64* bitcast (%G_0x603__rip__4199141__type* @G_0x603__rip__4199141_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x5cb__rip__4199149__type* @G_0x5cb__rip__4199149_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x5e3__rip__4199157__type* @G_0x5e3__rip__4199157_ to i64*), align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401339(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %5 = load i64, i64* bitcast (%G_0x462__rip__4199566__type* @G_0x462__rip__4199566_ to i64*), align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40149e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40099b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
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
