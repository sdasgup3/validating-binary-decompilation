; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x314f4__rip__type = type <{ [4 x i8] }>
%G_0x3153b__rip__type = type <{ [4 x i8] }>
%G_0x315bc__rip__type = type <{ [4 x i8] }>
%G_0x31909__rip__type = type <{ [4 x i8] }>
%G_0x3196e__rip__type = type <{ [4 x i8] }>
%G_0x31b65__rip__type = type <{ [4 x i8] }>
%G_0x31bf0__rip__type = type <{ [4 x i8] }>
%G_0x31c35__rip__type = type <{ [4 x i8] }>
%G_0x31ca0__rip__type = type <{ [8 x i8] }>
%G_0x31cdb__rip__type = type <{ [4 x i8] }>
%G_0x676d90_type = type <{ [1 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x45653b_type = type <{ [8 x i8] }>
%G__0x456fbb_type = type <{ [8 x i8] }>
%G__0x45756f_type = type <{ [8 x i8] }>
%G__0x457914_type = type <{ [8 x i8] }>
%G__0x4579fb_type = type <{ [8 x i8] }>
%G__0x457a0b_type = type <{ [8 x i8] }>
%G__0x457a15_type = type <{ [8 x i8] }>
%G__0x457a1f_type = type <{ [8 x i8] }>
%G__0x457a29_type = type <{ [8 x i8] }>
%G__0x457a33_type = type <{ [8 x i8] }>
%G__0x457a36_type = type <{ [8 x i8] }>
%G__0x457a39_type = type <{ [8 x i8] }>
%G__0x457a41_type = type <{ [8 x i8] }>
%G__0x457a4b_type = type <{ [8 x i8] }>
%G__0x457a55_type = type <{ [8 x i8] }>
%G__0x457a5f_type = type <{ [8 x i8] }>
%G__0x457a69_type = type <{ [8 x i8] }>
%G__0x457a70_type = type <{ [8 x i8] }>
%G__0x457a7a_type = type <{ [8 x i8] }>
%G__0x457a84_type = type <{ [8 x i8] }>
%G__0x457a8e_type = type <{ [8 x i8] }>
%G__0x457a96_type = type <{ [8 x i8] }>
%G__0x457a9d_type = type <{ [8 x i8] }>
%G__0x457aa4_type = type <{ [8 x i8] }>
%G__0x457ab5_type = type <{ [8 x i8] }>
%G__0x457abf_type = type <{ [8 x i8] }>
%G__0x457ac8_type = type <{ [8 x i8] }>
%G__0x457af4_type = type <{ [8 x i8] }>
%G__0x457af9_type = type <{ [8 x i8] }>
%G__0x457afe_type = type <{ [8 x i8] }>
%G__0x457b03_type = type <{ [8 x i8] }>
%G__0x457b08_type = type <{ [8 x i8] }>
%G__0x457b0d_type = type <{ [8 x i8] }>
%G__0x457b12_type = type <{ [8 x i8] }>
%G__0x457b17_type = type <{ [8 x i8] }>
%G__0x457b1c_type = type <{ [8 x i8] }>
%G__0x457b21_type = type <{ [8 x i8] }>
%G__0x457b2c_type = type <{ [8 x i8] }>
%G__0x457b31_type = type <{ [8 x i8] }>
%G__0x457b37_type = type <{ [8 x i8] }>
%G__0x457b3b_type = type <{ [8 x i8] }>
%G__0x4583b0_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
%G__0x45b045_type = type <{ [8 x i8] }>
%G__0x45b06c_type = type <{ [8 x i8] }>
%G__0x45b093_type = type <{ [8 x i8] }>
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
@G_0x314f4__rip_ = global %G_0x314f4__rip__type zeroinitializer
@G_0x3153b__rip_ = global %G_0x3153b__rip__type zeroinitializer
@G_0x315bc__rip_ = global %G_0x315bc__rip__type zeroinitializer
@G_0x31909__rip_ = global %G_0x31909__rip__type zeroinitializer
@G_0x3196e__rip_ = global %G_0x3196e__rip__type zeroinitializer
@G_0x31b65__rip_ = global %G_0x31b65__rip__type zeroinitializer
@G_0x31bf0__rip_ = global %G_0x31bf0__rip__type zeroinitializer
@G_0x31c35__rip_ = global %G_0x31c35__rip__type zeroinitializer
@G_0x31ca0__rip_ = global %G_0x31ca0__rip__type zeroinitializer
@G_0x31cdb__rip_ = global %G_0x31cdb__rip__type zeroinitializer
@G_0x676d90 = local_unnamed_addr global %G_0x676d90_type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x45653b = global %G__0x45653b_type zeroinitializer
@G__0x456fbb = global %G__0x456fbb_type zeroinitializer
@G__0x45756f = global %G__0x45756f_type zeroinitializer
@G__0x457914 = global %G__0x457914_type zeroinitializer
@G__0x4579fb = global %G__0x4579fb_type zeroinitializer
@G__0x457a0b = global %G__0x457a0b_type zeroinitializer
@G__0x457a15 = global %G__0x457a15_type zeroinitializer
@G__0x457a1f = global %G__0x457a1f_type zeroinitializer
@G__0x457a29 = global %G__0x457a29_type zeroinitializer
@G__0x457a33 = global %G__0x457a33_type zeroinitializer
@G__0x457a36 = global %G__0x457a36_type zeroinitializer
@G__0x457a39 = global %G__0x457a39_type zeroinitializer
@G__0x457a41 = global %G__0x457a41_type zeroinitializer
@G__0x457a4b = global %G__0x457a4b_type zeroinitializer
@G__0x457a55 = global %G__0x457a55_type zeroinitializer
@G__0x457a5f = global %G__0x457a5f_type zeroinitializer
@G__0x457a69 = global %G__0x457a69_type zeroinitializer
@G__0x457a70 = global %G__0x457a70_type zeroinitializer
@G__0x457a7a = global %G__0x457a7a_type zeroinitializer
@G__0x457a84 = global %G__0x457a84_type zeroinitializer
@G__0x457a8e = global %G__0x457a8e_type zeroinitializer
@G__0x457a96 = global %G__0x457a96_type zeroinitializer
@G__0x457a9d = global %G__0x457a9d_type zeroinitializer
@G__0x457aa4 = global %G__0x457aa4_type zeroinitializer
@G__0x457ab5 = global %G__0x457ab5_type zeroinitializer
@G__0x457abf = global %G__0x457abf_type zeroinitializer
@G__0x457ac8 = global %G__0x457ac8_type zeroinitializer
@G__0x457af4 = global %G__0x457af4_type zeroinitializer
@G__0x457af9 = global %G__0x457af9_type zeroinitializer
@G__0x457afe = global %G__0x457afe_type zeroinitializer
@G__0x457b03 = global %G__0x457b03_type zeroinitializer
@G__0x457b08 = global %G__0x457b08_type zeroinitializer
@G__0x457b0d = global %G__0x457b0d_type zeroinitializer
@G__0x457b12 = global %G__0x457b12_type zeroinitializer
@G__0x457b17 = global %G__0x457b17_type zeroinitializer
@G__0x457b1c = global %G__0x457b1c_type zeroinitializer
@G__0x457b21 = global %G__0x457b21_type zeroinitializer
@G__0x457b2c = global %G__0x457b2c_type zeroinitializer
@G__0x457b31 = global %G__0x457b31_type zeroinitializer
@G__0x457b37 = global %G__0x457b37_type zeroinitializer
@G__0x457b3b = global %G__0x457b3b_type zeroinitializer
@G__0x4583b0 = global %G__0x4583b0_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer
@G__0x45b045 = global %G__0x45b045_type zeroinitializer
@G__0x45b06c = global %G__0x45b06c_type zeroinitializer
@G__0x45b093 = global %G__0x45b093_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4232d0.multiline(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423370.prob2ascii(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @WriteAscHMM(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i29, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i40, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %RBX.i72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %20 = load i64, i64* %RBX.i72, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %7, -472
  store i64 %26, i64* %6, align 8
  %27 = icmp ult i64 %23, 440
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = trunc i64 %26 to i32
  %31 = and i32 %30, 255
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31)
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %35, i8* %36, align 1
  %37 = xor i64 %23, 16
  %38 = xor i64 %37, %26
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %41, i8* %42, align 1
  %43 = icmp eq i64 %26, 0
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %44, i8* %45, align 1
  %46 = lshr i64 %26, 63
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %47, i8* %48, align 1
  %49 = lshr i64 %23, 63
  %50 = xor i64 %46, %49
  %51 = add nuw nsw i64 %50, %49
  %52 = icmp eq i64 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i189 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  store i64 ptrtoint (%G__0x4579fb_type* @G__0x4579fb to i64), i64* %RAX.i189, align 8
  %RDX.i245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x45653b_type* @G__0x45653b to i64), i64* %RDX.i245, align 8
  %RDI.i265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -32
  %58 = load i64, i64* %RDI.i265, align 8
  %59 = add i64 %25, 31
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %60, align 8
  %RSI.i348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -40
  %63 = load i64, i64* %RSI.i348, align 8
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -32
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RDI.i265, align 8
  %73 = load i64, i64* %RAX.i189, align 8
  store i64 %73, i64* %RSI.i348, align 8
  %AL.i465 = bitcast %union.anon* %55 to i8*
  store i8 0, i8* %AL.i465, align 1
  %74 = add i64 %69, -135548
  %75 = add i64 %69, 14
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78, align 8
  store i64 %77, i64* %6, align 8
  store i64 %74, i64* %3, align 8
  %79 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  %80 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a0b_type* @G__0x457a0b to i64), i64* %RSI.i348, align 8
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -32
  %83 = add i64 %80, 14
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RDI.i265, align 8
  %86 = add i64 %81, -40
  %87 = add i64 %80, 18
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %RDX.i245, align 8
  %90 = add i64 %80, 21
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %RDX.i245, align 8
  %EAX.i700 = bitcast %union.anon* %55 to i32*
  %93 = add i64 %81, -56
  %94 = load i32, i32* %EAX.i700, align 4
  %95 = add i64 %80, 24
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i465, align 1
  %98 = add i64 %97, -135586
  %99 = add i64 %97, 7
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %99, i64* %102, align 8
  store i64 %101, i64* %6, align 8
  store i64 %98, i64* %3, align 8
  %103 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %79)
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -40
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %RDX.i245, align 8
  %RCX.i797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %110 = add i64 %109, 456
  %111 = add i64 %106, 10
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 512
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RCX.i797, align 8
  store i8 0, i8* %29, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %.lobit69 = lshr exact i32 %114, 9
  %116 = trunc i32 %.lobit69 to i8
  %117 = xor i8 %116, 1
  store i8 %117, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %118 = add i64 %104, -60
  %119 = load i32, i32* %EAX.i700, align 4
  %120 = add i64 %106, 22
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %121, align 4
  %122 = load i64, i64* %3, align 8
  %123 = load i8, i8* %45, align 1
  %124 = icmp ne i8 %123, 0
  %.v107 = select i1 %124, i64 38, i64 6
  %125 = add i64 %122, %.v107
  store i64 %125, i64* %3, align 8
  %cmpBr_42272f = icmp eq i8 %123, 1
  br i1 %cmpBr_42272f, label %block_.L_422755, label %block_422735

block_422735:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x457a15_type* @G__0x457a15 to i64), i64* %RSI.i348, align 8
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -32
  %128 = add i64 %125, 14
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RDI.i265, align 8
  %131 = add i64 %126, -40
  %132 = add i64 %125, 18
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RAX.i189, align 8
  %135 = add i64 %134, 8
  %136 = add i64 %125, 22
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %139 = add i64 %125, -135621
  %140 = add i64 %125, 29
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, -8
  %143 = inttoptr i64 %142 to i64*
  store i64 %140, i64* %143, align 8
  store i64 %142, i64* %6, align 8
  store i64 %139, i64* %3, align 8
  %144 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %103)
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -64
  %147 = load i32, i32* %EAX.i700, align 4
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, 3
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %146 to i32*
  store i32 %147, i32* %150, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_422755

block_.L_422755:                                  ; preds = %block_422735, %entry
  %151 = phi i64 [ %125, %entry ], [ %.pre, %block_422735 ]
  %MEMORY.0 = phi %struct.Memory* [ %103, %entry ], [ %144, %block_422735 ]
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -40
  %154 = add i64 %151, 4
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i64*
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %RAX.i189, align 8
  %157 = add i64 %156, 456
  %158 = add i64 %151, 10
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 2
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RCX.i797, align 8
  store i8 0, i8* %29, align 1
  %163 = tail call i32 @llvm.ctpop.i32(i32 %161)
  %164 = trunc i32 %163 to i8
  %165 = xor i8 %164, 1
  store i8 %165, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %166 = icmp eq i32 %161, 0
  %.lobit70 = lshr exact i32 %161, 1
  %167 = trunc i32 %.lobit70 to i8
  %168 = xor i8 %167, 1
  store i8 %168, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %169 = shl nuw nsw i32 %161, 4
  %170 = xor i32 %169, 54
  %171 = zext i32 %170 to i64
  %172 = add i64 %151, %171
  store i64 %172, i64* %3, align 8
  br i1 %166, label %block_.L_42278b, label %block_42276b

block_42276b:                                     ; preds = %block_.L_422755
  store i64 ptrtoint (%G__0x457a1f_type* @G__0x457a1f to i64), i64* %RSI.i348, align 8
  %173 = add i64 %152, -32
  %174 = add i64 %172, 14
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RDI.i265, align 8
  %177 = add i64 %172, 18
  store i64 %177, i64* %3, align 8
  %178 = load i64, i64* %155, align 8
  store i64 %178, i64* %RAX.i189, align 8
  %179 = add i64 %178, 16
  %180 = add i64 %172, 22
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i64*
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %183 = add i64 %172, -135675
  %184 = add i64 %172, 29
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  %188 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.0)
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -68
  %191 = load i32, i32* %EAX.i700, align 4
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 3
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %190 to i32*
  store i32 %191, i32* %194, align 4
  %.pre50 = load i64, i64* %3, align 8
  %.pre51 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42278b

block_.L_42278b:                                  ; preds = %block_42276b, %block_.L_422755
  %195 = phi i64 [ %152, %block_.L_422755 ], [ %.pre51, %block_42276b ]
  %196 = phi i64 [ %172, %block_.L_422755 ], [ %.pre50, %block_42276b ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_422755 ], [ %188, %block_42276b ]
  store i64 ptrtoint (%G__0x457a29_type* @G__0x457a29 to i64), i64* %RSI.i348, align 8
  %197 = add i64 %195, -32
  %198 = add i64 %196, 14
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i64*
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %RDI.i265, align 8
  %201 = add i64 %195, -40
  %202 = add i64 %196, 18
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RAX.i189, align 8
  %205 = add i64 %204, 136
  %206 = add i64 %196, 24
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %210 = add i64 %196, -135707
  %211 = add i64 %196, 31
  %212 = load i64, i64* %6, align 8
  %213 = add i64 %212, -8
  %214 = inttoptr i64 %213 to i64*
  store i64 %211, i64* %214, align 8
  store i64 %213, i64* %6, align 8
  store i64 %210, i64* %3, align 8
  %215 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.1)
  %216 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a41_type* @G__0x457a41 to i64), i64* %RSI.i348, align 8
  store i64 ptrtoint (%G__0x457a39_type* @G__0x457a39 to i64), i64* %RDI.i265, align 8
  store i64 ptrtoint (%G__0x457a33_type* @G__0x457a33 to i64), i64* %RCX.i797, align 8
  %R8.i1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %217 = load i64, i64* %RBP.i, align 8
  %218 = add i64 %217, -32
  %219 = add i64 %216, 34
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %R8.i1344, align 8
  %222 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %223 = add i32 %222, -3
  %224 = icmp ult i32 %222, 3
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %29, align 1
  %226 = and i32 %223, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %36, align 1
  %231 = xor i32 %223, %222
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %42, align 1
  %235 = icmp eq i32 %223, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %45, align 1
  %237 = lshr i32 %223, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %48, align 1
  %239 = lshr i32 %222, 31
  %240 = xor i32 %237, %239
  %241 = add nuw nsw i32 %240, %239
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %54, align 1
  %244 = select i1 %235, i64 ptrtoint (%G__0x457a33_type* @G__0x457a33 to i64), i64 ptrtoint (%G__0x457a39_type* @G__0x457a39 to i64)
  %245 = add i64 %217, -80
  %246 = add i64 %216, 50
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i64*
  store i64 %244, i64* %247, align 8
  %248 = load i64, i64* %R8.i1344, align 8
  %249 = load i64, i64* %3, align 8
  store i64 %248, i64* %RDI.i265, align 8
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -80
  %252 = add i64 %249, 7
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RDX.i245, align 8
  %255 = add i64 %250, -84
  %256 = load i32, i32* %EAX.i700, align 4
  %257 = add i64 %249, 10
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %255 to i32*
  store i32 %256, i32* %258, align 4
  %259 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i465, align 1
  %260 = add i64 %259, -135798
  %261 = add i64 %259, 7
  %262 = load i64, i64* %6, align 8
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %6, align 8
  store i64 %260, i64* %3, align 8
  %265 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %215)
  %266 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a4b_type* @G__0x457a4b to i64), i64* %RSI.i348, align 8
  store i64 ptrtoint (%G__0x457a36_type* @G__0x457a36 to i64), i64* %RCX.i797, align 8
  store i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64* %RDX.i245, align 8
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -32
  %269 = add i64 %266, 34
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %RDI.i265, align 8
  %272 = add i64 %267, -40
  %273 = add i64 %266, 38
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %R8.i1344, align 8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %277 = add i64 %275, 456
  %278 = add i64 %266, 45
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %276, align 8
  %283 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %284 = trunc i32 %283 to i8
  store i8 0, i8* %29, align 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %.lobit71 = lshr exact i32 %281, 2
  %286 = trunc i32 %.lobit71 to i8
  %287 = xor i8 %286, 1
  store i8 %287, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %288 = icmp eq i8 %287, 0
  %289 = select i1 %288, i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64 ptrtoint (%G__0x457a36_type* @G__0x457a36 to i64)
  store i64 %289, i64* %RCX.i797, align 8
  store i64 %289, i64* %RDX.i245, align 8
  %290 = add i64 %267, -88
  %291 = load i32, i32* %EAX.i700, align 4
  %292 = add i64 %266, 63
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %290 to i32*
  store i32 %291, i32* %293, align 4
  %294 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i465, align 1
  %295 = add i64 %294, -135868
  %296 = add i64 %294, 7
  %297 = load i64, i64* %6, align 8
  %298 = add i64 %297, -8
  %299 = inttoptr i64 %298 to i64*
  store i64 %296, i64* %299, align 8
  store i64 %298, i64* %6, align 8
  store i64 %295, i64* %3, align 8
  %300 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %265)
  %301 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a55_type* @G__0x457a55 to i64), i64* %RSI.i348, align 8
  store i64 ptrtoint (%G__0x457a36_type* @G__0x457a36 to i64), i64* %RCX.i797, align 8
  store i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64* %RDX.i245, align 8
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -32
  %304 = add i64 %301, 34
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %RDI.i265, align 8
  %307 = add i64 %302, -40
  %308 = add i64 %301, 38
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %R8.i1344, align 8
  %311 = add i64 %310, 456
  %312 = add i64 %301, 45
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, 8
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %276, align 8
  %317 = tail call i32 @llvm.ctpop.i32(i32 %315)
  %318 = trunc i32 %317 to i8
  store i8 0, i8* %29, align 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %.lobit72 = lshr exact i32 %315, 3
  %320 = trunc i32 %.lobit72 to i8
  %321 = xor i8 %320, 1
  store i8 %321, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %322 = icmp eq i8 %321, 0
  %323 = select i1 %322, i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64 ptrtoint (%G__0x457a36_type* @G__0x457a36 to i64)
  store i64 %323, i64* %RCX.i797, align 8
  store i64 %323, i64* %RDX.i245, align 8
  %324 = add i64 %302, -92
  %325 = load i32, i32* %EAX.i700, align 4
  %326 = add i64 %301, 63
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %324 to i32*
  store i32 %325, i32* %327, align 4
  %328 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i465, align 1
  %329 = add i64 %328, -135938
  %330 = add i64 %328, 7
  %331 = load i64, i64* %6, align 8
  %332 = add i64 %331, -8
  %333 = inttoptr i64 %332 to i64*
  store i64 %330, i64* %333, align 8
  store i64 %332, i64* %6, align 8
  store i64 %329, i64* %3, align 8
  %334 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %300)
  %335 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a5f_type* @G__0x457a5f to i64), i64* %RSI.i348, align 8
  store i64 ptrtoint (%G__0x457a36_type* @G__0x457a36 to i64), i64* %RCX.i797, align 8
  store i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64* %RDX.i245, align 8
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -32
  %338 = add i64 %335, 34
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RDI.i265, align 8
  %341 = add i64 %336, -40
  %342 = add i64 %335, 38
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %R8.i1344, align 8
  %345 = add i64 %344, 456
  %346 = add i64 %335, 45
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = and i32 %348, 256
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %276, align 8
  store i8 0, i8* %29, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %.lobit73 = lshr exact i32 %349, 8
  %351 = trunc i32 %.lobit73 to i8
  %352 = xor i8 %351, 1
  store i8 %352, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %353 = icmp eq i8 %352, 0
  %354 = select i1 %353, i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64 ptrtoint (%G__0x457a36_type* @G__0x457a36 to i64)
  store i64 %354, i64* %RCX.i797, align 8
  store i64 %354, i64* %RDX.i245, align 8
  %355 = add i64 %336, -96
  %356 = load i32, i32* %EAX.i700, align 4
  %357 = add i64 %335, 66
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %355 to i32*
  store i32 %356, i32* %358, align 4
  %359 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i465, align 1
  %360 = add i64 %359, -136011
  %361 = add i64 %359, 7
  %362 = load i64, i64* %6, align 8
  %363 = add i64 %362, -8
  %364 = inttoptr i64 %363 to i64*
  store i64 %361, i64* %364, align 8
  store i64 %363, i64* %6, align 8
  store i64 %360, i64* %3, align 8
  %365 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %334)
  %366 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a69_type* @G__0x457a69 to i64), i64* %RSI.i348, align 8
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -32
  %369 = add i64 %366, 14
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i64*
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %RDI.i265, align 8
  %372 = add i64 %367, -40
  %373 = add i64 %366, 18
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %RCX.i797, align 8
  %376 = add i64 %375, 48
  %377 = add i64 %366, 22
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RDX.i245, align 8
  %380 = add i64 %367, -100
  %381 = load i32, i32* %EAX.i700, align 4
  %382 = add i64 %366, 25
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %380 to i32*
  store i32 %381, i32* %383, align 4
  %384 = load i64, i64* %3, align 8
  %385 = add i64 %384, 2549
  %386 = add i64 %384, 5
  %387 = load i64, i64* %6, align 8
  %388 = add i64 %387, -8
  %389 = inttoptr i64 %388 to i64*
  store i64 %386, i64* %389, align 8
  store i64 %388, i64* %6, align 8
  store i64 %385, i64* %3, align 8
  %call2_4228db = tail call %struct.Memory* @sub_4232d0.multiline(%struct.State* nonnull %0, i64 %385, %struct.Memory* %365)
  %390 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a70_type* @G__0x457a70 to i64), i64* %RSI.i348, align 8
  %391 = load i64, i64* %RBP.i, align 8
  %392 = add i64 %391, -32
  %393 = add i64 %390, 14
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %RDI.i265, align 8
  %396 = add i64 %391, -40
  %397 = add i64 %390, 18
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RCX.i797, align 8
  %400 = add i64 %399, 56
  %401 = add i64 %390, 21
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %405 = add i64 %390, -136048
  %406 = add i64 %390, 28
  %407 = load i64, i64* %6, align 8
  %408 = add i64 %407, -8
  %409 = inttoptr i64 %408 to i64*
  store i64 %406, i64* %409, align 8
  store i64 %408, i64* %6, align 8
  store i64 %405, i64* %3, align 8
  %410 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4228db)
  %411 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a7a_type* @G__0x457a7a to i64), i64* %RSI.i348, align 8
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -32
  %414 = add i64 %411, 14
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %RDI.i265, align 8
  %417 = add i64 %412, -40
  %418 = add i64 %411, 18
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i64*
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %RCX.i797, align 8
  %421 = add i64 %420, 64
  %422 = add i64 %411, 22
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i64*
  %424 = load i64, i64* %423, align 8
  store i64 %424, i64* %RDX.i245, align 8
  %425 = add i64 %412, -104
  %426 = load i32, i32* %EAX.i700, align 4
  %427 = add i64 %411, 25
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %425 to i32*
  store i32 %426, i32* %428, align 4
  %429 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i465, align 1
  %430 = add i64 %429, -136101
  %431 = add i64 %429, 7
  %432 = load i64, i64* %6, align 8
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %431, i64* %434, align 8
  store i64 %433, i64* %6, align 8
  store i64 %430, i64* %3, align 8
  %435 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %410)
  %436 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a84_type* @G__0x457a84 to i64), i64* %RSI.i348, align 8
  %437 = load i64, i64* %RBP.i, align 8
  %438 = add i64 %437, -32
  %439 = add i64 %436, 14
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RDI.i265, align 8
  %442 = add i64 %437, -40
  %443 = add i64 %436, 18
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RCX.i797, align 8
  %446 = add i64 %445, 80
  %447 = add i64 %436, 21
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RDX.i245, align 8
  %451 = add i64 %437, -108
  %452 = load i32, i32* %EAX.i700, align 4
  %453 = add i64 %436, 24
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %451 to i32*
  store i32 %452, i32* %454, align 4
  %455 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i465, align 1
  %456 = add i64 %455, -136132
  %457 = add i64 %455, 7
  %458 = load i64, i64* %6, align 8
  %459 = add i64 %458, -8
  %460 = inttoptr i64 %459 to i64*
  store i64 %457, i64* %460, align 8
  store i64 %459, i64* %6, align 8
  store i64 %456, i64* %3, align 8
  %461 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %435)
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -40
  %464 = load i64, i64* %3, align 8
  %465 = add i64 %464, 4
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %463 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %RCX.i797, align 8
  %468 = add i64 %467, 456
  %469 = add i64 %464, 10
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = and i32 %471, 1024
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RDX.i245, align 8
  store i8 0, i8* %29, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %.lobit74 = lshr exact i32 %472, 10
  %474 = trunc i32 %.lobit74 to i8
  %475 = xor i8 %474, 1
  store i8 %475, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %476 = add i64 %462, -112
  %477 = load i32, i32* %EAX.i700, align 4
  %478 = add i64 %464, 22
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %476 to i32*
  store i32 %477, i32* %479, align 4
  %480 = load i64, i64* %3, align 8
  %481 = load i8, i8* %45, align 1
  %482 = icmp ne i8 %481, 0
  %.v108 = select i1 %482, i64 48, i64 6
  %483 = add i64 %480, %.v108
  store i64 %483, i64* %3, align 8
  %cmpBr_422951 = icmp eq i8 %481, 1
  br i1 %cmpBr_422951, label %block_.L_422981, label %block_422957

block_422957:                                     ; preds = %block_.L_42278b
  store i64 ptrtoint (%G__0x45b045_type* @G__0x45b045 to i64), i64* %RSI.i348, align 8
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -32
  %486 = add i64 %483, 14
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %RDI.i265, align 8
  %489 = add i64 %484, -40
  %490 = add i64 %483, 18
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %RAX.i189, align 8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %494 = add i64 %492, 112
  %495 = add i64 %483, 23
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to float*
  %497 = load float, float* %496, align 4
  %498 = fpext float %497 to double
  %499 = bitcast [32 x %union.VectorReg]* %493 to double*
  store double %498, double* %499, align 1
  %500 = add i64 %483, 27
  store i64 %500, i64* %3, align 8
  %501 = load i64, i64* %491, align 8
  store i64 %501, i64* %RAX.i189, align 8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %503 = add i64 %501, 116
  %504 = add i64 %483, 32
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to float*
  %506 = load float, float* %505, align 4
  %507 = fpext float %506 to double
  %508 = bitcast %union.VectorReg* %502 to double*
  store double %507, double* %508, align 1
  store i8 2, i8* %AL.i465, align 1
  %509 = add i64 %483, -136167
  %510 = add i64 %483, 39
  %511 = load i64, i64* %6, align 8
  %512 = add i64 %511, -8
  %513 = inttoptr i64 %512 to i64*
  store i64 %510, i64* %513, align 8
  store i64 %512, i64* %6, align 8
  store i64 %509, i64* %3, align 8
  %514 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %461)
  %515 = load i64, i64* %RBP.i, align 8
  %516 = add i64 %515, -116
  %517 = load i32, i32* %EAX.i700, align 4
  %518 = load i64, i64* %3, align 8
  %519 = add i64 %518, 3
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %516 to i32*
  store i32 %517, i32* %520, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_422981

block_.L_422981:                                  ; preds = %block_422957, %block_.L_42278b
  %521 = phi i64 [ %483, %block_.L_42278b ], [ %.pre52, %block_422957 ]
  %MEMORY.2 = phi %struct.Memory* [ %461, %block_.L_42278b ], [ %514, %block_422957 ]
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -40
  %524 = add i64 %521, 4
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i64*
  %526 = load i64, i64* %525, align 8
  store i64 %526, i64* %RAX.i189, align 8
  %527 = add i64 %526, 456
  %528 = add i64 %521, 10
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = and i32 %530, 2048
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RCX.i797, align 8
  store i8 0, i8* %29, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %533 = icmp eq i32 %531, 0
  %.lobit75 = lshr exact i32 %531, 11
  %534 = trunc i32 %.lobit75 to i8
  %535 = xor i8 %534, 1
  store i8 %535, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v82 = select i1 %533, i64 67, i64 25
  %536 = add i64 %521, %.v82
  store i64 %536, i64* %3, align 8
  br i1 %533, label %block_.L_4229c4, label %block_42299a

block_42299a:                                     ; preds = %block_.L_422981
  store i64 ptrtoint (%G__0x45b093_type* @G__0x45b093 to i64), i64* %RSI.i348, align 8
  %537 = add i64 %522, -32
  %538 = add i64 %536, 14
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RDI.i265, align 8
  %541 = add i64 %536, 18
  store i64 %541, i64* %3, align 8
  %542 = load i64, i64* %525, align 8
  store i64 %542, i64* %RAX.i189, align 8
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %544 = add i64 %542, 120
  %545 = add i64 %536, 23
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to float*
  %547 = load float, float* %546, align 4
  %548 = fpext float %547 to double
  %549 = bitcast [32 x %union.VectorReg]* %543 to double*
  store double %548, double* %549, align 1
  %550 = add i64 %536, 27
  store i64 %550, i64* %3, align 8
  %551 = load i64, i64* %525, align 8
  store i64 %551, i64* %RAX.i189, align 8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %553 = add i64 %551, 124
  %554 = add i64 %536, 32
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to float*
  %556 = load float, float* %555, align 4
  %557 = fpext float %556 to double
  %558 = bitcast %union.VectorReg* %552 to double*
  store double %557, double* %558, align 1
  store i8 2, i8* %AL.i465, align 1
  %559 = add i64 %536, -136234
  %560 = add i64 %536, 39
  %561 = load i64, i64* %6, align 8
  %562 = add i64 %561, -8
  %563 = inttoptr i64 %562 to i64*
  store i64 %560, i64* %563, align 8
  store i64 %562, i64* %6, align 8
  store i64 %559, i64* %3, align 8
  %564 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.2)
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -120
  %567 = load i32, i32* %EAX.i700, align 4
  %568 = load i64, i64* %3, align 8
  %569 = add i64 %568, 3
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %566 to i32*
  store i32 %567, i32* %570, align 4
  %.pre53 = load i64, i64* %RBP.i, align 8
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_4229c4

block_.L_4229c4:                                  ; preds = %block_42299a, %block_.L_422981
  %571 = phi i64 [ %536, %block_.L_422981 ], [ %.pre54, %block_42299a ]
  %572 = phi i64 [ %522, %block_.L_422981 ], [ %.pre53, %block_42299a ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_422981 ], [ %564, %block_42299a ]
  %573 = add i64 %572, -40
  %574 = add i64 %571, 4
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RAX.i189, align 8
  %577 = add i64 %576, 456
  %578 = add i64 %571, 10
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = and i32 %580, 4096
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RCX.i797, align 8
  store i8 0, i8* %29, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %583 = icmp eq i32 %581, 0
  %.lobit76 = lshr exact i32 %581, 12
  %584 = trunc i32 %.lobit76 to i8
  %585 = xor i8 %584, 1
  store i8 %585, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v83 = select i1 %583, i64 73, i64 25
  %586 = add i64 %571, %.v83
  store i64 %586, i64* %3, align 8
  br i1 %583, label %block_.L_4229c4.block_.L_422a0d_crit_edge, label %block_4229dd

block_.L_4229c4.block_.L_422a0d_crit_edge:        ; preds = %block_.L_4229c4
  %.pre68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  br label %block_.L_422a0d

block_4229dd:                                     ; preds = %block_.L_4229c4
  store i64 ptrtoint (%G__0x45b06c_type* @G__0x45b06c to i64), i64* %RSI.i348, align 8
  %587 = add i64 %572, -32
  %588 = add i64 %586, 14
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i64*
  %590 = load i64, i64* %589, align 8
  store i64 %590, i64* %RDI.i265, align 8
  %591 = add i64 %586, 18
  store i64 %591, i64* %3, align 8
  %592 = load i64, i64* %575, align 8
  store i64 %592, i64* %RAX.i189, align 8
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %594 = add i64 %592, 128
  %595 = add i64 %586, 26
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to float*
  %597 = load float, float* %596, align 4
  %598 = fpext float %597 to double
  %599 = bitcast [32 x %union.VectorReg]* %593 to double*
  store double %598, double* %599, align 1
  %600 = add i64 %586, 30
  store i64 %600, i64* %3, align 8
  %601 = load i64, i64* %575, align 8
  store i64 %601, i64* %RAX.i189, align 8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %603 = add i64 %601, 132
  %604 = add i64 %586, 38
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to float*
  %606 = load float, float* %605, align 4
  %607 = fpext float %606 to double
  %608 = bitcast %union.VectorReg* %602 to double*
  store double %607, double* %608, align 1
  store i8 2, i8* %AL.i465, align 1
  %609 = add i64 %586, -136301
  %610 = add i64 %586, 45
  %611 = load i64, i64* %6, align 8
  %612 = add i64 %611, -8
  %613 = inttoptr i64 %612 to i64*
  store i64 %610, i64* %613, align 8
  store i64 %612, i64* %6, align 8
  store i64 %609, i64* %3, align 8
  %614 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.3)
  %615 = load i64, i64* %RBP.i, align 8
  %616 = add i64 %615, -124
  %617 = load i32, i32* %EAX.i700, align 4
  %618 = load i64, i64* %3, align 8
  %619 = add i64 %618, 3
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %616 to i32*
  store i32 %617, i32* %620, align 4
  %.pre55 = load i64, i64* %3, align 8
  %.pre56 = load i64, i64* %RBP.i, align 8
  br label %block_.L_422a0d

block_.L_422a0d:                                  ; preds = %block_.L_4229c4.block_.L_422a0d_crit_edge, %block_4229dd
  %.pre-phi = phi %union.VectorReg* [ %.pre68, %block_.L_4229c4.block_.L_422a0d_crit_edge ], [ %602, %block_4229dd ]
  %621 = phi i64 [ %572, %block_.L_4229c4.block_.L_422a0d_crit_edge ], [ %.pre56, %block_4229dd ]
  %622 = phi i64 [ %586, %block_.L_4229c4.block_.L_422a0d_crit_edge ], [ %.pre55, %block_4229dd ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_4229c4.block_.L_422a0d_crit_edge ], [ %614, %block_4229dd ]
  store i64 ptrtoint (%G__0x457a8e_type* @G__0x457a8e to i64), i64* %RDI.i265, align 8
  %623 = add i64 %621, -32
  %624 = add i64 %622, 14
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %RSI.i348, align 8
  %627 = add i64 %622, -136525
  %628 = add i64 %622, 19
  %629 = load i64, i64* %6, align 8
  %630 = add i64 %629, -8
  %631 = inttoptr i64 %630 to i64*
  store i64 %628, i64* %631, align 8
  store i64 %630, i64* %6, align 8
  store i64 %627, i64* %3, align 8
  %632 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.4)
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -44
  %635 = load i64, i64* %3, align 8
  %636 = add i64 %635, 7
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %634 to i32*
  store i32 0, i32* %637, align 4
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -128
  %640 = load i32, i32* %EAX.i700, align 4
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 3
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %639 to i32*
  store i32 %640, i32* %643, align 4
  %644 = bitcast %union.VectorReg* %.pre-phi to i8*
  %645 = bitcast %union.VectorReg* %.pre-phi to i32*
  %646 = getelementptr inbounds i8, i8* %644, i64 4
  %647 = bitcast i8* %646 to float*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %649 = bitcast i64* %648 to float*
  %650 = getelementptr inbounds i8, i8* %644, i64 12
  %651 = bitcast i8* %650 to float*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %653 = bitcast %union.VectorReg* %652 to i8*
  %654 = bitcast %union.VectorReg* %652 to i32*
  %655 = getelementptr inbounds i8, i8* %653, i64 4
  %656 = bitcast i8* %655 to float*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %658 = bitcast i64* %657 to float*
  %659 = getelementptr inbounds i8, i8* %653, i64 12
  %660 = bitcast i8* %659 to float*
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_422a2a

block_.L_422a2a:                                  ; preds = %block_.L_422aaa, %block_.L_422a0d
  %661 = phi i64 [ %.pre57, %block_.L_422a0d ], [ %892, %block_.L_422aaa ]
  %MEMORY.5 = phi %struct.Memory* [ %632, %block_.L_422a0d ], [ %MEMORY.6, %block_.L_422aaa ]
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -44
  %664 = add i64 %661, 4
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = add i32 %666, -4
  %668 = icmp ult i32 %666, 4
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %29, align 1
  %670 = and i32 %667, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %36, align 1
  %675 = xor i32 %667, %666
  %676 = lshr i32 %675, 4
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %42, align 1
  %679 = icmp eq i32 %667, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %45, align 1
  %681 = lshr i32 %667, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %48, align 1
  %683 = lshr i32 %666, 31
  %684 = xor i32 %681, %683
  %685 = add nuw nsw i32 %684, %683
  %686 = icmp eq i32 %685, 2
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %54, align 1
  %688 = icmp ne i8 %682, 0
  %689 = xor i1 %688, %686
  %.v84 = select i1 %689, i64 10, i64 147
  %690 = add i64 %661, %.v84
  store i64 %690, i64* %3, align 8
  br i1 %689, label %block_422a34, label %block_.L_422abd

block_422a34:                                     ; preds = %block_.L_422a2a
  %691 = add i64 %662, -48
  %692 = add i64 %690, 7
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  store i32 0, i32* %693, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_422a3b

block_.L_422a3b:                                  ; preds = %block_422a45, %block_422a34
  %694 = phi i64 [ %.pre67, %block_422a34 ], [ %862, %block_422a45 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_422a34 ], [ %824, %block_422a45 ]
  %695 = load i64, i64* %RBP.i, align 8
  %696 = add i64 %695, -48
  %697 = add i64 %694, 4
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = add i32 %699, -2
  %701 = icmp ult i32 %699, 2
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %29, align 1
  %703 = and i32 %700, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %36, align 1
  %708 = xor i32 %700, %699
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %42, align 1
  %712 = icmp eq i32 %700, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %45, align 1
  %714 = lshr i32 %700, 31
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %48, align 1
  %716 = lshr i32 %699, 31
  %717 = xor i32 %714, %716
  %718 = add nuw nsw i32 %717, %716
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %54, align 1
  %721 = icmp ne i8 %715, 0
  %722 = xor i1 %721, %719
  %.v = select i1 %722, i64 10, i64 111
  %723 = add i64 %694, %.v
  store i64 %723, i64* %3, align 8
  br i1 %722, label %block_422a45, label %block_.L_422aaa

block_422a45:                                     ; preds = %block_.L_422a3b
  %724 = add i64 %723, ptrtoint (%G_0x31cdb__rip__type* @G_0x31cdb__rip_ to i64)
  %725 = add i64 %723, 8
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  store i32 %727, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %728 = add i64 %695, -32
  %729 = add i64 %723, 12
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RDI.i265, align 8
  %732 = add i64 %695, -40
  %733 = add i64 %723, 16
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  %736 = add i64 %735, 172
  store i64 %736, i64* %RAX.i189, align 8
  %737 = icmp ugt i64 %735, -173
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %29, align 1
  %739 = trunc i64 %736 to i32
  %740 = and i32 %739, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %36, align 1
  %745 = xor i64 %736, %735
  %746 = lshr i64 %745, 4
  %747 = trunc i64 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %42, align 1
  %749 = icmp eq i64 %736, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %45, align 1
  %751 = lshr i64 %736, 63
  %752 = trunc i64 %751 to i8
  store i8 %752, i8* %48, align 1
  %753 = lshr i64 %735, 63
  %754 = xor i64 %751, %753
  %755 = add nuw nsw i64 %754, %751
  %756 = icmp eq i64 %755, 2
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %54, align 1
  %758 = add i64 %695, -44
  %759 = add i64 %723, 26
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = sext i32 %761 to i64
  %763 = shl nsw i64 %762, 3
  store i64 %763, i64* %RCX.i797, align 8
  %764 = add i64 %763, %736
  store i64 %764, i64* %RAX.i189, align 8
  %765 = icmp ult i64 %764, %736
  %766 = icmp ult i64 %764, %763
  %767 = or i1 %765, %766
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %29, align 1
  %769 = trunc i64 %764 to i32
  %770 = and i32 %769, 255
  %771 = tail call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  store i8 %774, i8* %36, align 1
  %775 = xor i64 %763, %736
  %776 = xor i64 %775, %764
  %777 = lshr i64 %776, 4
  %778 = trunc i64 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %42, align 1
  %780 = icmp eq i64 %764, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %45, align 1
  %782 = lshr i64 %764, 63
  %783 = trunc i64 %782 to i8
  store i8 %783, i8* %48, align 1
  %784 = lshr i64 %762, 60
  %785 = and i64 %784, 1
  %786 = xor i64 %782, %751
  %787 = xor i64 %782, %785
  %788 = add nuw nsw i64 %786, %787
  %789 = icmp eq i64 %788, 2
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %54, align 1
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -48
  %793 = add i64 %723, 37
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = sext i32 %795 to i64
  store i64 %796, i64* %RCX.i797, align 8
  %797 = shl nsw i64 %796, 2
  %798 = add i64 %797, %764
  %799 = add i64 %723, 42
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i32*
  %801 = load i32, i32* %800, align 4
  store i32 %801, i32* %654, align 1
  store float 0.000000e+00, float* %656, align 1
  store float 0.000000e+00, float* %658, align 1
  store float 0.000000e+00, float* %660, align 1
  %802 = add i64 %791, -136
  %803 = load i64, i64* %RDI.i265, align 8
  %804 = add i64 %723, 49
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %802 to i64*
  store i64 %803, i64* %805, align 8
  %806 = load i64, i64* %3, align 8
  %807 = add i64 %806, 2298
  %808 = add i64 %806, 5
  %809 = load i64, i64* %6, align 8
  %810 = add i64 %809, -8
  %811 = inttoptr i64 %810 to i64*
  store i64 %808, i64* %811, align 8
  store i64 %810, i64* %6, align 8
  store i64 %807, i64* %3, align 8
  %call2_422a76 = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %807, %struct.Memory* %MEMORY.6)
  %812 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457b2c_type* @G__0x457b2c to i64), i64* %RSI.i348, align 8
  %813 = load i64, i64* %RBP.i, align 8
  %814 = add i64 %813, -136
  %815 = add i64 %812, 17
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i64*
  %817 = load i64, i64* %816, align 8
  store i64 %817, i64* %RDI.i265, align 8
  %818 = load i64, i64* %RAX.i189, align 8
  store i64 %818, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %819 = add i64 %812, -136459
  %820 = add i64 %812, 27
  %821 = load i64, i64* %6, align 8
  %822 = add i64 %821, -8
  %823 = inttoptr i64 %822 to i64*
  store i64 %820, i64* %823, align 8
  store i64 %822, i64* %6, align 8
  store i64 %819, i64* %3, align 8
  %824 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.6)
  %825 = load i64, i64* %RBP.i, align 8
  %826 = add i64 %825, -140
  %827 = load i32, i32* %EAX.i700, align 4
  %828 = load i64, i64* %3, align 8
  %829 = add i64 %828, 6
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %826 to i32*
  store i32 %827, i32* %830, align 4
  %831 = load i64, i64* %RBP.i, align 8
  %832 = add i64 %831, -48
  %833 = load i64, i64* %3, align 8
  %834 = add i64 %833, 3
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %832 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = add i32 %836, 1
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RAX.i189, align 8
  %839 = icmp eq i32 %836, -1
  %840 = icmp eq i32 %837, 0
  %841 = or i1 %839, %840
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %29, align 1
  %843 = and i32 %837, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %36, align 1
  %848 = xor i32 %837, %836
  %849 = lshr i32 %848, 4
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  store i8 %851, i8* %42, align 1
  %852 = zext i1 %840 to i8
  store i8 %852, i8* %45, align 1
  %853 = lshr i32 %837, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %48, align 1
  %855 = lshr i32 %836, 31
  %856 = xor i32 %853, %855
  %857 = add nuw nsw i32 %856, %853
  %858 = icmp eq i32 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %54, align 1
  %860 = add i64 %833, 9
  store i64 %860, i64* %3, align 8
  store i32 %837, i32* %835, align 4
  %861 = load i64, i64* %3, align 8
  %862 = add i64 %861, -106
  store i64 %862, i64* %3, align 8
  br label %block_.L_422a3b

block_.L_422aaa:                                  ; preds = %block_.L_422a3b
  %863 = add i64 %695, -44
  %864 = add i64 %723, 8
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = add i32 %866, 1
  %868 = zext i32 %867 to i64
  store i64 %868, i64* %RAX.i189, align 8
  %869 = icmp eq i32 %866, -1
  %870 = icmp eq i32 %867, 0
  %871 = or i1 %869, %870
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %29, align 1
  %873 = and i32 %867, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %36, align 1
  %878 = xor i32 %867, %866
  %879 = lshr i32 %878, 4
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %42, align 1
  %882 = zext i1 %870 to i8
  store i8 %882, i8* %45, align 1
  %883 = lshr i32 %867, 31
  %884 = trunc i32 %883 to i8
  store i8 %884, i8* %48, align 1
  %885 = lshr i32 %866, 31
  %886 = xor i32 %883, %885
  %887 = add nuw nsw i32 %886, %883
  %888 = icmp eq i32 %887, 2
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %54, align 1
  %890 = add i64 %723, 14
  store i64 %890, i64* %3, align 8
  store i32 %867, i32* %865, align 4
  %891 = load i64, i64* %3, align 8
  %892 = add i64 %891, -142
  store i64 %892, i64* %3, align 8
  br label %block_.L_422a2a

block_.L_422abd:                                  ; preds = %block_.L_422a2a
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI.i265, align 8
  %893 = add i64 %662, -32
  %894 = add i64 %690, 14
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i64*
  %896 = load i64, i64* %895, align 8
  store i64 %896, i64* %RSI.i348, align 8
  %897 = add i64 %690, -136701
  %898 = add i64 %690, 19
  %899 = load i64, i64* %6, align 8
  %900 = add i64 %899, -8
  %901 = inttoptr i64 %900 to i64*
  store i64 %898, i64* %901, align 8
  store i64 %900, i64* %6, align 8
  store i64 %897, i64* %3, align 8
  %902 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.5)
  %903 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a96_type* @G__0x457a96 to i64), i64* %RSI.i348, align 8
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -32
  %906 = add i64 %903, 14
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RDI.i265, align 8
  %909 = add i64 %904, -144
  %910 = load i32, i32* %EAX.i700, align 4
  %911 = add i64 %903, 20
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %909 to i32*
  store i32 %910, i32* %912, align 4
  %913 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i465, align 1
  %914 = add i64 %913, -136564
  %915 = add i64 %913, 7
  %916 = load i64, i64* %6, align 8
  %917 = add i64 %916, -8
  %918 = inttoptr i64 %917 to i64*
  store i64 %915, i64* %918, align 8
  store i64 %917, i64* %6, align 8
  store i64 %914, i64* %3, align 8
  %919 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %902)
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %921 = load i64, i64* %3, align 8
  %922 = add i64 %921, ptrtoint (%G_0x31c35__rip__type* @G_0x31c35__rip_ to i64)
  %923 = add i64 %921, 8
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  store i32 %925, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -32
  %928 = add i64 %921, 12
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i64*
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %RDI.i265, align 8
  %931 = add i64 %926, -40
  %932 = add i64 %921, 16
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RSI.i348, align 8
  %935 = bitcast [32 x %union.VectorReg]* %920 to i8*
  %936 = add i64 %934, 304
  %937 = add i64 %921, 24
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = bitcast [32 x %union.VectorReg]* %920 to float*
  %941 = bitcast [32 x %union.VectorReg]* %920 to i32*
  store i32 %939, i32* %941, align 1
  %942 = getelementptr inbounds i8, i8* %935, i64 4
  %943 = bitcast i8* %942 to float*
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %658, align 1
  %944 = getelementptr inbounds i8, i8* %935, i64 12
  %945 = bitcast i8* %944 to float*
  store float 0.000000e+00, float* %945, align 1
  %946 = add i64 %926, -148
  %947 = load i32, i32* %EAX.i700, align 4
  %948 = add i64 %921, 30
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %946 to i32*
  store i32 %947, i32* %949, align 4
  %950 = load i64, i64* %RBP.i, align 8
  %951 = add i64 %950, -160
  %952 = load i64, i64* %RDI.i265, align 8
  %953 = load i64, i64* %3, align 8
  %954 = add i64 %953, 7
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %951 to i64*
  store i64 %952, i64* %955, align 8
  %956 = load i64, i64* %3, align 8
  %957 = add i64 %956, 2144
  %958 = add i64 %956, 5
  %959 = load i64, i64* %6, align 8
  %960 = add i64 %959, -8
  %961 = inttoptr i64 %960 to i64*
  store i64 %958, i64* %961, align 8
  store i64 %960, i64* %6, align 8
  store i64 %957, i64* %3, align 8
  %call2_422b10 = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %957, %struct.Memory* %919)
  %962 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457b2c_type* @G__0x457b2c to i64), i64* %RSI.i348, align 8
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -160
  %965 = add i64 %962, 17
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %RDI.i265, align 8
  %968 = load i64, i64* %RAX.i189, align 8
  store i64 %968, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %969 = add i64 %962, -136613
  %970 = add i64 %962, 27
  %971 = load i64, i64* %6, align 8
  %972 = add i64 %971, -8
  %973 = inttoptr i64 %972 to i64*
  store i64 %970, i64* %973, align 8
  store i64 %972, i64* %6, align 8
  store i64 %969, i64* %3, align 8
  %974 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_422b10)
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, ptrtoint (%G_0x31bf0__rip__type* @G_0x31bf0__rip_ to i64)
  %977 = add i64 %975, 8
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  store i32 %979, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %980 = add i64 %975, add (i64 ptrtoint (%G_0x31ca0__rip__type* @G_0x31ca0__rip_ to i64), i64 8)
  %981 = add i64 %975, 16
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i64*
  %983 = load i64, i64* %982, align 8
  %984 = bitcast [32 x %union.VectorReg]* %920 to double*
  %985 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %920, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %983, i64* %985, align 1
  %986 = bitcast i64* %657 to double*
  store double 0.000000e+00, double* %986, align 1
  %987 = load i64, i64* %RBP.i, align 8
  %988 = add i64 %987, -32
  %989 = add i64 %975, 20
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i64*
  %991 = load i64, i64* %990, align 8
  store i64 %991, i64* %RDI.i265, align 8
  %992 = add i64 %987, -40
  %993 = add i64 %975, 24
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i64*
  %995 = load i64, i64* %994, align 8
  store i64 %995, i64* %RDX.i245, align 8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %997 = bitcast %union.VectorReg* %996 to i8*
  %998 = add i64 %995, 304
  %999 = add i64 %975, 32
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to float*
  %1001 = load float, float* %1000, align 4
  %1002 = fpext float %1001 to double
  %1003 = bitcast %union.VectorReg* %996 to double*
  store double %1002, double* %1003, align 1
  %1004 = bitcast i64 %983 to double
  %1005 = fsub double %1004, %1002
  %.cast34 = bitcast double %1005 to <2 x i32>
  %1006 = bitcast i64* %657 to <2 x i32>*
  %1007 = fptrunc double %1005 to float
  store float %1007, float* %940, align 1
  %1008 = extractelement <2 x i32> %.cast34, i32 1
  %1009 = bitcast i8* %942 to i32*
  store i32 %1008, i32* %1009, align 1
  %1010 = bitcast i64* %657 to i32*
  store i32 0, i32* %1010, align 1
  %1011 = bitcast i8* %944 to i32*
  store i32 0, i32* %1011, align 1
  %1012 = add i64 %987, -164
  %1013 = load i32, i32* %EAX.i700, align 4
  %1014 = add i64 %975, 46
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1012 to i32*
  store i32 %1013, i32* %1015, align 4
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -176
  %1018 = load i64, i64* %RDI.i265, align 8
  %1019 = load i64, i64* %3, align 8
  %1020 = add i64 %1019, 7
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1017 to i64*
  store i64 %1018, i64* %1021, align 8
  %1022 = load i64, i64* %3, align 8
  %1023 = add i64 %1022, 2059
  %1024 = add i64 %1022, 5
  %1025 = load i64, i64* %6, align 8
  %1026 = add i64 %1025, -8
  %1027 = inttoptr i64 %1026 to i64*
  store i64 %1024, i64* %1027, align 8
  store i64 %1026, i64* %6, align 8
  store i64 %1023, i64* %3, align 8
  %call2_422b65 = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %1023, %struct.Memory* %974)
  %1028 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x456fbb_type* @G__0x456fbb to i64), i64* %RSI.i348, align 8
  %1029 = load i64, i64* %RBP.i, align 8
  %1030 = add i64 %1029, -176
  %1031 = add i64 %1028, 17
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i64*
  %1033 = load i64, i64* %1032, align 8
  store i64 %1033, i64* %RDI.i265, align 8
  %1034 = load i64, i64* %RAX.i189, align 8
  store i64 %1034, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %1035 = add i64 %1028, -136698
  %1036 = add i64 %1028, 27
  %1037 = load i64, i64* %6, align 8
  %1038 = add i64 %1037, -8
  %1039 = inttoptr i64 %1038 to i64*
  store i64 %1036, i64* %1039, align 8
  store i64 %1038, i64* %6, align 8
  store i64 %1035, i64* %3, align 8
  %1040 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_422b65)
  %1041 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457a9d_type* @G__0x457a9d to i64), i64* %RDI.i265, align 8
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -32
  %1044 = add i64 %1041, 14
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %RSI.i348, align 8
  %1047 = add i64 %1042, -180
  %1048 = load i32, i32* %EAX.i700, align 4
  %1049 = add i64 %1041, 20
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1047 to i32*
  store i32 %1048, i32* %1050, align 4
  %1051 = load i64, i64* %3, align 8
  %1052 = add i64 %1051, -136921
  %1053 = add i64 %1051, 5
  %1054 = load i64, i64* %6, align 8
  %1055 = add i64 %1054, -8
  %1056 = inttoptr i64 %1055 to i64*
  store i64 %1053, i64* %1056, align 8
  store i64 %1055, i64* %6, align 8
  store i64 %1052, i64* %3, align 8
  %1057 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %1040)
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -48
  %1060 = load i64, i64* %3, align 8
  %1061 = add i64 %1060, 7
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1059 to i32*
  store i32 0, i32* %1062, align 4
  %1063 = load i64, i64* %RBP.i, align 8
  %1064 = add i64 %1063, -184
  %1065 = load i32, i32* %EAX.i700, align 4
  %1066 = load i64, i64* %3, align 8
  %1067 = add i64 %1066, 6
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1064 to i32*
  store i32 %1065, i32* %1068, align 4
  %1069 = bitcast %union.VectorReg* %996 to <2 x i32>*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1071 = bitcast i64* %1070 to <2 x i32>*
  %1072 = bitcast %union.VectorReg* %996 to float*
  %1073 = getelementptr inbounds i8, i8* %997, i64 4
  %1074 = bitcast i8* %1073 to i32*
  %1075 = bitcast i64* %1070 to i32*
  %1076 = getelementptr inbounds i8, i8* %997, i64 12
  %1077 = bitcast i8* %1076 to i32*
  %1078 = bitcast [32 x %union.VectorReg]* %920 to <2 x float>*
  %1079 = bitcast %union.VectorReg* %996 to <2 x float>*
  %1080 = bitcast %union.VectorReg* %.pre-phi to <2 x i32>*
  %1081 = bitcast i64* %648 to <2 x i32>*
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_422bab

block_.L_422bab:                                  ; preds = %block_422bbb, %block_.L_422abd
  %1082 = phi i64 [ %.pre58, %block_.L_422abd ], [ %1228, %block_422bbb ]
  %MEMORY.7 = phi %struct.Memory* [ %1057, %block_.L_422abd ], [ %1190, %block_422bbb ]
  %1083 = load i64, i64* %RBP.i, align 8
  %1084 = add i64 %1083, -48
  %1085 = add i64 %1082, 3
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = zext i32 %1087 to i64
  store i64 %1088, i64* %RAX.i189, align 8
  %1089 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1090 = sub i32 %1087, %1089
  %1091 = icmp ult i32 %1087, %1089
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %29, align 1
  %1093 = and i32 %1090, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %36, align 1
  %1098 = xor i32 %1089, %1087
  %1099 = xor i32 %1098, %1090
  %1100 = lshr i32 %1099, 4
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  store i8 %1102, i8* %42, align 1
  %1103 = icmp eq i32 %1090, 0
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %45, align 1
  %1105 = lshr i32 %1090, 31
  %1106 = trunc i32 %1105 to i8
  store i8 %1106, i8* %48, align 1
  %1107 = lshr i32 %1087, 31
  %1108 = lshr i32 %1089, 31
  %1109 = xor i32 %1108, %1107
  %1110 = xor i32 %1105, %1107
  %1111 = add nuw nsw i32 %1110, %1109
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %54, align 1
  %1114 = icmp ne i8 %1106, 0
  %1115 = xor i1 %1114, %1112
  %.v85 = select i1 %1115, i64 16, i64 136
  %1116 = add i64 %1082, %.v85
  store i64 %1116, i64* %3, align 8
  br i1 %1115, label %block_422bbb, label %block_.L_422c33

block_422bbb:                                     ; preds = %block_.L_422bab
  %1117 = add i64 %1116, ptrtoint (%G_0x31b65__rip__type* @G_0x31b65__rip_ to i64)
  %1118 = add i64 %1116, 8
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  store i32 %1120, i32* %941, align 1
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %658, align 1
  store float 0.000000e+00, float* %945, align 1
  %1121 = add i64 %1083, -32
  %1122 = add i64 %1116, 12
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i64*
  %1124 = load i64, i64* %1123, align 8
  store i64 %1124, i64* %RDI.i265, align 8
  %1125 = add i64 %1083, -40
  %1126 = add i64 %1116, 16
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i64*
  %1128 = load i64, i64* %1127, align 8
  store i64 %1128, i64* %RAX.i189, align 8
  %1129 = add i64 %1116, 20
  store i64 %1129, i64* %3, align 8
  %1130 = load i32, i32* %1086, align 4
  %1131 = sext i32 %1130 to i64
  store i64 %1131, i64* %RCX.i797, align 8
  %1132 = shl nsw i64 %1131, 2
  %1133 = add i64 %1128, 224
  %1134 = add i64 %1133, %1132
  %1135 = add i64 %1116, 29
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  store i32 %1137, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %1138 = load <2 x i32>, <2 x i32>* %1069, align 1
  %1139 = load <2 x i32>, <2 x i32>* %1071, align 1
  %1140 = sitofp i32 %1089 to float
  store float %1140, float* %1072, align 1
  %1141 = extractelement <2 x i32> %1138, i32 1
  store i32 %1141, i32* %1074, align 1
  %1142 = extractelement <2 x i32> %1139, i32 0
  store i32 %1142, i32* %1075, align 1
  %1143 = extractelement <2 x i32> %1139, i32 1
  store i32 %1143, i32* %1077, align 1
  %1144 = load <2 x float>, <2 x float>* %1078, align 1
  %1145 = load <2 x float>, <2 x float>* %1079, align 1
  %1146 = extractelement <2 x float> %1144, i32 0
  %1147 = extractelement <2 x float> %1145, i32 0
  %1148 = fdiv float %1146, %1147
  store float %1148, float* %940, align 1
  %1149 = bitcast <2 x float> %1144 to <2 x i32>
  %1150 = extractelement <2 x i32> %1149, i32 1
  store i32 %1150, i32* %1009, align 1
  %1151 = add i64 %1083, -188
  %1152 = add i64 %1116, 50
  store i64 %1152, i64* %3, align 8
  %1153 = load <2 x float>, <2 x float>* %1078, align 1
  %1154 = extractelement <2 x float> %1153, i32 0
  %1155 = inttoptr i64 %1151 to float*
  store float %1154, float* %1155, align 4
  %1156 = load i64, i64* %3, align 8
  %1157 = load <2 x i32>, <2 x i32>* %1080, align 1
  %1158 = load <2 x i32>, <2 x i32>* %1081, align 1
  %1159 = extractelement <2 x i32> %1157, i32 0
  store i32 %1159, i32* %941, align 1
  %1160 = extractelement <2 x i32> %1157, i32 1
  store i32 %1160, i32* %1009, align 1
  %1161 = extractelement <2 x i32> %1158, i32 0
  store i32 %1161, i32* %1010, align 1
  %1162 = extractelement <2 x i32> %1158, i32 1
  store i32 %1162, i32* %1011, align 1
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -188
  %1165 = add i64 %1156, 11
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  store i32 %1167, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %1168 = add i64 %1163, -200
  %1169 = load i64, i64* %RDI.i265, align 8
  %1170 = add i64 %1156, 18
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1168 to i64*
  store i64 %1169, i64* %1171, align 8
  %1172 = load i64, i64* %3, align 8
  %1173 = add i64 %1172, 1905
  %1174 = add i64 %1172, 5
  %1175 = load i64, i64* %6, align 8
  %1176 = add i64 %1175, -8
  %1177 = inttoptr i64 %1176 to i64*
  store i64 %1174, i64* %1177, align 8
  store i64 %1176, i64* %6, align 8
  store i64 %1173, i64* %3, align 8
  %call2_422bff = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %1173, %struct.Memory* %MEMORY.7)
  %1178 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457b2c_type* @G__0x457b2c to i64), i64* %RSI.i348, align 8
  %1179 = load i64, i64* %RBP.i, align 8
  %1180 = add i64 %1179, -200
  %1181 = add i64 %1178, 17
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i64*
  %1183 = load i64, i64* %1182, align 8
  store i64 %1183, i64* %RDI.i265, align 8
  %1184 = load i64, i64* %RAX.i189, align 8
  store i64 %1184, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %1185 = add i64 %1178, -136852
  %1186 = add i64 %1178, 27
  %1187 = load i64, i64* %6, align 8
  %1188 = add i64 %1187, -8
  %1189 = inttoptr i64 %1188 to i64*
  store i64 %1186, i64* %1189, align 8
  store i64 %1188, i64* %6, align 8
  store i64 %1185, i64* %3, align 8
  %1190 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.7)
  %1191 = load i64, i64* %RBP.i, align 8
  %1192 = add i64 %1191, -204
  %1193 = load i32, i32* %EAX.i700, align 4
  %1194 = load i64, i64* %3, align 8
  %1195 = add i64 %1194, 6
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1192 to i32*
  store i32 %1193, i32* %1196, align 4
  %1197 = load i64, i64* %RBP.i, align 8
  %1198 = add i64 %1197, -48
  %1199 = load i64, i64* %3, align 8
  %1200 = add i64 %1199, 3
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1198 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = add i32 %1202, 1
  %1204 = zext i32 %1203 to i64
  store i64 %1204, i64* %RAX.i189, align 8
  %1205 = icmp eq i32 %1202, -1
  %1206 = icmp eq i32 %1203, 0
  %1207 = or i1 %1205, %1206
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %29, align 1
  %1209 = and i32 %1203, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %36, align 1
  %1214 = xor i32 %1203, %1202
  %1215 = lshr i32 %1214, 4
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  store i8 %1217, i8* %42, align 1
  %1218 = zext i1 %1206 to i8
  store i8 %1218, i8* %45, align 1
  %1219 = lshr i32 %1203, 31
  %1220 = trunc i32 %1219 to i8
  store i8 %1220, i8* %48, align 1
  %1221 = lshr i32 %1202, 31
  %1222 = xor i32 %1219, %1221
  %1223 = add nuw nsw i32 %1222, %1219
  %1224 = icmp eq i32 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %54, align 1
  %1226 = add i64 %1199, 9
  store i64 %1226, i64* %3, align 8
  store i32 %1203, i32* %1201, align 4
  %1227 = load i64, i64* %3, align 8
  %1228 = add i64 %1227, -131
  store i64 %1228, i64* %3, align 8
  br label %block_.L_422bab

block_.L_422c33:                                  ; preds = %block_.L_422bab
  %1229 = bitcast %union.VectorReg* %.pre-phi to float*
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI.i265, align 8
  %1230 = add i64 %1083, -32
  %1231 = add i64 %1116, 14
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i64*
  %1233 = load i64, i64* %1232, align 8
  store i64 %1233, i64* %RSI.i348, align 8
  %1234 = add i64 %1116, -137075
  %1235 = add i64 %1116, 19
  %1236 = load i64, i64* %6, align 8
  %1237 = add i64 %1236, -8
  %1238 = inttoptr i64 %1237 to i64*
  store i64 %1235, i64* %1238, align 8
  store i64 %1237, i64* %6, align 8
  store i64 %1234, i64* %3, align 8
  %1239 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.7)
  %1240 = load i64, i64* %RBP.i, align 8
  %1241 = add i64 %1240, -40
  %1242 = load i64, i64* %3, align 8
  %1243 = add i64 %1242, 4
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1241 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RSI.i348, align 8
  %1246 = add i64 %1245, 456
  %1247 = add i64 %1242, 10
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = and i32 %1249, 128
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RCX.i797, align 8
  store i8 0, i8* %29, align 1
  %1252 = tail call i32 @llvm.ctpop.i32(i32 %1250)
  %1253 = trunc i32 %1252 to i8
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %.lobit77 = lshr exact i32 %1250, 7
  %1255 = trunc i32 %.lobit77 to i8
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1257 = add i64 %1240, -208
  %1258 = load i32, i32* %EAX.i700, align 4
  %1259 = add i64 %1242, 25
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1257 to i32*
  store i32 %1258, i32* %1260, align 4
  %1261 = load i64, i64* %3, align 8
  %1262 = load i8, i8* %45, align 1
  %1263 = icmp ne i8 %1262, 0
  %.v109 = select i1 %1263, i64 57, i64 6
  %1264 = add i64 %1261, %.v109
  store i64 %1264, i64* %3, align 8
  %cmpBr_422c5f = icmp eq i8 %1262, 1
  br i1 %cmpBr_422c5f, label %block_.L_422c98, label %block_422c65

block_422c65:                                     ; preds = %block_.L_422c33
  store i64 ptrtoint (%G__0x457aa4_type* @G__0x457aa4 to i64), i64* %RSI.i348, align 8
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -32
  %1267 = add i64 %1264, 14
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i64*
  %1269 = load i64, i64* %1268, align 8
  store i64 %1269, i64* %RDI.i265, align 8
  %1270 = add i64 %1265, -40
  %1271 = add i64 %1264, 18
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RAX.i189, align 8
  %1274 = add i64 %1273, 448
  %1275 = add i64 %1264, 26
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to float*
  %1277 = load float, float* %1276, align 4
  %1278 = fpext float %1277 to double
  store double %1278, double* %984, align 1
  %1279 = add i64 %1264, 30
  store i64 %1279, i64* %3, align 8
  %1280 = load i64, i64* %1272, align 8
  store i64 %1280, i64* %RAX.i189, align 8
  %1281 = add i64 %1280, 452
  %1282 = add i64 %1264, 38
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to float*
  %1284 = load float, float* %1283, align 4
  %1285 = fpext float %1284 to double
  %1286 = bitcast %union.VectorReg* %.pre-phi to double*
  store double %1285, double* %1286, align 1
  store i8 2, i8* %AL.i465, align 1
  %1287 = add i64 %1264, -136949
  %1288 = add i64 %1264, 45
  %1289 = load i64, i64* %6, align 8
  %1290 = add i64 %1289, -8
  %1291 = inttoptr i64 %1290 to i64*
  store i64 %1288, i64* %1291, align 8
  store i64 %1290, i64* %6, align 8
  store i64 %1287, i64* %3, align 8
  %1292 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1239)
  %1293 = load i64, i64* %RBP.i, align 8
  %1294 = add i64 %1293, -212
  %1295 = load i32, i32* %EAX.i700, align 4
  %1296 = load i64, i64* %3, align 8
  %1297 = add i64 %1296, 6
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1294 to i32*
  store i32 %1295, i32* %1298, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_422c98

block_.L_422c98:                                  ; preds = %block_422c65, %block_.L_422c33
  %1299 = phi i64 [ %1264, %block_.L_422c33 ], [ %.pre59, %block_422c65 ]
  %MEMORY.8 = phi %struct.Memory* [ %1239, %block_.L_422c33 ], [ %1292, %block_422c65 ]
  store i64 ptrtoint (%G__0x457ab5_type* @G__0x457ab5 to i64), i64* %RSI.i348, align 8
  %1300 = load i64, i64* %RBP.i, align 8
  %1301 = add i64 %1300, -32
  %1302 = add i64 %1299, 14
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i64*
  %1304 = load i64, i64* %1303, align 8
  store i64 %1304, i64* %RDI.i265, align 8
  store i8 0, i8* %AL.i465, align 1
  %1305 = add i64 %1299, -137000
  %1306 = add i64 %1299, 21
  %1307 = load i64, i64* %6, align 8
  %1308 = add i64 %1307, -8
  %1309 = inttoptr i64 %1308 to i64*
  store i64 %1306, i64* %1309, align 8
  store i64 %1308, i64* %6, align 8
  store i64 %1305, i64* %3, align 8
  %1310 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.8)
  %1311 = load i64, i64* %RBP.i, align 8
  %1312 = add i64 %1311, -48
  %1313 = load i64, i64* %3, align 8
  %1314 = add i64 %1313, 7
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1312 to i32*
  store i32 0, i32* %1315, align 4
  %1316 = load i64, i64* %RBP.i, align 8
  %1317 = add i64 %1316, -216
  %1318 = load i32, i32* %EAX.i700, align 4
  %1319 = load i64, i64* %3, align 8
  %1320 = add i64 %1319, 6
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1317 to i32*
  store i32 %1318, i32* %1321, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_422cba

block_.L_422cba:                                  ; preds = %block_422cca, %block_.L_422c98
  %1322 = phi i64 [ %.pre60, %block_.L_422c98 ], [ %1414, %block_422cca ]
  %MEMORY.9 = phi %struct.Memory* [ %1310, %block_.L_422c98 ], [ %1376, %block_422cca ]
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -48
  %1325 = add i64 %1322, 3
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i32*
  %1327 = load i32, i32* %1326, align 4
  %1328 = zext i32 %1327 to i64
  store i64 %1328, i64* %RAX.i189, align 8
  %1329 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1330 = sub i32 %1327, %1329
  %1331 = icmp ult i32 %1327, %1329
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %29, align 1
  %1333 = and i32 %1330, 255
  %1334 = tail call i32 @llvm.ctpop.i32(i32 %1333)
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  store i8 %1337, i8* %36, align 1
  %1338 = xor i32 %1329, %1327
  %1339 = xor i32 %1338, %1330
  %1340 = lshr i32 %1339, 4
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  store i8 %1342, i8* %42, align 1
  %1343 = icmp eq i32 %1330, 0
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %45, align 1
  %1345 = lshr i32 %1330, 31
  %1346 = trunc i32 %1345 to i8
  store i8 %1346, i8* %48, align 1
  %1347 = lshr i32 %1327, 31
  %1348 = lshr i32 %1329, 31
  %1349 = xor i32 %1348, %1347
  %1350 = xor i32 %1345, %1347
  %1351 = add nuw nsw i32 %1350, %1349
  %1352 = icmp eq i32 %1351, 2
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %54, align 1
  %1354 = icmp ne i8 %1346, 0
  %1355 = xor i1 %1354, %1352
  %.v86 = select i1 %1355, i64 16, i64 69
  %1356 = add i64 %1322, %.v86
  %1357 = add i64 %1356, 10
  store i64 %1357, i64* %3, align 8
  br i1 %1355, label %block_422cca, label %block_.L_422cff

block_422cca:                                     ; preds = %block_.L_422cba
  store i64 ptrtoint (%G__0x457abf_type* @G__0x457abf to i64), i64* %RSI.i348, align 8
  %1358 = add i64 %1323, -32
  %1359 = add i64 %1356, 14
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RDI.i265, align 8
  %1362 = add i64 %1356, 18
  store i64 %1362, i64* %3, align 8
  %1363 = load i32, i32* %1326, align 4
  %1364 = sext i32 %1363 to i64
  store i64 %1364, i64* %RAX.i189, align 8
  %1365 = add nsw i64 %1364, 6778848
  %1366 = add i64 %1356, 26
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i8*
  %1368 = load i8, i8* %1367, align 1
  %1369 = sext i8 %1368 to i64
  %1370 = and i64 %1369, 4294967295
  store i64 %1370, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %1371 = add i64 %1356, -137050
  %1372 = add i64 %1356, 33
  %1373 = load i64, i64* %6, align 8
  %1374 = add i64 %1373, -8
  %1375 = inttoptr i64 %1374 to i64*
  store i64 %1372, i64* %1375, align 8
  store i64 %1374, i64* %6, align 8
  store i64 %1371, i64* %3, align 8
  %1376 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.9)
  %1377 = load i64, i64* %RBP.i, align 8
  %1378 = add i64 %1377, -220
  %1379 = load i32, i32* %EAX.i700, align 4
  %1380 = load i64, i64* %3, align 8
  %1381 = add i64 %1380, 6
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1378 to i32*
  store i32 %1379, i32* %1382, align 4
  %1383 = load i64, i64* %RBP.i, align 8
  %1384 = add i64 %1383, -48
  %1385 = load i64, i64* %3, align 8
  %1386 = add i64 %1385, 3
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1384 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = add i32 %1388, 1
  %1390 = zext i32 %1389 to i64
  store i64 %1390, i64* %RAX.i189, align 8
  %1391 = icmp eq i32 %1388, -1
  %1392 = icmp eq i32 %1389, 0
  %1393 = or i1 %1391, %1392
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %29, align 1
  %1395 = and i32 %1389, 255
  %1396 = tail call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  store i8 %1399, i8* %36, align 1
  %1400 = xor i32 %1389, %1388
  %1401 = lshr i32 %1400, 4
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  store i8 %1403, i8* %42, align 1
  %1404 = zext i1 %1392 to i8
  store i8 %1404, i8* %45, align 1
  %1405 = lshr i32 %1389, 31
  %1406 = trunc i32 %1405 to i8
  store i8 %1406, i8* %48, align 1
  %1407 = lshr i32 %1388, 31
  %1408 = xor i32 %1405, %1407
  %1409 = add nuw nsw i32 %1408, %1405
  %1410 = icmp eq i32 %1409, 2
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %54, align 1
  %1412 = add i64 %1385, 9
  store i64 %1412, i64* %3, align 8
  store i32 %1389, i32* %1387, align 4
  %1413 = load i64, i64* %3, align 8
  %1414 = add i64 %1413, -64
  store i64 %1414, i64* %3, align 8
  br label %block_.L_422cba

block_.L_422cff:                                  ; preds = %block_.L_422cba
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i348, align 8
  %1415 = add i64 %1323, -32
  %1416 = add i64 %1356, 14
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i64*
  %1418 = load i64, i64* %1417, align 8
  store i64 %1418, i64* %RDI.i265, align 8
  store i8 0, i8* %AL.i465, align 1
  %1419 = add i64 %1356, -137103
  %1420 = add i64 %1356, 21
  %1421 = load i64, i64* %6, align 8
  %1422 = add i64 %1421, -8
  %1423 = inttoptr i64 %1422 to i64*
  store i64 %1420, i64* %1423, align 8
  store i64 %1422, i64* %6, align 8
  store i64 %1419, i64* %3, align 8
  %1424 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.9)
  %1425 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457ac8_type* @G__0x457ac8 to i64), i64* %RSI.i348, align 8
  store i64 ptrtoint (%G__0x457af4_type* @G__0x457af4 to i64), i64* %RDX.i245, align 8
  store i64 ptrtoint (%G__0x457af9_type* @G__0x457af9 to i64), i64* %RCX.i797, align 8
  store i64 ptrtoint (%G__0x457afe_type* @G__0x457afe to i64), i64* %R8.i1344, align 8
  store i64 ptrtoint (%G__0x457b03_type* @G__0x457b03 to i64), i64* %276, align 8
  store i64 ptrtoint (%G__0x457b08_type* @G__0x457b08 to i64), i64* %RDI.i265, align 8
  %R10.i666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  store i64 ptrtoint (%G__0x457b0d_type* @G__0x457b0d to i64), i64* %R10.i666, align 8
  %R11.i664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  store i64 ptrtoint (%G__0x457b12_type* @G__0x457b12 to i64), i64* %R11.i664, align 8
  store i64 ptrtoint (%G__0x457b17_type* @G__0x457b17 to i64), i64* %RBX.i72, align 8
  store i64 ptrtoint (%G__0x457b1c_type* @G__0x457b1c to i64), i64* %R14.i40, align 8
  %1426 = load i64, i64* %RBP.i, align 8
  %1427 = add i64 %1426, -32
  %1428 = add i64 %1425, 104
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %R15.i29, align 8
  %1431 = add i64 %1426, -232
  %1432 = add i64 %1425, 111
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i64*
  store i64 ptrtoint (%G__0x457b08_type* @G__0x457b08 to i64), i64* %1433, align 8
  %1434 = load i64, i64* %R15.i29, align 8
  %1435 = load i64, i64* %3, align 8
  store i64 %1434, i64* %RDI.i265, align 8
  %1436 = load i64, i64* %RBP.i, align 8
  %1437 = add i64 %1436, -232
  %1438 = add i64 %1435, 10
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i64*
  %1440 = load i64, i64* %1439, align 8
  store i64 %1440, i64* %R15.i29, align 8
  %1441 = bitcast i64* %6 to i64**
  %1442 = load i64*, i64** %1441, align 8
  %1443 = add i64 %1435, 14
  store i64 %1443, i64* %3, align 8
  store i64 %1440, i64* %1442, align 8
  %1444 = load i64, i64* %6, align 8
  %1445 = add i64 %1444, 8
  %1446 = load i64, i64* %R10.i666, align 8
  %1447 = load i64, i64* %3, align 8
  %1448 = add i64 %1447, 5
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1445 to i64*
  store i64 %1446, i64* %1449, align 8
  %1450 = load i64, i64* %6, align 8
  %1451 = add i64 %1450, 16
  %1452 = load i64, i64* %R11.i664, align 8
  %1453 = load i64, i64* %3, align 8
  %1454 = add i64 %1453, 5
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1451 to i64*
  store i64 %1452, i64* %1455, align 8
  %1456 = load i64, i64* %6, align 8
  %1457 = add i64 %1456, 24
  %1458 = load i64, i64* %RBX.i72, align 8
  %1459 = load i64, i64* %3, align 8
  %1460 = add i64 %1459, 5
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1457 to i64*
  store i64 %1458, i64* %1461, align 8
  %1462 = load i64, i64* %6, align 8
  %1463 = add i64 %1462, 32
  %1464 = load i64, i64* %R14.i40, align 8
  %1465 = load i64, i64* %3, align 8
  %1466 = add i64 %1465, 5
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1463 to i64*
  store i64 %1464, i64* %1467, align 8
  %1468 = load i64, i64* %RBP.i, align 8
  %1469 = add i64 %1468, -236
  %1470 = load i32, i32* %EAX.i700, align 4
  %1471 = load i64, i64* %3, align 8
  %1472 = add i64 %1471, 6
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1469 to i32*
  store i32 %1470, i32* %1473, align 4
  %1474 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i465, align 1
  %1475 = add i64 %1474, -137275
  %1476 = add i64 %1474, 7
  %1477 = load i64, i64* %6, align 8
  %1478 = add i64 %1477, -8
  %1479 = inttoptr i64 %1478 to i64*
  store i64 %1476, i64* %1479, align 8
  store i64 %1478, i64* %6, align 8
  store i64 %1475, i64* %3, align 8
  %1480 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1424)
  %1481 = load i64, i64* %3, align 8
  %1482 = add i64 %1481, ptrtoint (%G_0x3196e__rip__type* @G_0x3196e__rip_ to i64)
  %1483 = add i64 %1481, 8
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i32*
  %1485 = load i32, i32* %1484, align 4
  store i32 %1485, i32* %941, align 1
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %658, align 1
  store float 0.000000e+00, float* %945, align 1
  %1486 = load i64, i64* %RBP.i, align 8
  %1487 = add i64 %1486, -32
  %1488 = add i64 %1481, 12
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i64*
  %1490 = load i64, i64* %1489, align 8
  store i64 %1490, i64* %RDI.i265, align 8
  %1491 = add i64 %1486, -40
  %1492 = add i64 %1481, 16
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i64*
  %1494 = load i64, i64* %1493, align 8
  store i64 %1494, i64* %RCX.i797, align 8
  %1495 = bitcast [32 x %union.VectorReg]* %920 to <2 x i32>*
  %1496 = load <2 x i32>, <2 x i32>* %1495, align 1
  %1497 = load <2 x i32>, <2 x i32>* %1006, align 1
  %1498 = extractelement <2 x i32> %1496, i32 0
  store i32 %1498, i32* %645, align 1
  %1499 = extractelement <2 x i32> %1496, i32 1
  %1500 = bitcast i8* %646 to i32*
  store i32 %1499, i32* %1500, align 1
  %1501 = extractelement <2 x i32> %1497, i32 0
  %1502 = bitcast i64* %648 to i32*
  store i32 %1501, i32* %1502, align 1
  %1503 = extractelement <2 x i32> %1497, i32 1
  %1504 = bitcast i8* %650 to i32*
  store i32 %1503, i32* %1504, align 1
  %1505 = add i64 %1494, 168
  %1506 = add i64 %1481, 27
  store i64 %1506, i64* %3, align 8
  %1507 = bitcast %union.VectorReg* %.pre-phi to <2 x float>*
  %1508 = load <2 x float>, <2 x float>* %1507, align 1
  %1509 = load <2 x i32>, <2 x i32>* %1081, align 1
  %1510 = inttoptr i64 %1505 to float*
  %1511 = load float, float* %1510, align 4
  %1512 = extractelement <2 x float> %1508, i32 0
  %1513 = fsub float %1512, %1511
  store float %1513, float* %1229, align 1
  %1514 = bitcast <2 x float> %1508 to <2 x i32>
  %1515 = extractelement <2 x i32> %1514, i32 1
  store i32 %1515, i32* %1500, align 1
  %1516 = extractelement <2 x i32> %1509, i32 0
  store i32 %1516, i32* %1502, align 1
  %1517 = extractelement <2 x i32> %1509, i32 1
  store i32 %1517, i32* %1504, align 1
  %1518 = add i64 %1486, -240
  %1519 = add i64 %1481, 35
  store i64 %1519, i64* %3, align 8
  %1520 = bitcast <2 x i32> %1496 to <2 x float>
  %1521 = extractelement <2 x float> %1520, i32 0
  %1522 = inttoptr i64 %1518 to float*
  store float %1521, float* %1522, align 4
  %1523 = load i64, i64* %3, align 8
  %1524 = load <2 x i32>, <2 x i32>* %1080, align 1
  %1525 = load <2 x i32>, <2 x i32>* %1081, align 1
  %1526 = extractelement <2 x i32> %1524, i32 0
  store i32 %1526, i32* %941, align 1
  %1527 = extractelement <2 x i32> %1524, i32 1
  store i32 %1527, i32* %1009, align 1
  %1528 = extractelement <2 x i32> %1525, i32 0
  store i32 %1528, i32* %1010, align 1
  %1529 = extractelement <2 x i32> %1525, i32 1
  store i32 %1529, i32* %1011, align 1
  %1530 = load i64, i64* %RBP.i, align 8
  %1531 = add i64 %1530, -240
  %1532 = add i64 %1523, 11
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i32*
  %1534 = load i32, i32* %1533, align 4
  store i32 %1534, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %1535 = add i64 %1530, -244
  %1536 = load i32, i32* %EAX.i700, align 4
  %1537 = add i64 %1523, 17
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1535 to i32*
  store i32 %1536, i32* %1538, align 4
  %1539 = load i64, i64* %RBP.i, align 8
  %1540 = add i64 %1539, -256
  %1541 = load i64, i64* %RDI.i265, align 8
  %1542 = load i64, i64* %3, align 8
  %1543 = add i64 %1542, 7
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1540 to i64*
  store i64 %1541, i64* %1544, align 8
  %1545 = load i64, i64* %3, align 8
  %1546 = add i64 %1545, 1411
  %1547 = add i64 %1545, 5
  %1548 = load i64, i64* %6, align 8
  %1549 = add i64 %1548, -8
  %1550 = inttoptr i64 %1549 to i64*
  store i64 %1547, i64* %1550, align 8
  store i64 %1549, i64* %6, align 8
  store i64 %1546, i64* %3, align 8
  %call2_422ded = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %1546, %struct.Memory* %1480)
  %1551 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457b21_type* @G__0x457b21 to i64), i64* %RSI.i348, align 8
  store i64 ptrtoint (%G__0x4583b0_type* @G__0x4583b0 to i64), i64* %RCX.i797, align 8
  %1552 = load i64, i64* %RBP.i, align 8
  %1553 = add i64 %1552, -256
  %1554 = add i64 %1551, 27
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i64*
  %1556 = load i64, i64* %1555, align 8
  store i64 %1556, i64* %RDI.i265, align 8
  %1557 = load i64, i64* %RAX.i189, align 8
  store i64 %1557, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %1558 = add i64 %1551, -137346
  %1559 = add i64 %1551, 37
  %1560 = load i64, i64* %6, align 8
  %1561 = add i64 %1560, -8
  %1562 = inttoptr i64 %1561 to i64*
  store i64 %1559, i64* %1562, align 8
  store i64 %1561, i64* %6, align 8
  store i64 %1558, i64* %3, align 8
  %1563 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_422ded)
  %1564 = load i64, i64* %3, align 8
  %1565 = add i64 %1564, ptrtoint (%G_0x31909__rip__type* @G_0x31909__rip_ to i64)
  %1566 = add i64 %1564, 8
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i32*
  %1568 = load i32, i32* %1567, align 4
  store i32 %1568, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %1569 = load i64, i64* %RBP.i, align 8
  %1570 = add i64 %1569, -32
  %1571 = add i64 %1564, 12
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i64*
  %1573 = load i64, i64* %1572, align 8
  store i64 %1573, i64* %RDI.i265, align 8
  %1574 = add i64 %1569, -40
  %1575 = add i64 %1564, 16
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to i64*
  %1577 = load i64, i64* %1576, align 8
  store i64 %1577, i64* %RCX.i797, align 8
  %1578 = add i64 %1577, 168
  %1579 = add i64 %1564, 24
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to i32*
  %1581 = load i32, i32* %1580, align 4
  store i32 %1581, i32* %941, align 1
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %658, align 1
  store float 0.000000e+00, float* %945, align 1
  %1582 = add i64 %1569, -260
  %1583 = load i32, i32* %EAX.i700, align 4
  %1584 = add i64 %1564, 30
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1582 to i32*
  store i32 %1583, i32* %1585, align 4
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -272
  %1588 = load i64, i64* %RDI.i265, align 8
  %1589 = load i64, i64* %3, align 8
  %1590 = add i64 %1589, 7
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1587 to i64*
  store i64 %1588, i64* %1591, align 8
  %1592 = load i64, i64* %3, align 8
  %1593 = add i64 %1592, 1332
  %1594 = add i64 %1592, 5
  %1595 = load i64, i64* %6, align 8
  %1596 = add i64 %1595, -8
  %1597 = inttoptr i64 %1596 to i64*
  store i64 %1594, i64* %1597, align 8
  store i64 %1596, i64* %6, align 8
  store i64 %1593, i64* %3, align 8
  %call2_422e3c = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %1593, %struct.Memory* %1563)
  %1598 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x456fbb_type* @G__0x456fbb to i64), i64* %RSI.i348, align 8
  %1599 = load i64, i64* %RBP.i, align 8
  %1600 = add i64 %1599, -272
  %1601 = add i64 %1598, 17
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RDI.i265, align 8
  %1604 = load i64, i64* %RAX.i189, align 8
  store i64 %1604, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %1605 = add i64 %1598, -137425
  %1606 = add i64 %1598, 27
  %1607 = load i64, i64* %6, align 8
  %1608 = add i64 %1607, -8
  %1609 = inttoptr i64 %1608 to i64*
  store i64 %1606, i64* %1609, align 8
  store i64 %1608, i64* %6, align 8
  store i64 %1605, i64* %3, align 8
  %1610 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_422e3c)
  %1611 = load i64, i64* %RBP.i, align 8
  %1612 = add i64 %1611, -44
  %1613 = load i64, i64* %3, align 8
  %1614 = add i64 %1613, 7
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1612 to i32*
  store i32 1, i32* %1615, align 4
  %1616 = load i64, i64* %RBP.i, align 8
  %1617 = add i64 %1616, -276
  %1618 = load i32, i32* %EAX.i700, align 4
  %1619 = load i64, i64* %3, align 8
  %1620 = add i64 %1619, 6
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1617 to i32*
  store i32 %1618, i32* %1621, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_422e69

block_.L_422e69:                                  ; preds = %block_.L_4231e5, %block_.L_422cff
  %1622 = phi i64 [ %.pre61, %block_.L_422cff ], [ %2625, %block_.L_4231e5 ]
  %MEMORY.10 = phi %struct.Memory* [ %1610, %block_.L_422cff ], [ %2587, %block_.L_4231e5 ]
  %1623 = load i64, i64* %RBP.i, align 8
  %1624 = add i64 %1623, -44
  %1625 = add i64 %1622, 3
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = zext i32 %1627 to i64
  store i64 %1628, i64* %RAX.i189, align 8
  %1629 = add i64 %1623, -40
  %1630 = add i64 %1622, 7
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i64*
  %1632 = load i64, i64* %1631, align 8
  store i64 %1632, i64* %RCX.i797, align 8
  %1633 = add i64 %1632, 136
  %1634 = add i64 %1622, 13
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1633 to i32*
  %1636 = load i32, i32* %1635, align 4
  %1637 = sub i32 %1627, %1636
  %1638 = icmp ult i32 %1627, %1636
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %29, align 1
  %1640 = and i32 %1637, 255
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %36, align 1
  %1645 = xor i32 %1636, %1627
  %1646 = xor i32 %1645, %1637
  %1647 = lshr i32 %1646, 4
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  store i8 %1649, i8* %42, align 1
  %1650 = icmp eq i32 %1637, 0
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %45, align 1
  %1652 = lshr i32 %1637, 31
  %1653 = trunc i32 %1652 to i8
  store i8 %1653, i8* %48, align 1
  %1654 = lshr i32 %1627, 31
  %1655 = lshr i32 %1636, 31
  %1656 = xor i32 %1655, %1654
  %1657 = xor i32 %1652, %1654
  %1658 = add nuw nsw i32 %1657, %1656
  %1659 = icmp eq i32 %1658, 2
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %54, align 1
  %1661 = icmp ne i8 %1653, 0
  %1662 = xor i1 %1661, %1659
  %.demorgan = or i1 %1650, %1662
  %.v91 = select i1 %.demorgan, i64 19, i64 1085
  %1663 = add i64 %1622, %.v91
  %1664 = add i64 %1663, 10
  store i64 %1664, i64* %3, align 8
  br i1 %.demorgan, label %block_422e7c, label %block_.L_4232a6

block_422e7c:                                     ; preds = %block_.L_422e69
  store i64 ptrtoint (%G__0x457b31_type* @G__0x457b31 to i64), i64* %RSI.i348, align 8
  %1665 = add i64 %1623, -32
  %1666 = add i64 %1663, 14
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i64*
  %1668 = load i64, i64* %1667, align 8
  store i64 %1668, i64* %RDI.i265, align 8
  %1669 = add i64 %1663, 17
  store i64 %1669, i64* %3, align 8
  %1670 = load i32, i32* %1626, align 4
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %1672 = add i64 %1663, -137484
  %1673 = add i64 %1663, 24
  %1674 = load i64, i64* %6, align 8
  %1675 = add i64 %1674, -8
  %1676 = inttoptr i64 %1675 to i64*
  store i64 %1673, i64* %1676, align 8
  store i64 %1675, i64* %6, align 8
  store i64 %1672, i64* %3, align 8
  %1677 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.10)
  %1678 = load i64, i64* %RBP.i, align 8
  %1679 = add i64 %1678, -48
  %1680 = load i64, i64* %3, align 8
  %1681 = add i64 %1680, 7
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1679 to i32*
  store i32 0, i32* %1682, align 4
  %1683 = load i64, i64* %RBP.i, align 8
  %1684 = add i64 %1683, -280
  %1685 = load i32, i32* %EAX.i700, align 4
  %1686 = load i64, i64* %3, align 8
  %1687 = add i64 %1686, 6
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1684 to i32*
  store i32 %1685, i32* %1688, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_422ea1

block_.L_422ea1:                                  ; preds = %block_422eb1, %block_422e7c
  %1689 = phi i64 [ %.pre62, %block_422e7c ], [ %1824, %block_422eb1 ]
  %MEMORY.11 = phi %struct.Memory* [ %1677, %block_422e7c ], [ %1786, %block_422eb1 ]
  %1690 = load i64, i64* %RBP.i, align 8
  %1691 = add i64 %1690, -48
  %1692 = add i64 %1689, 3
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i32*
  %1694 = load i32, i32* %1693, align 4
  %1695 = zext i32 %1694 to i64
  store i64 %1695, i64* %RAX.i189, align 8
  %1696 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1697 = sub i32 %1694, %1696
  %1698 = icmp ult i32 %1694, %1696
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %29, align 1
  %1700 = and i32 %1697, 255
  %1701 = tail call i32 @llvm.ctpop.i32(i32 %1700)
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  %1704 = xor i8 %1703, 1
  store i8 %1704, i8* %36, align 1
  %1705 = xor i32 %1696, %1694
  %1706 = xor i32 %1705, %1697
  %1707 = lshr i32 %1706, 4
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  store i8 %1709, i8* %42, align 1
  %1710 = icmp eq i32 %1697, 0
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %45, align 1
  %1712 = lshr i32 %1697, 31
  %1713 = trunc i32 %1712 to i8
  store i8 %1713, i8* %48, align 1
  %1714 = lshr i32 %1694, 31
  %1715 = lshr i32 %1696, 31
  %1716 = xor i32 %1715, %1714
  %1717 = xor i32 %1712, %1714
  %1718 = add nuw nsw i32 %1717, %1716
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %54, align 1
  %1721 = icmp ne i8 %1713, 0
  %1722 = xor i1 %1721, %1719
  %.v87 = select i1 %1722, i64 16, i64 124
  %1723 = add i64 %1689, %.v87
  store i64 %1723, i64* %3, align 8
  br i1 %1722, label %block_422eb1, label %block_.L_422f1d

block_422eb1:                                     ; preds = %block_.L_422ea1
  %1724 = add i64 %1690, -32
  %1725 = add i64 %1723, 4
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i64*
  %1727 = load i64, i64* %1726, align 8
  store i64 %1727, i64* %RDI.i265, align 8
  %1728 = add i64 %1690, -40
  %1729 = add i64 %1723, 8
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i64*
  %1731 = load i64, i64* %1730, align 8
  store i64 %1731, i64* %RAX.i189, align 8
  %1732 = add i64 %1731, 152
  %1733 = add i64 %1723, 15
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i64*
  %1735 = load i64, i64* %1734, align 8
  store i64 %1735, i64* %RAX.i189, align 8
  %1736 = add i64 %1690, -44
  %1737 = add i64 %1723, 19
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i32*
  %1739 = load i32, i32* %1738, align 4
  %1740 = sext i32 %1739 to i64
  store i64 %1740, i64* %RCX.i797, align 8
  %1741 = shl nsw i64 %1740, 3
  %1742 = add i64 %1741, %1735
  %1743 = add i64 %1723, 23
  store i64 %1743, i64* %3, align 8
  %1744 = inttoptr i64 %1742 to i64*
  %1745 = load i64, i64* %1744, align 8
  store i64 %1745, i64* %RAX.i189, align 8
  %1746 = add i64 %1723, 27
  store i64 %1746, i64* %3, align 8
  %1747 = load i32, i32* %1693, align 4
  %1748 = sext i32 %1747 to i64
  store i64 %1748, i64* %RCX.i797, align 8
  %1749 = shl nsw i64 %1748, 2
  %1750 = add i64 %1749, %1745
  %1751 = add i64 %1723, 32
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  store i32 %1753, i32* %941, align 1
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %658, align 1
  store float 0.000000e+00, float* %945, align 1
  %1754 = add i64 %1723, 36
  store i64 %1754, i64* %3, align 8
  %1755 = load i64, i64* %1730, align 8
  store i64 %1755, i64* %RAX.i189, align 8
  %1756 = add i64 %1723, 40
  store i64 %1756, i64* %3, align 8
  %1757 = load i32, i32* %1693, align 4
  %1758 = sext i32 %1757 to i64
  store i64 %1758, i64* %RCX.i797, align 8
  %1759 = shl nsw i64 %1758, 2
  %1760 = add i64 %1755, 224
  %1761 = add i64 %1760, %1759
  %1762 = add i64 %1723, 49
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i32*
  %1764 = load i32, i32* %1763, align 4
  store i32 %1764, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %1765 = add i64 %1690, -288
  %1766 = add i64 %1723, 56
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i64*
  store i64 %1727, i64* %1767, align 8
  %1768 = load i64, i64* %3, align 8
  %1769 = add i64 %1768, 1159
  %1770 = add i64 %1768, 5
  %1771 = load i64, i64* %6, align 8
  %1772 = add i64 %1771, -8
  %1773 = inttoptr i64 %1772 to i64*
  store i64 %1770, i64* %1773, align 8
  store i64 %1772, i64* %6, align 8
  store i64 %1769, i64* %3, align 8
  %call2_422ee9 = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %1769, %struct.Memory* %MEMORY.11)
  %1774 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457b2c_type* @G__0x457b2c to i64), i64* %RSI.i348, align 8
  %1775 = load i64, i64* %RBP.i, align 8
  %1776 = add i64 %1775, -288
  %1777 = add i64 %1774, 17
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i64*
  %1779 = load i64, i64* %1778, align 8
  store i64 %1779, i64* %RDI.i265, align 8
  %1780 = load i64, i64* %RAX.i189, align 8
  store i64 %1780, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %1781 = add i64 %1774, -137598
  %1782 = add i64 %1774, 27
  %1783 = load i64, i64* %6, align 8
  %1784 = add i64 %1783, -8
  %1785 = inttoptr i64 %1784 to i64*
  store i64 %1782, i64* %1785, align 8
  store i64 %1784, i64* %6, align 8
  store i64 %1781, i64* %3, align 8
  %1786 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.11)
  %1787 = load i64, i64* %RBP.i, align 8
  %1788 = add i64 %1787, -292
  %1789 = load i32, i32* %EAX.i700, align 4
  %1790 = load i64, i64* %3, align 8
  %1791 = add i64 %1790, 6
  store i64 %1791, i64* %3, align 8
  %1792 = inttoptr i64 %1788 to i32*
  store i32 %1789, i32* %1792, align 4
  %1793 = load i64, i64* %RBP.i, align 8
  %1794 = add i64 %1793, -48
  %1795 = load i64, i64* %3, align 8
  %1796 = add i64 %1795, 3
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1794 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = add i32 %1798, 1
  %1800 = zext i32 %1799 to i64
  store i64 %1800, i64* %RAX.i189, align 8
  %1801 = icmp eq i32 %1798, -1
  %1802 = icmp eq i32 %1799, 0
  %1803 = or i1 %1801, %1802
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %29, align 1
  %1805 = and i32 %1799, 255
  %1806 = tail call i32 @llvm.ctpop.i32(i32 %1805)
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  %1809 = xor i8 %1808, 1
  store i8 %1809, i8* %36, align 1
  %1810 = xor i32 %1799, %1798
  %1811 = lshr i32 %1810, 4
  %1812 = trunc i32 %1811 to i8
  %1813 = and i8 %1812, 1
  store i8 %1813, i8* %42, align 1
  %1814 = zext i1 %1802 to i8
  store i8 %1814, i8* %45, align 1
  %1815 = lshr i32 %1799, 31
  %1816 = trunc i32 %1815 to i8
  store i8 %1816, i8* %48, align 1
  %1817 = lshr i32 %1798, 31
  %1818 = xor i32 %1815, %1817
  %1819 = add nuw nsw i32 %1818, %1815
  %1820 = icmp eq i32 %1819, 2
  %1821 = zext i1 %1820 to i8
  store i8 %1821, i8* %54, align 1
  %1822 = add i64 %1795, 9
  store i64 %1822, i64* %3, align 8
  store i32 %1799, i32* %1797, align 4
  %1823 = load i64, i64* %3, align 8
  %1824 = add i64 %1823, -119
  store i64 %1824, i64* %3, align 8
  br label %block_.L_422ea1

block_.L_422f1d:                                  ; preds = %block_.L_422ea1
  %1825 = add i64 %1690, -40
  %1826 = add i64 %1723, 4
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i64*
  %1828 = load i64, i64* %1827, align 8
  store i64 %1828, i64* %RAX.i189, align 8
  %1829 = add i64 %1828, 456
  %1830 = add i64 %1723, 10
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i32*
  %1832 = load i32, i32* %1831, align 4
  %1833 = and i32 %1832, 256
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RCX.i797, align 8
  store i8 0, i8* %29, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %1835 = icmp eq i32 %1833, 0
  %.lobit78 = lshr exact i32 %1833, 8
  %1836 = trunc i32 %.lobit78 to i8
  %1837 = xor i8 %1836, 1
  store i8 %1837, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v88 = select i1 %1835, i64 67, i64 25
  %1838 = add i64 %1723, %.v88
  store i64 %1838, i64* %3, align 8
  br i1 %1835, label %block_.L_422f60, label %block_422f36

block_422f36:                                     ; preds = %block_.L_422f1d
  store i64 ptrtoint (%G__0x457b37_type* @G__0x457b37 to i64), i64* %RSI.i348, align 8
  %1839 = add i64 %1690, -32
  %1840 = add i64 %1838, 14
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i64*
  %1842 = load i64, i64* %1841, align 8
  store i64 %1842, i64* %RDI.i265, align 8
  %1843 = add i64 %1838, 18
  store i64 %1843, i64* %3, align 8
  %1844 = load i64, i64* %1827, align 8
  store i64 %1844, i64* %RAX.i189, align 8
  %1845 = add i64 %1844, 72
  %1846 = add i64 %1838, 22
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i64*
  %1848 = load i64, i64* %1847, align 8
  store i64 %1848, i64* %RAX.i189, align 8
  %1849 = add i64 %1690, -44
  %1850 = add i64 %1838, 26
  store i64 %1850, i64* %3, align 8
  %1851 = inttoptr i64 %1849 to i32*
  %1852 = load i32, i32* %1851, align 4
  %1853 = sext i32 %1852 to i64
  store i64 %1853, i64* %RCX.i797, align 8
  %1854 = shl nsw i64 %1853, 2
  %1855 = add i64 %1854, %1848
  %1856 = add i64 %1838, 29
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i32*
  %1858 = load i32, i32* %1857, align 4
  %1859 = zext i32 %1858 to i64
  store i64 %1859, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %1860 = add i64 %1838, -137670
  %1861 = add i64 %1838, 36
  %1862 = load i64, i64* %6, align 8
  %1863 = add i64 %1862, -8
  %1864 = inttoptr i64 %1863 to i64*
  store i64 %1861, i64* %1864, align 8
  store i64 %1863, i64* %6, align 8
  store i64 %1860, i64* %3, align 8
  %1865 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.11)
  %1866 = load i64, i64* %RBP.i, align 8
  %1867 = add i64 %1866, -296
  %1868 = load i32, i32* %EAX.i700, align 4
  %1869 = load i64, i64* %3, align 8
  %1870 = add i64 %1869, 6
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1867 to i32*
  store i32 %1868, i32* %1871, align 4
  %.pre63 = load i64, i64* %3, align 8
  %.pre64 = load i64, i64* %RBP.i, align 8
  br label %block_.L_422f60

block_.L_422f60:                                  ; preds = %block_422f36, %block_.L_422f1d
  %1872 = phi i64 [ %1690, %block_.L_422f1d ], [ %.pre64, %block_422f36 ]
  %1873 = phi i64 [ %1838, %block_.L_422f1d ], [ %.pre63, %block_422f36 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.11, %block_.L_422f1d ], [ %1865, %block_422f36 ]
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI.i265, align 8
  %1874 = add i64 %1872, -32
  %1875 = add i64 %1873, 14
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i64*
  %1877 = load i64, i64* %1876, align 8
  store i64 %1877, i64* %RSI.i348, align 8
  %1878 = add i64 %1873, -137888
  %1879 = add i64 %1873, 19
  %1880 = load i64, i64* %6, align 8
  %1881 = add i64 %1880, -8
  %1882 = inttoptr i64 %1881 to i64*
  store i64 %1879, i64* %1882, align 8
  store i64 %1881, i64* %6, align 8
  store i64 %1878, i64* %3, align 8
  %1883 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.12)
  %1884 = load i64, i64* %RBP.i, align 8
  %1885 = add i64 %1884, -32
  %1886 = load i64, i64* %3, align 8
  %1887 = add i64 %1886, 4
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1885 to i64*
  %1889 = load i64, i64* %1888, align 8
  store i64 %1889, i64* %RDI.i265, align 8
  %1890 = add i64 %1884, -40
  %1891 = add i64 %1886, 8
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i64*
  %1893 = load i64, i64* %1892, align 8
  store i64 %1893, i64* %RSI.i348, align 8
  %1894 = add i64 %1893, 456
  %1895 = add i64 %1886, 14
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = and i32 %1897, 4
  %1899 = zext i32 %1898 to i64
  store i64 %1899, i64* %RCX.i797, align 8
  store i8 0, i8* %29, align 1
  %1900 = tail call i32 @llvm.ctpop.i32(i32 %1898)
  %1901 = trunc i32 %1900 to i8
  %1902 = xor i8 %1901, 1
  store i8 %1902, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %.lobit79 = lshr exact i32 %1898, 2
  %1903 = trunc i32 %.lobit79 to i8
  %1904 = xor i8 %1903, 1
  store i8 %1904, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1905 = add i64 %1884, -300
  %1906 = load i32, i32* %EAX.i700, align 4
  %1907 = add i64 %1886, 26
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1905 to i32*
  store i32 %1906, i32* %1908, align 4
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -312
  %1911 = load i64, i64* %RDI.i265, align 8
  %1912 = load i64, i64* %3, align 8
  %1913 = add i64 %1912, 7
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1910 to i64*
  store i64 %1911, i64* %1914, align 8
  %1915 = load i64, i64* %3, align 8
  %1916 = load i8, i8* %45, align 1
  %1917 = icmp ne i8 %1916, 0
  %.v110 = select i1 %1917, i64 33, i64 6
  %1918 = add i64 %1915, %.v110
  store i64 %1918, i64* %3, align 8
  %cmpBr_422f94 = icmp eq i8 %1916, 1
  br i1 %cmpBr_422f94, label %block_.L_422fb5, label %block_422f9a

block_422f9a:                                     ; preds = %block_.L_422f60
  %1919 = load i64, i64* %RBP.i, align 8
  %1920 = add i64 %1919, -40
  %1921 = add i64 %1918, 4
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RAX.i189, align 8
  %1924 = add i64 %1923, 24
  %1925 = add i64 %1918, 8
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i64*
  %1927 = load i64, i64* %1926, align 8
  store i64 %1927, i64* %RAX.i189, align 8
  %1928 = add i64 %1919, -44
  %1929 = add i64 %1918, 12
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = sext i32 %1931 to i64
  store i64 %1932, i64* %RCX.i797, align 8
  %1933 = add i64 %1927, %1932
  %1934 = add i64 %1918, 16
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i8*
  %1936 = load i8, i8* %1935, align 1
  %1937 = sext i8 %1936 to i64
  %1938 = and i64 %1937, 4294967295
  store i64 %1938, i64* %RDX.i245, align 8
  %1939 = add i64 %1919, -316
  %1940 = sext i8 %1936 to i32
  %1941 = add i64 %1918, 22
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1939 to i32*
  store i32 %1940, i32* %1942, align 4
  %1943 = load i64, i64* %3, align 8
  %1944 = add i64 %1943, 21
  br label %block_.L_422fc5

block_.L_422fb5:                                  ; preds = %block_.L_422f60
  store i64 45, i64* %RAX.i189, align 8
  %1945 = load i64, i64* %RBP.i, align 8
  %1946 = add i64 %1945, -316
  %1947 = add i64 %1918, 11
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i32*
  store i32 45, i32* %1948, align 4
  %1949 = load i64, i64* %3, align 8
  %1950 = add i64 %1949, 5
  store i64 %1950, i64* %3, align 8
  br label %block_.L_422fc5

block_.L_422fc5:                                  ; preds = %block_.L_422fb5, %block_422f9a
  %storemerge = phi i64 [ %1944, %block_422f9a ], [ %1950, %block_.L_422fb5 ]
  %1951 = load i64, i64* %RBP.i, align 8
  %1952 = add i64 %1951, -316
  %1953 = add i64 %storemerge, 6
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RAX.i189, align 8
  store i64 ptrtoint (%G__0x457b3b_type* @G__0x457b3b to i64), i64* %RSI.i348, align 8
  %1957 = add i64 %1951, -312
  %1958 = add i64 %storemerge, 23
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i64*
  %1960 = load i64, i64* %1959, align 8
  store i64 %1960, i64* %RDI.i265, align 8
  store i64 %1956, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %1961 = add i64 %storemerge, -137813
  %1962 = add i64 %storemerge, 32
  %1963 = load i64, i64* %6, align 8
  %1964 = add i64 %1963, -8
  %1965 = inttoptr i64 %1964 to i64*
  store i64 %1962, i64* %1965, align 8
  store i64 %1964, i64* %6, align 8
  store i64 %1961, i64* %3, align 8
  %1966 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1883)
  %1967 = load i64, i64* %RBP.i, align 8
  %1968 = add i64 %1967, -48
  %1969 = load i64, i64* %3, align 8
  %1970 = add i64 %1969, 7
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1968 to i32*
  store i32 0, i32* %1971, align 4
  %1972 = load i64, i64* %RBP.i, align 8
  %1973 = add i64 %1972, -320
  %1974 = load i32, i32* %EAX.i700, align 4
  %1975 = load i64, i64* %3, align 8
  %1976 = add i64 %1975, 6
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1973 to i32*
  store i32 %1974, i32* %1977, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_422ff2

block_.L_422ff2:                                  ; preds = %block_.L_423074, %block_.L_422fc5
  %1978 = phi i64 [ %.pre65, %block_.L_422fc5 ], [ %2175, %block_.L_423074 ]
  %MEMORY.14 = phi %struct.Memory* [ %1966, %block_.L_422fc5 ], [ %2137, %block_.L_423074 ]
  %1979 = load i64, i64* %RBP.i, align 8
  %1980 = add i64 %1979, -48
  %1981 = add i64 %1978, 3
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to i32*
  %1983 = load i32, i32* %1982, align 4
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RAX.i189, align 8
  %1985 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1986 = sub i32 %1983, %1985
  %1987 = icmp ult i32 %1983, %1985
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %29, align 1
  %1989 = and i32 %1986, 255
  %1990 = tail call i32 @llvm.ctpop.i32(i32 %1989)
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  %1993 = xor i8 %1992, 1
  store i8 %1993, i8* %36, align 1
  %1994 = xor i32 %1985, %1983
  %1995 = xor i32 %1994, %1986
  %1996 = lshr i32 %1995, 4
  %1997 = trunc i32 %1996 to i8
  %1998 = and i8 %1997, 1
  store i8 %1998, i8* %42, align 1
  %1999 = icmp eq i32 %1986, 0
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %45, align 1
  %2001 = lshr i32 %1986, 31
  %2002 = trunc i32 %2001 to i8
  store i8 %2002, i8* %48, align 1
  %2003 = lshr i32 %1983, 31
  %2004 = lshr i32 %1985, 31
  %2005 = xor i32 %2004, %2003
  %2006 = xor i32 %2001, %2003
  %2007 = add nuw nsw i32 %2006, %2005
  %2008 = icmp eq i32 %2007, 2
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %54, align 1
  %2010 = icmp ne i8 %2002, 0
  %2011 = xor i1 %2010, %2008
  %.v89 = select i1 %2011, i64 16, i64 184
  %2012 = add i64 %1978, %.v89
  store i64 %2012, i64* %3, align 8
  br i1 %2011, label %block_423002, label %block_.L_4230aa

block_423002:                                     ; preds = %block_.L_422ff2
  %2013 = add i64 %1979, -32
  %2014 = add i64 %2012, 4
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i64*
  %2016 = load i64, i64* %2015, align 8
  store i64 %2016, i64* %RDI.i265, align 8
  %2017 = add i64 %1979, -44
  %2018 = add i64 %2012, 7
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = zext i32 %2020 to i64
  store i64 %2021, i64* %RAX.i189, align 8
  %2022 = add i64 %1979, -40
  %2023 = add i64 %2012, 11
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i64*
  %2025 = load i64, i64* %2024, align 8
  store i64 %2025, i64* %RCX.i797, align 8
  %2026 = add i64 %2025, 136
  %2027 = add i64 %2012, 17
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = sub i32 %2020, %2029
  %2031 = icmp ult i32 %2020, %2029
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %29, align 1
  %2033 = and i32 %2030, 255
  %2034 = tail call i32 @llvm.ctpop.i32(i32 %2033)
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = xor i8 %2036, 1
  store i8 %2037, i8* %36, align 1
  %2038 = xor i32 %2029, %2020
  %2039 = xor i32 %2038, %2030
  %2040 = lshr i32 %2039, 4
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  store i8 %2042, i8* %42, align 1
  %2043 = icmp eq i32 %2030, 0
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %45, align 1
  %2045 = lshr i32 %2030, 31
  %2046 = trunc i32 %2045 to i8
  store i8 %2046, i8* %48, align 1
  %2047 = lshr i32 %2020, 31
  %2048 = lshr i32 %2029, 31
  %2049 = xor i32 %2048, %2047
  %2050 = xor i32 %2045, %2047
  %2051 = add nuw nsw i32 %2050, %2049
  %2052 = icmp eq i32 %2051, 2
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %54, align 1
  %2054 = add i64 %1979, -328
  %2055 = add i64 %2012, 24
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to i64*
  store i64 %2016, i64* %2056, align 8
  %2057 = load i64, i64* %3, align 8
  %2058 = load i8, i8* %48, align 1
  %2059 = icmp ne i8 %2058, 0
  %2060 = load i8, i8* %54, align 1
  %2061 = icmp ne i8 %2060, 0
  %2062 = xor i1 %2059, %2061
  %.v113 = select i1 %2062, i64 6, i64 68
  %2063 = add i64 %2057, %.v113
  store i64 %2063, i64* %3, align 8
  br i1 %2062, label %block_423020, label %block_.L_42305e

block_423020:                                     ; preds = %block_423002
  %2064 = load i64, i64* %RBP.i, align 8
  %2065 = add i64 %2064, -40
  %2066 = add i64 %2063, 4
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i64*
  %2068 = load i64, i64* %2067, align 8
  store i64 %2068, i64* %RAX.i189, align 8
  %2069 = add i64 %2068, 160
  %2070 = add i64 %2063, 11
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i64*
  %2072 = load i64, i64* %2071, align 8
  store i64 %2072, i64* %RAX.i189, align 8
  %2073 = add i64 %2064, -44
  %2074 = add i64 %2063, 15
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i32*
  %2076 = load i32, i32* %2075, align 4
  %2077 = sext i32 %2076 to i64
  store i64 %2077, i64* %RCX.i797, align 8
  %2078 = shl nsw i64 %2077, 3
  %2079 = add i64 %2078, %2072
  %2080 = add i64 %2063, 19
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i64*
  %2082 = load i64, i64* %2081, align 8
  store i64 %2082, i64* %RAX.i189, align 8
  %2083 = add i64 %2064, -48
  %2084 = add i64 %2063, 23
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2083 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = sext i32 %2086 to i64
  store i64 %2087, i64* %RCX.i797, align 8
  %2088 = shl nsw i64 %2087, 2
  %2089 = add i64 %2088, %2082
  %2090 = add i64 %2063, 28
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i32*
  %2092 = load i32, i32* %2091, align 4
  store i32 %2092, i32* %941, align 1
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %658, align 1
  store float 0.000000e+00, float* %945, align 1
  %2093 = add i64 %2063, 32
  store i64 %2093, i64* %3, align 8
  %2094 = load i64, i64* %2067, align 8
  store i64 %2094, i64* %RAX.i189, align 8
  %2095 = add i64 %2063, 36
  store i64 %2095, i64* %3, align 8
  %2096 = load i32, i32* %2085, align 4
  %2097 = sext i32 %2096 to i64
  store i64 %2097, i64* %RCX.i797, align 8
  %2098 = shl nsw i64 %2097, 2
  %2099 = add i64 %2094, 224
  %2100 = add i64 %2099, %2098
  %2101 = add i64 %2063, 45
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i32*
  %2103 = load i32, i32* %2102, align 4
  store i32 %2103, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %2104 = add i64 %2063, 848
  %2105 = add i64 %2063, 50
  %2106 = load i64, i64* %6, align 8
  %2107 = add i64 %2106, -8
  %2108 = inttoptr i64 %2107 to i64*
  store i64 %2105, i64* %2108, align 8
  store i64 %2107, i64* %6, align 8
  store i64 %2104, i64* %3, align 8
  %call2_42304d = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %2104, %struct.Memory* %MEMORY.14)
  %2109 = load i64, i64* %RBP.i, align 8
  %2110 = add i64 %2109, -336
  %2111 = load i64, i64* %RAX.i189, align 8
  %2112 = load i64, i64* %3, align 8
  %2113 = add i64 %2112, 7
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2110 to i64*
  store i64 %2111, i64* %2114, align 8
  %2115 = load i64, i64* %3, align 8
  %2116 = add i64 %2115, 27
  br label %block_.L_423074

block_.L_42305e:                                  ; preds = %block_423002
  store i64 ptrtoint (%G__0x4583b0_type* @G__0x4583b0 to i64), i64* %RAX.i189, align 8
  %2117 = load i64, i64* %RBP.i, align 8
  %2118 = add i64 %2117, -336
  %2119 = add i64 %2063, 17
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i64*
  store i64 ptrtoint (%G__0x4583b0_type* @G__0x4583b0 to i64), i64* %2120, align 8
  %2121 = load i64, i64* %3, align 8
  %2122 = add i64 %2121, 5
  store i64 %2122, i64* %3, align 8
  br label %block_.L_423074

block_.L_423074:                                  ; preds = %block_.L_42305e, %block_423020
  %storemerge30 = phi i64 [ %2116, %block_423020 ], [ %2122, %block_.L_42305e ]
  %2123 = load i64, i64* %RBP.i, align 8
  %2124 = add i64 %2123, -336
  %2125 = add i64 %storemerge30, 7
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i64*
  %2127 = load i64, i64* %2126, align 8
  store i64 %2127, i64* %RAX.i189, align 8
  store i64 ptrtoint (%G__0x457b2c_type* @G__0x457b2c to i64), i64* %RSI.i348, align 8
  %2128 = add i64 %2123, -328
  %2129 = add i64 %storemerge30, 24
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i64*
  %2131 = load i64, i64* %2130, align 8
  store i64 %2131, i64* %RDI.i265, align 8
  store i64 %2127, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %2132 = add i64 %storemerge30, -137988
  %2133 = add i64 %storemerge30, 34
  %2134 = load i64, i64* %6, align 8
  %2135 = add i64 %2134, -8
  %2136 = inttoptr i64 %2135 to i64*
  store i64 %2133, i64* %2136, align 8
  store i64 %2135, i64* %6, align 8
  store i64 %2132, i64* %3, align 8
  %2137 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.14)
  %2138 = load i64, i64* %RBP.i, align 8
  %2139 = add i64 %2138, -340
  %2140 = load i32, i32* %EAX.i700, align 4
  %2141 = load i64, i64* %3, align 8
  %2142 = add i64 %2141, 6
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2139 to i32*
  store i32 %2140, i32* %2143, align 4
  %2144 = load i64, i64* %RBP.i, align 8
  %2145 = add i64 %2144, -48
  %2146 = load i64, i64* %3, align 8
  %2147 = add i64 %2146, 3
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2145 to i32*
  %2149 = load i32, i32* %2148, align 4
  %2150 = add i32 %2149, 1
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RAX.i189, align 8
  %2152 = icmp eq i32 %2149, -1
  %2153 = icmp eq i32 %2150, 0
  %2154 = or i1 %2152, %2153
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %29, align 1
  %2156 = and i32 %2150, 255
  %2157 = tail call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  store i8 %2160, i8* %36, align 1
  %2161 = xor i32 %2150, %2149
  %2162 = lshr i32 %2161, 4
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  store i8 %2164, i8* %42, align 1
  %2165 = zext i1 %2153 to i8
  store i8 %2165, i8* %45, align 1
  %2166 = lshr i32 %2150, 31
  %2167 = trunc i32 %2166 to i8
  store i8 %2167, i8* %48, align 1
  %2168 = lshr i32 %2149, 31
  %2169 = xor i32 %2166, %2168
  %2170 = add nuw nsw i32 %2169, %2166
  %2171 = icmp eq i32 %2170, 2
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %54, align 1
  %2173 = add i64 %2146, 9
  store i64 %2173, i64* %3, align 8
  store i32 %2150, i32* %2148, align 4
  %2174 = load i64, i64* %3, align 8
  %2175 = add i64 %2174, -179
  store i64 %2175, i64* %3, align 8
  br label %block_.L_422ff2

block_.L_4230aa:                                  ; preds = %block_.L_422ff2
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI.i265, align 8
  %2176 = add i64 %1979, -32
  %2177 = add i64 %2012, 14
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2176 to i64*
  %2179 = load i64, i64* %2178, align 8
  store i64 %2179, i64* %RSI.i348, align 8
  %2180 = add i64 %2012, -138218
  %2181 = add i64 %2012, 19
  %2182 = load i64, i64* %6, align 8
  %2183 = add i64 %2182, -8
  %2184 = inttoptr i64 %2183 to i64*
  store i64 %2181, i64* %2184, align 8
  store i64 %2183, i64* %6, align 8
  store i64 %2180, i64* %3, align 8
  %2185 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.14)
  %2186 = load i64, i64* %RBP.i, align 8
  %2187 = add i64 %2186, -32
  %2188 = load i64, i64* %3, align 8
  %2189 = add i64 %2188, 4
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2187 to i64*
  %2191 = load i64, i64* %2190, align 8
  store i64 %2191, i64* %RDI.i265, align 8
  %2192 = add i64 %2186, -40
  %2193 = add i64 %2188, 8
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i64*
  %2195 = load i64, i64* %2194, align 8
  store i64 %2195, i64* %RSI.i348, align 8
  %2196 = add i64 %2195, 456
  %2197 = add i64 %2188, 14
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i32*
  %2199 = load i32, i32* %2198, align 4
  %2200 = and i32 %2199, 8
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %RCX.i797, align 8
  store i8 0, i8* %29, align 1
  %2202 = tail call i32 @llvm.ctpop.i32(i32 %2200)
  %2203 = trunc i32 %2202 to i8
  %2204 = xor i8 %2203, 1
  store i8 %2204, i8* %36, align 1
  store i8 0, i8* %42, align 1
  %.lobit80 = lshr exact i32 %2200, 3
  %2205 = trunc i32 %.lobit80 to i8
  %2206 = xor i8 %2205, 1
  store i8 %2206, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2207 = add i64 %2186, -344
  %2208 = load i32, i32* %EAX.i700, align 4
  %2209 = add i64 %2188, 26
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2207 to i32*
  store i32 %2208, i32* %2210, align 4
  %2211 = load i64, i64* %RBP.i, align 8
  %2212 = add i64 %2211, -352
  %2213 = load i64, i64* %RDI.i265, align 8
  %2214 = load i64, i64* %3, align 8
  %2215 = add i64 %2214, 7
  store i64 %2215, i64* %3, align 8
  %2216 = inttoptr i64 %2212 to i64*
  store i64 %2213, i64* %2216, align 8
  %2217 = load i64, i64* %3, align 8
  %2218 = load i8, i8* %45, align 1
  %2219 = icmp ne i8 %2218, 0
  %.v111 = select i1 %2219, i64 33, i64 6
  %2220 = add i64 %2217, %.v111
  store i64 %2220, i64* %3, align 8
  %cmpBr_4230de = icmp eq i8 %2218, 1
  br i1 %cmpBr_4230de, label %block_.L_4230ff, label %block_4230e4

block_4230e4:                                     ; preds = %block_.L_4230aa
  %2221 = load i64, i64* %RBP.i, align 8
  %2222 = add i64 %2221, -40
  %2223 = add i64 %2220, 4
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2222 to i64*
  %2225 = load i64, i64* %2224, align 8
  store i64 %2225, i64* %RAX.i189, align 8
  %2226 = add i64 %2225, 32
  %2227 = add i64 %2220, 8
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i64*
  %2229 = load i64, i64* %2228, align 8
  store i64 %2229, i64* %RAX.i189, align 8
  %2230 = add i64 %2221, -44
  %2231 = add i64 %2220, 12
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i32*
  %2233 = load i32, i32* %2232, align 4
  %2234 = sext i32 %2233 to i64
  store i64 %2234, i64* %RCX.i797, align 8
  %2235 = add i64 %2229, %2234
  %2236 = add i64 %2220, 16
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2235 to i8*
  %2238 = load i8, i8* %2237, align 1
  %2239 = sext i8 %2238 to i64
  %2240 = and i64 %2239, 4294967295
  store i64 %2240, i64* %RDX.i245, align 8
  %2241 = add i64 %2221, -356
  %2242 = sext i8 %2238 to i32
  %2243 = add i64 %2220, 22
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2241 to i32*
  store i32 %2242, i32* %2244, align 4
  %2245 = load i64, i64* %3, align 8
  %2246 = add i64 %2245, 21
  br label %block_.L_42310f

block_.L_4230ff:                                  ; preds = %block_.L_4230aa
  store i64 45, i64* %RAX.i189, align 8
  %2247 = load i64, i64* %RBP.i, align 8
  %2248 = add i64 %2247, -356
  %2249 = add i64 %2220, 11
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2248 to i32*
  store i32 45, i32* %2250, align 4
  %2251 = load i64, i64* %3, align 8
  %2252 = add i64 %2251, 5
  store i64 %2252, i64* %3, align 8
  br label %block_.L_42310f

block_.L_42310f:                                  ; preds = %block_.L_4230ff, %block_4230e4
  %storemerge32 = phi i64 [ %2246, %block_4230e4 ], [ %2252, %block_.L_4230ff ]
  %2253 = load i64, i64* %RBP.i, align 8
  %2254 = add i64 %2253, -356
  %2255 = add i64 %storemerge32, 6
  store i64 %2255, i64* %3, align 8
  %2256 = inttoptr i64 %2254 to i32*
  %2257 = load i32, i32* %2256, align 4
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RAX.i189, align 8
  store i64 ptrtoint (%G__0x457b3b_type* @G__0x457b3b to i64), i64* %RSI.i348, align 8
  %2259 = add i64 %2253, -352
  %2260 = add i64 %storemerge32, 23
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i64*
  %2262 = load i64, i64* %2261, align 8
  store i64 %2262, i64* %RDI.i265, align 8
  store i64 %2258, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %2263 = add i64 %storemerge32, -138143
  %2264 = add i64 %storemerge32, 32
  %2265 = load i64, i64* %6, align 8
  %2266 = add i64 %2265, -8
  %2267 = inttoptr i64 %2266 to i64*
  store i64 %2264, i64* %2267, align 8
  store i64 %2266, i64* %6, align 8
  store i64 %2263, i64* %3, align 8
  %2268 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2185)
  %2269 = load i64, i64* %RBP.i, align 8
  %2270 = add i64 %2269, -52
  %2271 = load i64, i64* %3, align 8
  %2272 = add i64 %2271, 7
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2270 to i32*
  store i32 0, i32* %2273, align 4
  %2274 = load i64, i64* %RBP.i, align 8
  %2275 = add i64 %2274, -360
  %2276 = load i32, i32* %EAX.i700, align 4
  %2277 = load i64, i64* %3, align 8
  %2278 = add i64 %2277, 6
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2275 to i32*
  store i32 %2276, i32* %2279, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_42313c

block_.L_42313c:                                  ; preds = %block_.L_4231af, %block_.L_42310f
  %2280 = phi i64 [ %.pre66, %block_.L_42310f ], [ %2465, %block_.L_4231af ]
  %MEMORY.17 = phi %struct.Memory* [ %2268, %block_.L_42310f ], [ %2427, %block_.L_4231af ]
  %2281 = load i64, i64* %RBP.i, align 8
  %2282 = add i64 %2281, -52
  %2283 = add i64 %2280, 4
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = add i32 %2285, -7
  %2287 = icmp ult i32 %2285, 7
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %29, align 1
  %2289 = and i32 %2286, 255
  %2290 = tail call i32 @llvm.ctpop.i32(i32 %2289)
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  %2293 = xor i8 %2292, 1
  store i8 %2293, i8* %36, align 1
  %2294 = xor i32 %2286, %2285
  %2295 = lshr i32 %2294, 4
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  store i8 %2297, i8* %42, align 1
  %2298 = icmp eq i32 %2286, 0
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %45, align 1
  %2300 = lshr i32 %2286, 31
  %2301 = trunc i32 %2300 to i8
  store i8 %2301, i8* %48, align 1
  %2302 = lshr i32 %2285, 31
  %2303 = xor i32 %2300, %2302
  %2304 = add nuw nsw i32 %2303, %2302
  %2305 = icmp eq i32 %2304, 2
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %54, align 1
  %2307 = icmp ne i8 %2301, 0
  %2308 = xor i1 %2307, %2305
  %.v90 = select i1 %2308, i64 10, i64 169
  %2309 = add i64 %2280, %.v90
  store i64 %2309, i64* %3, align 8
  br i1 %2308, label %block_423146, label %block_.L_4231e5

block_423146:                                     ; preds = %block_.L_42313c
  %2310 = add i64 %2281, -32
  %2311 = add i64 %2309, 4
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2310 to i64*
  %2313 = load i64, i64* %2312, align 8
  store i64 %2313, i64* %RDI.i265, align 8
  %2314 = add i64 %2281, -44
  %2315 = add i64 %2309, 7
  store i64 %2315, i64* %3, align 8
  %2316 = inttoptr i64 %2314 to i32*
  %2317 = load i32, i32* %2316, align 4
  %2318 = zext i32 %2317 to i64
  store i64 %2318, i64* %RAX.i189, align 8
  %2319 = add i64 %2281, -40
  %2320 = add i64 %2309, 11
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2319 to i64*
  %2322 = load i64, i64* %2321, align 8
  store i64 %2322, i64* %RCX.i797, align 8
  %2323 = add i64 %2322, 136
  %2324 = add i64 %2309, 17
  store i64 %2324, i64* %3, align 8
  %2325 = inttoptr i64 %2323 to i32*
  %2326 = load i32, i32* %2325, align 4
  %2327 = sub i32 %2317, %2326
  %2328 = icmp ult i32 %2317, %2326
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %29, align 1
  %2330 = and i32 %2327, 255
  %2331 = tail call i32 @llvm.ctpop.i32(i32 %2330)
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  store i8 %2334, i8* %36, align 1
  %2335 = xor i32 %2326, %2317
  %2336 = xor i32 %2335, %2327
  %2337 = lshr i32 %2336, 4
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  store i8 %2339, i8* %42, align 1
  %2340 = icmp eq i32 %2327, 0
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %45, align 1
  %2342 = lshr i32 %2327, 31
  %2343 = trunc i32 %2342 to i8
  store i8 %2343, i8* %48, align 1
  %2344 = lshr i32 %2317, 31
  %2345 = lshr i32 %2326, 31
  %2346 = xor i32 %2345, %2344
  %2347 = xor i32 %2342, %2344
  %2348 = add nuw nsw i32 %2347, %2346
  %2349 = icmp eq i32 %2348, 2
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %54, align 1
  %2351 = add i64 %2281, -368
  %2352 = add i64 %2309, 24
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i64*
  store i64 %2313, i64* %2353, align 8
  %2354 = load i64, i64* %3, align 8
  %2355 = load i8, i8* %48, align 1
  %2356 = icmp ne i8 %2355, 0
  %2357 = load i8, i8* %54, align 1
  %2358 = icmp ne i8 %2357, 0
  %2359 = xor i1 %2356, %2358
  %.v112 = select i1 %2359, i64 6, i64 59
  %2360 = add i64 %2354, %.v112
  store i64 %2360, i64* %3, align 8
  br i1 %2359, label %block_423164, label %block_.L_423199

block_423164:                                     ; preds = %block_423146
  %2361 = add i64 %2360, ptrtoint (%G_0x315bc__rip__type* @G_0x315bc__rip_ to i64)
  %2362 = add i64 %2360, 8
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2361 to i32*
  %2364 = load i32, i32* %2363, align 4
  store i32 %2364, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %2365 = load i64, i64* %RBP.i, align 8
  %2366 = add i64 %2365, -40
  %2367 = add i64 %2360, 12
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2366 to i64*
  %2369 = load i64, i64* %2368, align 8
  store i64 %2369, i64* %RAX.i189, align 8
  %2370 = add i64 %2369, 144
  %2371 = add i64 %2360, 19
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i64*
  %2373 = load i64, i64* %2372, align 8
  store i64 %2373, i64* %RAX.i189, align 8
  %2374 = add i64 %2365, -44
  %2375 = add i64 %2360, 23
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i32*
  %2377 = load i32, i32* %2376, align 4
  %2378 = sext i32 %2377 to i64
  store i64 %2378, i64* %RCX.i797, align 8
  %2379 = shl nsw i64 %2378, 3
  %2380 = add i64 %2379, %2373
  %2381 = add i64 %2360, 27
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i64*
  %2383 = load i64, i64* %2382, align 8
  store i64 %2383, i64* %RAX.i189, align 8
  %2384 = add i64 %2365, -52
  %2385 = add i64 %2360, 31
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i32*
  %2387 = load i32, i32* %2386, align 4
  %2388 = sext i32 %2387 to i64
  store i64 %2388, i64* %RCX.i797, align 8
  %2389 = shl nsw i64 %2388, 2
  %2390 = add i64 %2389, %2383
  %2391 = add i64 %2360, 36
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2390 to i32*
  %2393 = load i32, i32* %2392, align 4
  store i32 %2393, i32* %941, align 1
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %658, align 1
  store float 0.000000e+00, float* %945, align 1
  %2394 = add i64 %2360, 524
  %2395 = add i64 %2360, 41
  %2396 = load i64, i64* %6, align 8
  %2397 = add i64 %2396, -8
  %2398 = inttoptr i64 %2397 to i64*
  store i64 %2395, i64* %2398, align 8
  store i64 %2397, i64* %6, align 8
  store i64 %2394, i64* %3, align 8
  %call2_423188 = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %2394, %struct.Memory* %MEMORY.17)
  %2399 = load i64, i64* %RBP.i, align 8
  %2400 = add i64 %2399, -376
  %2401 = load i64, i64* %RAX.i189, align 8
  %2402 = load i64, i64* %3, align 8
  %2403 = add i64 %2402, 7
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2400 to i64*
  store i64 %2401, i64* %2404, align 8
  %2405 = load i64, i64* %3, align 8
  %2406 = add i64 %2405, 27
  br label %block_.L_4231af

block_.L_423199:                                  ; preds = %block_423146
  store i64 ptrtoint (%G__0x4583b0_type* @G__0x4583b0 to i64), i64* %RAX.i189, align 8
  %2407 = load i64, i64* %RBP.i, align 8
  %2408 = add i64 %2407, -376
  %2409 = add i64 %2360, 17
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i64*
  store i64 ptrtoint (%G__0x4583b0_type* @G__0x4583b0 to i64), i64* %2410, align 8
  %2411 = load i64, i64* %3, align 8
  %2412 = add i64 %2411, 5
  store i64 %2412, i64* %3, align 8
  br label %block_.L_4231af

block_.L_4231af:                                  ; preds = %block_.L_423199, %block_423164
  %storemerge33 = phi i64 [ %2406, %block_423164 ], [ %2412, %block_.L_423199 ]
  %2413 = load i64, i64* %RBP.i, align 8
  %2414 = add i64 %2413, -376
  %2415 = add i64 %storemerge33, 7
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i64*
  %2417 = load i64, i64* %2416, align 8
  store i64 %2417, i64* %RAX.i189, align 8
  store i64 ptrtoint (%G__0x457b2c_type* @G__0x457b2c to i64), i64* %RSI.i348, align 8
  %2418 = add i64 %2413, -368
  %2419 = add i64 %storemerge33, 24
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i64*
  %2421 = load i64, i64* %2420, align 8
  store i64 %2421, i64* %RDI.i265, align 8
  store i64 %2417, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %2422 = add i64 %storemerge33, -138303
  %2423 = add i64 %storemerge33, 34
  %2424 = load i64, i64* %6, align 8
  %2425 = add i64 %2424, -8
  %2426 = inttoptr i64 %2425 to i64*
  store i64 %2423, i64* %2426, align 8
  store i64 %2425, i64* %6, align 8
  store i64 %2422, i64* %3, align 8
  %2427 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.17)
  %2428 = load i64, i64* %RBP.i, align 8
  %2429 = add i64 %2428, -380
  %2430 = load i32, i32* %EAX.i700, align 4
  %2431 = load i64, i64* %3, align 8
  %2432 = add i64 %2431, 6
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2429 to i32*
  store i32 %2430, i32* %2433, align 4
  %2434 = load i64, i64* %RBP.i, align 8
  %2435 = add i64 %2434, -52
  %2436 = load i64, i64* %3, align 8
  %2437 = add i64 %2436, 3
  store i64 %2437, i64* %3, align 8
  %2438 = inttoptr i64 %2435 to i32*
  %2439 = load i32, i32* %2438, align 4
  %2440 = add i32 %2439, 1
  %2441 = zext i32 %2440 to i64
  store i64 %2441, i64* %RAX.i189, align 8
  %2442 = icmp eq i32 %2439, -1
  %2443 = icmp eq i32 %2440, 0
  %2444 = or i1 %2442, %2443
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %29, align 1
  %2446 = and i32 %2440, 255
  %2447 = tail call i32 @llvm.ctpop.i32(i32 %2446)
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  %2450 = xor i8 %2449, 1
  store i8 %2450, i8* %36, align 1
  %2451 = xor i32 %2440, %2439
  %2452 = lshr i32 %2451, 4
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  store i8 %2454, i8* %42, align 1
  %2455 = zext i1 %2443 to i8
  store i8 %2455, i8* %45, align 1
  %2456 = lshr i32 %2440, 31
  %2457 = trunc i32 %2456 to i8
  store i8 %2457, i8* %48, align 1
  %2458 = lshr i32 %2439, 31
  %2459 = xor i32 %2456, %2458
  %2460 = add nuw nsw i32 %2459, %2456
  %2461 = icmp eq i32 %2460, 2
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %54, align 1
  %2463 = add i64 %2436, 9
  store i64 %2463, i64* %3, align 8
  store i32 %2440, i32* %2438, align 4
  %2464 = load i64, i64* %3, align 8
  %2465 = add i64 %2464, -164
  store i64 %2465, i64* %3, align 8
  br label %block_.L_42313c

block_.L_4231e5:                                  ; preds = %block_.L_42313c
  %2466 = add i64 %2309, ptrtoint (%G_0x3153b__rip__type* @G_0x3153b__rip_ to i64)
  %2467 = add i64 %2309, 8
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  store i32 %2469, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %2470 = add i64 %2281, -32
  %2471 = add i64 %2309, 12
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i64*
  %2473 = load i64, i64* %2472, align 8
  store i64 %2473, i64* %RDI.i265, align 8
  %2474 = add i64 %2281, -40
  %2475 = add i64 %2309, 16
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i64*
  %2477 = load i64, i64* %2476, align 8
  store i64 %2477, i64* %RAX.i189, align 8
  %2478 = add i64 %2477, 208
  %2479 = add i64 %2309, 23
  store i64 %2479, i64* %3, align 8
  %2480 = inttoptr i64 %2478 to i64*
  %2481 = load i64, i64* %2480, align 8
  store i64 %2481, i64* %RAX.i189, align 8
  %2482 = add i64 %2281, -44
  %2483 = add i64 %2309, 27
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  %2486 = sext i32 %2485 to i64
  store i64 %2486, i64* %RCX.i797, align 8
  %2487 = shl nsw i64 %2486, 2
  %2488 = add i64 %2487, %2481
  %2489 = add i64 %2309, 32
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i32*
  %2491 = load i32, i32* %2490, align 4
  store i32 %2491, i32* %941, align 1
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %658, align 1
  store float 0.000000e+00, float* %945, align 1
  %2492 = add i64 %2281, -392
  %2493 = add i64 %2309, 39
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i64*
  store i64 %2473, i64* %2494, align 8
  %2495 = load i64, i64* %3, align 8
  %2496 = add i64 %2495, 356
  %2497 = add i64 %2495, 5
  %2498 = load i64, i64* %6, align 8
  %2499 = add i64 %2498, -8
  %2500 = inttoptr i64 %2499 to i64*
  store i64 %2497, i64* %2500, align 8
  store i64 %2499, i64* %6, align 8
  store i64 %2496, i64* %3, align 8
  %call2_42320c = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %2496, %struct.Memory* %MEMORY.17)
  %2501 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457b2c_type* @G__0x457b2c to i64), i64* %RSI.i348, align 8
  %2502 = load i64, i64* %RBP.i, align 8
  %2503 = add i64 %2502, -392
  %2504 = add i64 %2501, 17
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i64*
  %2506 = load i64, i64* %2505, align 8
  store i64 %2506, i64* %RDI.i265, align 8
  %2507 = load i64, i64* %RAX.i189, align 8
  store i64 %2507, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %2508 = add i64 %2501, -138401
  %2509 = add i64 %2501, 27
  %2510 = load i64, i64* %6, align 8
  %2511 = add i64 %2510, -8
  %2512 = inttoptr i64 %2511 to i64*
  store i64 %2509, i64* %2512, align 8
  store i64 %2511, i64* %6, align 8
  store i64 %2508, i64* %3, align 8
  %2513 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_42320c)
  %2514 = load i64, i64* %3, align 8
  %2515 = add i64 %2514, ptrtoint (%G_0x314f4__rip__type* @G_0x314f4__rip_ to i64)
  %2516 = add i64 %2514, 8
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  store i32 %2518, i32* %645, align 1
  store float 0.000000e+00, float* %647, align 1
  store float 0.000000e+00, float* %649, align 1
  store float 0.000000e+00, float* %651, align 1
  %2519 = load i64, i64* %RBP.i, align 8
  %2520 = add i64 %2519, -32
  %2521 = add i64 %2514, 12
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i64*
  %2523 = load i64, i64* %2522, align 8
  store i64 %2523, i64* %RDI.i265, align 8
  %2524 = add i64 %2519, -40
  %2525 = add i64 %2514, 16
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i64*
  %2527 = load i64, i64* %2526, align 8
  store i64 %2527, i64* %RCX.i797, align 8
  %2528 = add i64 %2527, 216
  %2529 = add i64 %2514, 23
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i64*
  %2531 = load i64, i64* %2530, align 8
  store i64 %2531, i64* %RCX.i797, align 8
  %2532 = add i64 %2519, -44
  %2533 = add i64 %2514, 27
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  %2535 = load i32, i32* %2534, align 4
  %2536 = sext i32 %2535 to i64
  store i64 %2536, i64* %RDX.i245, align 8
  %2537 = shl nsw i64 %2536, 2
  %2538 = add i64 %2537, %2531
  %2539 = add i64 %2514, 32
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i32*
  %2541 = load i32, i32* %2540, align 4
  store i32 %2541, i32* %941, align 1
  store float 0.000000e+00, float* %943, align 1
  store float 0.000000e+00, float* %658, align 1
  store float 0.000000e+00, float* %945, align 1
  %2542 = add i64 %2519, -396
  %2543 = load i32, i32* %EAX.i700, align 4
  %2544 = add i64 %2514, 38
  store i64 %2544, i64* %3, align 8
  %2545 = inttoptr i64 %2542 to i32*
  store i32 %2543, i32* %2545, align 4
  %2546 = load i64, i64* %RBP.i, align 8
  %2547 = add i64 %2546, -408
  %2548 = load i64, i64* %RDI.i265, align 8
  %2549 = load i64, i64* %3, align 8
  %2550 = add i64 %2549, 7
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2547 to i64*
  store i64 %2548, i64* %2551, align 8
  %2552 = load i64, i64* %3, align 8
  %2553 = add i64 %2552, 279
  %2554 = add i64 %2552, 5
  %2555 = load i64, i64* %6, align 8
  %2556 = add i64 %2555, -8
  %2557 = inttoptr i64 %2556 to i64*
  store i64 %2554, i64* %2557, align 8
  store i64 %2556, i64* %6, align 8
  store i64 %2553, i64* %3, align 8
  %call2_423259 = tail call %struct.Memory* @sub_423370.prob2ascii(%struct.State* nonnull %0, i64 %2553, %struct.Memory* %2513)
  %2558 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457b2c_type* @G__0x457b2c to i64), i64* %RSI.i348, align 8
  %2559 = load i64, i64* %RBP.i, align 8
  %2560 = add i64 %2559, -408
  %2561 = add i64 %2558, 17
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i64*
  %2563 = load i64, i64* %2562, align 8
  store i64 %2563, i64* %RDI.i265, align 8
  %2564 = load i64, i64* %RAX.i189, align 8
  store i64 %2564, i64* %RDX.i245, align 8
  store i8 0, i8* %AL.i465, align 1
  %2565 = add i64 %2558, -138478
  %2566 = add i64 %2558, 27
  %2567 = load i64, i64* %6, align 8
  %2568 = add i64 %2567, -8
  %2569 = inttoptr i64 %2568 to i64*
  store i64 %2566, i64* %2569, align 8
  store i64 %2568, i64* %6, align 8
  store i64 %2565, i64* %3, align 8
  %2570 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_423259)
  %2571 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI.i265, align 8
  %2572 = load i64, i64* %RBP.i, align 8
  %2573 = add i64 %2572, -32
  %2574 = add i64 %2571, 14
  store i64 %2574, i64* %3, align 8
  %2575 = inttoptr i64 %2573 to i64*
  %2576 = load i64, i64* %2575, align 8
  store i64 %2576, i64* %RSI.i348, align 8
  %2577 = add i64 %2572, -412
  %2578 = load i32, i32* %EAX.i700, align 4
  %2579 = add i64 %2571, 20
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2577 to i32*
  store i32 %2578, i32* %2580, align 4
  %2581 = load i64, i64* %3, align 8
  %2582 = add i64 %2581, -138701
  %2583 = add i64 %2581, 5
  %2584 = load i64, i64* %6, align 8
  %2585 = add i64 %2584, -8
  %2586 = inttoptr i64 %2585 to i64*
  store i64 %2583, i64* %2586, align 8
  store i64 %2585, i64* %6, align 8
  store i64 %2582, i64* %3, align 8
  %2587 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %2570)
  %2588 = load i64, i64* %RBP.i, align 8
  %2589 = add i64 %2588, -416
  %2590 = load i32, i32* %EAX.i700, align 4
  %2591 = load i64, i64* %3, align 8
  %2592 = add i64 %2591, 6
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2589 to i32*
  store i32 %2590, i32* %2593, align 4
  %2594 = load i64, i64* %RBP.i, align 8
  %2595 = add i64 %2594, -44
  %2596 = load i64, i64* %3, align 8
  %2597 = add i64 %2596, 3
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2595 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = add i32 %2599, 1
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RAX.i189, align 8
  %2602 = icmp eq i32 %2599, -1
  %2603 = icmp eq i32 %2600, 0
  %2604 = or i1 %2602, %2603
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %29, align 1
  %2606 = and i32 %2600, 255
  %2607 = tail call i32 @llvm.ctpop.i32(i32 %2606)
  %2608 = trunc i32 %2607 to i8
  %2609 = and i8 %2608, 1
  %2610 = xor i8 %2609, 1
  store i8 %2610, i8* %36, align 1
  %2611 = xor i32 %2600, %2599
  %2612 = lshr i32 %2611, 4
  %2613 = trunc i32 %2612 to i8
  %2614 = and i8 %2613, 1
  store i8 %2614, i8* %42, align 1
  %2615 = zext i1 %2603 to i8
  store i8 %2615, i8* %45, align 1
  %2616 = lshr i32 %2600, 31
  %2617 = trunc i32 %2616 to i8
  store i8 %2617, i8* %48, align 1
  %2618 = lshr i32 %2599, 31
  %2619 = xor i32 %2616, %2618
  %2620 = add nuw nsw i32 %2619, %2616
  %2621 = icmp eq i32 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %54, align 1
  %2623 = add i64 %2596, 9
  store i64 %2623, i64* %3, align 8
  store i32 %2600, i32* %2598, align 4
  %2624 = load i64, i64* %3, align 8
  %2625 = add i64 %2624, -1080
  store i64 %2625, i64* %3, align 8
  br label %block_.L_422e69

block_.L_4232a6:                                  ; preds = %block_.L_422e69
  store i64 ptrtoint (%G__0x45756f_type* @G__0x45756f to i64), i64* %RDI.i265, align 8
  %2626 = add i64 %1623, -32
  %2627 = add i64 %1663, 14
  store i64 %2627, i64* %3, align 8
  %2628 = inttoptr i64 %2626 to i64*
  %2629 = load i64, i64* %2628, align 8
  store i64 %2629, i64* %RSI.i348, align 8
  %2630 = add i64 %1663, -138726
  %2631 = add i64 %1663, 19
  %2632 = load i64, i64* %6, align 8
  %2633 = add i64 %2632, -8
  %2634 = inttoptr i64 %2633 to i64*
  store i64 %2631, i64* %2634, align 8
  store i64 %2633, i64* %6, align 8
  store i64 %2630, i64* %3, align 8
  %2635 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %MEMORY.10)
  %2636 = load i64, i64* %RBP.i, align 8
  %2637 = add i64 %2636, -420
  %2638 = load i32, i32* %EAX.i700, align 4
  %2639 = load i64, i64* %3, align 8
  %2640 = add i64 %2639, 6
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2637 to i32*
  store i32 %2638, i32* %2641, align 4
  %2642 = load i64, i64* %6, align 8
  %2643 = load i64, i64* %3, align 8
  %2644 = add i64 %2642, 440
  store i64 %2644, i64* %6, align 8
  %2645 = icmp ugt i64 %2642, -441
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %29, align 1
  %2647 = trunc i64 %2644 to i32
  %2648 = and i32 %2647, 255
  %2649 = tail call i32 @llvm.ctpop.i32(i32 %2648)
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = xor i8 %2651, 1
  store i8 %2652, i8* %36, align 1
  %2653 = xor i64 %2642, 16
  %2654 = xor i64 %2653, %2644
  %2655 = lshr i64 %2654, 4
  %2656 = trunc i64 %2655 to i8
  %2657 = and i8 %2656, 1
  store i8 %2657, i8* %42, align 1
  %2658 = icmp eq i64 %2644, 0
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %45, align 1
  %2660 = lshr i64 %2644, 63
  %2661 = trunc i64 %2660 to i8
  store i8 %2661, i8* %48, align 1
  %2662 = lshr i64 %2642, 63
  %2663 = xor i64 %2660, %2662
  %2664 = add nuw nsw i64 %2663, %2660
  %2665 = icmp eq i64 %2664, 2
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %54, align 1
  %2667 = add i64 %2643, 8
  store i64 %2667, i64* %3, align 8
  %2668 = add i64 %2642, 448
  %2669 = inttoptr i64 %2644 to i64*
  %2670 = load i64, i64* %2669, align 8
  store i64 %2670, i64* %RBX.i72, align 8
  store i64 %2668, i64* %6, align 8
  %2671 = add i64 %2643, 10
  store i64 %2671, i64* %3, align 8
  %2672 = add i64 %2642, 456
  %2673 = inttoptr i64 %2668 to i64*
  %2674 = load i64, i64* %2673, align 8
  store i64 %2674, i64* %R14.i40, align 8
  store i64 %2672, i64* %6, align 8
  %2675 = add i64 %2643, 12
  store i64 %2675, i64* %3, align 8
  %2676 = add i64 %2642, 464
  %2677 = inttoptr i64 %2672 to i64*
  %2678 = load i64, i64* %2677, align 8
  store i64 %2678, i64* %R15.i29, align 8
  store i64 %2676, i64* %6, align 8
  %2679 = add i64 %2643, 13
  store i64 %2679, i64* %3, align 8
  %2680 = add i64 %2642, 472
  %2681 = inttoptr i64 %2676 to i64*
  %2682 = load i64, i64* %2681, align 8
  store i64 %2682, i64* %RBP.i, align 8
  store i64 %2680, i64* %6, align 8
  %2683 = add i64 %2643, 14
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2680 to i64*
  %2685 = load i64, i64* %2684, align 8
  store i64 %2685, i64* %3, align 8
  %2686 = add i64 %2642, 480
  store i64 %2686, i64* %6, align 8
  ret %struct.Memory* %2635
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1b8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -440
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 440
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
define %struct.Memory* @routine_movq__0x4579fb___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4579fb_type* @G__0x4579fb to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq__0x457a0b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a0b_type* @G__0x457a0b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x1c8__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_andl__0x200___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 512
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_422755(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457a15___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a15_type* @G__0x457a15 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_42278b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457a1f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a1f_type* @G__0x457a1f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__0x457a29___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a29_type* @G__0x457a29 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq__0x457a41___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a41_type* @G__0x457a41 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a39___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a39_type* @G__0x457a39 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a33___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a33_type* @G__0x457a33 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
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
define %struct.Memory* @routine_cmoveq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RDI, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a4b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a4b_type* @G__0x457a4b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a36___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a36_type* @G__0x457a36 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457914___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457914_type* @G__0x457914 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__r8____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 456
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = and i32 %5, 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %12 = trunc i32 %11 to i8
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %.lobit = lshr exact i32 %8, 2
  %15 = trunc i32 %.lobit to i8
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_cmovneq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = load i64, i64* %RCX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a55___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a55_type* @G__0x457a55 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x8___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = and i32 %5, 8
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %12 = trunc i32 %11 to i8
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %.lobit = lshr exact i32 %8, 3
  %15 = trunc i32 %.lobit to i8
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a5f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a5f_type* @G__0x457a5f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x100___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = and i32 %5, 256
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %.lobit = lshr exact i32 %8, 8
  %12 = trunc i32 %.lobit to i8
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a69___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a69_type* @G__0x457a69 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rcx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.multiline(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457a70___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a70_type* @G__0x457a70 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x38__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_movq__0x457a7a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a7a_type* @G__0x457a7a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x40__rcx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a84___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a84_type* @G__0x457a84 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x50__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x400___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1024
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 10
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
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_422981(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b045___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b045_type* @G__0x45b045 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x70__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 112
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
define %struct.Memory* @routine_cvtss2sd_0x74__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 116
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
define %struct.Memory* @routine_movb__0x2___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x800___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2048
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 11
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4229c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b093___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b093_type* @G__0x45b093 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x78__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 120
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
define %struct.Memory* @routine_cvtss2sd_0x7c__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 124
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x1000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4096
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 12
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_422a0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b06c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b06c_type* @G__0x45b06c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x80__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x84__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_movq__0x457a8e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a8e_type* @G__0x457a8e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_422abd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_422aaa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x31cdb__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x31cdb__rip__type* @G_0x31cdb__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xac___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 172
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -173
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.prob2ascii(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457b2c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b2c_type* @G__0x457b2c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jmpq_.L_422a3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_422aaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_422a2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a96___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a96_type* @G__0x457a96 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movss_0x31c35__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x31c35__rip__type* @G_0x31c35__rip_ to i64)
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x130__rsi____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, 304
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
define %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x31bf0__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x31bf0__rip__type* @G_0x31bf0__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x31ca0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x31ca0__rip__type* @G_0x31ca0__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_0x130__rdx____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 304
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
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
define %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x456fbb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x456fbb_type* @G__0x456fbb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457a9d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457a9d_type* @G__0x457a9d to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jge_.L_422c33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x31b65__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x31b65__rip__type* @G_0x31b65__rip_ to i64)
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
define %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 224
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x677060___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %17 = fdiv float %15, %16
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
define %struct.Memory* @routine_movss__xmm0__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
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
define %struct.Memory* @routine_movss_MINUS0xbc__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -188
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
define %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_422bab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_andl__0x80___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 128
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 7
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
define %struct.Memory* @routine_je_.L_422c98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457aa4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457aa4_type* @G__0x457aa4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x1c0__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 448
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x1c4__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 452
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_movq__0x457ab5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457ab5_type* @G__0x457ab5 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jge_.L_422cff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457abf___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457abf_type* @G__0x457abf to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jmpq_.L_422cba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__0x457ac8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457ac8_type* @G__0x457ac8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457af4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457af4_type* @G__0x457af4 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457af9___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457af9_type* @G__0x457af9 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457afe___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457afe_type* @G__0x457afe to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457b03___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b03_type* @G__0x457b03 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457b08___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b08_type* @G__0x457b08 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457b0d___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b0d_type* @G__0x457b0d to i64), i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457b12___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b12_type* @G__0x457b12 to i64), i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457b17___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b17_type* @G__0x457b17 to i64), i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457b1c___r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b1c_type* @G__0x457b1c to i64), i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe8__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movss_0x3196e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3196e__rip__type* @G_0x3196e__rip_ to i64)
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
define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_0xa8__rcx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_movss__xmm0__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
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
define %struct.Memory* @routine_movss_MINUS0xf0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -240
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
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457b21___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b21_type* @G__0x457b21 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4583b0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4583b0_type* @G__0x4583b0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x100__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x31909__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x31909__rip__type* @G_0x31909__rip_ to i64)
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
define %struct.Memory* @routine_movss_0xa8__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 168
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
define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x110__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -276
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jg_.L_4232a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457b31___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b31_type* @G__0x457b31 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -280
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_422f1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x120__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -292
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_422ea1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x100___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 256
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_422f60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x457b37___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b37_type* @G__0x457b37 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -296
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
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
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_422fb5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_422fc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 45, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
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
define %struct.Memory* @routine_movq__0x457b3b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457b3b_type* @G__0x457b3b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x138__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4230aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42305e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423074(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4583b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4583b0_type* @G__0x4583b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x150__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_422ff2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4230ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x164__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -356
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42310f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x164__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -356
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
define %struct.Memory* @routine_movq_MINUS0x160__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jge_.L_4231e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdi__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_423199(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x315bc__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x315bc__rip__type* @G_0x315bc__rip_ to i64)
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
define %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4231af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x178__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x170__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42313c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x3153b__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3153b__rip__type* @G_0x3153b__rip_ to i64)
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
define %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -392
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x188__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x314f4__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x314f4__rip__type* @G_0x314f4__rip_ to i64)
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
define %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rcx__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x198__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -412
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -416
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_422e69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45756f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45756f_type* @G__0x45756f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -420
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1b8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 440
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -441
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
