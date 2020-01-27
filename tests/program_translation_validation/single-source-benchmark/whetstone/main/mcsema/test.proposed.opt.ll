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
%G_0x6020c0___rdx_8__type = type <{ [8 x i8] }>
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
@G_0x6020c0___rdx_8_ = global %G_0x6020c0___rdx_8__type zeroinitializer
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
  %328 = phi i64 [ %300, %block_.L_400931 ], [ %2717, %block_401584 ]
  %329 = phi i32 [ %76, %block_.L_400931 ], [ %2718, %block_401584 ]
  %330 = phi i64 [ %77, %block_.L_400931 ], [ %.pre4, %block_401584 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400931 ], [ %2693, %block_401584 ]
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
  %383 = phi i64 [ %.pre6, %block_.L_400936 ], [ %2641, %block_40154b ]
  %384 = phi i64 [ %.pre5, %block_.L_400936 ], [ %2674, %block_40154b ]
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
  %876 = phi i64 [ %975, %block_400b9a ], [ %.pre10, %block_.L_400b50 ]
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
  %946 = fadd double %945, %919
  %947 = fmul double %946, %921
  store double %947, double* %303, align 1
  store i64 0, i64* %304, align 1
  store double %947, double* bitcast (%G_0x6020e0_type* @G_0x6020e0 to double*), align 8
  %948 = add i64 %913, 243
  store i64 %948, i64* %3, align 8
  %949 = load i64, i64* %880, align 8
  %950 = add i64 %949, 1
  store i64 %950, i64* %RAX.i1199, align 8
  %951 = icmp eq i64 %949, -1
  %952 = icmp eq i64 %950, 0
  %953 = or i1 %951, %952
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %14, align 1
  %955 = trunc i64 %950 to i32
  %956 = and i32 %955, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956)
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %21, align 1
  %961 = xor i64 %949, %950
  %962 = lshr i64 %961, 4
  %963 = trunc i64 %962 to i8
  %964 = and i8 %963, 1
  store i8 %964, i8* %26, align 1
  %965 = zext i1 %952 to i8
  store i8 %965, i8* %29, align 1
  %966 = lshr i64 %950, 63
  %967 = trunc i64 %966 to i8
  store i8 %967, i8* %32, align 1
  %968 = lshr i64 %949, 63
  %969 = xor i64 %966, %968
  %970 = add nuw nsw i64 %969, %966
  %971 = icmp eq i64 %970, 2
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %38, align 1
  %973 = add i64 %913, 251
  store i64 %973, i64* %3, align 8
  store i64 %950, i64* %880, align 8
  %974 = load i64, i64* %3, align 8
  %975 = add i64 %974, -265
  store i64 %975, i64* %3, align 8
  br label %block_.L_400b8c

block_.L_400c9a:                                  ; preds = %block_.L_400b8c
  %976 = add i64 %877, -176
  %977 = add i64 %913, 6
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RAX.i1199, align 8
  %981 = add i64 %877, -172
  %982 = add i64 %913, 12
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = sub i32 %979, %984
  %986 = icmp ult i32 %979, %984
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %14, align 1
  %988 = and i32 %985, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %21, align 1
  %993 = xor i32 %984, %979
  %994 = xor i32 %993, %985
  %995 = lshr i32 %994, 4
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  store i8 %997, i8* %26, align 1
  %998 = icmp eq i32 %985, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %29, align 1
  %1000 = lshr i32 %985, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %32, align 1
  %1002 = lshr i32 %979, 31
  %1003 = lshr i32 %984, 31
  %1004 = xor i32 %1003, %1002
  %1005 = xor i32 %1000, %1002
  %1006 = add nuw nsw i32 %1005, %1004
  %1007 = icmp eq i32 %1006, 2
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %38, align 1
  %.v46 = select i1 %998, i64 18, i64 71
  %1009 = add i64 %913, %.v46
  store i64 %1009, i64* %3, align 8
  br i1 %998, label %block_400cac, label %block_.L_400ce1

block_400cac:                                     ; preds = %block_.L_400c9a
  %1010 = add i64 %1009, 4
  store i64 %1010, i64* %3, align 8
  %1011 = load i64, i64* %884, align 8
  store i64 %1011, i64* %RDI.i1206, align 8
  %1012 = add i64 %877, -48
  %1013 = add i64 %1009, 8
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1015, i64* %RSI.i1110, align 8
  %1016 = add i64 %1009, 12
  store i64 %1016, i64* %3, align 8
  %1017 = load i64, i64* %884, align 8
  store i64 %1017, i64* %RDX.i1213, align 8
  %1018 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %1018, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1019 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %1019, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1020 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %1020, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1021 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %1022 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1021, i64* %1022, align 1
  store double 0.000000e+00, double* %317, align 1
  %1023 = add i64 %1009, 2292
  %1024 = add i64 %1009, 53
  %1025 = load i64, i64* %6, align 8
  %1026 = add i64 %1025, -8
  %1027 = inttoptr i64 %1026 to i64*
  store i64 %1024, i64* %1027, align 8
  store i64 %1026, i64* %6, align 8
  store i64 %1023, i64* %3, align 8
  %call2_400cdc = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1023, %struct.Memory* %MEMORY.6)
  %.pre11 = load i64, i64* %RBP.i, align 8
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_400ce1

block_.L_400ce1:                                  ; preds = %block_.L_400c9a, %block_400cac
  %1028 = phi i64 [ %1009, %block_.L_400c9a ], [ %.pre12, %block_400cac ]
  %1029 = phi i64 [ %877, %block_.L_400c9a ], [ %.pre11, %block_400cac ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.6, %block_.L_400c9a ], [ %call2_400cdc, %block_400cac ]
  %1030 = add i64 %1029, -24
  %1031 = add i64 %1028, 8
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i64*
  store i64 1, i64* %1032, align 8
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400ce9

block_.L_400ce9:                                  ; preds = %block_400cf7, %block_.L_400ce1
  %1033 = phi i64 [ %.pre13, %block_.L_400ce1 ], [ %1107, %block_400cf7 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.8, %block_.L_400ce1 ], [ %call2_400d01, %block_400cf7 ]
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -24
  %1036 = add i64 %1033, 4
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %RAX.i1199, align 8
  %1039 = add i64 %1034, -48
  %1040 = add i64 %1033, 8
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i64*
  %1042 = load i64, i64* %1041, align 8
  %1043 = sub i64 %1038, %1042
  %1044 = icmp ult i64 %1038, %1042
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %14, align 1
  %1046 = trunc i64 %1043 to i32
  %1047 = and i32 %1046, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %21, align 1
  %1052 = xor i64 %1042, %1038
  %1053 = xor i64 %1052, %1043
  %1054 = lshr i64 %1053, 4
  %1055 = trunc i64 %1054 to i8
  %1056 = and i8 %1055, 1
  store i8 %1056, i8* %26, align 1
  %1057 = icmp eq i64 %1043, 0
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %29, align 1
  %1059 = lshr i64 %1043, 63
  %1060 = trunc i64 %1059 to i8
  store i8 %1060, i8* %32, align 1
  %1061 = lshr i64 %1038, 63
  %1062 = lshr i64 %1042, 63
  %1063 = xor i64 %1062, %1061
  %1064 = xor i64 %1059, %1061
  %1065 = add nuw nsw i64 %1064, %1063
  %1066 = icmp eq i64 %1065, 2
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %38, align 1
  %1068 = icmp ne i8 %1060, 0
  %1069 = xor i1 %1068, %1066
  %.demorgan47 = or i1 %1057, %1069
  %.v48 = select i1 %.demorgan47, i64 14, i64 46
  %1070 = add i64 %1033, %.v48
  store i64 %1070, i64* %3, align 8
  br i1 %.demorgan47, label %block_400cf7, label %block_.L_400d17

block_400cf7:                                     ; preds = %block_.L_400ce9
  store i64 ptrtoint (%G__0x6020c0_type* @G__0x6020c0 to i64), i64* %RDI.i1206, align 8
  %1071 = add i64 %1070, 2329
  %1072 = add i64 %1070, 15
  %1073 = load i64, i64* %6, align 8
  %1074 = add i64 %1073, -8
  %1075 = inttoptr i64 %1074 to i64*
  store i64 %1072, i64* %1075, align 8
  store i64 %1074, i64* %6, align 8
  store i64 %1071, i64* %3, align 8
  %call2_400d01 = tail call %struct.Memory* @sub_401610.PA(%struct.State* %0, i64 %1071, %struct.Memory* %MEMORY.9)
  %1076 = load i64, i64* %RBP.i, align 8
  %1077 = add i64 %1076, -24
  %1078 = load i64, i64* %3, align 8
  %1079 = add i64 %1078, 4
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1077 to i64*
  %1081 = load i64, i64* %1080, align 8
  %1082 = add i64 %1081, 1
  store i64 %1082, i64* %RAX.i1199, align 8
  %1083 = icmp eq i64 %1081, -1
  %1084 = icmp eq i64 %1082, 0
  %1085 = or i1 %1083, %1084
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %14, align 1
  %1087 = trunc i64 %1082 to i32
  %1088 = and i32 %1087, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %21, align 1
  %1093 = xor i64 %1081, %1082
  %1094 = lshr i64 %1093, 4
  %1095 = trunc i64 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %26, align 1
  %1097 = zext i1 %1084 to i8
  store i8 %1097, i8* %29, align 1
  %1098 = lshr i64 %1082, 63
  %1099 = trunc i64 %1098 to i8
  store i8 %1099, i8* %32, align 1
  %1100 = lshr i64 %1081, 63
  %1101 = xor i64 %1098, %1100
  %1102 = add nuw nsw i64 %1101, %1098
  %1103 = icmp eq i64 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %38, align 1
  %1105 = add i64 %1078, 12
  store i64 %1105, i64* %3, align 8
  store i64 %1082, i64* %1080, align 8
  %1106 = load i64, i64* %3, align 8
  %1107 = add i64 %1106, -41
  store i64 %1107, i64* %3, align 8
  br label %block_.L_400ce9

block_.L_400d17:                                  ; preds = %block_.L_400ce9
  %1108 = add i64 %1034, -176
  %1109 = add i64 %1070, 6
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = zext i32 %1111 to i64
  store i64 %1112, i64* %RAX.i1199, align 8
  %1113 = add i64 %1034, -172
  %1114 = add i64 %1070, 12
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  %1116 = load i32, i32* %1115, align 4
  %1117 = sub i32 %1111, %1116
  %1118 = icmp ult i32 %1111, %1116
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %14, align 1
  %1120 = and i32 %1117, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %21, align 1
  %1125 = xor i32 %1116, %1111
  %1126 = xor i32 %1125, %1117
  %1127 = lshr i32 %1126, 4
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %26, align 1
  %1130 = icmp eq i32 %1117, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %29, align 1
  %1132 = lshr i32 %1117, 31
  %1133 = trunc i32 %1132 to i8
  store i8 %1133, i8* %32, align 1
  %1134 = lshr i32 %1111, 31
  %1135 = lshr i32 %1116, 31
  %1136 = xor i32 %1135, %1134
  %1137 = xor i32 %1132, %1134
  %1138 = add nuw nsw i32 %1137, %1136
  %1139 = icmp eq i32 %1138, 2
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %38, align 1
  %.v49 = select i1 %1130, i64 18, i64 71
  %1141 = add i64 %1070, %.v49
  store i64 %1141, i64* %3, align 8
  br i1 %1130, label %block_400d29, label %block_.L_400d5e

block_400d29:                                     ; preds = %block_.L_400d17
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %3, align 8
  %1143 = load i64, i64* %1041, align 8
  store i64 %1143, i64* %RDI.i1206, align 8
  %1144 = add i64 %1034, -40
  %1145 = add i64 %1141, 8
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %RSI.i1110, align 8
  %1148 = add i64 %1141, 12
  store i64 %1148, i64* %3, align 8
  %1149 = load i64, i64* %1146, align 8
  store i64 %1149, i64* %RDX.i1213, align 8
  %1150 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %1150, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1151 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %1151, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1152 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %1152, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1153 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %1154 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1153, i64* %1154, align 1
  store double 0.000000e+00, double* %317, align 1
  %1155 = add i64 %1141, 2167
  %1156 = add i64 %1141, 53
  %1157 = load i64, i64* %6, align 8
  %1158 = add i64 %1157, -8
  %1159 = inttoptr i64 %1158 to i64*
  store i64 %1156, i64* %1159, align 8
  store i64 %1158, i64* %6, align 8
  store i64 %1155, i64* %3, align 8
  %call2_400d59 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1155, %struct.Memory* %MEMORY.9)
  %.pre14 = load i64, i64* %3, align 8
  %.pre15 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d5e

block_.L_400d5e:                                  ; preds = %block_.L_400d17, %block_400d29
  %1160 = phi i64 [ %1034, %block_.L_400d17 ], [ %.pre15, %block_400d29 ]
  %1161 = phi i64 [ %1141, %block_.L_400d17 ], [ %.pre14, %block_400d29 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_400d17 ], [ %call2_400d59, %block_400d29 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1162 = add i64 %1160, -24
  %1163 = add i64 %1161, 19
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i64*
  store i64 1, i64* %1164, align 8
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_400d71

block_.L_400d71:                                  ; preds = %block_.L_400dfa, %block_.L_400d5e
  %1165 = phi i64 [ %1288, %block_.L_400dfa ], [ %.pre16, %block_.L_400d5e ]
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -24
  %1168 = add i64 %1165, 4
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RAX.i1199, align 8
  %1171 = add i64 %1166, -56
  %1172 = add i64 %1165, 8
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i64*
  %1174 = load i64, i64* %1173, align 8
  %1175 = sub i64 %1170, %1174
  %1176 = icmp ult i64 %1170, %1174
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %14, align 1
  %1178 = trunc i64 %1175 to i32
  %1179 = and i32 %1178, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %21, align 1
  %1184 = xor i64 %1174, %1170
  %1185 = xor i64 %1184, %1175
  %1186 = lshr i64 %1185, 4
  %1187 = trunc i64 %1186 to i8
  %1188 = and i8 %1187, 1
  store i8 %1188, i8* %26, align 1
  %1189 = icmp eq i64 %1175, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %29, align 1
  %1191 = lshr i64 %1175, 63
  %1192 = trunc i64 %1191 to i8
  store i8 %1192, i8* %32, align 1
  %1193 = lshr i64 %1170, 63
  %1194 = lshr i64 %1174, 63
  %1195 = xor i64 %1194, %1193
  %1196 = xor i64 %1191, %1193
  %1197 = add nuw nsw i64 %1196, %1195
  %1198 = icmp eq i64 %1197, 2
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %38, align 1
  %1200 = icmp ne i8 %1192, 0
  %1201 = xor i1 %1200, %1198
  %.demorgan50 = or i1 %1189, %1201
  %.v51 = select i1 %.demorgan50, i64 14, i64 159
  %1202 = add i64 %1165, %.v51
  store i64 %1202, i64* %3, align 8
  br i1 %.demorgan50, label %block_400d7f, label %block_.L_400e10

block_400d7f:                                     ; preds = %block_.L_400d71
  %1203 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1204 = add i32 %1203, -1
  %1205 = icmp eq i32 %1203, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %14, align 1
  %1207 = and i32 %1204, 255
  %1208 = tail call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  store i8 %1211, i8* %21, align 1
  %1212 = xor i32 %1203, %1204
  %1213 = lshr i32 %1212, 4
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  store i8 %1215, i8* %26, align 1
  %1216 = icmp eq i32 %1204, 0
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %29, align 1
  %1218 = lshr i32 %1204, 31
  %1219 = trunc i32 %1218 to i8
  store i8 %1219, i8* %32, align 1
  %1220 = lshr i32 %1203, 31
  %1221 = xor i32 %1218, %1220
  %1222 = add nuw nsw i32 %1221, %1220
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %38, align 1
  %.v52 = select i1 %1216, i64 14, i64 30
  %1225 = add i64 %1202, %.v52
  %1226 = add i64 %1225, 11
  store i64 %1226, i64* %3, align 8
  br i1 %1216, label %block_400d8d, label %block_.L_400d9d

block_400d8d:                                     ; preds = %block_400d7f
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1227 = add i64 %1225, 27
  store i64 %1227, i64* %3, align 8
  br label %block_.L_400da8

block_.L_400d9d:                                  ; preds = %block_400d7f
  store i32 3, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400da8

block_.L_400da8:                                  ; preds = %block_.L_400d9d, %block_400d8d
  %1228 = phi i32 [ 1, %block_.L_400d9d ], [ 0, %block_400d8d ]
  %1229 = phi i64 [ %1226, %block_.L_400d9d ], [ %1227, %block_400d8d ]
  store i8 0, i8* %14, align 1
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1228)
  %1231 = trunc i32 %1230 to i8
  %1232 = xor i8 %1231, 1
  store i8 %1232, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1233 = icmp eq i32 %1228, 0
  %1234 = trunc i32 %1228 to i8
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v53 = select i1 %1233, i64 30, i64 14
  %1236 = add i64 %1229, %.v53
  %1237 = add i64 %1236, 11
  store i64 %1237, i64* %3, align 8
  br i1 %1233, label %block_.L_400dc6, label %block_400db6

block_400db6:                                     ; preds = %block_.L_400da8
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1238 = add i64 %1236, 27
  store i64 %1238, i64* %3, align 8
  br label %block_.L_400dd1

block_.L_400dc6:                                  ; preds = %block_.L_400da8
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400dd1

block_.L_400dd1:                                  ; preds = %block_.L_400dc6, %block_400db6
  %1239 = phi i32 [ 1, %block_.L_400dc6 ], [ 0, %block_400db6 ]
  %1240 = phi i64 [ %1237, %block_.L_400dc6 ], [ %1238, %block_400db6 ]
  %1241 = add nsw i32 %1239, -1
  %1242 = trunc i32 %1239 to i8
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %14, align 1
  %1244 = and i32 %1241, 255
  %1245 = tail call i32 @llvm.ctpop.i32(i32 %1244)
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  store i8 %1248, i8* %21, align 1
  %1249 = lshr i32 %1241, 4
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  store i8 %1251, i8* %26, align 1
  %1252 = icmp eq i32 %1241, 0
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %29, align 1
  %1254 = lshr i32 %1241, 31
  %1255 = trunc i32 %1254 to i8
  store i8 %1255, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1256 = icmp ne i8 %1255, 0
  %.v54 = select i1 %1256, i64 14, i64 30
  %1257 = add i64 %1240, %.v54
  %1258 = add i64 %1257, 11
  store i64 %1258, i64* %3, align 8
  br i1 %1256, label %block_400ddf, label %block_.L_400def

block_400ddf:                                     ; preds = %block_.L_400dd1
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1259 = add i64 %1257, 27
  store i64 %1259, i64* %3, align 8
  br label %block_.L_400dfa

block_.L_400def:                                  ; preds = %block_.L_400dd1
  store i32 0, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  br label %block_.L_400dfa

block_.L_400dfa:                                  ; preds = %block_.L_400def, %block_400ddf
  %1260 = phi i64 [ %1258, %block_.L_400def ], [ %1259, %block_400ddf ]
  %1261 = add i64 %1260, 9
  store i64 %1261, i64* %3, align 8
  %1262 = load i64, i64* %1169, align 8
  %1263 = add i64 %1262, 1
  store i64 %1263, i64* %RAX.i1199, align 8
  %1264 = icmp eq i64 %1262, -1
  %1265 = icmp eq i64 %1263, 0
  %1266 = or i1 %1264, %1265
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %14, align 1
  %1268 = trunc i64 %1263 to i32
  %1269 = and i32 %1268, 255
  %1270 = tail call i32 @llvm.ctpop.i32(i32 %1269)
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  store i8 %1273, i8* %21, align 1
  %1274 = xor i64 %1262, %1263
  %1275 = lshr i64 %1274, 4
  %1276 = trunc i64 %1275 to i8
  %1277 = and i8 %1276, 1
  store i8 %1277, i8* %26, align 1
  %1278 = zext i1 %1265 to i8
  store i8 %1278, i8* %29, align 1
  %1279 = lshr i64 %1263, 63
  %1280 = trunc i64 %1279 to i8
  store i8 %1280, i8* %32, align 1
  %1281 = lshr i64 %1262, 63
  %1282 = xor i64 %1279, %1281
  %1283 = add nuw nsw i64 %1282, %1279
  %1284 = icmp eq i64 %1283, 2
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %38, align 1
  %1286 = add i64 %1260, 17
  store i64 %1286, i64* %3, align 8
  store i64 %1263, i64* %1169, align 8
  %1287 = load i64, i64* %3, align 8
  %1288 = add i64 %1287, -154
  store i64 %1288, i64* %3, align 8
  br label %block_.L_400d71

block_.L_400e10:                                  ; preds = %block_.L_400d71
  %1289 = add i64 %1166, -176
  %1290 = add i64 %1202, 6
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i32*
  %1292 = load i32, i32* %1291, align 4
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RAX.i1199, align 8
  %1294 = add i64 %1166, -172
  %1295 = add i64 %1202, 12
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = sub i32 %1292, %1297
  %1299 = icmp ult i32 %1292, %1297
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %14, align 1
  %1301 = and i32 %1298, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  %1306 = xor i32 %1297, %1292
  %1307 = xor i32 %1306, %1298
  %1308 = lshr i32 %1307, 4
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  store i8 %1310, i8* %26, align 1
  %1311 = icmp eq i32 %1298, 0
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %29, align 1
  %1313 = lshr i32 %1298, 31
  %1314 = trunc i32 %1313 to i8
  store i8 %1314, i8* %32, align 1
  %1315 = lshr i32 %1292, 31
  %1316 = lshr i32 %1297, 31
  %1317 = xor i32 %1316, %1315
  %1318 = xor i32 %1313, %1315
  %1319 = add nuw nsw i32 %1318, %1317
  %1320 = icmp eq i32 %1319, 2
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %38, align 1
  %.v55 = select i1 %1311, i64 18, i64 66
  %1322 = add i64 %1202, %.v55
  store i64 %1322, i64* %3, align 8
  br i1 %1311, label %block_400e22, label %block_.L_400e52

block_400e22:                                     ; preds = %block_.L_400e10
  %1323 = add i64 %1322, 4
  store i64 %1323, i64* %3, align 8
  %1324 = load i64, i64* %1173, align 8
  store i64 %1324, i64* %RDI.i1206, align 8
  %1325 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1326 = sext i32 %1325 to i64
  store i64 %1326, i64* %RSI.i1110, align 8
  store i64 %1326, i64* %RDX.i1213, align 8
  %1327 = add i64 %1166, -112
  %1328 = add i64 %1322, 25
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i64*
  %1330 = load i64, i64* %1329, align 8
  store i64 %1330, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1331 = add i64 %1166, -120
  %1332 = add i64 %1322, 30
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1335 = add i64 %1166, -128
  %1336 = add i64 %1322, 35
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i64*
  %1338 = load i64, i64* %1337, align 8
  store i64 %1338, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1339 = add i64 %1166, -136
  %1340 = add i64 %1322, 43
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i64*
  %1342 = load i64, i64* %1341, align 8
  %1343 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1342, i64* %1343, align 1
  store double 0.000000e+00, double* %317, align 1
  %1344 = add i64 %1322, 1918
  %1345 = add i64 %1322, 48
  %1346 = load i64, i64* %6, align 8
  %1347 = add i64 %1346, -8
  %1348 = inttoptr i64 %1347 to i64*
  store i64 %1345, i64* %1348, align 8
  store i64 %1347, i64* %6, align 8
  store i64 %1344, i64* %3, align 8
  %call2_400e4d = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1344, %struct.Memory* %MEMORY.10)
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400e52

block_.L_400e52:                                  ; preds = %block_.L_400e10, %block_400e22
  %1349 = phi i64 [ %1166, %block_.L_400e10 ], [ %.pre18, %block_400e22 ]
  %1350 = phi i64 [ %1322, %block_.L_400e10 ], [ %.pre17, %block_400e22 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.10, %block_.L_400e10 ], [ %call2_400e4d, %block_400e22 ]
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1351 = add i64 %1349, -24
  %1352 = add i64 %1350, 41
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i64*
  store i64 1, i64* %1353, align 8
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_400e7b

block_.L_400e7b:                                  ; preds = %block_400e89, %block_.L_400e52
  %1354 = phi i32 [ %1413, %block_400e89 ], [ 3, %block_.L_400e52 ]
  %1355 = phi i64 [ %1492, %block_400e89 ], [ %.pre19, %block_.L_400e52 ]
  %1356 = load i64, i64* %RBP.i, align 8
  %1357 = add i64 %1356, -24
  %1358 = add i64 %1355, 4
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i64*
  %1360 = load i64, i64* %1359, align 8
  store i64 %1360, i64* %RAX.i1199, align 8
  %1361 = add i64 %1356, -64
  %1362 = add i64 %1355, 8
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i64*
  %1364 = load i64, i64* %1363, align 8
  %1365 = sub i64 %1360, %1364
  %1366 = icmp ult i64 %1360, %1364
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %14, align 1
  %1368 = trunc i64 %1365 to i32
  %1369 = and i32 %1368, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  %1374 = xor i64 %1364, %1360
  %1375 = xor i64 %1374, %1365
  %1376 = lshr i64 %1375, 4
  %1377 = trunc i64 %1376 to i8
  %1378 = and i8 %1377, 1
  store i8 %1378, i8* %26, align 1
  %1379 = icmp eq i64 %1365, 0
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %29, align 1
  %1381 = lshr i64 %1365, 63
  %1382 = trunc i64 %1381 to i8
  store i8 %1382, i8* %32, align 1
  %1383 = lshr i64 %1360, 63
  %1384 = lshr i64 %1364, 63
  %1385 = xor i64 %1384, %1383
  %1386 = xor i64 %1381, %1383
  %1387 = add nuw nsw i64 %1386, %1385
  %1388 = icmp eq i64 %1387, 2
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %38, align 1
  %1390 = icmp ne i8 %1382, 0
  %1391 = xor i1 %1390, %1388
  %.demorgan56 = or i1 %1379, %1391
  %.v57 = select i1 %.demorgan56, i64 14, i64 259
  %1392 = add i64 %1355, %.v57
  store i64 %1392, i64* %3, align 8
  br i1 %.demorgan56, label %block_400e89, label %block_.L_400f7e

block_400e89:                                     ; preds = %block_.L_400e7b
  %1393 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1394 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1395 = sub i32 %1394, %1393
  %1396 = sext i32 %1393 to i64
  %1397 = sext i32 %1395 to i64
  %1398 = mul nsw i64 %1397, %1396
  %1399 = sub i32 %1354, %1394
  %1400 = shl i64 %1398, 32
  %1401 = ashr exact i64 %1400, 32
  %1402 = sext i32 %1399 to i64
  %1403 = mul nsw i64 %1402, %1401
  %1404 = trunc i64 %1403 to i32
  store i32 %1404, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1405 = sub i32 %1404, %1354
  %1406 = mul i32 %1394, %1404
  store i32 %1406, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1407 = sub i32 %1354, %1406
  %1408 = add i32 %1404, %1406
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RCX.i1209, align 8
  %1410 = sext i32 %1407 to i64
  %1411 = sext i32 %1408 to i64
  %1412 = mul nsw i64 %1411, %1410
  %1413 = trunc i64 %1412 to i32
  store i32 %1413, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  %1414 = add i32 %1413, %1408
  %1415 = sitofp i32 %1414 to double
  %1416 = shl i64 %1412, 32
  %1417 = add i64 %1416, -4294967296
  %1418 = ashr exact i64 %1417, 29
  %1419 = add i64 %1418, ptrtoint (%G_0x6020c0___rdx_8__type* @G_0x6020c0___rdx_8_ to i64)
  %1420 = add i64 %1392, 179
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1419 to double*
  store double %1415, double* %1421, align 8
  %1422 = load i64, i64* %3, align 8
  %1423 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1424 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1425 = sext i32 %1423 to i64
  %1426 = sext i32 %1424 to i64
  %1427 = mul nsw i64 %1426, %1425
  %1428 = shl i64 %1427, 32
  %1429 = ashr exact i64 %1428, 32
  %1430 = sext i32 %1413 to i64
  %1431 = mul nsw i64 %1430, %1429
  %1432 = trunc i64 %1431 to i32
  %1433 = sitofp i32 %1432 to double
  store double %1433, double* %303, align 1
  %1434 = add i32 %1424, -1
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RAX.i1199, align 8
  %1436 = icmp eq i32 %1424, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %14, align 1
  %1438 = and i32 %1434, 255
  %1439 = tail call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  store i8 %1442, i8* %21, align 1
  %1443 = xor i32 %1424, %1434
  %1444 = lshr i32 %1443, 4
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  store i8 %1446, i8* %26, align 1
  %1447 = icmp eq i32 %1434, 0
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %29, align 1
  %1449 = lshr i32 %1434, 31
  %1450 = trunc i32 %1449 to i8
  store i8 %1450, i8* %32, align 1
  %1451 = lshr i32 %1424, 31
  %1452 = xor i32 %1449, %1451
  %1453 = add nuw nsw i32 %1452, %1451
  %1454 = icmp eq i32 %1453, 2
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %38, align 1
  %1456 = sext i32 %1434 to i64
  store i64 %1456, i64* %RDX.i1213, align 8
  %1457 = shl nsw i64 %1456, 3
  %1458 = add i64 %1457, ptrtoint (%G_0x6020c0___rdx_8__type* @G_0x6020c0___rdx_8_ to i64)
  %1459 = add i64 %1422, 49
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to double*
  store double %1433, double* %1460, align 8
  %1461 = load i64, i64* %RBP.i, align 8
  %1462 = add i64 %1461, -24
  %1463 = load i64, i64* %3, align 8
  %1464 = add i64 %1463, 4
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1462 to i64*
  %1466 = load i64, i64* %1465, align 8
  %1467 = add i64 %1466, 1
  store i64 %1467, i64* %RAX.i1199, align 8
  %1468 = icmp eq i64 %1466, -1
  %1469 = icmp eq i64 %1467, 0
  %1470 = or i1 %1468, %1469
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %14, align 1
  %1472 = trunc i64 %1467 to i32
  %1473 = and i32 %1472, 255
  %1474 = tail call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  store i8 %1477, i8* %21, align 1
  %1478 = xor i64 %1466, %1467
  %1479 = lshr i64 %1478, 4
  %1480 = trunc i64 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %26, align 1
  %1482 = zext i1 %1469 to i8
  store i8 %1482, i8* %29, align 1
  %1483 = lshr i64 %1467, 63
  %1484 = trunc i64 %1483 to i8
  store i8 %1484, i8* %32, align 1
  %1485 = lshr i64 %1466, 63
  %1486 = xor i64 %1483, %1485
  %1487 = add nuw nsw i64 %1486, %1483
  %1488 = icmp eq i64 %1487, 2
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %38, align 1
  %1490 = add i64 %1463, 12
  store i64 %1490, i64* %3, align 8
  store i64 %1467, i64* %1465, align 8
  %1491 = load i64, i64* %3, align 8
  %1492 = add i64 %1491, -254
  store i64 %1492, i64* %3, align 8
  br label %block_.L_400e7b

block_.L_400f7e:                                  ; preds = %block_.L_400e7b
  %1493 = add i64 %1356, -176
  %1494 = add i64 %1392, 6
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RAX.i1199, align 8
  %1498 = add i64 %1356, -172
  %1499 = add i64 %1392, 12
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = sub i32 %1496, %1501
  %1503 = icmp ult i32 %1496, %1501
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %14, align 1
  %1505 = and i32 %1502, 255
  %1506 = tail call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  store i8 %1509, i8* %21, align 1
  %1510 = xor i32 %1501, %1496
  %1511 = xor i32 %1510, %1502
  %1512 = lshr i32 %1511, 4
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  store i8 %1514, i8* %26, align 1
  %1515 = icmp eq i32 %1502, 0
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %29, align 1
  %1517 = lshr i32 %1502, 31
  %1518 = trunc i32 %1517 to i8
  store i8 %1518, i8* %32, align 1
  %1519 = lshr i32 %1496, 31
  %1520 = lshr i32 %1501, 31
  %1521 = xor i32 %1520, %1519
  %1522 = xor i32 %1517, %1519
  %1523 = add nuw nsw i32 %1522, %1521
  %1524 = icmp eq i32 %1523, 2
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %38, align 1
  %.v58 = select i1 %1515, i64 18, i64 79
  %1526 = add i64 %1392, %.v58
  store i64 %1526, i64* %3, align 8
  br i1 %1515, label %block_400f90, label %block_.L_400fcd

block_400f90:                                     ; preds = %block_.L_400f7e
  %1527 = add i64 %1526, 4
  store i64 %1527, i64* %3, align 8
  %1528 = load i64, i64* %1363, align 8
  store i64 %1528, i64* %RDI.i1206, align 8
  %1529 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1530 = sext i32 %1529 to i64
  store i64 %1530, i64* %RSI.i1110, align 8
  %1531 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1532 = sext i32 %1531 to i64
  store i64 %1532, i64* %RDX.i1213, align 8
  %1533 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %1533, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1534 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %1534, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1535 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %1535, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1536 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %1537 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1536, i64* %1537, align 1
  store double 0.000000e+00, double* %317, align 1
  %1538 = add i64 %1526, 1552
  %1539 = add i64 %1526, 61
  %1540 = load i64, i64* %6, align 8
  %1541 = add i64 %1540, -8
  %1542 = inttoptr i64 %1541 to i64*
  store i64 %1539, i64* %1542, align 8
  store i64 %1541, i64* %6, align 8
  store i64 %1538, i64* %3, align 8
  %call2_400fc8 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1538, %struct.Memory* %MEMORY.15)
  %.pre20 = load i64, i64* %3, align 8
  %.pre21 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400fcd

block_.L_400fcd:                                  ; preds = %block_.L_400f7e, %block_400f90
  %1543 = phi i64 [ %1356, %block_.L_400f7e ], [ %.pre21, %block_400f90 ]
  %1544 = phi i64 [ %1526, %block_.L_400f7e ], [ %.pre20, %block_400f90 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_.L_400f7e ], [ %call2_400fc8, %block_400f90 ]
  %1545 = load i64, i64* bitcast (%G_0x90b__rip__4198357__type* @G_0x90b__rip__4198357_ to i64*), align 8
  store i64 %1545, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1546 = add i64 %1543, -144
  %1547 = add i64 %1544, 16
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i64*
  store i64 %1545, i64* %1548, align 8
  %1549 = load i64, i64* %RBP.i, align 8
  %1550 = add i64 %1549, -152
  %1551 = load i64, i64* %3, align 8
  %1552 = add i64 %1551, 8
  store i64 %1552, i64* %3, align 8
  %1553 = load i64, i64* %314, align 1
  %1554 = inttoptr i64 %1550 to i64*
  store i64 %1553, i64* %1554, align 8
  %1555 = load i64, i64* %RBP.i, align 8
  %1556 = add i64 %1555, -24
  %1557 = load i64, i64* %3, align 8
  %1558 = add i64 %1557, 8
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1556 to i64*
  store i64 1, i64* %1559, align 8
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_400fed

block_.L_400fed:                                  ; preds = %block_400ffb, %block_.L_400fcd
  %1560 = phi i64 [ %.pre22, %block_.L_400fcd ], [ %1922, %block_400ffb ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400fcd ], [ %call2_4011ba, %block_400ffb ]
  %1561 = load i64, i64* %RBP.i, align 8
  %1562 = add i64 %1561, -24
  %1563 = add i64 %1560, 4
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i64*
  %1565 = load i64, i64* %1564, align 8
  store i64 %1565, i64* %RAX.i1199, align 8
  %1566 = add i64 %1561, -72
  %1567 = add i64 %1560, 8
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i64*
  %1569 = load i64, i64* %1568, align 8
  %1570 = sub i64 %1565, %1569
  %1571 = icmp ult i64 %1565, %1569
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %14, align 1
  %1573 = trunc i64 %1570 to i32
  %1574 = and i32 %1573, 255
  %1575 = tail call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  store i8 %1578, i8* %21, align 1
  %1579 = xor i64 %1569, %1565
  %1580 = xor i64 %1579, %1570
  %1581 = lshr i64 %1580, 4
  %1582 = trunc i64 %1581 to i8
  %1583 = and i8 %1582, 1
  store i8 %1583, i8* %26, align 1
  %1584 = icmp eq i64 %1570, 0
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %29, align 1
  %1586 = lshr i64 %1570, 63
  %1587 = trunc i64 %1586 to i8
  store i8 %1587, i8* %32, align 1
  %1588 = lshr i64 %1565, 63
  %1589 = lshr i64 %1569, 63
  %1590 = xor i64 %1589, %1588
  %1591 = xor i64 %1586, %1588
  %1592 = add nuw nsw i64 %1591, %1590
  %1593 = icmp eq i64 %1592, 2
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %38, align 1
  %1595 = icmp ne i8 %1587, 0
  %1596 = xor i1 %1595, %1593
  %.demorgan59 = or i1 %1584, %1596
  %.v60 = select i1 %.demorgan59, i64 14, i64 503
  %1597 = add i64 %1560, %.v60
  store i64 %1597, i64* %3, align 8
  br i1 %.demorgan59, label %block_400ffb, label %block_.L_4011e4

block_400ffb:                                     ; preds = %block_.L_400fed
  %1598 = load i64, i64* bitcast (%G_0x8d5__rip__4198403__type* @G_0x8d5__rip__4198403_ to i64*), align 8
  store i64 %1598, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1599 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  store i64 %1599, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1600 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  store i64 %1600, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1601 = add i64 %1561, -144
  %1602 = add i64 %1597, 34
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i64*
  %1604 = load i64, i64* %1603, align 8
  %1605 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1604, i64* %1605, align 1
  store double 0.000000e+00, double* %317, align 1
  %1606 = add i64 %1561, -224
  %1607 = add i64 %1597, 42
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i64*
  store i64 %1598, i64* %1608, align 8
  %1609 = load i64, i64* %3, align 8
  %1610 = load <2 x i32>, <2 x i32>* %318, align 1
  %1611 = load <2 x i32>, <2 x i32>* %319, align 1
  %1612 = extractelement <2 x i32> %1610, i32 0
  store i32 %1612, i32* %320, align 1
  %1613 = extractelement <2 x i32> %1610, i32 1
  store i32 %1613, i32* %322, align 1
  %1614 = extractelement <2 x i32> %1611, i32 0
  store i32 %1614, i32* %323, align 1
  %1615 = extractelement <2 x i32> %1611, i32 1
  store i32 %1615, i32* %325, align 1
  %1616 = load i64, i64* %RBP.i, align 8
  %1617 = add i64 %1616, -232
  %1618 = add i64 %1609, 11
  store i64 %1618, i64* %3, align 8
  %1619 = load i64, i64* %355, align 1
  %1620 = inttoptr i64 %1617 to i64*
  store i64 %1619, i64* %1620, align 8
  %1621 = load i64, i64* %RBP.i, align 8
  %1622 = add i64 %1621, -240
  %1623 = load i64, i64* %3, align 8
  %1624 = add i64 %1623, 8
  store i64 %1624, i64* %3, align 8
  %1625 = load i64, i64* %353, align 1
  %1626 = inttoptr i64 %1622 to i64*
  store i64 %1625, i64* %1626, align 8
  %1627 = load i64, i64* %3, align 8
  %1628 = add i64 %1627, -2360
  %1629 = add i64 %1627, 5
  %1630 = load i64, i64* %6, align 8
  %1631 = add i64 %1630, -8
  %1632 = inttoptr i64 %1631 to i64*
  store i64 %1629, i64* %1632, align 8
  store i64 %1631, i64* %6, align 8
  store i64 %1628, i64* %3, align 8
  %call2_401038 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1628, %struct.Memory* %MEMORY.18)
  %1633 = load i64, i64* %RBP.i, align 8
  %1634 = add i64 %1633, -232
  %1635 = load i64, i64* %3, align 8
  %1636 = add i64 %1635, 8
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1634 to double*
  %1638 = load double, double* %1637, align 8
  %1639 = load double, double* %303, align 1
  %1640 = fmul double %1638, %1639
  store double %1640, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1641 = add i64 %1633, -144
  %1642 = add i64 %1635, 20
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i64*
  %1644 = load i64, i64* %1643, align 8
  store i64 %1644, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1645 = add i64 %1633, -248
  %1646 = add i64 %1635, 28
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to double*
  store double %1640, double* %1647, align 8
  %1648 = load i64, i64* %3, align 8
  %1649 = add i64 %1648, -2457
  %1650 = add i64 %1648, 5
  %1651 = load i64, i64* %6, align 8
  %1652 = add i64 %1651, -8
  %1653 = inttoptr i64 %1652 to i64*
  store i64 %1650, i64* %1653, align 8
  store i64 %1652, i64* %6, align 8
  store i64 %1649, i64* %3, align 8
  %call2_401059 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1649, %struct.Memory* %call2_401038)
  %1654 = load i64, i64* %RBP.i, align 8
  %1655 = add i64 %1654, -248
  %1656 = load i64, i64* %3, align 8
  %1657 = add i64 %1656, 8
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1655 to double*
  %1659 = load double, double* %1658, align 8
  %1660 = load double, double* %303, align 1
  %1661 = fmul double %1659, %1660
  store double %1661, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1662 = add i64 %1654, -144
  %1663 = add i64 %1656, 20
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to double*
  %1665 = load double, double* %1664, align 8
  store double %1665, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1666 = add i64 %1654, -152
  %1667 = add i64 %1656, 28
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to double*
  %1669 = load double, double* %1668, align 8
  %1670 = fadd double %1665, %1669
  store double %1670, double* %303, align 1
  store i64 0, i64* %304, align 1
  %1671 = add i64 %1654, -256
  %1672 = add i64 %1656, 36
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to double*
  store double %1661, double* %1673, align 8
  %1674 = load i64, i64* %3, align 8
  %1675 = add i64 %1674, -2498
  %1676 = add i64 %1674, 5
  %1677 = load i64, i64* %6, align 8
  %1678 = add i64 %1677, -8
  %1679 = inttoptr i64 %1678 to i64*
  store i64 %1676, i64* %1679, align 8
  store i64 %1678, i64* %6, align 8
  store i64 %1675, i64* %3, align 8
  %call2_401082 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1675, %struct.Memory* %call2_401059)
  %1680 = load i64, i64* %RBP.i, align 8
  %1681 = add i64 %1680, -144
  %1682 = load i64, i64* %3, align 8
  %1683 = add i64 %1682, 8
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1681 to double*
  %1685 = load double, double* %1684, align 8
  store double %1685, double* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1686 = add i64 %1680, -152
  %1687 = add i64 %1682, 16
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to double*
  %1689 = load double, double* %1688, align 8
  %1690 = fsub double %1685, %1689
  store double %1690, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1691 = add i64 %1680, -264
  %1692 = add i64 %1682, 24
  store i64 %1692, i64* %3, align 8
  %1693 = load i64, i64* %314, align 1
  %1694 = inttoptr i64 %1691 to i64*
  store i64 %1693, i64* %1694, align 8
  %1695 = load i64, i64* %3, align 8
  %1696 = load <2 x i32>, <2 x i32>* %326, align 1
  %1697 = load <2 x i32>, <2 x i32>* %327, align 1
  %1698 = extractelement <2 x i32> %1696, i32 0
  store i32 %1698, i32* %320, align 1
  %1699 = extractelement <2 x i32> %1696, i32 1
  store i32 %1699, i32* %322, align 1
  %1700 = extractelement <2 x i32> %1697, i32 0
  store i32 %1700, i32* %323, align 1
  %1701 = extractelement <2 x i32> %1697, i32 1
  store i32 %1701, i32* %325, align 1
  %1702 = add i64 %1695, -2527
  %1703 = add i64 %1695, 8
  %1704 = load i64, i64* %6, align 8
  %1705 = add i64 %1704, -8
  %1706 = inttoptr i64 %1705 to i64*
  store i64 %1703, i64* %1706, align 8
  store i64 %1705, i64* %6, align 8
  store i64 %1702, i64* %3, align 8
  %call2_4010a2 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1702, %struct.Memory* %call2_401082)
  %1707 = load i64, i64* %RBP.i, align 8
  %1708 = add i64 %1707, -264
  %1709 = load i64, i64* %3, align 8
  %1710 = add i64 %1709, 8
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1708 to double*
  %1712 = load double, double* %1711, align 8
  %1713 = load double, double* %303, align 1
  %1714 = fadd double %1712, %1713
  store double %1714, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1715 = add i64 %1707, -224
  %1716 = add i64 %1709, 20
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to double*
  %1718 = load double, double* %1717, align 8
  store double %1718, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1719 = fsub double %1714, %1718
  store double %1719, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1720 = add i64 %1707, -256
  %1721 = add i64 %1709, 32
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to double*
  %1723 = load double, double* %1722, align 8
  %1724 = fdiv double %1723, %1719
  store double %1724, double* %311, align 1
  store i64 0, i64* %312, align 1
  %1725 = bitcast double %1724 to <2 x i32>
  %1726 = extractelement <2 x i32> %1725, i32 0
  store i32 %1726, i32* %320, align 1
  %1727 = extractelement <2 x i32> %1725, i32 1
  store i32 %1727, i32* %322, align 1
  store i32 0, i32* %323, align 1
  store i32 0, i32* %325, align 1
  %1728 = add i64 %1709, -2583
  %1729 = add i64 %1709, 44
  %1730 = load i64, i64* %6, align 8
  %1731 = add i64 %1730, -8
  %1732 = inttoptr i64 %1731 to i64*
  store i64 %1729, i64* %1732, align 8
  store i64 %1731, i64* %6, align 8
  store i64 %1728, i64* %3, align 8
  %call2_4010ce = tail call %struct.Memory* @ext_atan(%struct.State* %0, i64 %1728, %struct.Memory* %call2_4010a2)
  %1733 = load i64, i64* %3, align 8
  %1734 = load i64, i64* bitcast (%G_0x7fd__rip__4198619__type* @G_0x7fd__rip__4198619_ to i64*), align 8
  store i64 %1734, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1735 = load i64, i64* %RBP.i, align 8
  %1736 = add i64 %1735, -240
  %1737 = add i64 %1733, 16
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to double*
  %1739 = load double, double* %1738, align 8
  %1740 = load double, double* %303, align 1
  %1741 = fmul double %1739, %1740
  %1742 = add i64 %1735, -144
  %1743 = add i64 %1733, 28
  store i64 %1743, i64* %3, align 8
  %1744 = inttoptr i64 %1742 to double*
  store double %1741, double* %1744, align 8
  %1745 = load i64, i64* %3, align 8
  %1746 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  store i64 %1746, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1747 = load i64, i64* bitcast (%G_0x6020b0_type* @G_0x6020b0 to i64*), align 8
  store i64 %1747, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1748 = load i64, i64* %RBP.i, align 8
  %1749 = add i64 %1748, -152
  %1750 = add i64 %1745, 26
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i64*
  %1752 = load i64, i64* %1751, align 8
  store i64 %1752, i64* %1605, align 1
  store double 0.000000e+00, double* %317, align 1
  %1753 = add i64 %1748, -272
  %1754 = add i64 %1745, 34
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i64*
  store i64 %1746, i64* %1755, align 8
  %1756 = load i64, i64* %3, align 8
  %1757 = load <2 x i32>, <2 x i32>* %318, align 1
  %1758 = load <2 x i32>, <2 x i32>* %319, align 1
  %1759 = extractelement <2 x i32> %1757, i32 0
  store i32 %1759, i32* %320, align 1
  %1760 = extractelement <2 x i32> %1757, i32 1
  store i32 %1760, i32* %322, align 1
  %1761 = extractelement <2 x i32> %1758, i32 0
  store i32 %1761, i32* %323, align 1
  %1762 = extractelement <2 x i32> %1758, i32 1
  store i32 %1762, i32* %325, align 1
  %1763 = load i64, i64* %RBP.i, align 8
  %1764 = add i64 %1763, -280
  %1765 = add i64 %1756, 11
  store i64 %1765, i64* %3, align 8
  %1766 = load i64, i64* %353, align 1
  %1767 = inttoptr i64 %1764 to i64*
  store i64 %1766, i64* %1767, align 8
  %1768 = load i64, i64* %RBP.i, align 8
  %1769 = add i64 %1768, -288
  %1770 = load i64, i64* %3, align 8
  %1771 = add i64 %1770, 8
  store i64 %1771, i64* %3, align 8
  %1772 = load i64, i64* %355, align 1
  %1773 = inttoptr i64 %1769 to i64*
  store i64 %1772, i64* %1773, align 8
  %1774 = load i64, i64* %3, align 8
  %1775 = add i64 %1774, -2596
  %1776 = add i64 %1774, 5
  %1777 = load i64, i64* %6, align 8
  %1778 = add i64 %1777, -8
  %1779 = inttoptr i64 %1778 to i64*
  store i64 %1776, i64* %1779, align 8
  store i64 %1778, i64* %6, align 8
  store i64 %1775, i64* %3, align 8
  %call2_401124 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1775, %struct.Memory* %call2_4010ce)
  %1780 = load i64, i64* %RBP.i, align 8
  %1781 = add i64 %1780, -288
  %1782 = load i64, i64* %3, align 8
  %1783 = add i64 %1782, 8
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1781 to double*
  %1785 = load double, double* %1784, align 8
  %1786 = load double, double* %303, align 1
  %1787 = fmul double %1785, %1786
  store double %1787, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1788 = add i64 %1780, -152
  %1789 = add i64 %1782, 20
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1788 to i64*
  %1791 = load i64, i64* %1790, align 8
  store i64 %1791, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1792 = add i64 %1780, -296
  %1793 = add i64 %1782, 28
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1792 to double*
  store double %1787, double* %1794, align 8
  %1795 = load i64, i64* %3, align 8
  %1796 = add i64 %1795, -2693
  %1797 = add i64 %1795, 5
  %1798 = load i64, i64* %6, align 8
  %1799 = add i64 %1798, -8
  %1800 = inttoptr i64 %1799 to i64*
  store i64 %1797, i64* %1800, align 8
  store i64 %1799, i64* %6, align 8
  store i64 %1796, i64* %3, align 8
  %call2_401145 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1796, %struct.Memory* %call2_401124)
  %1801 = load i64, i64* %RBP.i, align 8
  %1802 = add i64 %1801, -296
  %1803 = load i64, i64* %3, align 8
  %1804 = add i64 %1803, 8
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1802 to double*
  %1806 = load double, double* %1805, align 8
  %1807 = load double, double* %303, align 1
  %1808 = fmul double %1806, %1807
  store double %1808, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1809 = add i64 %1801, -144
  %1810 = add i64 %1803, 20
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1809 to double*
  %1812 = load double, double* %1811, align 8
  store double %1812, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1813 = add i64 %1801, -152
  %1814 = add i64 %1803, 28
  store i64 %1814, i64* %3, align 8
  %1815 = inttoptr i64 %1813 to double*
  %1816 = load double, double* %1815, align 8
  %1817 = fadd double %1812, %1816
  store double %1817, double* %303, align 1
  store i64 0, i64* %304, align 1
  %1818 = add i64 %1801, -304
  %1819 = add i64 %1803, 36
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to double*
  store double %1808, double* %1820, align 8
  %1821 = load i64, i64* %3, align 8
  %1822 = add i64 %1821, -2734
  %1823 = add i64 %1821, 5
  %1824 = load i64, i64* %6, align 8
  %1825 = add i64 %1824, -8
  %1826 = inttoptr i64 %1825 to i64*
  store i64 %1823, i64* %1826, align 8
  store i64 %1825, i64* %6, align 8
  store i64 %1822, i64* %3, align 8
  %call2_40116e = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1822, %struct.Memory* %call2_401145)
  %1827 = load i64, i64* %RBP.i, align 8
  %1828 = add i64 %1827, -144
  %1829 = load i64, i64* %3, align 8
  %1830 = add i64 %1829, 8
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1828 to double*
  %1832 = load double, double* %1831, align 8
  store double %1832, double* %307, align 1
  store double 0.000000e+00, double* %309, align 1
  %1833 = add i64 %1827, -152
  %1834 = add i64 %1829, 16
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to double*
  %1836 = load double, double* %1835, align 8
  %1837 = fsub double %1832, %1836
  store double %1837, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1838 = add i64 %1827, -312
  %1839 = add i64 %1829, 24
  store i64 %1839, i64* %3, align 8
  %1840 = load i64, i64* %314, align 1
  %1841 = inttoptr i64 %1838 to i64*
  store i64 %1840, i64* %1841, align 8
  %1842 = load i64, i64* %3, align 8
  %1843 = load <2 x i32>, <2 x i32>* %326, align 1
  %1844 = load <2 x i32>, <2 x i32>* %327, align 1
  %1845 = extractelement <2 x i32> %1843, i32 0
  store i32 %1845, i32* %320, align 1
  %1846 = extractelement <2 x i32> %1843, i32 1
  store i32 %1846, i32* %322, align 1
  %1847 = extractelement <2 x i32> %1844, i32 0
  store i32 %1847, i32* %323, align 1
  %1848 = extractelement <2 x i32> %1844, i32 1
  store i32 %1848, i32* %325, align 1
  %1849 = add i64 %1842, -2763
  %1850 = add i64 %1842, 8
  %1851 = load i64, i64* %6, align 8
  %1852 = add i64 %1851, -8
  %1853 = inttoptr i64 %1852 to i64*
  store i64 %1850, i64* %1853, align 8
  store i64 %1852, i64* %6, align 8
  store i64 %1849, i64* %3, align 8
  %call2_40118e = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %1849, %struct.Memory* %call2_40116e)
  %1854 = load i64, i64* %RBP.i, align 8
  %1855 = add i64 %1854, -312
  %1856 = load i64, i64* %3, align 8
  %1857 = add i64 %1856, 8
  store i64 %1857, i64* %3, align 8
  %1858 = inttoptr i64 %1855 to double*
  %1859 = load double, double* %1858, align 8
  %1860 = load double, double* %303, align 1
  %1861 = fadd double %1859, %1860
  store double %1861, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1862 = add i64 %1854, -280
  %1863 = add i64 %1856, 20
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to double*
  %1865 = load double, double* %1864, align 8
  store double %1865, double* %303, align 1
  store double 0.000000e+00, double* %305, align 1
  %1866 = fsub double %1861, %1865
  store double %1866, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1867 = add i64 %1854, -304
  %1868 = add i64 %1856, 32
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to double*
  %1870 = load double, double* %1869, align 8
  %1871 = fdiv double %1870, %1866
  store double %1871, double* %311, align 1
  store i64 0, i64* %312, align 1
  %1872 = bitcast double %1871 to <2 x i32>
  %1873 = extractelement <2 x i32> %1872, i32 0
  store i32 %1873, i32* %320, align 1
  %1874 = extractelement <2 x i32> %1872, i32 1
  store i32 %1874, i32* %322, align 1
  store i32 0, i32* %323, align 1
  store i32 0, i32* %325, align 1
  %1875 = add i64 %1856, -2819
  %1876 = add i64 %1856, 44
  %1877 = load i64, i64* %6, align 8
  %1878 = add i64 %1877, -8
  %1879 = inttoptr i64 %1878 to i64*
  store i64 %1876, i64* %1879, align 8
  store i64 %1878, i64* %6, align 8
  store i64 %1875, i64* %3, align 8
  %call2_4011ba = tail call %struct.Memory* @ext_atan(%struct.State* %0, i64 %1875, %struct.Memory* %call2_40118e)
  %1880 = load i64, i64* %RBP.i, align 8
  %1881 = add i64 %1880, -272
  %1882 = load i64, i64* %3, align 8
  %1883 = add i64 %1882, 8
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1881 to double*
  %1885 = load double, double* %1884, align 8
  %1886 = load double, double* %303, align 1
  %1887 = fmul double %1885, %1886
  store double %1887, double* %307, align 1
  store i64 0, i64* %308, align 1
  %1888 = add i64 %1880, -152
  %1889 = add i64 %1882, 20
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1888 to double*
  store double %1887, double* %1890, align 8
  %1891 = load i64, i64* %RBP.i, align 8
  %1892 = add i64 %1891, -24
  %1893 = load i64, i64* %3, align 8
  %1894 = add i64 %1893, 4
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1892 to i64*
  %1896 = load i64, i64* %1895, align 8
  %1897 = add i64 %1896, 1
  store i64 %1897, i64* %RAX.i1199, align 8
  %1898 = icmp eq i64 %1896, -1
  %1899 = icmp eq i64 %1897, 0
  %1900 = or i1 %1898, %1899
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %14, align 1
  %1902 = trunc i64 %1897 to i32
  %1903 = and i32 %1902, 255
  %1904 = tail call i32 @llvm.ctpop.i32(i32 %1903)
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  store i8 %1907, i8* %21, align 1
  %1908 = xor i64 %1896, %1897
  %1909 = lshr i64 %1908, 4
  %1910 = trunc i64 %1909 to i8
  %1911 = and i8 %1910, 1
  store i8 %1911, i8* %26, align 1
  %1912 = zext i1 %1899 to i8
  store i8 %1912, i8* %29, align 1
  %1913 = lshr i64 %1897, 63
  %1914 = trunc i64 %1913 to i8
  store i8 %1914, i8* %32, align 1
  %1915 = lshr i64 %1896, 63
  %1916 = xor i64 %1913, %1915
  %1917 = add nuw nsw i64 %1916, %1913
  %1918 = icmp eq i64 %1917, 2
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %38, align 1
  %1920 = add i64 %1893, 12
  store i64 %1920, i64* %3, align 8
  store i64 %1897, i64* %1895, align 8
  %1921 = load i64, i64* %3, align 8
  %1922 = add i64 %1921, -498
  store i64 %1922, i64* %3, align 8
  br label %block_.L_400fed

block_.L_4011e4:                                  ; preds = %block_.L_400fed
  %1923 = add i64 %1561, -176
  %1924 = add i64 %1597, 6
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to i32*
  %1926 = load i32, i32* %1925, align 4
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RAX.i1199, align 8
  %1928 = add i64 %1561, -172
  %1929 = add i64 %1597, 12
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = sub i32 %1926, %1931
  %1933 = icmp ult i32 %1926, %1931
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %14, align 1
  %1935 = and i32 %1932, 255
  %1936 = tail call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  store i8 %1939, i8* %21, align 1
  %1940 = xor i32 %1931, %1926
  %1941 = xor i32 %1940, %1932
  %1942 = lshr i32 %1941, 4
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  store i8 %1944, i8* %26, align 1
  %1945 = icmp eq i32 %1932, 0
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %29, align 1
  %1947 = lshr i32 %1932, 31
  %1948 = trunc i32 %1947 to i8
  store i8 %1948, i8* %32, align 1
  %1949 = lshr i32 %1926, 31
  %1950 = lshr i32 %1931, 31
  %1951 = xor i32 %1950, %1949
  %1952 = xor i32 %1947, %1949
  %1953 = add nuw nsw i32 %1952, %1951
  %1954 = icmp eq i32 %1953, 2
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %38, align 1
  %.v61 = select i1 %1945, i64 18, i64 75
  %1956 = add i64 %1597, %.v61
  store i64 %1956, i64* %3, align 8
  br i1 %1945, label %block_4011f6, label %block_.L_40122f

block_4011f6:                                     ; preds = %block_.L_4011e4
  %1957 = add i64 %1956, 4
  store i64 %1957, i64* %3, align 8
  %1958 = load i64, i64* %1568, align 8
  store i64 %1958, i64* %RDI.i1206, align 8
  %1959 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %1960 = sext i32 %1959 to i64
  store i64 %1960, i64* %RSI.i1110, align 8
  %1961 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %1962 = sext i32 %1961 to i64
  store i64 %1962, i64* %RDX.i1213, align 8
  %1963 = add i64 %1561, -144
  %1964 = add i64 %1956, 28
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i64*
  %1966 = load i64, i64* %1965, align 8
  store i64 %1966, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1967 = add i64 %1956, 36
  store i64 %1967, i64* %3, align 8
  %1968 = load i64, i64* %1965, align 8
  store i64 %1968, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %1969 = add i64 %1561, -152
  %1970 = add i64 %1956, 44
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1969 to i64*
  %1972 = load i64, i64* %1971, align 8
  store i64 %1972, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %1973 = add i64 %1956, 52
  store i64 %1973, i64* %3, align 8
  %1974 = load i64, i64* %1971, align 8
  %1975 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1974, i64* %1975, align 1
  store double 0.000000e+00, double* %317, align 1
  %1976 = add i64 %1956, 938
  %1977 = add i64 %1956, 57
  %1978 = load i64, i64* %6, align 8
  %1979 = add i64 %1978, -8
  %1980 = inttoptr i64 %1979 to i64*
  store i64 %1977, i64* %1980, align 8
  store i64 %1979, i64* %6, align 8
  store i64 %1976, i64* %3, align 8
  %call2_40122a = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %1976, %struct.Memory* %MEMORY.18)
  %.pre23 = load i64, i64* %3, align 8
  %.pre24 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40122f

block_.L_40122f:                                  ; preds = %block_.L_4011e4, %block_4011f6
  %1981 = phi i64 [ %1561, %block_.L_4011e4 ], [ %.pre24, %block_4011f6 ]
  %1982 = phi i64 [ %1956, %block_.L_4011e4 ], [ %.pre23, %block_4011f6 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_4011e4 ], [ %call2_40122a, %block_4011f6 ]
  %1983 = load i64, i64* bitcast (%G_0x6a1__rip__4198967__type* @G_0x6a1__rip__4198967_ to i64*), align 8
  store i64 %1983, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %1984 = add i64 %1981, -144
  %1985 = add i64 %1982, 16
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i64*
  store i64 %1983, i64* %1986, align 8
  %1987 = load i64, i64* %RBP.i, align 8
  %1988 = add i64 %1987, -152
  %1989 = load i64, i64* %3, align 8
  %1990 = add i64 %1989, 8
  store i64 %1990, i64* %3, align 8
  %1991 = load i64, i64* %314, align 1
  %1992 = inttoptr i64 %1988 to i64*
  store i64 %1991, i64* %1992, align 8
  %1993 = load i64, i64* %RBP.i, align 8
  %1994 = add i64 %1993, -160
  %1995 = load i64, i64* %3, align 8
  %1996 = add i64 %1995, 8
  store i64 %1996, i64* %3, align 8
  %1997 = load i64, i64* %314, align 1
  %1998 = inttoptr i64 %1994 to i64*
  store i64 %1997, i64* %1998, align 8
  %1999 = load i64, i64* %RBP.i, align 8
  %2000 = add i64 %1999, -24
  %2001 = load i64, i64* %3, align 8
  %2002 = add i64 %2001, 8
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2000 to i64*
  store i64 1, i64* %2003, align 8
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_401257

block_.L_401257:                                  ; preds = %block_401265, %block_.L_40122f
  %2004 = phi i64 [ %.pre25, %block_.L_40122f ], [ %2087, %block_401265 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_.L_40122f ], [ %call2_40127c, %block_401265 ]
  %2005 = load i64, i64* %RBP.i, align 8
  %2006 = add i64 %2005, -24
  %2007 = add i64 %2004, 4
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to i64*
  %2009 = load i64, i64* %2008, align 8
  store i64 %2009, i64* %RAX.i1199, align 8
  %2010 = add i64 %2005, -80
  %2011 = add i64 %2004, 8
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i64*
  %2013 = load i64, i64* %2012, align 8
  %2014 = sub i64 %2009, %2013
  %2015 = icmp ult i64 %2009, %2013
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %14, align 1
  %2017 = trunc i64 %2014 to i32
  %2018 = and i32 %2017, 255
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %21, align 1
  %2023 = xor i64 %2013, %2009
  %2024 = xor i64 %2023, %2014
  %2025 = lshr i64 %2024, 4
  %2026 = trunc i64 %2025 to i8
  %2027 = and i8 %2026, 1
  store i8 %2027, i8* %26, align 1
  %2028 = icmp eq i64 %2014, 0
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %29, align 1
  %2030 = lshr i64 %2014, 63
  %2031 = trunc i64 %2030 to i8
  store i8 %2031, i8* %32, align 1
  %2032 = lshr i64 %2009, 63
  %2033 = lshr i64 %2013, 63
  %2034 = xor i64 %2033, %2032
  %2035 = xor i64 %2030, %2032
  %2036 = add nuw nsw i64 %2035, %2034
  %2037 = icmp eq i64 %2036, 2
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %38, align 1
  %2039 = icmp ne i8 %2031, 0
  %2040 = xor i1 %2039, %2037
  %.demorgan62 = or i1 %2028, %2040
  %.v63 = select i1 %.demorgan62, i64 14, i64 59
  %2041 = add i64 %2004, %.v63
  store i64 %2041, i64* %3, align 8
  br i1 %.demorgan62, label %block_401265, label %block_.L_401292

block_401265:                                     ; preds = %block_.L_401257
  %2042 = add i64 %2005, -160
  store i64 %2042, i64* %RDI.i1206, align 8
  %2043 = add i64 %2005, -144
  %2044 = add i64 %2041, 15
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i64*
  %2046 = load i64, i64* %2045, align 8
  store i64 %2046, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2047 = add i64 %2005, -152
  %2048 = add i64 %2041, 23
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2047 to i64*
  %2050 = load i64, i64* %2049, align 8
  store i64 %2050, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2051 = add i64 %2041, 1243
  %2052 = add i64 %2041, 28
  %2053 = load i64, i64* %6, align 8
  %2054 = add i64 %2053, -8
  %2055 = inttoptr i64 %2054 to i64*
  store i64 %2052, i64* %2055, align 8
  store i64 %2054, i64* %6, align 8
  store i64 %2051, i64* %3, align 8
  %call2_40127c = tail call %struct.Memory* @sub_401740.P3(%struct.State* %0, i64 %2051, %struct.Memory* %MEMORY.20)
  %2056 = load i64, i64* %RBP.i, align 8
  %2057 = add i64 %2056, -24
  %2058 = load i64, i64* %3, align 8
  %2059 = add i64 %2058, 4
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2057 to i64*
  %2061 = load i64, i64* %2060, align 8
  %2062 = add i64 %2061, 1
  store i64 %2062, i64* %RAX.i1199, align 8
  %2063 = icmp eq i64 %2061, -1
  %2064 = icmp eq i64 %2062, 0
  %2065 = or i1 %2063, %2064
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %14, align 1
  %2067 = trunc i64 %2062 to i32
  %2068 = and i32 %2067, 255
  %2069 = tail call i32 @llvm.ctpop.i32(i32 %2068)
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  %2072 = xor i8 %2071, 1
  store i8 %2072, i8* %21, align 1
  %2073 = xor i64 %2061, %2062
  %2074 = lshr i64 %2073, 4
  %2075 = trunc i64 %2074 to i8
  %2076 = and i8 %2075, 1
  store i8 %2076, i8* %26, align 1
  %2077 = zext i1 %2064 to i8
  store i8 %2077, i8* %29, align 1
  %2078 = lshr i64 %2062, 63
  %2079 = trunc i64 %2078 to i8
  store i8 %2079, i8* %32, align 1
  %2080 = lshr i64 %2061, 63
  %2081 = xor i64 %2078, %2080
  %2082 = add nuw nsw i64 %2081, %2078
  %2083 = icmp eq i64 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %38, align 1
  %2085 = add i64 %2058, 12
  store i64 %2085, i64* %3, align 8
  store i64 %2062, i64* %2060, align 8
  %2086 = load i64, i64* %3, align 8
  %2087 = add i64 %2086, -54
  store i64 %2087, i64* %3, align 8
  br label %block_.L_401257

block_.L_401292:                                  ; preds = %block_.L_401257
  %2088 = add i64 %2005, -176
  %2089 = add i64 %2041, 6
  store i64 %2089, i64* %3, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = zext i32 %2091 to i64
  store i64 %2092, i64* %RAX.i1199, align 8
  %2093 = add i64 %2005, -172
  %2094 = add i64 %2041, 12
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i32*
  %2096 = load i32, i32* %2095, align 4
  %2097 = sub i32 %2091, %2096
  %2098 = icmp ult i32 %2091, %2096
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %14, align 1
  %2100 = and i32 %2097, 255
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100)
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %21, align 1
  %2105 = xor i32 %2096, %2091
  %2106 = xor i32 %2105, %2097
  %2107 = lshr i32 %2106, 4
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  store i8 %2109, i8* %26, align 1
  %2110 = icmp eq i32 %2097, 0
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %29, align 1
  %2112 = lshr i32 %2097, 31
  %2113 = trunc i32 %2112 to i8
  store i8 %2113, i8* %32, align 1
  %2114 = lshr i32 %2091, 31
  %2115 = lshr i32 %2096, 31
  %2116 = xor i32 %2115, %2114
  %2117 = xor i32 %2112, %2114
  %2118 = add nuw nsw i32 %2117, %2116
  %2119 = icmp eq i32 %2118, 2
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %38, align 1
  %.v64 = select i1 %2110, i64 18, i64 75
  %2121 = add i64 %2041, %.v64
  store i64 %2121, i64* %3, align 8
  br i1 %2110, label %block_4012a4, label %block_.L_4012dd

block_4012a4:                                     ; preds = %block_.L_401292
  %2122 = add i64 %2121, 4
  store i64 %2122, i64* %3, align 8
  %2123 = load i64, i64* %2012, align 8
  store i64 %2123, i64* %RDI.i1206, align 8
  %2124 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2125 = sext i32 %2124 to i64
  store i64 %2125, i64* %RSI.i1110, align 8
  %2126 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2127 = sext i32 %2126 to i64
  store i64 %2127, i64* %RDX.i1213, align 8
  %2128 = add i64 %2005, -144
  %2129 = add i64 %2121, 28
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i64*
  %2131 = load i64, i64* %2130, align 8
  store i64 %2131, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2132 = add i64 %2005, -152
  %2133 = add i64 %2121, 36
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2132 to i64*
  %2135 = load i64, i64* %2134, align 8
  store i64 %2135, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2136 = add i64 %2005, -160
  %2137 = add i64 %2121, 44
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i64*
  %2139 = load i64, i64* %2138, align 8
  store i64 %2139, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %2140 = add i64 %2121, 52
  store i64 %2140, i64* %3, align 8
  %2141 = load i64, i64* %2138, align 8
  %2142 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2141, i64* %2142, align 1
  store double 0.000000e+00, double* %317, align 1
  %2143 = add i64 %2121, 764
  %2144 = add i64 %2121, 57
  %2145 = load i64, i64* %6, align 8
  %2146 = add i64 %2145, -8
  %2147 = inttoptr i64 %2146 to i64*
  store i64 %2144, i64* %2147, align 8
  store i64 %2146, i64* %6, align 8
  store i64 %2143, i64* %3, align 8
  %call2_4012d8 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2143, %struct.Memory* %MEMORY.20)
  %.pre26 = load i64, i64* %3, align 8
  %.pre27 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4012dd

block_.L_4012dd:                                  ; preds = %block_.L_401292, %block_4012a4
  %2148 = phi i64 [ %2005, %block_.L_401292 ], [ %.pre27, %block_4012a4 ]
  %2149 = phi i64 [ %2121, %block_.L_401292 ], [ %.pre26, %block_4012a4 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_.L_401292 ], [ %call2_4012d8, %block_4012a4 ]
  %2150 = load i64, i64* bitcast (%G_0x603__rip__4199141__type* @G_0x603__rip__4199141_ to i64*), align 8
  store i64 %2150, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2151 = load i64, i64* bitcast (%G_0x5cb__rip__4199149__type* @G_0x5cb__rip__4199149_ to i64*), align 8
  store i64 %2151, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2152 = load i64, i64* bitcast (%G_0x5e3__rip__4199157__type* @G_0x5e3__rip__4199157_ to i64*), align 8
  store i64 %2152, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  store i32 1, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020a8_type* @G_0x6020a8 to i32*), align 8
  store i64 %2152, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %2151, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %2150, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  %2153 = add i64 %2148, -24
  %2154 = add i64 %2149, 92
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2153 to i64*
  store i64 1, i64* %2155, align 8
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_401339

block_.L_401339:                                  ; preds = %block_401347, %block_.L_4012dd
  %2156 = phi i64 [ %.pre28, %block_.L_4012dd ], [ %2230, %block_401347 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4012dd ], [ %call2_401347, %block_401347 ]
  %2157 = load i64, i64* %RBP.i, align 8
  %2158 = add i64 %2157, -24
  %2159 = add i64 %2156, 4
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2158 to i64*
  %2161 = load i64, i64* %2160, align 8
  store i64 %2161, i64* %RAX.i1199, align 8
  %2162 = add i64 %2157, -88
  %2163 = add i64 %2156, 8
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i64*
  %2165 = load i64, i64* %2164, align 8
  %2166 = sub i64 %2161, %2165
  %2167 = icmp ult i64 %2161, %2165
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %14, align 1
  %2169 = trunc i64 %2166 to i32
  %2170 = and i32 %2169, 255
  %2171 = tail call i32 @llvm.ctpop.i32(i32 %2170)
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  %2174 = xor i8 %2173, 1
  store i8 %2174, i8* %21, align 1
  %2175 = xor i64 %2165, %2161
  %2176 = xor i64 %2175, %2166
  %2177 = lshr i64 %2176, 4
  %2178 = trunc i64 %2177 to i8
  %2179 = and i8 %2178, 1
  store i8 %2179, i8* %26, align 1
  %2180 = icmp eq i64 %2166, 0
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %29, align 1
  %2182 = lshr i64 %2166, 63
  %2183 = trunc i64 %2182 to i8
  store i8 %2183, i8* %32, align 1
  %2184 = lshr i64 %2161, 63
  %2185 = lshr i64 %2165, 63
  %2186 = xor i64 %2185, %2184
  %2187 = xor i64 %2182, %2184
  %2188 = add nuw nsw i64 %2187, %2186
  %2189 = icmp eq i64 %2188, 2
  %2190 = zext i1 %2189 to i8
  store i8 %2190, i8* %38, align 1
  %2191 = icmp ne i8 %2183, 0
  %2192 = xor i1 %2191, %2189
  %.demorgan65 = or i1 %2180, %2192
  %.v66 = select i1 %.demorgan65, i64 14, i64 36
  %2193 = add i64 %2156, %.v66
  store i64 %2193, i64* %3, align 8
  br i1 %.demorgan65, label %block_401347, label %block_.L_40135d

block_401347:                                     ; preds = %block_.L_401339
  %2194 = add i64 %2193, 1145
  %2195 = add i64 %2193, 5
  %2196 = load i64, i64* %6, align 8
  %2197 = add i64 %2196, -8
  %2198 = inttoptr i64 %2197 to i64*
  store i64 %2195, i64* %2198, align 8
  store i64 %2197, i64* %6, align 8
  store i64 %2194, i64* %3, align 8
  %call2_401347 = tail call %struct.Memory* @sub_4017c0.P0(%struct.State* %0, i64 %2194, %struct.Memory* %MEMORY.22)
  %2199 = load i64, i64* %RBP.i, align 8
  %2200 = add i64 %2199, -24
  %2201 = load i64, i64* %3, align 8
  %2202 = add i64 %2201, 4
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2200 to i64*
  %2204 = load i64, i64* %2203, align 8
  %2205 = add i64 %2204, 1
  store i64 %2205, i64* %RAX.i1199, align 8
  %2206 = icmp eq i64 %2204, -1
  %2207 = icmp eq i64 %2205, 0
  %2208 = or i1 %2206, %2207
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %14, align 1
  %2210 = trunc i64 %2205 to i32
  %2211 = and i32 %2210, 255
  %2212 = tail call i32 @llvm.ctpop.i32(i32 %2211)
  %2213 = trunc i32 %2212 to i8
  %2214 = and i8 %2213, 1
  %2215 = xor i8 %2214, 1
  store i8 %2215, i8* %21, align 1
  %2216 = xor i64 %2204, %2205
  %2217 = lshr i64 %2216, 4
  %2218 = trunc i64 %2217 to i8
  %2219 = and i8 %2218, 1
  store i8 %2219, i8* %26, align 1
  %2220 = zext i1 %2207 to i8
  store i8 %2220, i8* %29, align 1
  %2221 = lshr i64 %2205, 63
  %2222 = trunc i64 %2221 to i8
  store i8 %2222, i8* %32, align 1
  %2223 = lshr i64 %2204, 63
  %2224 = xor i64 %2221, %2223
  %2225 = add nuw nsw i64 %2224, %2221
  %2226 = icmp eq i64 %2225, 2
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %38, align 1
  %2228 = add i64 %2201, 12
  store i64 %2228, i64* %3, align 8
  store i64 %2205, i64* %2203, align 8
  %2229 = load i64, i64* %3, align 8
  %2230 = add i64 %2229, -31
  store i64 %2230, i64* %3, align 8
  br label %block_.L_401339

block_.L_40135d:                                  ; preds = %block_.L_401339
  %2231 = add i64 %2157, -176
  %2232 = add i64 %2193, 6
  store i64 %2232, i64* %3, align 8
  %2233 = inttoptr i64 %2231 to i32*
  %2234 = load i32, i32* %2233, align 4
  %2235 = zext i32 %2234 to i64
  store i64 %2235, i64* %RAX.i1199, align 8
  %2236 = add i64 %2157, -172
  %2237 = add i64 %2193, 12
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i32*
  %2239 = load i32, i32* %2238, align 4
  %2240 = sub i32 %2234, %2239
  %2241 = icmp ult i32 %2234, %2239
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %14, align 1
  %2243 = and i32 %2240, 255
  %2244 = tail call i32 @llvm.ctpop.i32(i32 %2243)
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = xor i8 %2246, 1
  store i8 %2247, i8* %21, align 1
  %2248 = xor i32 %2239, %2234
  %2249 = xor i32 %2248, %2240
  %2250 = lshr i32 %2249, 4
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  store i8 %2252, i8* %26, align 1
  %2253 = icmp eq i32 %2240, 0
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %29, align 1
  %2255 = lshr i32 %2240, 31
  %2256 = trunc i32 %2255 to i8
  store i8 %2256, i8* %32, align 1
  %2257 = lshr i32 %2234, 31
  %2258 = lshr i32 %2239, 31
  %2259 = xor i32 %2258, %2257
  %2260 = xor i32 %2255, %2257
  %2261 = add nuw nsw i32 %2260, %2259
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %38, align 1
  %.v67 = select i1 %2253, i64 18, i64 79
  %2264 = add i64 %2193, %.v67
  store i64 %2264, i64* %3, align 8
  br i1 %2253, label %block_40136f, label %block_.L_4013ac

block_40136f:                                     ; preds = %block_.L_40135d
  %2265 = add i64 %2264, 4
  store i64 %2265, i64* %3, align 8
  %2266 = load i64, i64* %2164, align 8
  store i64 %2266, i64* %RDI.i1206, align 8
  %2267 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2268 = sext i32 %2267 to i64
  store i64 %2268, i64* %RSI.i1110, align 8
  %2269 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2270 = sext i32 %2269 to i64
  store i64 %2270, i64* %RDX.i1213, align 8
  %2271 = load i64, i64* bitcast (%G_0x6020c8_type* @G_0x6020c8 to i64*), align 8
  store i64 %2271, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2272 = load i64, i64* bitcast (%G_0x6020d0_type* @G_0x6020d0 to i64*), align 8
  store i64 %2272, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2273 = load i64, i64* bitcast (%G_0x6020d8_type* @G_0x6020d8 to i64*), align 8
  store i64 %2273, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %2274 = load i64, i64* bitcast (%G_0x6020e0_type* @G_0x6020e0 to i64*), align 8
  %2275 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2274, i64* %2275, align 1
  store double 0.000000e+00, double* %317, align 1
  %2276 = add i64 %2264, 561
  %2277 = add i64 %2264, 61
  %2278 = load i64, i64* %6, align 8
  %2279 = add i64 %2278, -8
  %2280 = inttoptr i64 %2279 to i64*
  store i64 %2277, i64* %2280, align 8
  store i64 %2279, i64* %6, align 8
  store i64 %2276, i64* %3, align 8
  %call2_4013a7 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2276, %struct.Memory* %MEMORY.22)
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4013ac

block_.L_4013ac:                                  ; preds = %block_.L_40135d, %block_40136f
  %2281 = phi i64 [ %2157, %block_.L_40135d ], [ %.pre30, %block_40136f ]
  %2282 = phi i64 [ %2264, %block_.L_40135d ], [ %.pre29, %block_40136f ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.22, %block_.L_40135d ], [ %call2_4013a7, %block_40136f ]
  store i32 2, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i32 3, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2283 = add i64 %2281, -24
  %2284 = add i64 %2282, 30
  store i64 %2284, i64* %3, align 8
  %2285 = inttoptr i64 %2283 to i64*
  store i64 1, i64* %2285, align 8
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_4013ca

block_.L_4013ca:                                  ; preds = %block_4013d8, %block_.L_4013ac
  %2286 = phi i64 [ %2378, %block_4013d8 ], [ %.pre31, %block_.L_4013ac ]
  %2287 = load i64, i64* %RBP.i, align 8
  %2288 = add i64 %2287, -24
  %2289 = add i64 %2286, 4
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i64*
  %2291 = load i64, i64* %2290, align 8
  store i64 %2291, i64* %RAX.i1199, align 8
  %2292 = add i64 %2287, -96
  %2293 = add i64 %2286, 8
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i64*
  %2295 = load i64, i64* %2294, align 8
  %2296 = sub i64 %2291, %2295
  %2297 = icmp ult i64 %2291, %2295
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %14, align 1
  %2299 = trunc i64 %2296 to i32
  %2300 = and i32 %2299, 255
  %2301 = tail call i32 @llvm.ctpop.i32(i32 %2300)
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = xor i8 %2303, 1
  store i8 %2304, i8* %21, align 1
  %2305 = xor i64 %2295, %2291
  %2306 = xor i64 %2305, %2296
  %2307 = lshr i64 %2306, 4
  %2308 = trunc i64 %2307 to i8
  %2309 = and i8 %2308, 1
  store i8 %2309, i8* %26, align 1
  %2310 = icmp eq i64 %2296, 0
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %29, align 1
  %2312 = lshr i64 %2296, 63
  %2313 = trunc i64 %2312 to i8
  store i8 %2313, i8* %32, align 1
  %2314 = lshr i64 %2291, 63
  %2315 = lshr i64 %2295, 63
  %2316 = xor i64 %2315, %2314
  %2317 = xor i64 %2312, %2314
  %2318 = add nuw nsw i64 %2317, %2316
  %2319 = icmp eq i64 %2318, 2
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %38, align 1
  %2321 = icmp ne i8 %2313, 0
  %2322 = xor i1 %2321, %2319
  %.demorgan68 = or i1 %2310, %2322
  %.v69 = select i1 %.demorgan68, i64 14, i64 122
  %2323 = add i64 %2286, %.v69
  store i64 %2323, i64* %3, align 8
  br i1 %.demorgan68, label %block_4013d8, label %block_.L_401444

block_4013d8:                                     ; preds = %block_.L_4013ca
  %2324 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2325 = zext i32 %2324 to i64
  %2326 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2327 = add i32 %2326, %2324
  %2328 = icmp ult i32 %2327, %2326
  %2329 = lshr i32 %2327, 31
  %2330 = lshr i32 %2324, 31
  %2331 = lshr i32 %2326, 31
  %2332 = xor i32 %2329, %2330
  %2333 = xor i32 %2329, %2331
  %2334 = add nuw nsw i32 %2332, %2333
  %2335 = icmp eq i32 %2334, 2
  %2336 = zext i1 %2335 to i8
  %2337 = xor i32 %2326, %2327
  store i32 %2326, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i64 %2325, i64* %RAX.i1199, align 8
  %2338 = zext i1 %2328 to i8
  store i8 %2338, i8* %14, align 1
  %2339 = and i32 %2324, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  %2344 = xor i32 %2337, %2324
  %2345 = lshr i32 %2344, 4
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  store i8 %2347, i8* %26, align 1
  %2348 = icmp eq i32 %2324, 0
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %29, align 1
  %2350 = trunc i32 %2330 to i8
  store i8 %2350, i8* %32, align 1
  store i8 %2336, i8* %38, align 1
  store i32 %2324, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2351 = add i64 %2323, 95
  store i64 %2351, i64* %3, align 8
  %2352 = load i64, i64* %2290, align 8
  %2353 = add i64 %2352, 1
  store i64 %2353, i64* %RAX.i1199, align 8
  %2354 = icmp eq i64 %2352, -1
  %2355 = icmp eq i64 %2353, 0
  %2356 = or i1 %2354, %2355
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %14, align 1
  %2358 = trunc i64 %2353 to i32
  %2359 = and i32 %2358, 255
  %2360 = tail call i32 @llvm.ctpop.i32(i32 %2359)
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = xor i8 %2362, 1
  store i8 %2363, i8* %21, align 1
  %2364 = xor i64 %2352, %2353
  %2365 = lshr i64 %2364, 4
  %2366 = trunc i64 %2365 to i8
  %2367 = and i8 %2366, 1
  store i8 %2367, i8* %26, align 1
  %2368 = zext i1 %2355 to i8
  store i8 %2368, i8* %29, align 1
  %2369 = lshr i64 %2353, 63
  %2370 = trunc i64 %2369 to i8
  store i8 %2370, i8* %32, align 1
  %2371 = lshr i64 %2352, 63
  %2372 = xor i64 %2369, %2371
  %2373 = add nuw nsw i64 %2372, %2369
  %2374 = icmp eq i64 %2373, 2
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %38, align 1
  %2376 = add i64 %2323, 103
  store i64 %2376, i64* %3, align 8
  store i64 %2353, i64* %2290, align 8
  %2377 = load i64, i64* %3, align 8
  %2378 = add i64 %2377, -117
  store i64 %2378, i64* %3, align 8
  br label %block_.L_4013ca

block_.L_401444:                                  ; preds = %block_.L_4013ca
  %2379 = add i64 %2287, -176
  %2380 = add i64 %2323, 6
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2379 to i32*
  %2382 = load i32, i32* %2381, align 4
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RAX.i1199, align 8
  %2384 = add i64 %2287, -172
  %2385 = add i64 %2323, 12
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i32*
  %2387 = load i32, i32* %2386, align 4
  %2388 = sub i32 %2382, %2387
  %2389 = icmp ult i32 %2382, %2387
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %14, align 1
  %2391 = and i32 %2388, 255
  %2392 = tail call i32 @llvm.ctpop.i32(i32 %2391)
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  %2395 = xor i8 %2394, 1
  store i8 %2395, i8* %21, align 1
  %2396 = xor i32 %2387, %2382
  %2397 = xor i32 %2396, %2388
  %2398 = lshr i32 %2397, 4
  %2399 = trunc i32 %2398 to i8
  %2400 = and i8 %2399, 1
  store i8 %2400, i8* %26, align 1
  %2401 = icmp eq i32 %2388, 0
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %29, align 1
  %2403 = lshr i32 %2388, 31
  %2404 = trunc i32 %2403 to i8
  store i8 %2404, i8* %32, align 1
  %2405 = lshr i32 %2382, 31
  %2406 = lshr i32 %2387, 31
  %2407 = xor i32 %2406, %2405
  %2408 = xor i32 %2403, %2405
  %2409 = add nuw nsw i32 %2408, %2407
  %2410 = icmp eq i32 %2409, 2
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %38, align 1
  %.v70 = select i1 %2401, i64 18, i64 66
  %2412 = add i64 %2323, %.v70
  store i64 %2412, i64* %3, align 8
  br i1 %2401, label %block_401456, label %block_.L_401486

block_401456:                                     ; preds = %block_.L_401444
  %2413 = add i64 %2412, 4
  store i64 %2413, i64* %3, align 8
  %2414 = load i64, i64* %2294, align 8
  store i64 %2414, i64* %RDI.i1206, align 8
  %2415 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2416 = sext i32 %2415 to i64
  store i64 %2416, i64* %RSI.i1110, align 8
  %2417 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2418 = sext i32 %2417 to i64
  store i64 %2418, i64* %RDX.i1213, align 8
  %2419 = add i64 %2287, -112
  %2420 = add i64 %2412, 25
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i64*
  %2422 = load i64, i64* %2421, align 8
  store i64 %2422, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2423 = add i64 %2287, -120
  %2424 = add i64 %2412, 30
  store i64 %2424, i64* %3, align 8
  %2425 = inttoptr i64 %2423 to i64*
  %2426 = load i64, i64* %2425, align 8
  store i64 %2426, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2427 = add i64 %2287, -128
  %2428 = add i64 %2412, 35
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i64*
  %2430 = load i64, i64* %2429, align 8
  store i64 %2430, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %2431 = add i64 %2287, -136
  %2432 = add i64 %2412, 43
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i64*
  %2434 = load i64, i64* %2433, align 8
  %2435 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2434, i64* %2435, align 1
  store double 0.000000e+00, double* %317, align 1
  %2436 = add i64 %2412, 330
  %2437 = add i64 %2412, 48
  %2438 = load i64, i64* %6, align 8
  %2439 = add i64 %2438, -8
  %2440 = inttoptr i64 %2439 to i64*
  store i64 %2437, i64* %2440, align 8
  store i64 %2439, i64* %6, align 8
  store i64 %2436, i64* %3, align 8
  %call2_401481 = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2436, %struct.Memory* %MEMORY.23)
  %.pre32 = load i64, i64* %3, align 8
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401486

block_.L_401486:                                  ; preds = %block_.L_401444, %block_401456
  %2441 = phi i64 [ %2287, %block_.L_401444 ], [ %.pre33, %block_401456 ]
  %2442 = phi i64 [ %2412, %block_.L_401444 ], [ %.pre32, %block_401456 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.23, %block_.L_401444 ], [ %call2_401481, %block_401456 ]
  %2443 = load i64, i64* bitcast (%G_0x462__rip__4199566__type* @G_0x462__rip__4199566_ to i64*), align 8
  store i64 %2443, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2444 = add i64 %2441, -144
  %2445 = add i64 %2442, 16
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2444 to i64*
  store i64 %2443, i64* %2446, align 8
  %2447 = load i64, i64* %RBP.i, align 8
  %2448 = add i64 %2447, -24
  %2449 = load i64, i64* %3, align 8
  %2450 = add i64 %2449, 8
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2448 to i64*
  store i64 1, i64* %2451, align 8
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_40149e

block_.L_40149e:                                  ; preds = %block_4014ac, %block_.L_401486
  %2452 = phi i64 [ %.pre34, %block_.L_401486 ], [ %2553, %block_4014ac ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_.L_401486 ], [ %call2_4014c7, %block_4014ac ]
  %2453 = load i64, i64* %RBP.i, align 8
  %2454 = add i64 %2453, -24
  %2455 = add i64 %2452, 4
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i64*
  %2457 = load i64, i64* %2456, align 8
  store i64 %2457, i64* %RAX.i1199, align 8
  %2458 = add i64 %2453, -104
  %2459 = add i64 %2452, 8
  store i64 %2459, i64* %3, align 8
  %2460 = inttoptr i64 %2458 to i64*
  %2461 = load i64, i64* %2460, align 8
  %2462 = sub i64 %2457, %2461
  %2463 = icmp ult i64 %2457, %2461
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %14, align 1
  %2465 = trunc i64 %2462 to i32
  %2466 = and i32 %2465, 255
  %2467 = tail call i32 @llvm.ctpop.i32(i32 %2466)
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  %2470 = xor i8 %2469, 1
  store i8 %2470, i8* %21, align 1
  %2471 = xor i64 %2461, %2457
  %2472 = xor i64 %2471, %2462
  %2473 = lshr i64 %2472, 4
  %2474 = trunc i64 %2473 to i8
  %2475 = and i8 %2474, 1
  store i8 %2475, i8* %26, align 1
  %2476 = icmp eq i64 %2462, 0
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %29, align 1
  %2478 = lshr i64 %2462, 63
  %2479 = trunc i64 %2478 to i8
  store i8 %2479, i8* %32, align 1
  %2480 = lshr i64 %2457, 63
  %2481 = lshr i64 %2461, 63
  %2482 = xor i64 %2481, %2480
  %2483 = xor i64 %2478, %2480
  %2484 = add nuw nsw i64 %2483, %2482
  %2485 = icmp eq i64 %2484, 2
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %38, align 1
  %2487 = icmp ne i8 %2479, 0
  %2488 = xor i1 %2487, %2485
  %.demorgan71 = or i1 %2476, %2488
  %.v72 = select i1 %.demorgan71, i64 14, i64 71
  %2489 = add i64 %2452, %.v72
  store i64 %2489, i64* %3, align 8
  br i1 %.demorgan71, label %block_4014ac, label %block_.L_4014e5

block_4014ac:                                     ; preds = %block_.L_40149e
  %2490 = add i64 %2453, -144
  %2491 = add i64 %2489, 8
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i64*
  %2493 = load i64, i64* %2492, align 8
  store i64 %2493, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2494 = add i64 %2489, -3580
  %2495 = add i64 %2489, 13
  %2496 = load i64, i64* %6, align 8
  %2497 = add i64 %2496, -8
  %2498 = inttoptr i64 %2497 to i64*
  store i64 %2495, i64* %2498, align 8
  store i64 %2497, i64* %6, align 8
  store i64 %2494, i64* %3, align 8
  %2499 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %MEMORY.26)
  %2500 = load i64, i64* %3, align 8
  %2501 = load double, double* %303, align 1
  %2502 = load double, double* bitcast (%G_0x6020a0_type* @G_0x6020a0 to double*), align 8
  %2503 = fdiv double %2501, %2502
  store double %2503, double* %303, align 1
  %2504 = add i64 %2500, -3641
  %2505 = add i64 %2500, 14
  %2506 = load i64, i64* %6, align 8
  %2507 = add i64 %2506, -8
  %2508 = inttoptr i64 %2507 to i64*
  store i64 %2505, i64* %2508, align 8
  store i64 %2507, i64* %6, align 8
  store i64 %2504, i64* %3, align 8
  %2509 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %2499)
  %2510 = load i64, i64* %3, align 8
  %2511 = add i64 %2510, -3511
  %2512 = add i64 %2510, 5
  %2513 = load i64, i64* %6, align 8
  %2514 = add i64 %2513, -8
  %2515 = inttoptr i64 %2514 to i64*
  store i64 %2512, i64* %2515, align 8
  store i64 %2514, i64* %6, align 8
  store i64 %2511, i64* %3, align 8
  %call2_4014c7 = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %2511, %struct.Memory* %2509)
  %2516 = load i64, i64* %RBP.i, align 8
  %2517 = add i64 %2516, -144
  %2518 = load i64, i64* %3, align 8
  %2519 = add i64 %2518, 8
  store i64 %2519, i64* %3, align 8
  %2520 = load i64, i64* %314, align 1
  %2521 = inttoptr i64 %2517 to i64*
  store i64 %2520, i64* %2521, align 8
  %2522 = load i64, i64* %RBP.i, align 8
  %2523 = add i64 %2522, -24
  %2524 = load i64, i64* %3, align 8
  %2525 = add i64 %2524, 4
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2523 to i64*
  %2527 = load i64, i64* %2526, align 8
  %2528 = add i64 %2527, 1
  store i64 %2528, i64* %RAX.i1199, align 8
  %2529 = icmp eq i64 %2527, -1
  %2530 = icmp eq i64 %2528, 0
  %2531 = or i1 %2529, %2530
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %14, align 1
  %2533 = trunc i64 %2528 to i32
  %2534 = and i32 %2533, 255
  %2535 = tail call i32 @llvm.ctpop.i32(i32 %2534)
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  %2538 = xor i8 %2537, 1
  store i8 %2538, i8* %21, align 1
  %2539 = xor i64 %2527, %2528
  %2540 = lshr i64 %2539, 4
  %2541 = trunc i64 %2540 to i8
  %2542 = and i8 %2541, 1
  store i8 %2542, i8* %26, align 1
  %2543 = zext i1 %2530 to i8
  store i8 %2543, i8* %29, align 1
  %2544 = lshr i64 %2528, 63
  %2545 = trunc i64 %2544 to i8
  store i8 %2545, i8* %32, align 1
  %2546 = lshr i64 %2527, 63
  %2547 = xor i64 %2544, %2546
  %2548 = add nuw nsw i64 %2547, %2544
  %2549 = icmp eq i64 %2548, 2
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %38, align 1
  %2551 = add i64 %2524, 12
  store i64 %2551, i64* %3, align 8
  store i64 %2528, i64* %2526, align 8
  %2552 = load i64, i64* %3, align 8
  %2553 = add i64 %2552, -66
  store i64 %2553, i64* %3, align 8
  br label %block_.L_40149e

block_.L_4014e5:                                  ; preds = %block_.L_40149e
  %2554 = add i64 %2453, -176
  %2555 = add i64 %2489, 6
  store i64 %2555, i64* %3, align 8
  %2556 = inttoptr i64 %2554 to i32*
  %2557 = load i32, i32* %2556, align 4
  %2558 = zext i32 %2557 to i64
  store i64 %2558, i64* %RAX.i1199, align 8
  %2559 = add i64 %2453, -172
  %2560 = add i64 %2489, 12
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i32*
  %2562 = load i32, i32* %2561, align 4
  %2563 = sub i32 %2557, %2562
  %2564 = icmp ult i32 %2557, %2562
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %14, align 1
  %2566 = and i32 %2563, 255
  %2567 = tail call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  store i8 %2570, i8* %21, align 1
  %2571 = xor i32 %2562, %2557
  %2572 = xor i32 %2571, %2563
  %2573 = lshr i32 %2572, 4
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  store i8 %2575, i8* %26, align 1
  %2576 = icmp eq i32 %2563, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %29, align 1
  %2578 = lshr i32 %2563, 31
  %2579 = trunc i32 %2578 to i8
  store i8 %2579, i8* %32, align 1
  %2580 = lshr i32 %2557, 31
  %2581 = lshr i32 %2562, 31
  %2582 = xor i32 %2581, %2580
  %2583 = xor i32 %2578, %2580
  %2584 = add nuw nsw i32 %2583, %2582
  %2585 = icmp eq i32 %2584, 2
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %38, align 1
  %.v73 = select i1 %2576, i64 18, i64 75
  %2587 = add i64 %2489, %.v73
  store i64 %2587, i64* %3, align 8
  br i1 %2576, label %block_4014f7, label %block_.L_401530

block_4014f7:                                     ; preds = %block_.L_4014e5
  %2588 = add i64 %2587, 4
  store i64 %2588, i64* %3, align 8
  %2589 = load i64, i64* %2460, align 8
  store i64 %2589, i64* %RDI.i1206, align 8
  %2590 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %2591 = sext i32 %2590 to i64
  store i64 %2591, i64* %RSI.i1110, align 8
  %2592 = load i32, i32* bitcast (%G_0x6020ac_type* @G_0x6020ac to i32*), align 8
  %2593 = sext i32 %2592 to i64
  store i64 %2593, i64* %RDX.i1213, align 8
  %2594 = add i64 %2453, -144
  %2595 = add i64 %2587, 28
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i64*
  %2597 = load i64, i64* %2596, align 8
  store i64 %2597, i64* %314, align 1
  store double 0.000000e+00, double* %305, align 1
  %2598 = add i64 %2587, 36
  store i64 %2598, i64* %3, align 8
  %2599 = load i64, i64* %2596, align 8
  store i64 %2599, i64* %353, align 1
  store double 0.000000e+00, double* %309, align 1
  %2600 = add i64 %2587, 44
  store i64 %2600, i64* %3, align 8
  %2601 = load i64, i64* %2596, align 8
  store i64 %2601, i64* %355, align 1
  store double 0.000000e+00, double* %313, align 1
  %2602 = add i64 %2587, 52
  store i64 %2602, i64* %3, align 8
  %2603 = load i64, i64* %2596, align 8
  %2604 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %315, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2603, i64* %2604, align 1
  store double 0.000000e+00, double* %317, align 1
  %2605 = add i64 %2587, 169
  %2606 = add i64 %2587, 57
  %2607 = load i64, i64* %6, align 8
  %2608 = add i64 %2607, -8
  %2609 = inttoptr i64 %2608 to i64*
  store i64 %2606, i64* %2609, align 8
  store i64 %2608, i64* %6, align 8
  store i64 %2605, i64* %3, align 8
  %call2_40152b = tail call %struct.Memory* @sub_4015a0.POUT(%struct.State* %0, i64 %2605, %struct.Memory* %MEMORY.26)
  %.pre35 = load i64, i64* %RBP.i, align 8
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_401530

block_.L_401530:                                  ; preds = %block_.L_4014e5, %block_4014f7
  %2610 = phi i64 [ %2587, %block_.L_4014e5 ], [ %.pre36, %block_4014f7 ]
  %2611 = phi i64 [ %2453, %block_.L_4014e5 ], [ %.pre35, %block_4014f7 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_4014e5 ], [ %call2_40152b, %block_4014f7 ]
  %2612 = add i64 %2611, -176
  %2613 = add i64 %2610, 6
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i32*
  %2615 = load i32, i32* %2614, align 4
  %2616 = add i32 %2615, 1
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RAX.i1199, align 8
  %2618 = icmp eq i32 %2615, -1
  %2619 = icmp eq i32 %2616, 0
  %2620 = or i1 %2618, %2619
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %14, align 1
  %2622 = and i32 %2616, 255
  %2623 = tail call i32 @llvm.ctpop.i32(i32 %2622)
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  %2626 = xor i8 %2625, 1
  store i8 %2626, i8* %21, align 1
  %2627 = xor i32 %2615, %2616
  %2628 = lshr i32 %2627, 4
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  store i8 %2630, i8* %26, align 1
  %2631 = zext i1 %2619 to i8
  store i8 %2631, i8* %29, align 1
  %2632 = lshr i32 %2616, 31
  %2633 = trunc i32 %2632 to i8
  store i8 %2633, i8* %32, align 1
  %2634 = lshr i32 %2615, 31
  %2635 = xor i32 %2632, %2634
  %2636 = add nuw nsw i32 %2635, %2632
  %2637 = icmp eq i32 %2636, 2
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %38, align 1
  %2639 = add i64 %2610, 15
  store i64 %2639, i64* %3, align 8
  store i32 %2616, i32* %2614, align 4
  %2640 = load i32, i32* %EAX.i1220, align 4
  %2641 = load i64, i64* %RBP.i, align 8
  %2642 = add i64 %2641, -172
  %2643 = load i64, i64* %3, align 8
  %2644 = add i64 %2643, 6
  store i64 %2644, i64* %3, align 8
  %2645 = inttoptr i64 %2642 to i32*
  %2646 = load i32, i32* %2645, align 4
  %2647 = sub i32 %2640, %2646
  %2648 = icmp ult i32 %2640, %2646
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %14, align 1
  %2650 = and i32 %2647, 255
  %2651 = tail call i32 @llvm.ctpop.i32(i32 %2650)
  %2652 = trunc i32 %2651 to i8
  %2653 = and i8 %2652, 1
  %2654 = xor i8 %2653, 1
  store i8 %2654, i8* %21, align 1
  %2655 = xor i32 %2646, %2640
  %2656 = xor i32 %2655, %2647
  %2657 = lshr i32 %2656, 4
  %2658 = trunc i32 %2657 to i8
  %2659 = and i8 %2658, 1
  store i8 %2659, i8* %26, align 1
  %2660 = icmp eq i32 %2647, 0
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %29, align 1
  %2662 = lshr i32 %2647, 31
  %2663 = trunc i32 %2662 to i8
  store i8 %2663, i8* %32, align 1
  %2664 = lshr i32 %2640, 31
  %2665 = lshr i32 %2646, 31
  %2666 = xor i32 %2665, %2664
  %2667 = xor i32 %2662, %2664
  %2668 = add nuw nsw i32 %2667, %2666
  %2669 = icmp eq i32 %2668, 2
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %38, align 1
  %2671 = icmp ne i8 %2663, 0
  %2672 = xor i1 %2671, %2669
  %.demorgan74 = or i1 %2660, %2672
  %.v75 = select i1 %.demorgan74, i64 12, i64 17
  %2673 = add i64 %2643, %.v75
  store i64 %2673, i64* %3, align 8
  br i1 %.demorgan74, label %block_40154b, label %block_.L_401550

block_40154b:                                     ; preds = %block_.L_401530
  %2674 = add i64 %2673, -2992
  store i64 %2674, i64* %3, align 8
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
  %2675 = add i64 %2673, -3696
  %2676 = add i64 %2673, 9
  %2677 = load i64, i64* %6, align 8
  %2678 = add i64 %2677, -8
  %2679 = inttoptr i64 %2678 to i64*
  store i64 %2676, i64* %2679, align 8
  store i64 %2678, i64* %6, align 8
  store i64 %2675, i64* %3, align 8
  %2680 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.27)
  %2681 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x401915_type* @G__0x401915 to i64), i64* %RDI.i1206, align 8
  %2682 = load i64, i64* %RBP.i, align 8
  %2683 = add i64 %2682, -200
  %2684 = load i64, i64* %RAX.i1199, align 8
  %2685 = add i64 %2681, 17
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2683 to i64*
  store i64 %2684, i64* %2686, align 8
  %2687 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %2688 = add i64 %2687, -3786
  %2689 = add i64 %2687, 7
  %2690 = load i64, i64* %6, align 8
  %2691 = add i64 %2690, -8
  %2692 = inttoptr i64 %2691 to i64*
  store i64 %2689, i64* %2692, align 8
  store i64 %2691, i64* %6, align 8
  store i64 %2688, i64* %3, align 8
  %2693 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2680)
  %2694 = load i64, i64* %RBP.i, align 8
  %2695 = add i64 %2694, -208
  %2696 = load i64, i64* %3, align 8
  %2697 = add i64 %2696, 7
  store i64 %2697, i64* %3, align 8
  %2698 = inttoptr i64 %2695 to i32*
  %2699 = load i32, i32* %2698, align 4
  store i8 0, i8* %14, align 1
  %2700 = and i32 %2699, 255
  %2701 = tail call i32 @llvm.ctpop.i32(i32 %2700)
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  store i8 %2704, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2705 = icmp eq i32 %2699, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %29, align 1
  %2707 = lshr i32 %2699, 31
  %2708 = trunc i32 %2707 to i8
  store i8 %2708, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2709 = add i64 %2694, -316
  %2710 = load i32, i32* %EAX.i1220, align 4
  %2711 = add i64 %2696, 13
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2709 to i32*
  store i32 %2710, i32* %2712, align 4
  %2713 = load i64, i64* %3, align 8
  %2714 = load i8, i8* %29, align 1
  %2715 = icmp ne i8 %2714, 0
  %.v76 = select i1 %2715, i64 11, i64 6
  %2716 = add i64 %2713, %.v76
  store i64 %2716, i64* %3, align 8
  %cmpBr_40157e = icmp eq i8 %2714, 1
  br i1 %cmpBr_40157e, label %block_.L_401589, label %block_401584

block_401584:                                     ; preds = %block_.L_401550
  %2717 = add i64 %2716, -3150
  store i64 %2717, i64* %3, align 8
  %.pre4 = load i64, i64* %RAX.i1199, align 8
  %2718 = trunc i64 %.pre4 to i32
  br label %block_.L_400936

block_.L_401589:                                  ; preds = %block_.L_401550
  %2719 = load i64, i64* %RBP.i, align 8
  %2720 = add i64 %2719, -4
  %2721 = add i64 %2716, 7
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i32*
  store i32 0, i32* %2722, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_401590

block_.L_401590:                                  ; preds = %block_.L_401589, %block_.L_4008ed
  %2723 = phi i64 [ %.pre37, %block_.L_401589 ], [ %267, %block_.L_4008ed ]
  %MEMORY.28 = phi %struct.Memory* [ %2693, %block_.L_401589 ], [ %254, %block_.L_4008ed ]
  %2724 = load i64, i64* %RBP.i, align 8
  %2725 = add i64 %2724, -4
  %2726 = add i64 %2723, 3
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i32*
  %2728 = load i32, i32* %2727, align 4
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RAX.i1199, align 8
  %2730 = load i64, i64* %6, align 8
  %2731 = add i64 %2730, 320
  store i64 %2731, i64* %6, align 8
  %2732 = icmp ugt i64 %2730, -321
  %2733 = zext i1 %2732 to i8
  store i8 %2733, i8* %14, align 1
  %2734 = trunc i64 %2731 to i32
  %2735 = and i32 %2734, 255
  %2736 = tail call i32 @llvm.ctpop.i32(i32 %2735)
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  %2739 = xor i8 %2738, 1
  store i8 %2739, i8* %21, align 1
  %2740 = xor i64 %2730, %2731
  %2741 = lshr i64 %2740, 4
  %2742 = trunc i64 %2741 to i8
  %2743 = and i8 %2742, 1
  store i8 %2743, i8* %26, align 1
  %2744 = icmp eq i64 %2731, 0
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %29, align 1
  %2746 = lshr i64 %2731, 63
  %2747 = trunc i64 %2746 to i8
  store i8 %2747, i8* %32, align 1
  %2748 = lshr i64 %2730, 63
  %2749 = xor i64 %2746, %2748
  %2750 = add nuw nsw i64 %2749, %2746
  %2751 = icmp eq i64 %2750, 2
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %38, align 1
  %2753 = add i64 %2723, 11
  store i64 %2753, i64* %3, align 8
  %2754 = add i64 %2730, 328
  %2755 = inttoptr i64 %2731 to i64*
  %2756 = load i64, i64* %2755, align 8
  store i64 %2756, i64* %RBP.i, align 8
  store i64 %2754, i64* %6, align 8
  %2757 = add i64 %2723, 12
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2754 to i64*
  %2759 = load i64, i64* %2758, align 8
  store i64 %2759, i64* %3, align 8
  %2760 = add i64 %2730, 336
  store i64 %2760, i64* %6, align 8
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
  %5 = add i64 %4, ptrtoint (%G_0x6020c0___rdx_8__type* @G_0x6020c0___rdx_8_ to i64)
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
