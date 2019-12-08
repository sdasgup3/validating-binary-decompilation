; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1785__rip__type = type <{ [8 x i8] }>
%G_0x18a9__rip__type = type <{ [8 x i8] }>
%G_0x18b1__rip__type = type <{ [8 x i8] }>
%G_0x1bbc__rip__type = type <{ [8 x i8] }>
%G_0x1ce0__rip__type = type <{ [8 x i8] }>
%G_0x1ce8__rip__type = type <{ [8 x i8] }>
%G_0x2206__rip__type = type <{ [8 x i8] }>
%G_0x220e__rip__type = type <{ [8 x i8] }>
%G_0x2398__rip__type = type <{ [4 x i8] }>
%G_0x23af__rip__type = type <{ [4 x i8] }>
%G_0x243e__rip__type = type <{ [16 x i8] }>
%G_0x247e__rip__type = type <{ [16 x i8] }>
%G_0x24c0__rip__type = type <{ [16 x i8] }>
%G_0x2500__rip__type = type <{ [16 x i8] }>
%G_0x2750__rip__type = type <{ [8 x i8] }>
%G_0x289b__rip__type = type <{ [4 x i8] }>
%G_0x604040_type = type <{ [8 x i8] }>
%G_0x604050_type = type <{ [4 x i8] }>
%G_0x604054_type = type <{ [4 x i8] }>
%G_0x604058_type = type <{ [4 x i8] }>
%G_0x62bad0_type = type <{ [16 x i8] }>
%G_0x62bb0c_type = type <{ [16 x i8] }>
%G_0x62bb48_type = type <{ [16 x i8] }>
%G_0x62bb84_type = type <{ [16 x i8] }>
%G_0x62bb9c_type = type <{ [16 x i8] }>
%G_0x62bbb4_type = type <{ [16 x i8] }>
%G_0x62bbc0_type = type <{ [16 x i8] }>
%G_0x62bbfc_type = type <{ [16 x i8] }>
%G_0x62bcec_type = type <{ [4 x i8] }>
%G_0x62bcf0_type = type <{ [4 x i8] }>
%G_0x62c010_type = type <{ [4 x i8] }>
%G_0x62c014_type = type <{ [4 x i8] }>
%G__0x402f30_type = type <{ [8 x i8] }>
%G__0x402f4a_type = type <{ [8 x i8] }>
%G__0x402f6b_type = type <{ [8 x i8] }>
%G__0x402f73_type = type <{ [8 x i8] }>
%G__0x402f7b_type = type <{ [8 x i8] }>
%G__0x402fb1_type = type <{ [8 x i8] }>
%G__0x402fc2_type = type <{ [8 x i8] }>
%G__0x402fd4_type = type <{ [8 x i8] }>
%G__0x402ffb_type = type <{ [8 x i8] }>
%G__0x40301e_type = type <{ [8 x i8] }>
%G__0x40303f_type = type <{ [8 x i8] }>
%G__0x403074_type = type <{ [8 x i8] }>
%G__0x4030aa_type = type <{ [8 x i8] }>
%G__0x4030e2_type = type <{ [8 x i8] }>
%G__0x4030ef_type = type <{ [8 x i8] }>
%G__0x40310d_type = type <{ [8 x i8] }>
%G__0x403127_type = type <{ [8 x i8] }>
%G__0x40314e_type = type <{ [8 x i8] }>
%G__0x40317d_type = type <{ [8 x i8] }>
%G__0x403191_type = type <{ [8 x i8] }>
%G__0x4031c0_type = type <{ [8 x i8] }>
%G__0x4031e9_type = type <{ [8 x i8] }>
%G__0x604060_type = type <{ [8 x i8] }>
%G__0x62b480_type = type <{ [8 x i8] }>
%G__0x62b7a0_type = type <{ [8 x i8] }>
%G__0x62bac0_type = type <{ [8 x i8] }>
%G__0x62bcf0_type = type <{ [8 x i8] }>
%G__0x62c020_type = type <{ [8 x i8] }>
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
@G_0x1785__rip_ = local_unnamed_addr global %G_0x1785__rip__type zeroinitializer
@G_0x18a9__rip_ = local_unnamed_addr global %G_0x18a9__rip__type zeroinitializer
@G_0x18b1__rip_ = local_unnamed_addr global %G_0x18b1__rip__type zeroinitializer
@G_0x1bbc__rip_ = local_unnamed_addr global %G_0x1bbc__rip__type zeroinitializer
@G_0x1ce0__rip_ = local_unnamed_addr global %G_0x1ce0__rip__type zeroinitializer
@G_0x1ce8__rip_ = local_unnamed_addr global %G_0x1ce8__rip__type zeroinitializer
@G_0x2206__rip_ = local_unnamed_addr global %G_0x2206__rip__type zeroinitializer
@G_0x220e__rip_ = local_unnamed_addr global %G_0x220e__rip__type zeroinitializer
@G_0x2398__rip_ = local_unnamed_addr global %G_0x2398__rip__type zeroinitializer
@G_0x23af__rip_ = local_unnamed_addr global %G_0x23af__rip__type zeroinitializer
@G_0x243e__rip_ = global %G_0x243e__rip__type zeroinitializer
@G_0x247e__rip_ = global %G_0x247e__rip__type zeroinitializer
@G_0x24c0__rip_ = global %G_0x24c0__rip__type zeroinitializer
@G_0x2500__rip_ = global %G_0x2500__rip__type zeroinitializer
@G_0x2750__rip_ = local_unnamed_addr global %G_0x2750__rip__type zeroinitializer
@G_0x289b__rip_ = local_unnamed_addr global %G_0x289b__rip__type zeroinitializer
@G_0x604040 = local_unnamed_addr global %G_0x604040_type zeroinitializer
@G_0x604050 = local_unnamed_addr global %G_0x604050_type zeroinitializer
@G_0x604054 = local_unnamed_addr global %G_0x604054_type zeroinitializer
@G_0x604058 = local_unnamed_addr global %G_0x604058_type zeroinitializer
@G_0x62bad0 = local_unnamed_addr global %G_0x62bad0_type zeroinitializer
@G_0x62bb0c = local_unnamed_addr global %G_0x62bb0c_type zeroinitializer
@G_0x62bb48 = local_unnamed_addr global %G_0x62bb48_type zeroinitializer
@G_0x62bb84 = local_unnamed_addr global %G_0x62bb84_type zeroinitializer
@G_0x62bb9c = local_unnamed_addr global %G_0x62bb9c_type zeroinitializer
@G_0x62bbb4 = local_unnamed_addr global %G_0x62bbb4_type zeroinitializer
@G_0x62bbc0 = local_unnamed_addr global %G_0x62bbc0_type zeroinitializer
@G_0x62bbfc = local_unnamed_addr global %G_0x62bbfc_type zeroinitializer
@G_0x62bcec = local_unnamed_addr global %G_0x62bcec_type zeroinitializer
@G_0x62bcf0 = local_unnamed_addr global %G_0x62bcf0_type zeroinitializer
@G_0x62c010 = local_unnamed_addr global %G_0x62c010_type zeroinitializer
@G_0x62c014 = local_unnamed_addr global %G_0x62c014_type zeroinitializer
@G__0x402f30 = global %G__0x402f30_type zeroinitializer
@G__0x402f4a = global %G__0x402f4a_type zeroinitializer
@G__0x402f6b = global %G__0x402f6b_type zeroinitializer
@G__0x402f73 = global %G__0x402f73_type zeroinitializer
@G__0x402f7b = global %G__0x402f7b_type zeroinitializer
@G__0x402fb1 = global %G__0x402fb1_type zeroinitializer
@G__0x402fc2 = global %G__0x402fc2_type zeroinitializer
@G__0x402fd4 = global %G__0x402fd4_type zeroinitializer
@G__0x402ffb = global %G__0x402ffb_type zeroinitializer
@G__0x40301e = global %G__0x40301e_type zeroinitializer
@G__0x40303f = global %G__0x40303f_type zeroinitializer
@G__0x403074 = global %G__0x403074_type zeroinitializer
@G__0x4030aa = global %G__0x4030aa_type zeroinitializer
@G__0x4030e2 = global %G__0x4030e2_type zeroinitializer
@G__0x4030ef = global %G__0x4030ef_type zeroinitializer
@G__0x40310d = global %G__0x40310d_type zeroinitializer
@G__0x403127 = global %G__0x403127_type zeroinitializer
@G__0x40314e = global %G__0x40314e_type zeroinitializer
@G__0x40317d = global %G__0x40317d_type zeroinitializer
@G__0x403191 = global %G__0x403191_type zeroinitializer
@G__0x4031c0 = global %G__0x4031c0_type zeroinitializer
@G__0x4031e9 = global %G__0x4031e9_type zeroinitializer
@G__0x604060 = global %G__0x604060_type zeroinitializer
@G__0x62b480 = global %G__0x62b480_type zeroinitializer
@G__0x62b7a0 = global %G__0x62b7a0_type zeroinitializer
@G__0x62bac0 = global %G__0x62bac0_type zeroinitializer
@G__0x62bcf0 = global %G__0x62bcf0_type zeroinitializer
@G__0x62c020 = global %G__0x62c020_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4017b0.matgen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005c0.second(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401980.dgefa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401c90.dgesl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402010.dmxpy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402810.epslon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4028d0.print_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %RSP.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -1016
  store i64 %11, i64* %RSP.i11, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RSI.i265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x402f6b_type* @G__0x402f6b to i64), i64* %RSI.i265, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %19 = bitcast [32 x %union.VectorReg]* %18 to i8*
  %20 = load i32, i32* bitcast (%G_0x289b__rip__type* @G_0x289b__rip_ to i32*), align 8
  %21 = bitcast [32 x %union.VectorReg]* %18 to float*
  %22 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %20, i32* %22, align 1
  %23 = getelementptr inbounds i8, i8* %19, i64 4
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %26 = bitcast i64* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %19, i64 12
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i291 = getelementptr inbounds %union.anon, %union.anon* %29, i64 0, i32 0
  store i64 ptrtoint (%G__0x402f4a_type* @G__0x402f4a to i64), i64* %RAX.i291, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i373 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  store i64 ptrtoint (%G__0x402f30_type* @G__0x402f30 to i64), i64* %RCX.i373, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i385 = bitcast %union.anon* %31 to i32*
  %RDX.i386 = getelementptr inbounds %union.anon, %union.anon* %31, i64 0, i32 0
  store i64 0, i64* %RDX.i386, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %RDI.i642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %33 = getelementptr inbounds %union.anon, %union.anon* %32, i64 0, i32 0
  store i64 720, i64* %33, align 8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9.i = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -832
  store i64 %36, i64* %R9.i, align 8
  %37 = add i64 %35, -4
  %38 = add i64 %10, 72
  store i64 %38, i64* %PC.i, align 8
  %39 = inttoptr i64 %37 to i32*
  store i32 0, i32* %39, align 4
  %40 = load i64, i64* %R9.i, align 8
  %41 = load i64, i64* %PC.i, align 8
  store i64 %40, i64* %RDI.i642, align 8
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -840
  %44 = load i64, i64* %RSI.i265, align 8
  %45 = add i64 %41, 10
  store i64 %45, i64* %PC.i, align 8
  %46 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %EDX.i385, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %PC.i, align 8
  store i64 %48, i64* %RSI.i265, align 8
  %R8.i856 = getelementptr inbounds %union.anon, %union.anon* %32, i64 0, i32 0
  %50 = load i64, i64* %R8.i856, align 8
  store i64 %50, i64* %RDX.i386, align 8
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -848
  %53 = load i64, i64* %RCX.i373, align 8
  %54 = add i64 %49, 12
  store i64 %54, i64* %PC.i, align 8
  %55 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -852
  %58 = load i64, i64* %PC.i, align 8
  %59 = add i64 %58, 8
  store i64 %59, i64* %PC.i, align 8
  %60 = bitcast [32 x %union.VectorReg]* %18 to <2 x float>*
  %61 = load <2 x float>, <2 x float>* %60, align 1
  %62 = extractelement <2 x float> %61, i32 0
  %63 = inttoptr i64 %57 to float*
  store float %62, float* %63, align 4
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -864
  %66 = load i64, i64* %RAX.i291, align 8
  %67 = load i64, i64* %PC.i, align 8
  %68 = add i64 %67, 7
  store i64 %68, i64* %PC.i, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %PC.i, align 8
  %71 = add i64 %70, -462
  %72 = add i64 %70, 5
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %72, i64* %75, align 8
  store i64 %74, i64* %6, align 8
  store i64 %71, i64* %3, align 8
  %76 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -832
  %79 = load i64, i64* %PC.i, align 8
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC.i, align 8
  %81 = inttoptr i64 %78 to i8*
  store i8 32, i8* %81, align 1
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -848
  %84 = load i64, i64* %PC.i, align 8
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC.i, align 8
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RAX.i291, align 8
  %88 = add i64 %82, -96
  %89 = add i64 %84, 11
  store i64 %89, i64* %PC.i, align 8
  %90 = inttoptr i64 %88 to i64*
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -864
  %93 = load i64, i64* %PC.i, align 8
  %94 = add i64 %93, 7
  store i64 %94, i64* %PC.i, align 8
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RCX.i373, align 8
  %97 = add i64 %91, -104
  %98 = add i64 %93, 11
  store i64 %98, i64* %PC.i, align 8
  %99 = inttoptr i64 %97 to i64*
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %PC.i, align 8
  store i32 201, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -852
  %103 = add i64 %100, 30
  store i64 %103, i64* %PC.i, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %105, i32* %106, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %107 = add i64 %101, -8
  %108 = add i64 %100, 35
  store i64 %108, i64* %PC.i, align 8
  %109 = load <2 x float>, <2 x float>* %60, align 1
  %110 = extractelement <2 x float> %109, i32 0
  %111 = inttoptr i64 %107 to float*
  store float %110, float* %111, align 4
  %112 = load i64, i64* %PC.i, align 8
  store i32 100, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %113 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %113, i64* %RDI.i642, align 8
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -840
  %116 = add i64 %112, 26
  store i64 %116, i64* %PC.i, align 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RSI.i265, align 8
  %AL.i1589 = bitcast %union.anon* %29 to i8*
  store i8 0, i8* %AL.i1589, align 1
  %119 = add i64 %112, -515
  %120 = add i64 %112, 33
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123, align 8
  store i64 %122, i64* %6, align 8
  store i64 %119, i64* %3, align 8
  %124 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %76)
  %125 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x402f73_type* @G__0x402f73 to i64), i64* %RSI.i265, align 8
  %126 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %126, i64* %RDI.i642, align 8
  %EAX.i1578 = bitcast %union.anon* %29 to i32*
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -868
  %129 = load i32, i32* %EAX.i1578, align 4
  %130 = add i64 %125, 24
  store i64 %130, i64* %PC.i, align 8
  %131 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %131, align 4
  %132 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %133 = add i64 %132, -572
  %134 = add i64 %132, 7
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %134, i64* %137, align 8
  store i64 %136, i64* %6, align 8
  store i64 %133, i64* %3, align 8
  %138 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %124)
  %139 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x402f7b_type* @G__0x402f7b to i64), i64* %RSI.i265, align 8
  %140 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %140, i64* %RDI.i642, align 8
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -872
  %143 = load i32, i32* %EAX.i1578, align 4
  %144 = add i64 %139, 24
  store i64 %144, i64* %PC.i, align 8
  %145 = inttoptr i64 %142 to i32*
  store i32 %143, i32* %145, align 4
  %146 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %147 = add i64 %146, -603
  %148 = add i64 %146, 7
  %149 = load i64, i64* %6, align 8
  %150 = add i64 %149, -8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  store i64 %150, i64* %6, align 8
  store i64 %147, i64* %3, align 8
  %152 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %138)
  %153 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x402fb1_type* @G__0x402fb1 to i64), i64* %RSI.i265, align 8
  %154 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %154, i64* %RDI.i642, align 8
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -96
  %157 = add i64 %153, 22
  store i64 %157, i64* %PC.i, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RDX.i386, align 8
  %160 = add i64 %155, -876
  %161 = load i32, i32* %EAX.i1578, align 4
  %162 = add i64 %153, 28
  store i64 %162, i64* %PC.i, align 8
  %163 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %163, align 4
  %164 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %165 = add i64 %164, -638
  %166 = add i64 %164, 7
  %167 = load i64, i64* %6, align 8
  %168 = add i64 %167, -8
  %169 = inttoptr i64 %168 to i64*
  store i64 %166, i64* %169, align 8
  store i64 %168, i64* %6, align 8
  store i64 %165, i64* %3, align 8
  %170 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %152)
  %171 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x402fc2_type* @G__0x402fc2 to i64), i64* %RSI.i265, align 8
  %172 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %172, i64* %RDI.i642, align 8
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -104
  %175 = add i64 %171, 22
  store i64 %175, i64* %PC.i, align 8
  %176 = inttoptr i64 %174 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %RDX.i386, align 8
  %178 = add i64 %173, -880
  %179 = load i32, i32* %EAX.i1578, align 4
  %180 = add i64 %171, 28
  store i64 %180, i64* %PC.i, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 %179, i32* %181, align 4
  %182 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %183 = add i64 %182, -673
  %184 = add i64 %182, 7
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  %188 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %170)
  %189 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -20
  store i64 %191, i64* %R8.i856, align 8
  %192 = load double, double* bitcast (%G_0x2750__rip__type* @G_0x2750__rip_ to double*), align 8
  %193 = bitcast [32 x %union.VectorReg]* %18 to double*
  store double %192, double* %193, align 1
  %194 = bitcast i64* %25 to double*
  store double 0.000000e+00, double* %194, align 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %196 = bitcast %union.VectorReg* %195 to i8*
  %197 = bitcast %union.VectorReg* %195 to double*
  store double %192, double* %197, align 1
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %199 = bitcast i64* %198 to double*
  store double 0.000000e+00, double* %199, align 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %201 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %202 = sext i32 %201 to i64
  %203 = sext i32 %201 to i64
  %204 = mul nsw i64 %203, %202
  %205 = shl i64 %204, 32
  %206 = ashr exact i64 %205, 32
  %207 = mul nsw i64 %203, %206
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %209 = bitcast %union.VectorReg* %208 to i8*
  %210 = trunc i64 %207 to i32
  %211 = sitofp i32 %210 to double
  %212 = bitcast %union.VectorReg* %208 to double*
  store double %211, double* %212, align 1
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %214 = bitcast %union.VectorReg* %213 to i8*
  %215 = bitcast double %192 to <2 x i32>
  %216 = extractelement <2 x i32> %215, i32 0
  %217 = bitcast %union.VectorReg* %213 to i32*
  store i32 %216, i32* %217, align 1
  %218 = extractelement <2 x i32> %215, i32 1
  %219 = getelementptr inbounds i8, i8* %214, i64 4
  %220 = bitcast i8* %219 to i32*
  store i32 %218, i32* %220, align 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %222 = bitcast i64* %221 to i32*
  store i32 0, i32* %222, align 1
  %223 = getelementptr inbounds i8, i8* %214, i64 12
  %224 = bitcast i8* %223 to i32*
  store i32 0, i32* %224, align 1
  %225 = bitcast %union.VectorReg* %213 to double*
  %226 = load double, double* %225, align 1
  %227 = fmul double %226, %211
  %228 = bitcast %union.VectorReg* %195 to double*
  %229 = load double, double* %228, align 1
  %230 = fdiv double %227, %229
  %231 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %232 = sext i32 %231 to i64
  %233 = sext i32 %231 to i64
  %234 = mul nsw i64 %233, %232
  %235 = trunc i64 %234 to i32
  %236 = and i64 %234, 4294967295
  store i64 %236, i64* %200, align 8
  %237 = shl i64 %234, 32
  %238 = ashr exact i64 %237, 32
  %239 = icmp ne i64 %238, %234
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %12, align 1
  %241 = and i32 %235, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %246 = lshr i32 %235, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %16, align 1
  store i8 %240, i8* %17, align 1
  %248 = trunc i64 %234 to i32
  %249 = sitofp i32 %248 to double
  store double %249, double* %197, align 1
  %250 = load double, double* %193, align 1
  %251 = bitcast i64* %25 to <2 x i32>*
  %252 = load <2 x i32>, <2 x i32>* %251, align 1
  %253 = fmul double %250, %249
  %254 = bitcast [32 x %union.VectorReg]* %18 to double*
  %255 = fadd double %230, %253
  store double %255, double* %225, align 1
  %256 = bitcast double %253 to <2 x i32>
  %257 = bitcast i64* %25 to <2 x i32>*
  %258 = fptrunc double %255 to float
  store float %258, float* %21, align 1
  %259 = extractelement <2 x i32> %256, i32 1
  %260 = bitcast i8* %23 to i32*
  store i32 %259, i32* %260, align 1
  %261 = extractelement <2 x i32> %252, i32 0
  %262 = bitcast i64* %25 to i32*
  store i32 %261, i32* %262, align 1
  %263 = extractelement <2 x i32> %252, i32 1
  %264 = bitcast i8* %27 to i32*
  store i32 %263, i32* %264, align 1
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -12
  %267 = add i64 %189, 121
  store i64 %267, i64* %PC.i, align 8
  %268 = load <2 x float>, <2 x float>* %60, align 1
  %269 = extractelement <2 x float> %268, i32 0
  %270 = inttoptr i64 %266 to float*
  store float %269, float* %270, align 4
  %271 = load i64, i64* %PC.i, align 8
  %272 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RSI.i265, align 8
  %274 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RDX.i386, align 8
  %276 = load i64, i64* %RBP.i, align 8
  %277 = add i64 %276, -884
  %278 = load i32, i32* %EAX.i1578, align 4
  %279 = add i64 %271, 20
  store i64 %279, i64* %PC.i, align 8
  %280 = inttoptr i64 %277 to i32*
  store i32 %278, i32* %280, align 4
  %281 = load i64, i64* %PC.i, align 8
  %282 = add i64 %281, 4027
  %283 = add i64 %281, 5
  %284 = load i64, i64* %6, align 8
  %285 = add i64 %284, -8
  %286 = inttoptr i64 %285 to i64*
  store i64 %283, i64* %286, align 8
  store i64 %285, i64* %6, align 8
  store i64 %282, i64* %3, align 8
  %call2_4007f5 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %282, %struct.Memory* %188)
  %287 = load i64, i64* %PC.i, align 8
  %288 = add i64 %287, -570
  %289 = add i64 %287, 5
  %290 = load i64, i64* %6, align 8
  %291 = add i64 %290, -8
  %292 = inttoptr i64 %291 to i64*
  store i64 %289, i64* %292, align 8
  store i64 %291, i64* %6, align 8
  store i64 %288, i64* %3, align 8
  %call2_4007fa = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %288, %struct.Memory* %call2_4007f5)
  %293 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %R8.i856, align 8
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -40
  %296 = add i64 %293, 35
  store i64 %296, i64* %PC.i, align 8
  %297 = load <2 x float>, <2 x float>* %60, align 1
  %298 = extractelement <2 x float> %297, i32 0
  %299 = inttoptr i64 %295 to float*
  store float %298, float* %299, align 4
  %300 = load i64, i64* %PC.i, align 8
  %301 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RSI.i265, align 8
  %303 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RDX.i386, align 8
  %305 = add i64 %300, 4446
  %306 = add i64 %300, 19
  %307 = load i64, i64* %6, align 8
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %6, align 8
  store i64 %305, i64* %3, align 8
  %call2_400830 = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %305, %struct.Memory* %call2_4007fa)
  %310 = load i64, i64* %PC.i, align 8
  %311 = add i64 %310, -629
  %312 = add i64 %310, 5
  %313 = load i64, i64* %6, align 8
  %314 = add i64 %313, -8
  %315 = inttoptr i64 %314 to i64*
  store i64 %312, i64* %315, align 8
  store i64 %314, i64* %6, align 8
  store i64 %311, i64* %3, align 8
  %call2_400835 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %311, %struct.Memory* %call2_400830)
  %316 = load i64, i64* %RBP.i, align 8
  %317 = add i64 %316, -40
  %318 = load i64, i64* %PC.i, align 8
  %319 = add i64 %318, 5
  store i64 %319, i64* %PC.i, align 8
  %320 = bitcast [32 x %union.VectorReg]* %18 to <2 x float>*
  %321 = load <2 x float>, <2 x float>* %320, align 1
  %322 = load <2 x i32>, <2 x i32>* %257, align 1
  %323 = inttoptr i64 %317 to float*
  %324 = load float, float* %323, align 4
  %325 = extractelement <2 x float> %321, i32 0
  %326 = fsub float %325, %324
  store float %326, float* %21, align 1
  %327 = bitcast <2 x float> %321 to <2 x i32>
  %328 = extractelement <2 x i32> %327, i32 1
  store i32 %328, i32* %260, align 1
  %329 = extractelement <2 x i32> %322, i32 0
  store i32 %329, i32* %262, align 1
  %330 = extractelement <2 x i32> %322, i32 1
  store i32 %330, i32* %264, align 1
  %331 = load <2 x float>, <2 x float>* %60, align 1
  %332 = extractelement <2 x float> %331, i32 0
  store float %332, float* bitcast (%G_0x62bad0_type* @G_0x62bad0 to float*), align 8
  %333 = add i64 %318, -634
  %334 = add i64 %318, 19
  %335 = load i64, i64* %6, align 8
  %336 = add i64 %335, -8
  %337 = inttoptr i64 %336 to i64*
  store i64 %334, i64* %337, align 8
  store i64 %336, i64* %6, align 8
  store i64 %333, i64* %3, align 8
  %call2_400848 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %333, %struct.Memory* %call2_400835)
  %338 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %R8.i856, align 8
  %339 = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0
  store i64 0, i64* %339, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %340 = load i64, i64* %RBP.i, align 8
  %341 = add i64 %340, -40
  %342 = add i64 %338, 38
  store i64 %342, i64* %PC.i, align 8
  %343 = load <2 x float>, <2 x float>* %60, align 1
  %344 = extractelement <2 x float> %343, i32 0
  %345 = inttoptr i64 %341 to float*
  store float %344, float* %345, align 4
  %346 = load i64, i64* %PC.i, align 8
  %347 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RSI.i265, align 8
  %349 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RDX.i386, align 8
  %351 = add i64 %346, 5149
  %352 = add i64 %346, 19
  %353 = load i64, i64* %6, align 8
  %354 = add i64 %353, -8
  %355 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %355, align 8
  store i64 %354, i64* %6, align 8
  store i64 %351, i64* %3, align 8
  %call2_400881 = tail call %struct.Memory* @sub_401c90.dgesl(%struct.State* %0, i64 %351, %struct.Memory* %call2_400848)
  %356 = load i64, i64* %PC.i, align 8
  %357 = add i64 %356, -710
  %358 = add i64 %356, 5
  %359 = load i64, i64* %6, align 8
  %360 = add i64 %359, -8
  %361 = inttoptr i64 %360 to i64*
  store i64 %358, i64* %361, align 8
  store i64 %360, i64* %6, align 8
  store i64 %357, i64* %3, align 8
  %call2_400886 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %357, %struct.Memory* %call2_400881)
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -40
  %364 = load i64, i64* %PC.i, align 8
  %365 = add i64 %364, 5
  store i64 %365, i64* %PC.i, align 8
  %366 = load <2 x float>, <2 x float>* %320, align 1
  %367 = inttoptr i64 %363 to float*
  %368 = load float, float* %367, align 4
  %369 = extractelement <2 x float> %366, i32 0
  %370 = fsub float %369, %368
  store float %370, float* %21, align 1
  %371 = bitcast <2 x float> %366 to <2 x i32>
  %372 = extractelement <2 x i32> %371, i32 1
  store i32 %372, i32* %260, align 1
  %373 = load <2 x float>, <2 x float>* %60, align 1
  %374 = extractelement <2 x float> %373, i32 0
  store float %374, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  %375 = load i32, i32* bitcast (%G_0x62bad0_type* @G_0x62bad0 to i32*), align 8
  %376 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %375, i32* %376, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %377 = load <2 x float>, <2 x float>* %320, align 1
  %378 = load <2 x i32>, <2 x i32>* %257, align 1
  %379 = extractelement <2 x float> %377, i32 0
  %380 = fadd float %379, %374
  store float %380, float* %21, align 1
  %381 = bitcast <2 x float> %377 to <2 x i32>
  %382 = extractelement <2 x i32> %381, i32 1
  store i32 %382, i32* %260, align 1
  %383 = extractelement <2 x i32> %378, i32 0
  store i32 %383, i32* %262, align 1
  %384 = extractelement <2 x i32> %378, i32 1
  store i32 %384, i32* %264, align 1
  %385 = add i64 %362, -16
  %386 = add i64 %364, 37
  store i64 %386, i64* %PC.i, align 8
  %387 = load <2 x float>, <2 x float>* %60, align 1
  %388 = extractelement <2 x float> %387, i32 0
  %389 = inttoptr i64 %385 to float*
  store float %388, float* %389, align 4
  %390 = load i64, i64* %PC.i, align 8
  %391 = add i64 %390, 11
  store i64 %391, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4008bb

block_.L_4008bb:                                  ; preds = %block_4008cf, %entry
  %392 = phi i32 [ %437, %block_4008cf ], [ 0, %entry ]
  %393 = phi i64 [ %461, %block_4008cf ], [ %391, %entry ]
  %394 = zext i32 %392 to i64
  store i64 %394, i64* %RAX.i291, align 8
  %395 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %396 = sub i32 %392, %395
  %397 = icmp ult i32 %392, %395
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %12, align 1
  %399 = and i32 %396, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %13, align 1
  %404 = xor i32 %395, %392
  %405 = xor i32 %404, %396
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %14, align 1
  %409 = icmp eq i32 %396, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %15, align 1
  %411 = lshr i32 %396, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %16, align 1
  %413 = lshr i32 %392, 31
  %414 = lshr i32 %395, 31
  %415 = xor i32 %414, %413
  %416 = xor i32 %411, %413
  %417 = add nuw nsw i32 %416, %415
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %17, align 1
  %420 = icmp ne i8 %412, 0
  %421 = xor i1 %420, %418
  %.v = select i1 %421, i64 20, i64 76
  %422 = add i64 %393, %.v
  store i64 %422, i64* %3, align 8
  br i1 %421, label %block_4008cf, label %block_.L_400907

block_4008cf:                                     ; preds = %block_.L_4008bb
  %423 = sext i32 %392 to i64
  store i64 %423, i64* %RAX.i291, align 8
  %424 = shl nsw i64 %423, 2
  %425 = add nsw i64 %424, 6468736
  %426 = add i64 %422, 17
  store i64 %426, i64* %PC.i, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %428, i32* %429, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %430 = add nsw i64 %424, 6470896
  %431 = add i64 %422, 34
  store i64 %431, i64* %PC.i, align 8
  %432 = load <2 x float>, <2 x float>* %60, align 1
  %433 = extractelement <2 x float> %432, i32 0
  %434 = inttoptr i64 %430 to float*
  store float %433, float* %434, align 4
  %435 = load i64, i64* %PC.i, align 8
  %436 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %437 = add i32 %436, 1
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %RAX.i291, align 8
  %439 = icmp eq i32 %436, -1
  %440 = icmp eq i32 %437, 0
  %441 = or i1 %439, %440
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %12, align 1
  %443 = and i32 %437, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %13, align 1
  %448 = xor i32 %436, %437
  %449 = lshr i32 %448, 4
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %14, align 1
  %452 = icmp eq i32 %437, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %15, align 1
  %454 = lshr i32 %437, 31
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %16, align 1
  %456 = lshr i32 %436, 31
  %457 = xor i32 %454, %456
  %458 = add nuw nsw i32 %457, %454
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %17, align 1
  store i32 %437, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %461 = add i64 %435, -54
  store i64 %461, i64* %3, align 8
  br label %block_.L_4008bb

block_.L_400907:                                  ; preds = %block_.L_4008bb
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -20
  store i64 %463, i64* %R8.i856, align 8
  %464 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RSI.i265, align 8
  %466 = zext i32 %395 to i64
  store i64 %466, i64* %RDX.i386, align 8
  %467 = add i64 %422, 3753
  %468 = add i64 %422, 43
  %469 = load i64, i64* %6, align 8
  %470 = add i64 %469, -8
  %471 = inttoptr i64 %470 to i64*
  store i64 %468, i64* %471, align 8
  store i64 %470, i64* %6, align 8
  store i64 %467, i64* %3, align 8
  %call2_40092d = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %467, %struct.Memory* %call2_400886)
  %472 = load i64, i64* %PC.i, align 8
  %473 = add i64 %472, 11
  store i64 %473, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %475 = bitcast %union.anon* %30 to [2 x i32]*
  %476 = bitcast %union.anon* %30 to i32*
  %477 = getelementptr inbounds [2 x i32], [2 x i32]* %475, i64 0, i64 1
  %ECX.i1370 = bitcast %union.anon* %30 to i32*
  %478 = bitcast [32 x %union.VectorReg]* %18 to i32*
  br label %block_.L_40093d

block_.L_40093d:                                  ; preds = %block_400951, %block_.L_400907
  %479 = phi i32 [ %530, %block_400951 ], [ 0, %block_.L_400907 ]
  %480 = phi i64 [ %554, %block_400951 ], [ %473, %block_.L_400907 ]
  %481 = zext i32 %479 to i64
  store i64 %481, i64* %RAX.i291, align 8
  %482 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %483 = sub i32 %479, %482
  %484 = icmp ult i32 %479, %482
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %12, align 1
  %486 = and i32 %483, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %13, align 1
  %491 = xor i32 %482, %479
  %492 = xor i32 %491, %483
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %14, align 1
  %496 = icmp eq i32 %483, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %15, align 1
  %498 = lshr i32 %483, 31
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %16, align 1
  %500 = lshr i32 %479, 31
  %501 = lshr i32 %482, 31
  %502 = xor i32 %501, %500
  %503 = xor i32 %498, %500
  %504 = add nuw nsw i32 %503, %502
  %505 = icmp eq i32 %504, 2
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %17, align 1
  %507 = icmp ne i8 %499, 0
  %508 = xor i1 %507, %505
  %.v19 = select i1 %508, i64 20, i64 90
  %509 = add i64 %480, %.v19
  store i64 %509, i64* %3, align 8
  br i1 %508, label %block_400951, label %block_.L_400997

block_400951:                                     ; preds = %block_.L_40093d
  %510 = sext i32 %479 to i64
  store i64 %510, i64* %RAX.i291, align 8
  %511 = shl nsw i64 %510, 2
  %512 = add nsw i64 %511, 6468736
  %513 = add i64 %509, 17
  store i64 %513, i64* %PC.i, align 8
  %514 = inttoptr i64 %512 to float*
  %515 = inttoptr i64 %512 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %516, i32* %517, align 1
  store float 0.000000e+00, float* %24, align 1
  %518 = add i64 %509, 21
  store i64 %518, i64* %PC.i, align 8
  %519 = load i64, i64* %474, align 1
  %520 = trunc i64 %519 to i32
  store i32 %520, i32* %476, align 1
  store i32 0, i32* %477, align 1
  %521 = load i64, i64* %RCX.i373, align 8
  %522 = and i64 %521, 4294967295
  %523 = xor i64 %522, 2147483648
  store i64 %523, i64* %RCX.i373, align 8
  %524 = trunc i64 %523 to i32
  store i32 %524, i32* %478, align 1
  store i32 0, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %525 = add i64 %509, 48
  store i64 %525, i64* %PC.i, align 8
  %526 = load <2 x float>, <2 x float>* %60, align 1
  %527 = extractelement <2 x float> %526, i32 0
  store float %527, float* %514, align 4
  %528 = load i64, i64* %PC.i, align 8
  %529 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %530 = add i32 %529, 1
  %531 = zext i32 %530 to i64
  store i64 %531, i64* %RAX.i291, align 8
  %532 = icmp eq i32 %529, -1
  %533 = icmp eq i32 %530, 0
  %534 = or i1 %532, %533
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %12, align 1
  %536 = and i32 %530, 255
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536)
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %13, align 1
  %541 = xor i32 %529, %530
  %542 = lshr i32 %541, 4
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  store i8 %544, i8* %14, align 1
  %545 = icmp eq i32 %530, 0
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %15, align 1
  %547 = lshr i32 %530, 31
  %548 = trunc i32 %547 to i8
  store i8 %548, i8* %16, align 1
  %549 = lshr i32 %529, 31
  %550 = xor i32 %547, %549
  %551 = add nuw nsw i32 %550, %547
  %552 = icmp eq i32 %551, 2
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %17, align 1
  store i32 %530, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %554 = add i64 %528, -68
  store i64 %554, i64* %3, align 8
  br label %block_.L_40093d

block_.L_400997:                                  ; preds = %block_.L_40093d
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RSI.i265, align 8
  store i64 ptrtoint (%G__0x62bcf0_type* @G__0x62bcf0 to i64), i64* %R8.i856, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %R9.i, align 8
  %555 = zext i32 %482 to i64
  store i64 %555, i64* %RDI.i642, align 8
  store i64 %555, i64* %RDX.i386, align 8
  %556 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RCX.i373, align 8
  %558 = add i64 %509, 5753
  %559 = add i64 %509, 56
  %560 = load i64, i64* %6, align 8
  %561 = add i64 %560, -8
  %562 = inttoptr i64 %561 to i64*
  store i64 %559, i64* %562, align 8
  store i64 %561, i64* %6, align 8
  store i64 %558, i64* %3, align 8
  %call2_4009ca = tail call %struct.Memory* @sub_402010.dmxpy(%struct.State* %0, i64 %558, %struct.Memory* %call2_40092d)
  %563 = load i64, i64* %PC.i, align 8
  store i32 0, i32* %478, align 1
  store i32 0, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %564 = load i64, i64* %RBP.i, align 8
  %565 = add i64 %564, -28
  %566 = add i64 %563, 8
  store i64 %566, i64* %PC.i, align 8
  %567 = load <2 x float>, <2 x float>* %60, align 1
  %568 = extractelement <2 x float> %567, i32 0
  %569 = inttoptr i64 %565 to float*
  store float %568, float* %569, align 4
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -24
  %572 = load i64, i64* %PC.i, align 8
  %573 = add i64 %572, 5
  store i64 %573, i64* %PC.i, align 8
  %574 = load <2 x float>, <2 x float>* %60, align 1
  %575 = extractelement <2 x float> %574, i32 0
  %576 = inttoptr i64 %571 to float*
  store float %575, float* %576, align 4
  %577 = load i64, i64* %PC.i, align 8
  %578 = add i64 %577, 11
  store i64 %578, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %579 = bitcast %union.VectorReg* %195 to float*
  %580 = getelementptr inbounds i8, i8* %196, i64 4
  %581 = bitcast i8* %580 to float*
  %582 = bitcast i64* %198 to float*
  %583 = getelementptr inbounds i8, i8* %196, i64 12
  %584 = bitcast i8* %583 to float*
  %585 = bitcast %union.VectorReg* %195 to <2 x float>*
  %586 = bitcast %union.VectorReg* %208 to float*
  %587 = getelementptr inbounds i8, i8* %209, i64 4
  %588 = bitcast i8* %587 to float*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %590 = bitcast i64* %589 to float*
  %591 = getelementptr inbounds i8, i8* %209, i64 12
  %592 = bitcast i8* %591 to float*
  %593 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %208, i64 0, i32 0, i32 0, i32 0, i64 0
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %595 = bitcast %union.VectorReg* %195 to i32*
  %596 = bitcast i8* %580 to i32*
  %597 = bitcast i64* %198 to i32*
  %598 = bitcast i8* %583 to i32*
  %599 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %195, i64 0, i32 0, i32 0, i32 0, i64 0
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  br label %block_.L_4009e7

block_.L_4009e7:                                  ; preds = %block_.L_400aee, %block_.L_400997
  %601 = phi i32 [ 0, %block_.L_400997 ], [ %908, %block_.L_400aee ]
  %602 = phi i64 [ %578, %block_.L_400997 ], [ %932, %block_.L_400aee ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4009ca, %block_.L_400997 ], [ %835, %block_.L_400aee ]
  %603 = zext i32 %601 to i64
  store i64 %603, i64* %RAX.i291, align 8
  %604 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %605 = sub i32 %601, %604
  %606 = icmp ult i32 %601, %604
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %12, align 1
  %608 = and i32 %605, 255
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %13, align 1
  %613 = xor i32 %604, %601
  %614 = xor i32 %613, %605
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %14, align 1
  %618 = icmp eq i32 %605, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %15, align 1
  %620 = lshr i32 %605, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %16, align 1
  %622 = lshr i32 %601, 31
  %623 = lshr i32 %604, 31
  %624 = xor i32 %623, %622
  %625 = xor i32 %620, %622
  %626 = add nuw nsw i32 %625, %624
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %17, align 1
  %629 = icmp ne i8 %621, 0
  %630 = xor i1 %629, %627
  %.v20 = select i1 %630, i64 20, i64 302
  %631 = add i64 %602, %.v20
  store i64 %631, i64* %3, align 8
  br i1 %630, label %block_4009fb, label %block_.L_400b15

block_4009fb:                                     ; preds = %block_.L_4009e7
  %632 = load i64, i64* %RBP.i, align 8
  %633 = add i64 %632, -28
  %634 = add i64 %631, 5
  store i64 %634, i64* %PC.i, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %636, i32* %637, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %638 = load <2 x float>, <2 x float>* %60, align 1
  %639 = extractelement <2 x float> %638, i32 0
  %640 = fpext float %639 to double
  store double %640, double* %193, align 1
  %641 = sext i32 %601 to i64
  store i64 %641, i64* %RAX.i291, align 8
  %642 = shl nsw i64 %641, 2
  %643 = add nsw i64 %642, 6468736
  %644 = add i64 %631, 26
  store i64 %644, i64* %PC.i, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = bitcast %union.VectorReg* %195 to i32*
  store i32 %646, i32* %647, align 1
  store float 0.000000e+00, float* %581, align 1
  store float 0.000000e+00, float* %582, align 1
  store float 0.000000e+00, float* %584, align 1
  %648 = load <2 x float>, <2 x float>* %585, align 1
  %649 = extractelement <2 x float> %648, i32 0
  %650 = fpext float %649 to double
  %651 = load i32, i32* bitcast (%G_0x2500__rip__type* @G_0x2500__rip_ to i32*), align 8
  %652 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__type* @G_0x2500__rip_ to i64), i64 4) to i32*), align 4
  %653 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__type* @G_0x2500__rip_ to i64), i64 8) to i32*), align 8
  %654 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__type* @G_0x2500__rip_ to i64), i64 12) to i32*), align 4
  %655 = bitcast %union.VectorReg* %208 to i32*
  store i32 %651, i32* %655, align 1
  %656 = bitcast i8* %587 to i32*
  store i32 %652, i32* %656, align 1
  %657 = bitcast i64* %589 to i32*
  store i32 %653, i32* %657, align 1
  %658 = bitcast i8* %591 to i32*
  store i32 %654, i32* %658, align 1
  %659 = bitcast double %650 to i64
  %660 = load i64, i64* %198, align 1
  %661 = load i64, i64* %593, align 1
  %662 = load i64, i64* %594, align 1
  %663 = and i64 %661, %659
  %664 = and i64 %662, %660
  %665 = trunc i64 %663 to i32
  %666 = lshr i64 %663, 32
  %667 = trunc i64 %666 to i32
  store i32 %665, i32* %595, align 1
  store i32 %667, i32* %596, align 1
  %668 = trunc i64 %664 to i32
  store i32 %668, i32* %597, align 1
  %669 = lshr i64 %664, 32
  %670 = trunc i64 %669 to i32
  store i32 %670, i32* %598, align 1
  %671 = add i64 %631, 45
  store i64 %671, i64* %PC.i, align 8
  %672 = load double, double* %228, align 1
  %673 = fcmp uno double %640, %672
  br i1 %673, label %674, label %684

; <label>:674:                                    ; preds = %block_4009fb
  %675 = fadd double %640, %672
  %676 = bitcast double %675 to i64
  %677 = and i64 %676, 9221120237041090560
  %678 = icmp eq i64 %677, 9218868437227405312
  %679 = and i64 %676, 2251799813685247
  %680 = icmp ne i64 %679, 0
  %681 = and i1 %678, %680
  br i1 %681, label %682, label %690

; <label>:682:                                    ; preds = %674
  %683 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %671, %struct.Memory* %MEMORY.2)
  %.pre = load i64, i64* %PC.i, align 8
  %.pre2 = load i8, i8* %12, align 1
  %.pre3 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1308

; <label>:684:                                    ; preds = %block_4009fb
  %685 = fcmp ogt double %640, %672
  br i1 %685, label %690, label %686

; <label>:686:                                    ; preds = %684
  %687 = fcmp olt double %640, %672
  br i1 %687, label %690, label %688

; <label>:688:                                    ; preds = %686
  %689 = fcmp oeq double %640, %672
  br i1 %689, label %690, label %694

; <label>:690:                                    ; preds = %688, %686, %684, %674
  %691 = phi i8 [ 0, %684 ], [ 0, %686 ], [ 1, %688 ], [ 1, %674 ]
  %692 = phi i8 [ 0, %684 ], [ 0, %686 ], [ 0, %688 ], [ 1, %674 ]
  %693 = phi i8 [ 0, %684 ], [ 1, %686 ], [ 0, %688 ], [ 1, %674 ]
  store i8 %691, i8* %15, align 1
  store i8 %692, i8* %13, align 1
  store i8 %693, i8* %12, align 1
  br label %694

; <label>:694:                                    ; preds = %690, %688
  %695 = phi i8 [ %691, %690 ], [ %619, %688 ]
  %696 = phi i8 [ %693, %690 ], [ %607, %688 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1308

routine_ucomisd__xmm1___xmm0.exit1308:            ; preds = %694, %682
  %697 = phi i8 [ %.pre3, %682 ], [ %695, %694 ]
  %698 = phi i8 [ %.pre2, %682 ], [ %696, %694 ]
  %699 = phi i64 [ %.pre, %682 ], [ %671, %694 ]
  %700 = phi %struct.Memory* [ %683, %682 ], [ %MEMORY.2, %694 ]
  %701 = or i8 %697, %698
  %702 = icmp ne i8 %701, 0
  %.v21 = select i1 %702, i64 28, i64 6
  %703 = add i64 %699, %.v21
  store i64 %703, i64* %3, align 8
  br i1 %702, label %block_.L_400a44, label %block_400a2e

block_400a2e:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit1308
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -28
  %706 = add i64 %703, 5
  store i64 %706, i64* %PC.i, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %708, i32* %709, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %710 = load <2 x float>, <2 x float>* %60, align 1
  %711 = extractelement <2 x float> %710, i32 0
  %712 = fpext float %711 to double
  store double %712, double* %193, align 1
  %713 = add i64 %704, -896
  %714 = add i64 %703, 17
  store i64 %714, i64* %PC.i, align 8
  %715 = inttoptr i64 %713 to double*
  store double %712, double* %715, align 8
  %716 = load i64, i64* %PC.i, align 8
  %717 = add i64 %716, 45
  store i64 %717, i64* %3, align 8
  br label %block_.L_400a6c

block_.L_400a44:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit1308
  %718 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %719 = sext i32 %718 to i64
  store i64 %719, i64* %RAX.i291, align 8
  %720 = shl nsw i64 %719, 2
  %721 = add nsw i64 %720, 6468736
  %722 = add i64 %703, 17
  store i64 %722, i64* %PC.i, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %724, i32* %725, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %726 = load <2 x float>, <2 x float>* %60, align 1
  %727 = extractelement <2 x float> %726, i32 0
  %728 = fpext float %727 to double
  %729 = load i32, i32* bitcast (%G_0x24c0__rip__type* @G_0x24c0__rip_ to i32*), align 8
  %730 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__type* @G_0x24c0__rip_ to i64), i64 4) to i32*), align 4
  %731 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__type* @G_0x24c0__rip_ to i64), i64 8) to i32*), align 8
  %732 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__type* @G_0x24c0__rip_ to i64), i64 12) to i32*), align 4
  %733 = bitcast %union.VectorReg* %195 to i32*
  store i32 %729, i32* %733, align 1
  %734 = bitcast i8* %580 to i32*
  store i32 %730, i32* %734, align 1
  %735 = bitcast i64* %198 to i32*
  store i32 %731, i32* %735, align 1
  %736 = bitcast i8* %583 to i32*
  store i32 %732, i32* %736, align 1
  %737 = bitcast double %728 to i64
  %738 = load i64, i64* %25, align 1
  %739 = load i64, i64* %599, align 1
  %740 = load i64, i64* %600, align 1
  %741 = and i64 %739, %737
  %742 = and i64 %740, %738
  %743 = trunc i64 %741 to i32
  %744 = lshr i64 %741, 32
  %745 = trunc i64 %744 to i32
  store i32 %743, i32* %478, align 1
  store i32 %745, i32* %260, align 1
  %746 = trunc i64 %742 to i32
  store i32 %746, i32* %262, align 1
  %747 = lshr i64 %742, 32
  %748 = trunc i64 %747 to i32
  store i32 %748, i32* %264, align 1
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -896
  %751 = add i64 %703, 40
  store i64 %751, i64* %PC.i, align 8
  %752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %753 = load i64, i64* %752, align 1
  %754 = inttoptr i64 %750 to i64*
  store i64 %753, i64* %754, align 8
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400a6c

block_.L_400a6c:                                  ; preds = %block_.L_400a44, %block_400a2e
  %755 = phi i64 [ %.pre4, %block_.L_400a44 ], [ %717, %block_400a2e ]
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -896
  %758 = add i64 %755, 8
  store i64 %758, i64* %PC.i, align 8
  %759 = inttoptr i64 %757 to double*
  %760 = load double, double* %759, align 8
  %761 = bitcast double %760 to <2 x i32>
  %762 = fptrunc double %760 to float
  store float %762, float* %21, align 1
  %763 = extractelement <2 x i32> %761, i32 1
  store i32 %763, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %764 = add i64 %756, -28
  %765 = add i64 %755, 17
  store i64 %765, i64* %PC.i, align 8
  %766 = load <2 x float>, <2 x float>* %60, align 1
  %767 = extractelement <2 x float> %766, i32 0
  %768 = inttoptr i64 %764 to float*
  store float %767, float* %768, align 4
  %769 = load i64, i64* %RBP.i, align 8
  %770 = add i64 %769, -24
  %771 = load i64, i64* %PC.i, align 8
  %772 = add i64 %771, 5
  store i64 %772, i64* %PC.i, align 8
  %773 = inttoptr i64 %770 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %774, i32* %775, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %776 = load <2 x float>, <2 x float>* %60, align 1
  %777 = extractelement <2 x float> %776, i32 0
  %778 = fpext float %777 to double
  store double %778, double* %193, align 1
  %779 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %780 = sext i32 %779 to i64
  store i64 %780, i64* %RAX.i291, align 8
  %781 = shl nsw i64 %780, 2
  %782 = add nsw i64 %781, 6470896
  %783 = add i64 %771, 26
  store i64 %783, i64* %PC.i, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = bitcast %union.VectorReg* %195 to i32*
  store i32 %785, i32* %786, align 1
  store float 0.000000e+00, float* %581, align 1
  store float 0.000000e+00, float* %582, align 1
  store float 0.000000e+00, float* %584, align 1
  %787 = load <2 x float>, <2 x float>* %585, align 1
  %788 = extractelement <2 x float> %787, i32 0
  %789 = fpext float %788 to double
  %790 = load i32, i32* bitcast (%G_0x247e__rip__type* @G_0x247e__rip_ to i32*), align 8
  %791 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__type* @G_0x247e__rip_ to i64), i64 4) to i32*), align 4
  %792 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__type* @G_0x247e__rip_ to i64), i64 8) to i32*), align 8
  %793 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__type* @G_0x247e__rip_ to i64), i64 12) to i32*), align 4
  %794 = bitcast %union.VectorReg* %208 to i32*
  store i32 %790, i32* %794, align 1
  %795 = bitcast i8* %587 to i32*
  store i32 %791, i32* %795, align 1
  %796 = bitcast i64* %589 to i32*
  store i32 %792, i32* %796, align 1
  %797 = bitcast i8* %591 to i32*
  store i32 %793, i32* %797, align 1
  %798 = bitcast double %789 to i64
  %799 = load i64, i64* %198, align 1
  %800 = load i64, i64* %593, align 1
  %801 = load i64, i64* %594, align 1
  %802 = and i64 %800, %798
  %803 = and i64 %801, %799
  %804 = trunc i64 %802 to i32
  %805 = lshr i64 %802, 32
  %806 = trunc i64 %805 to i32
  store i32 %804, i32* %595, align 1
  store i32 %806, i32* %596, align 1
  %807 = trunc i64 %803 to i32
  store i32 %807, i32* %597, align 1
  %808 = lshr i64 %803, 32
  %809 = trunc i64 %808 to i32
  store i32 %809, i32* %598, align 1
  %810 = add i64 %771, 45
  store i64 %810, i64* %PC.i, align 8
  %811 = load double, double* %228, align 1
  %812 = fcmp uno double %778, %811
  br i1 %812, label %813, label %823

; <label>:813:                                    ; preds = %block_.L_400a6c
  %814 = fadd double %778, %811
  %815 = bitcast double %814 to i64
  %816 = and i64 %815, 9221120237041090560
  %817 = icmp eq i64 %816, 9218868437227405312
  %818 = and i64 %815, 2251799813685247
  %819 = icmp ne i64 %818, 0
  %820 = and i1 %817, %819
  br i1 %820, label %821, label %829

; <label>:821:                                    ; preds = %813
  %822 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %810, %struct.Memory* %700)
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:823:                                    ; preds = %block_.L_400a6c
  %824 = fcmp ogt double %778, %811
  br i1 %824, label %829, label %825

; <label>:825:                                    ; preds = %823
  %826 = fcmp olt double %778, %811
  br i1 %826, label %829, label %827

; <label>:827:                                    ; preds = %825
  %828 = fcmp oeq double %778, %811
  br i1 %828, label %829, label %833

; <label>:829:                                    ; preds = %827, %825, %823, %813
  %830 = phi i8 [ 0, %823 ], [ 0, %825 ], [ 1, %827 ], [ 1, %813 ]
  %831 = phi i8 [ 0, %823 ], [ 0, %825 ], [ 0, %827 ], [ 1, %813 ]
  %832 = phi i8 [ 0, %823 ], [ 1, %825 ], [ 0, %827 ], [ 1, %813 ]
  store i8 %830, i8* %15, align 1
  store i8 %831, i8* %13, align 1
  store i8 %832, i8* %12, align 1
  br label %833

; <label>:833:                                    ; preds = %829, %827
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %833, %821
  %834 = phi i64 [ %.pre5, %821 ], [ %810, %833 ]
  %835 = phi %struct.Memory* [ %822, %821 ], [ %700, %833 ]
  %836 = load i8, i8* %12, align 1
  %837 = load i8, i8* %15, align 1
  %838 = or i8 %837, %836
  %839 = icmp ne i8 %838, 0
  %.v22 = select i1 %839, i64 28, i64 6
  %840 = add i64 %834, %.v22
  store i64 %840, i64* %3, align 8
  br i1 %839, label %block_.L_400ac6, label %block_400ab0

block_400ab0:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %841 = load i64, i64* %RBP.i, align 8
  %842 = add i64 %841, -24
  %843 = add i64 %840, 5
  store i64 %843, i64* %PC.i, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %845, i32* %846, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %847 = load <2 x float>, <2 x float>* %60, align 1
  %848 = extractelement <2 x float> %847, i32 0
  %849 = fpext float %848 to double
  store double %849, double* %193, align 1
  %850 = add i64 %841, -904
  %851 = add i64 %840, 17
  store i64 %851, i64* %PC.i, align 8
  %852 = inttoptr i64 %850 to double*
  store double %849, double* %852, align 8
  %853 = load i64, i64* %PC.i, align 8
  %854 = add i64 %853, 45
  store i64 %854, i64* %3, align 8
  br label %block_.L_400aee

block_.L_400ac6:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %855 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %856 = sext i32 %855 to i64
  store i64 %856, i64* %RAX.i291, align 8
  %857 = shl nsw i64 %856, 2
  %858 = add nsw i64 %857, 6470896
  %859 = add i64 %840, 17
  store i64 %859, i64* %PC.i, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %861, i32* %862, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %863 = load <2 x float>, <2 x float>* %60, align 1
  %864 = extractelement <2 x float> %863, i32 0
  %865 = fpext float %864 to double
  %866 = load i32, i32* bitcast (%G_0x243e__rip__type* @G_0x243e__rip_ to i32*), align 8
  %867 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__type* @G_0x243e__rip_ to i64), i64 4) to i32*), align 4
  %868 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__type* @G_0x243e__rip_ to i64), i64 8) to i32*), align 8
  %869 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__type* @G_0x243e__rip_ to i64), i64 12) to i32*), align 4
  %870 = bitcast %union.VectorReg* %195 to i32*
  store i32 %866, i32* %870, align 1
  %871 = bitcast i8* %580 to i32*
  store i32 %867, i32* %871, align 1
  %872 = bitcast i64* %198 to i32*
  store i32 %868, i32* %872, align 1
  %873 = bitcast i8* %583 to i32*
  store i32 %869, i32* %873, align 1
  %874 = bitcast double %865 to i64
  %875 = load i64, i64* %25, align 1
  %876 = load i64, i64* %599, align 1
  %877 = load i64, i64* %600, align 1
  %878 = and i64 %876, %874
  %879 = and i64 %877, %875
  %880 = trunc i64 %878 to i32
  %881 = lshr i64 %878, 32
  %882 = trunc i64 %881 to i32
  store i32 %880, i32* %478, align 1
  store i32 %882, i32* %260, align 1
  %883 = trunc i64 %879 to i32
  store i32 %883, i32* %262, align 1
  %884 = lshr i64 %879, 32
  %885 = trunc i64 %884 to i32
  store i32 %885, i32* %264, align 1
  %886 = load i64, i64* %RBP.i, align 8
  %887 = add i64 %886, -904
  %888 = add i64 %840, 40
  store i64 %888, i64* %PC.i, align 8
  %889 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %890 = load i64, i64* %889, align 1
  %891 = inttoptr i64 %887 to i64*
  store i64 %890, i64* %891, align 8
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400aee

block_.L_400aee:                                  ; preds = %block_.L_400ac6, %block_400ab0
  %892 = phi i64 [ %.pre6, %block_.L_400ac6 ], [ %854, %block_400ab0 ]
  %893 = load i64, i64* %RBP.i, align 8
  %894 = add i64 %893, -904
  %895 = add i64 %892, 8
  store i64 %895, i64* %PC.i, align 8
  %896 = inttoptr i64 %894 to double*
  %897 = load double, double* %896, align 8
  %898 = bitcast double %897 to <2 x i32>
  %899 = fptrunc double %897 to float
  store float %899, float* %21, align 1
  %900 = extractelement <2 x i32> %898, i32 1
  store i32 %900, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %901 = add i64 %893, -24
  %902 = add i64 %892, 17
  store i64 %902, i64* %PC.i, align 8
  %903 = load <2 x float>, <2 x float>* %60, align 1
  %904 = extractelement <2 x float> %903, i32 0
  %905 = inttoptr i64 %901 to float*
  store float %904, float* %905, align 4
  %906 = load i64, i64* %PC.i, align 8
  %907 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %908 = add i32 %907, 1
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX.i291, align 8
  %910 = icmp eq i32 %907, -1
  %911 = icmp eq i32 %908, 0
  %912 = or i1 %910, %911
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %12, align 1
  %914 = and i32 %908, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %13, align 1
  %919 = xor i32 %907, %908
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %14, align 1
  %923 = icmp eq i32 %908, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %15, align 1
  %925 = lshr i32 %908, 31
  %926 = trunc i32 %925 to i8
  store i8 %926, i8* %16, align 1
  %927 = lshr i32 %907, 31
  %928 = xor i32 %925, %927
  %929 = add nuw nsw i32 %928, %925
  %930 = icmp eq i32 %929, 2
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %17, align 1
  store i32 %908, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %932 = add i64 %906, -280
  store i64 %932, i64* %3, align 8
  br label %block_.L_4009e7

block_.L_400b15:                                  ; preds = %block_.L_4009e7
  %933 = load i32, i32* bitcast (%G_0x23af__rip__type* @G_0x23af__rip_ to i32*), align 8
  %934 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %933, i32* %934, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %935 = add i64 %631, 7419
  %936 = add i64 %631, 13
  %937 = load i64, i64* %6, align 8
  %938 = add i64 %937, -8
  %939 = inttoptr i64 %938 to i64*
  store i64 %936, i64* %939, align 8
  store i64 %938, i64* %6, align 8
  store i64 %935, i64* %3, align 8
  %call2_400b1d = tail call %struct.Memory* @sub_402810.epslon(%struct.State* %0, i64 %935, %struct.Memory* %MEMORY.2)
  %940 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x402fd4_type* @G__0x402fd4 to i64), i64* %RSI.i265, align 8
  %941 = load i32, i32* bitcast (%G_0x2398__rip__type* @G_0x2398__rip_ to i32*), align 8
  %942 = bitcast %union.VectorReg* %195 to i32*
  store i32 %941, i32* %942, align 1
  store float 0.000000e+00, float* %581, align 1
  store float 0.000000e+00, float* %582, align 1
  store float 0.000000e+00, float* %584, align 1
  %943 = load i64, i64* %RBP.i, align 8
  %944 = add i64 %943, -36
  %945 = add i64 %940, 23
  store i64 %945, i64* %PC.i, align 8
  %946 = load <2 x float>, <2 x float>* %60, align 1
  %947 = extractelement <2 x float> %946, i32 0
  %948 = inttoptr i64 %944 to float*
  store float %947, float* %948, align 4
  %949 = load i64, i64* %RBP.i, align 8
  %950 = add i64 %949, -28
  %951 = load i64, i64* %PC.i, align 8
  %952 = add i64 %951, 5
  store i64 %952, i64* %PC.i, align 8
  %953 = inttoptr i64 %950 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %954, i32* %955, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %956 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RAX.i291, align 8
  %958 = bitcast %union.VectorReg* %208 to <2 x i32>*
  %959 = load <2 x i32>, <2 x i32>* %958, align 1
  %960 = bitcast i64* %589 to <2 x i32>*
  %961 = load <2 x i32>, <2 x i32>* %960, align 1
  %962 = sitofp i32 %956 to float
  store float %962, float* %586, align 1
  %963 = extractelement <2 x i32> %959, i32 1
  %964 = bitcast i8* %587 to i32*
  store i32 %963, i32* %964, align 1
  %965 = extractelement <2 x i32> %961, i32 0
  %966 = bitcast i64* %589 to i32*
  store i32 %965, i32* %966, align 1
  %967 = extractelement <2 x i32> %961, i32 1
  %968 = bitcast i8* %591 to i32*
  store i32 %967, i32* %968, align 1
  %969 = add i64 %949, -20
  %970 = add i64 %951, 21
  store i64 %970, i64* %PC.i, align 8
  %971 = bitcast %union.VectorReg* %208 to <2 x float>*
  %972 = load <2 x float>, <2 x float>* %971, align 1
  %973 = load <2 x i32>, <2 x i32>* %960, align 1
  %974 = inttoptr i64 %969 to float*
  %975 = load float, float* %974, align 4
  %976 = extractelement <2 x float> %972, i32 0
  %977 = fmul float %976, %975
  store float %977, float* %586, align 1
  %978 = bitcast <2 x float> %972 to <2 x i32>
  %979 = extractelement <2 x i32> %978, i32 1
  store i32 %979, i32* %964, align 1
  %980 = extractelement <2 x i32> %973, i32 0
  store i32 %980, i32* %966, align 1
  %981 = extractelement <2 x i32> %973, i32 1
  store i32 %981, i32* %968, align 1
  %982 = add i64 %949, -24
  %983 = add i64 %951, 26
  store i64 %983, i64* %PC.i, align 8
  %984 = load <2 x float>, <2 x float>* %971, align 1
  %985 = load <2 x i32>, <2 x i32>* %960, align 1
  %986 = inttoptr i64 %982 to float*
  %987 = load float, float* %986, align 4
  %988 = extractelement <2 x float> %984, i32 0
  %989 = fmul float %988, %987
  store float %989, float* %586, align 1
  %990 = bitcast <2 x float> %984 to <2 x i32>
  %991 = extractelement <2 x i32> %990, i32 1
  store i32 %991, i32* %964, align 1
  %992 = extractelement <2 x i32> %985, i32 0
  store i32 %992, i32* %966, align 1
  %993 = extractelement <2 x i32> %985, i32 1
  store i32 %993, i32* %968, align 1
  %994 = add i64 %949, -36
  %995 = add i64 %951, 31
  store i64 %995, i64* %PC.i, align 8
  %996 = load <2 x float>, <2 x float>* %971, align 1
  %997 = load <2 x i32>, <2 x i32>* %960, align 1
  %998 = inttoptr i64 %994 to float*
  %999 = load float, float* %998, align 4
  %1000 = extractelement <2 x float> %996, i32 0
  %1001 = fmul float %1000, %999
  store float %1001, float* %586, align 1
  %1002 = bitcast <2 x float> %996 to <2 x i32>
  %1003 = extractelement <2 x i32> %1002, i32 1
  store i32 %1003, i32* %964, align 1
  %1004 = extractelement <2 x i32> %997, i32 0
  store i32 %1004, i32* %966, align 1
  %1005 = extractelement <2 x i32> %997, i32 1
  store i32 %1005, i32* %968, align 1
  %1006 = load <2 x float>, <2 x float>* %320, align 1
  %1007 = load <2 x i32>, <2 x i32>* %257, align 1
  %1008 = bitcast %union.VectorReg* %208 to <2 x float>*
  %1009 = load <2 x float>, <2 x float>* %1008, align 1
  %1010 = extractelement <2 x float> %1006, i32 0
  %1011 = extractelement <2 x float> %1009, i32 0
  %1012 = fdiv float %1010, %1011
  store float %1012, float* %21, align 1
  %1013 = bitcast <2 x float> %1006 to <2 x i32>
  %1014 = extractelement <2 x i32> %1013, i32 1
  store i32 %1014, i32* %260, align 1
  %1015 = extractelement <2 x i32> %1007, i32 0
  store i32 %1015, i32* %262, align 1
  %1016 = extractelement <2 x i32> %1007, i32 1
  store i32 %1016, i32* %264, align 1
  %1017 = load i64, i64* %RBP.i, align 8
  %1018 = add i64 %1017, -32
  %1019 = add i64 %951, 40
  store i64 %1019, i64* %PC.i, align 8
  %1020 = load <2 x float>, <2 x float>* %60, align 1
  %1021 = extractelement <2 x float> %1020, i32 0
  %1022 = inttoptr i64 %1018 to float*
  store float %1021, float* %1022, align 4
  %1023 = load i64, i64* %RBP.i, align 8
  %1024 = add i64 %1023, -36
  %1025 = load i64, i64* %PC.i, align 8
  %1026 = add i64 %1025, 5
  store i64 %1026, i64* %PC.i, align 8
  %1027 = inttoptr i64 %1024 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %1028, i32* %1029, align 1
  store float 0.000000e+00, float* %24, align 1
  %1030 = add i64 %1023, -48
  %1031 = add i64 %1025, 10
  store i64 %1031, i64* %PC.i, align 8
  %1032 = load <2 x float>, <2 x float>* %60, align 1
  %1033 = extractelement <2 x float> %1032, i32 0
  %1034 = inttoptr i64 %1030 to float*
  store float %1033, float* %1034, align 4
  %1035 = load i64, i64* %PC.i, align 8
  %1036 = load i32, i32* bitcast (%G_0x62bcf0_type* @G_0x62bcf0 to i32*), align 8
  %1037 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %1036, i32* %1037, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1038 = load <2 x float>, <2 x float>* %320, align 1
  %1039 = load <2 x i32>, <2 x i32>* %257, align 1
  %1040 = load <2 x float>, <2 x float>* %585, align 1
  %1041 = extractelement <2 x float> %1038, i32 0
  %1042 = extractelement <2 x float> %1040, i32 0
  %1043 = fsub float %1041, %1042
  store float %1043, float* %21, align 1
  %1044 = bitcast <2 x float> %1038 to <2 x i32>
  %1045 = extractelement <2 x i32> %1044, i32 1
  store i32 %1045, i32* %260, align 1
  %1046 = extractelement <2 x i32> %1039, i32 0
  store i32 %1046, i32* %262, align 1
  %1047 = extractelement <2 x i32> %1039, i32 1
  store i32 %1047, i32* %264, align 1
  %1048 = load i64, i64* %RBP.i, align 8
  %1049 = add i64 %1048, -52
  %1050 = add i64 %1035, 18
  store i64 %1050, i64* %PC.i, align 8
  %1051 = load <2 x float>, <2 x float>* %60, align 1
  %1052 = extractelement <2 x float> %1051, i32 0
  %1053 = inttoptr i64 %1049 to float*
  store float %1052, float* %1053, align 4
  %1054 = load i64, i64* %PC.i, align 8
  %1055 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1056 = add i32 %1055, -1
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RAX.i291, align 8
  %1058 = icmp eq i32 %1055, 0
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %12, align 1
  %1060 = and i32 %1056, 255
  %1061 = tail call i32 @llvm.ctpop.i32(i32 %1060)
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  store i8 %1064, i8* %13, align 1
  %1065 = xor i32 %1055, %1056
  %1066 = lshr i32 %1065, 4
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  store i8 %1068, i8* %14, align 1
  %1069 = icmp eq i32 %1056, 0
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %15, align 1
  %1071 = lshr i32 %1056, 31
  %1072 = trunc i32 %1071 to i8
  store i8 %1072, i8* %16, align 1
  %1073 = lshr i32 %1055, 31
  %1074 = xor i32 %1071, %1073
  %1075 = add nuw nsw i32 %1074, %1073
  %1076 = icmp eq i32 %1075, 2
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %17, align 1
  %1078 = sext i32 %1056 to i64
  store i64 %1078, i64* %RCX.i373, align 8
  %1079 = shl nsw i64 %1078, 2
  %1080 = add nsw i64 %1079, 6470896
  %1081 = add i64 %1054, 22
  store i64 %1081, i64* %PC.i, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %1083, i32* %1084, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1085 = load <2 x float>, <2 x float>* %320, align 1
  %1086 = load <2 x i32>, <2 x i32>* %257, align 1
  %1087 = load <2 x float>, <2 x float>* %585, align 1
  %1088 = extractelement <2 x float> %1085, i32 0
  %1089 = extractelement <2 x float> %1087, i32 0
  %1090 = fsub float %1088, %1089
  store float %1090, float* %21, align 1
  %1091 = bitcast <2 x float> %1085 to <2 x i32>
  %1092 = extractelement <2 x i32> %1091, i32 1
  store i32 %1092, i32* %260, align 1
  %1093 = extractelement <2 x i32> %1086, i32 0
  store i32 %1093, i32* %262, align 1
  %1094 = extractelement <2 x i32> %1086, i32 1
  store i32 %1094, i32* %264, align 1
  %1095 = load i64, i64* %RBP.i, align 8
  %1096 = add i64 %1095, -56
  %1097 = add i64 %1054, 31
  store i64 %1097, i64* %PC.i, align 8
  %1098 = load <2 x float>, <2 x float>* %60, align 1
  %1099 = extractelement <2 x float> %1098, i32 0
  %1100 = inttoptr i64 %1096 to float*
  store float %1099, float* %1100, align 4
  %1101 = load i64, i64* %PC.i, align 8
  %1102 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1102, i64* %RDI.i642, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1103 = add i64 %1101, -1756
  %1104 = add i64 %1101, 15
  %1105 = load i64, i64* %6, align 8
  %1106 = add i64 %1105, -8
  %1107 = inttoptr i64 %1106 to i64*
  store i64 %1104, i64* %1107, align 8
  store i64 %1106, i64* %6, align 8
  store i64 %1103, i64* %3, align 8
  %1108 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400b1d)
  %1109 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x402ffb_type* @G__0x402ffb to i64), i64* %RSI.i265, align 8
  %1110 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1110, i64* %RDI.i642, align 8
  %1111 = load i64, i64* %RBP.i, align 8
  %1112 = add i64 %1111, -908
  %1113 = load i32, i32* %EAX.i1578, align 4
  %1114 = add i64 %1109, 24
  store i64 %1114, i64* %PC.i, align 8
  %1115 = inttoptr i64 %1112 to i32*
  store i32 %1113, i32* %1115, align 4
  %1116 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1117 = add i64 %1116, -1795
  %1118 = add i64 %1116, 7
  %1119 = load i64, i64* %6, align 8
  %1120 = add i64 %1119, -8
  %1121 = inttoptr i64 %1120 to i64*
  store i64 %1118, i64* %1121, align 8
  store i64 %1120, i64* %6, align 8
  store i64 %1117, i64* %3, align 8
  %1122 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1108)
  %1123 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x40301e_type* @G__0x40301e to i64), i64* %RSI.i265, align 8
  %1124 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1124, i64* %RDI.i642, align 8
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -32
  %1127 = add i64 %1123, 23
  store i64 %1127, i64* %PC.i, align 8
  %1128 = inttoptr i64 %1126 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %1129, i32* %1130, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1131 = load <2 x float>, <2 x float>* %60, align 1
  %1132 = extractelement <2 x float> %1131, i32 0
  %1133 = fpext float %1132 to double
  store double %1133, double* %193, align 1
  %1134 = add i64 %1125, -28
  %1135 = add i64 %1123, 32
  store i64 %1135, i64* %PC.i, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = bitcast %union.VectorReg* %195 to i32*
  store i32 %1137, i32* %1138, align 1
  store float 0.000000e+00, float* %581, align 1
  store float 0.000000e+00, float* %582, align 1
  store float 0.000000e+00, float* %584, align 1
  %1139 = load <2 x float>, <2 x float>* %585, align 1
  %1140 = extractelement <2 x float> %1139, i32 0
  %1141 = fpext float %1140 to double
  store double %1141, double* %197, align 1
  %1142 = add i64 %1125, -48
  %1143 = add i64 %1123, 41
  store i64 %1143, i64* %PC.i, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = bitcast %union.VectorReg* %208 to i32*
  store i32 %1145, i32* %1146, align 1
  store float 0.000000e+00, float* %588, align 1
  store float 0.000000e+00, float* %590, align 1
  store float 0.000000e+00, float* %592, align 1
  %1147 = load <2 x float>, <2 x float>* %1008, align 1
  %1148 = extractelement <2 x float> %1147, i32 0
  %1149 = fpext float %1148 to double
  store double %1149, double* %212, align 1
  %1150 = add i64 %1125, -52
  %1151 = add i64 %1123, 50
  store i64 %1151, i64* %PC.i, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = bitcast %union.VectorReg* %213 to float*
  %1155 = bitcast %union.VectorReg* %213 to i32*
  store i32 %1153, i32* %1155, align 1
  %1156 = bitcast i8* %219 to float*
  store float 0.000000e+00, float* %1156, align 1
  %1157 = bitcast i64* %221 to float*
  store float 0.000000e+00, float* %1157, align 1
  %1158 = bitcast i8* %223 to float*
  store float 0.000000e+00, float* %1158, align 1
  %1159 = bitcast %union.VectorReg* %213 to <2 x float>*
  %1160 = load <2 x float>, <2 x float>* %1159, align 1
  %1161 = extractelement <2 x float> %1160, i32 0
  %1162 = fpext float %1161 to double
  store double %1162, double* %225, align 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %1164 = bitcast %union.VectorReg* %1163 to i8*
  %1165 = add i64 %1125, -56
  %1166 = add i64 %1123, 59
  store i64 %1166, i64* %PC.i, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = bitcast %union.VectorReg* %1163 to i32*
  store i32 %1168, i32* %1169, align 1
  %1170 = getelementptr inbounds i8, i8* %1164, i64 4
  %1171 = bitcast i8* %1170 to float*
  store float 0.000000e+00, float* %1171, align 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %1173 = bitcast i64* %1172 to float*
  store float 0.000000e+00, float* %1173, align 1
  %1174 = getelementptr inbounds i8, i8* %1164, i64 12
  %1175 = bitcast i8* %1174 to float*
  store float 0.000000e+00, float* %1175, align 1
  %1176 = bitcast %union.VectorReg* %1163 to <2 x float>*
  %1177 = load <2 x float>, <2 x float>* %1176, align 1
  %1178 = extractelement <2 x float> %1177, i32 0
  %1179 = fpext float %1178 to double
  %1180 = bitcast %union.VectorReg* %1163 to double*
  store double %1179, double* %1180, align 1
  %1181 = add i64 %1125, -912
  %1182 = load i32, i32* %EAX.i1578, align 4
  %1183 = add i64 %1123, 69
  store i64 %1183, i64* %PC.i, align 8
  %1184 = inttoptr i64 %1181 to i32*
  store i32 %1182, i32* %1184, align 4
  %1185 = load i64, i64* %PC.i, align 8
  store i8 5, i8* %AL.i1589, align 1
  %1186 = add i64 %1185, -1871
  %1187 = add i64 %1185, 7
  %1188 = load i64, i64* %6, align 8
  %1189 = add i64 %1188, -8
  %1190 = inttoptr i64 %1189 to i64*
  store i64 %1187, i64* %1190, align 8
  store i64 %1189, i64* %6, align 8
  store i64 %1186, i64* %3, align 8
  %1191 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1122)
  %1192 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x40303f_type* @G__0x40303f to i64), i64* %RSI.i265, align 8
  %1193 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1193, i64* %RDI.i642, align 8
  %1194 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1195 = zext i32 %1194 to i64
  store i64 %1195, i64* %RDX.i386, align 8
  %1196 = load i64, i64* %RBP.i, align 8
  %1197 = add i64 %1196, -916
  %1198 = load i32, i32* %EAX.i1578, align 4
  %1199 = add i64 %1192, 31
  store i64 %1199, i64* %PC.i, align 8
  %1200 = inttoptr i64 %1197 to i32*
  store i32 %1198, i32* %1200, align 4
  %1201 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1202 = add i64 %1201, -1909
  %1203 = add i64 %1201, 7
  %1204 = load i64, i64* %6, align 8
  %1205 = add i64 %1204, -8
  %1206 = inttoptr i64 %1205 to i64*
  store i64 %1203, i64* %1206, align 8
  store i64 %1205, i64* %6, align 8
  store i64 %1202, i64* %3, align 8
  %1207 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1191)
  %1208 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x403074_type* @G__0x403074 to i64), i64* %RSI.i265, align 8
  %1209 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1209, i64* %RDI.i642, align 8
  %1210 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1211 = zext i32 %1210 to i64
  store i64 %1211, i64* %RDX.i386, align 8
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -920
  %1214 = load i32, i32* %EAX.i1578, align 4
  %1215 = add i64 %1208, 31
  store i64 %1215, i64* %PC.i, align 8
  %1216 = inttoptr i64 %1213 to i32*
  store i32 %1214, i32* %1216, align 4
  %1217 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1218 = add i64 %1217, -1947
  %1219 = add i64 %1217, 7
  %1220 = load i64, i64* %6, align 8
  %1221 = add i64 %1220, -8
  %1222 = inttoptr i64 %1221 to i64*
  store i64 %1219, i64* %1222, align 8
  store i64 %1221, i64* %6, align 8
  store i64 %1218, i64* %3, align 8
  %1223 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1207)
  %1224 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI.i265, align 8
  %1225 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1225, i64* %RDI.i642, align 8
  %1226 = load i64, i64* %RBP.i, align 8
  %1227 = add i64 %1226, -924
  %1228 = load i32, i32* %EAX.i1578, align 4
  %1229 = add i64 %1224, 24
  store i64 %1229, i64* %PC.i, align 8
  %1230 = inttoptr i64 %1227 to i32*
  store i32 %1228, i32* %1230, align 4
  %1231 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1232 = add i64 %1231, -1978
  %1233 = add i64 %1231, 7
  %1234 = load i64, i64* %6, align 8
  %1235 = add i64 %1234, -8
  %1236 = inttoptr i64 %1235 to i64*
  store i64 %1233, i64* %1236, align 8
  store i64 %1235, i64* %6, align 8
  store i64 %1232, i64* %3, align 8
  %1237 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1223)
  %1238 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI.i265, align 8
  %1239 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1239, i64* %RDI.i642, align 8
  %1240 = load i64, i64* %RBP.i, align 8
  %1241 = add i64 %1240, -928
  %1242 = load i32, i32* %EAX.i1578, align 4
  %1243 = add i64 %1238, 24
  store i64 %1243, i64* %PC.i, align 8
  %1244 = inttoptr i64 %1241 to i32*
  store i32 %1242, i32* %1244, align 4
  %1245 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1246 = add i64 %1245, -2009
  %1247 = add i64 %1245, 7
  %1248 = load i64, i64* %6, align 8
  %1249 = add i64 %1248, -8
  %1250 = inttoptr i64 %1249 to i64*
  store i64 %1247, i64* %1250, align 8
  store i64 %1249, i64* %6, align 8
  store i64 %1246, i64* %3, align 8
  %1251 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1237)
  %1252 = load i64, i64* %PC.i, align 8
  store i32 0, i32* %478, align 1
  store i32 0, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %1253 = load i64, i64* %RBP.i, align 8
  %1254 = add i64 %1253, -16
  %1255 = add i64 %1252, 8
  store i64 %1255, i64* %PC.i, align 8
  %1256 = inttoptr i64 %1254 to i32*
  %1257 = load i32, i32* %1256, align 4
  %1258 = bitcast %union.VectorReg* %195 to i32*
  store i32 %1257, i32* %1258, align 1
  store float 0.000000e+00, float* %581, align 1
  store float 0.000000e+00, float* %582, align 1
  store float 0.000000e+00, float* %584, align 1
  %1259 = load <2 x float>, <2 x float>* %585, align 1
  %1260 = extractelement <2 x float> %1259, i32 0
  store float %1260, float* bitcast (%G_0x62bb48_type* @G_0x62bb48 to float*), align 8
  %1261 = add i64 %1252, 22
  store i64 %1261, i64* %PC.i, align 8
  %1262 = inttoptr i64 %1254 to i32*
  %1263 = load i32, i32* %1262, align 4
  %1264 = bitcast %union.VectorReg* %195 to i32*
  store i32 %1263, i32* %1264, align 1
  store float 0.000000e+00, float* %581, align 1
  store float 0.000000e+00, float* %582, align 1
  store float 0.000000e+00, float* %584, align 1
  %1265 = load <2 x float>, <2 x float>* %585, align 1
  %1266 = extractelement <2 x float> %1265, i32 0
  %1267 = fpext float %1266 to double
  store double %1267, double* %197, align 1
  %1268 = add i64 %1252, 30
  store i64 %1268, i64* %PC.i, align 8
  %1269 = load double, double* %254, align 1
  %1270 = fcmp uno double %1267, %1269
  br i1 %1270, label %1271, label %1281

; <label>:1271:                                   ; preds = %block_.L_400b15
  %1272 = fadd double %1267, %1269
  %1273 = bitcast double %1272 to i64
  %1274 = and i64 %1273, 9221120237041090560
  %1275 = icmp eq i64 %1274, 9218868437227405312
  %1276 = and i64 %1273, 2251799813685247
  %1277 = icmp ne i64 %1276, 0
  %1278 = and i1 %1275, %1277
  br i1 %1278, label %1279, label %1287

; <label>:1279:                                   ; preds = %1271
  %1280 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1268, %struct.Memory* %1251)
  %.pre7 = load i64, i64* %RBP.i, align 8
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1281:                                   ; preds = %block_.L_400b15
  %1282 = fcmp ogt double %1267, %1269
  br i1 %1282, label %1287, label %1283

; <label>:1283:                                   ; preds = %1281
  %1284 = fcmp olt double %1267, %1269
  br i1 %1284, label %1287, label %1285

; <label>:1285:                                   ; preds = %1283
  %1286 = fcmp oeq double %1267, %1269
  br i1 %1286, label %1287, label %1291

; <label>:1287:                                   ; preds = %1285, %1283, %1281, %1271
  %1288 = phi i8 [ 0, %1281 ], [ 0, %1283 ], [ 1, %1285 ], [ 1, %1271 ]
  %1289 = phi i8 [ 0, %1281 ], [ 0, %1283 ], [ 0, %1285 ], [ 1, %1271 ]
  %1290 = phi i8 [ 0, %1281 ], [ 1, %1283 ], [ 0, %1285 ], [ 1, %1271 ]
  store i8 %1288, i8* %15, align 1
  store i8 %1289, i8* %13, align 1
  store i8 %1290, i8* %12, align 1
  br label %1291

; <label>:1291:                                   ; preds = %1287, %1285
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1291, %1279
  %1292 = phi i64 [ %.pre8, %1279 ], [ %1268, %1291 ]
  %1293 = phi i64 [ %.pre7, %1279 ], [ %1253, %1291 ]
  %1294 = phi %struct.Memory* [ %1280, %1279 ], [ %1251, %1291 ]
  %1295 = add i64 %1293, -932
  %1296 = load i32, i32* %EAX.i1578, align 4
  %1297 = add i64 %1292, 6
  store i64 %1297, i64* %PC.i, align 8
  %1298 = inttoptr i64 %1295 to i32*
  store i32 %1296, i32* %1298, align 4
  %1299 = load i64, i64* %PC.i, align 8
  %1300 = load i8, i8* %12, align 1
  %1301 = load i8, i8* %15, align 1
  %1302 = or i8 %1301, %1300
  %1303 = icmp ne i8 %1302, 0
  %.v23 = select i1 %1303, i64 96, i64 6
  %1304 = add i64 %1299, %.v23
  store i64 %1304, i64* %3, align 8
  br i1 %1303, label %block_.L_400d24, label %block_400cca

block_400cca:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1305 = load double, double* bitcast (%G_0x2206__rip__type* @G_0x2206__rip_ to double*), align 8
  store double %1305, double* %193, align 1
  store double 0.000000e+00, double* %194, align 1
  %1306 = load double, double* bitcast (%G_0x220e__rip__type* @G_0x220e__rip_ to double*), align 8
  store double %1306, double* %197, align 1
  store double 0.000000e+00, double* %199, align 1
  %1307 = load i64, i64* %RBP.i, align 8
  %1308 = add i64 %1307, -12
  %1309 = add i64 %1304, 21
  store i64 %1309, i64* %PC.i, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = bitcast %union.VectorReg* %208 to i32*
  store i32 %1311, i32* %1312, align 1
  store float 0.000000e+00, float* %588, align 1
  store float 0.000000e+00, float* %590, align 1
  store float 0.000000e+00, float* %592, align 1
  %1313 = load <2 x float>, <2 x float>* %1008, align 1
  %1314 = extractelement <2 x float> %1313, i32 0
  %1315 = fpext float %1314 to double
  store double %1315, double* %212, align 1
  %1316 = add i64 %1307, -16
  %1317 = add i64 %1304, 30
  store i64 %1317, i64* %PC.i, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = bitcast %union.VectorReg* %213 to i32*
  store i32 %1319, i32* %1320, align 1
  store float 0.000000e+00, float* %1156, align 1
  store float 0.000000e+00, float* %1157, align 1
  store float 0.000000e+00, float* %1158, align 1
  %1321 = load <2 x float>, <2 x float>* %1159, align 1
  %1322 = extractelement <2 x float> %1321, i32 0
  %1323 = fpext float %1322 to double
  store double %1323, double* %225, align 1
  %1324 = fmul double %1306, %1323
  %1325 = fdiv double %1315, %1324
  store double %1325, double* %212, align 1
  %1326 = bitcast double %1324 to <2 x i32>
  %1327 = fptrunc double %1325 to float
  store float %1327, float* %579, align 1
  %1328 = extractelement <2 x i32> %1326, i32 1
  store i32 %1328, i32* %596, align 1
  %1329 = load <2 x float>, <2 x float>* %585, align 1
  %1330 = extractelement <2 x float> %1329, i32 0
  store float %1330, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  store float %1330, float* %579, align 1
  store float 0.000000e+00, float* %581, align 1
  store float 0.000000e+00, float* %582, align 1
  store float 0.000000e+00, float* %584, align 1
  %1331 = load <2 x float>, <2 x float>* %585, align 1
  %1332 = extractelement <2 x float> %1331, i32 0
  %1333 = fpext float %1332 to double
  store double %1333, double* %197, align 1
  %1334 = fdiv double %1305, %1333
  %1335 = bitcast double %1334 to <2 x i32>
  %1336 = fptrunc double %1334 to float
  store float %1336, float* %21, align 1
  %1337 = extractelement <2 x i32> %1335, i32 1
  store i32 %1337, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %1338 = load <2 x float>, <2 x float>* %60, align 1
  %1339 = extractelement <2 x float> %1338, i32 0
  store float %1339, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  %1340 = add i64 %1304, 111
  store i64 %1340, i64* %3, align 8
  br label %block_.L_400d39

block_.L_400d24:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  store i32 0, i32* %478, align 1
  store i32 0, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %1341 = load <2 x float>, <2 x float>* %60, align 1
  %1342 = extractelement <2 x float> %1341, i32 0
  store float %1342, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  %1343 = add i64 %1304, 21
  store i64 %1343, i64* %PC.i, align 8
  store float %1342, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  %.pre9 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d39

block_.L_400d39:                                  ; preds = %block_.L_400d24, %block_400cca
  %1344 = phi i64 [ %.pre9, %block_.L_400d24 ], [ %1307, %block_400cca ]
  %1345 = phi i64 [ %1343, %block_.L_400d24 ], [ %1340, %block_400cca ]
  store i64 0, i64* %RDI.i642, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1346 = add i64 %1344, -16
  %1347 = add i64 %1345, 7
  store i64 %1347, i64* %PC.i, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %1349, i32* %1350, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1351 = add i64 %1344, -8
  %1352 = add i64 %1345, 12
  store i64 %1352, i64* %PC.i, align 8
  %1353 = load <2 x float>, <2 x float>* %320, align 1
  %1354 = load <2 x i32>, <2 x i32>* %257, align 1
  %1355 = inttoptr i64 %1351 to float*
  %1356 = load float, float* %1355, align 4
  %1357 = extractelement <2 x float> %1353, i32 0
  %1358 = fdiv float %1357, %1356
  store float %1358, float* %21, align 1
  %1359 = bitcast <2 x float> %1353 to <2 x i32>
  %1360 = extractelement <2 x i32> %1359, i32 1
  store i32 %1360, i32* %260, align 1
  %1361 = extractelement <2 x i32> %1354, i32 0
  store i32 %1361, i32* %262, align 1
  %1362 = extractelement <2 x i32> %1354, i32 1
  store i32 %1362, i32* %264, align 1
  %1363 = load <2 x float>, <2 x float>* %60, align 1
  %1364 = extractelement <2 x float> %1363, i32 0
  store float %1364, float* bitcast (%G_0x62bbfc_type* @G_0x62bbfc to float*), align 8
  %1365 = add i64 %1345, 7063
  %1366 = add i64 %1345, 26
  %1367 = load i64, i64* %6, align 8
  %1368 = add i64 %1367, -8
  %1369 = inttoptr i64 %1368 to i64*
  store i64 %1366, i64* %1369, align 8
  store i64 %1368, i64* %6, align 8
  store i64 %1365, i64* %3, align 8
  %call2_400d4e = tail call %struct.Memory* @sub_4028d0.print_time(%struct.State* %0, i64 %1365, %struct.Memory* %1294)
  %1370 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4030ef_type* @G__0x4030ef to i64), i64* %RSI.i265, align 8
  %1371 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1371, i64* %RDI.i642, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1372 = add i64 %1370, -2195
  %1373 = add i64 %1370, 25
  %1374 = load i64, i64* %6, align 8
  %1375 = add i64 %1374, -8
  %1376 = inttoptr i64 %1375 to i64*
  store i64 %1373, i64* %1376, align 8
  store i64 %1375, i64* %6, align 8
  store i64 %1372, i64* %3, align 8
  %1377 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400d4e)
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -64
  %1380 = load i64, i64* %PC.i, align 8
  %1381 = add i64 %1380, 7
  store i64 %1381, i64* %PC.i, align 8
  %1382 = inttoptr i64 %1379 to i32*
  store i32 -3, i32* %1382, align 4
  %1383 = load i64, i64* %RBP.i, align 8
  %1384 = add i64 %1383, -68
  %1385 = load i64, i64* %PC.i, align 8
  %1386 = add i64 %1385, 7
  store i64 %1386, i64* %PC.i, align 8
  %1387 = inttoptr i64 %1384 to i32*
  store i32 100, i32* %1387, align 4
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -936
  %1390 = load i32, i32* %EAX.i1578, align 4
  %1391 = load i64, i64* %PC.i, align 8
  %1392 = add i64 %1391, 6
  store i64 %1392, i64* %PC.i, align 8
  %1393 = inttoptr i64 %1389 to i32*
  store i32 %1390, i32* %1393, align 4
  %1394 = bitcast %union.VectorReg* %195 to <2 x i32>*
  %1395 = bitcast i64* %600 to <2 x i32>*
  %.pre10 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d80

block_.L_400d80:                                  ; preds = %block_.L_400e43, %block_.L_400d39
  %1396 = phi i64 [ %.pre10, %block_.L_400d39 ], [ %1635, %block_.L_400e43 ]
  %MEMORY.6 = phi %struct.Memory* [ %1377, %block_.L_400d39 ], [ %1569, %block_.L_400e43 ]
  %1397 = add i64 %1396, -1984
  %1398 = add i64 %1396, 5
  %1399 = load i64, i64* %6, align 8
  %1400 = add i64 %1399, -8
  %1401 = inttoptr i64 %1400 to i64*
  store i64 %1398, i64* %1401, align 8
  store i64 %1400, i64* %6, align 8
  store i64 %1397, i64* %3, align 8
  %call2_400d80 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1397, %struct.Memory* %MEMORY.6)
  %1402 = load i64, i64* %RBP.i, align 8
  %1403 = add i64 %1402, -80
  %1404 = load i64, i64* %PC.i, align 8
  %1405 = add i64 %1404, 5
  store i64 %1405, i64* %PC.i, align 8
  %1406 = load <2 x float>, <2 x float>* %60, align 1
  %1407 = extractelement <2 x float> %1406, i32 0
  %1408 = inttoptr i64 %1403 to float*
  store float %1407, float* %1408, align 4
  %1409 = load i64, i64* %RBP.i, align 8
  %1410 = add i64 %1409, -64
  %1411 = load i64, i64* %PC.i, align 8
  %1412 = add i64 %1411, 3
  store i64 %1412, i64* %PC.i, align 8
  %1413 = inttoptr i64 %1410 to i32*
  %1414 = load i32, i32* %1413, align 4
  %1415 = add i32 %1414, 1
  %1416 = zext i32 %1415 to i64
  store i64 %1416, i64* %RAX.i291, align 8
  %1417 = icmp eq i32 %1414, -1
  %1418 = icmp eq i32 %1415, 0
  %1419 = or i1 %1417, %1418
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %12, align 1
  %1421 = and i32 %1415, 255
  %1422 = tail call i32 @llvm.ctpop.i32(i32 %1421)
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = xor i8 %1424, 1
  store i8 %1425, i8* %13, align 1
  %1426 = xor i32 %1414, %1415
  %1427 = lshr i32 %1426, 4
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  store i8 %1429, i8* %14, align 1
  %1430 = icmp eq i32 %1415, 0
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %15, align 1
  %1432 = lshr i32 %1415, 31
  %1433 = trunc i32 %1432 to i8
  store i8 %1433, i8* %16, align 1
  %1434 = lshr i32 %1414, 31
  %1435 = xor i32 %1432, %1434
  %1436 = add nuw nsw i32 %1435, %1432
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %17, align 1
  %1439 = add i64 %1411, 9
  store i64 %1439, i64* %PC.i, align 8
  store i32 %1415, i32* %1413, align 4
  %1440 = load i64, i64* %PC.i, align 8
  %1441 = add i64 %1440, 11
  store i64 %1441, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400d9e

block_.L_400d9e:                                  ; preds = %block_400dae, %block_.L_400d80
  %1442 = phi i32 [ 0, %block_.L_400d80 ], [ %1489, %block_400dae ]
  %1443 = phi i64 [ %1441, %block_.L_400d80 ], [ %1513, %block_400dae ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_400d80, %block_.L_400d80 ], [ %call2_400dd4, %block_400dae ]
  %1444 = zext i32 %1442 to i64
  store i64 %1444, i64* %RAX.i291, align 8
  %1445 = load i64, i64* %RBP.i, align 8
  %1446 = add i64 %1445, -68
  %1447 = add i64 %1443, 10
  store i64 %1447, i64* %PC.i, align 8
  %1448 = inttoptr i64 %1446 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = sub i32 %1442, %1449
  %1451 = icmp ult i32 %1442, %1449
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %12, align 1
  %1453 = and i32 %1450, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %13, align 1
  %1458 = xor i32 %1449, %1442
  %1459 = xor i32 %1458, %1450
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %14, align 1
  %1463 = icmp eq i32 %1450, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %15, align 1
  %1465 = lshr i32 %1450, 31
  %1466 = trunc i32 %1465 to i8
  store i8 %1466, i8* %16, align 1
  %1467 = lshr i32 %1442, 31
  %1468 = lshr i32 %1449, 31
  %1469 = xor i32 %1468, %1467
  %1470 = xor i32 %1465, %1467
  %1471 = add nuw nsw i32 %1470, %1469
  %1472 = icmp eq i32 %1471, 2
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %17, align 1
  %1474 = icmp ne i8 %1466, 0
  %1475 = xor i1 %1474, %1472
  %.v24 = select i1 %1475, i64 16, i64 81
  %1476 = add i64 %1443, %.v24
  store i64 %1476, i64* %3, align 8
  br i1 %1475, label %block_400dae, label %block_.L_400def

block_400dae:                                     ; preds = %block_.L_400d9e
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %1477 = add i64 %1445, -20
  store i64 %1477, i64* %R8.i856, align 8
  %1478 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RSI.i265, align 8
  %1480 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1481 = zext i32 %1480 to i64
  store i64 %1481, i64* %RDX.i386, align 8
  %1482 = add i64 %1476, 2562
  %1483 = add i64 %1476, 43
  %1484 = load i64, i64* %6, align 8
  %1485 = add i64 %1484, -8
  %1486 = inttoptr i64 %1485 to i64*
  store i64 %1483, i64* %1486, align 8
  store i64 %1485, i64* %6, align 8
  store i64 %1482, i64* %3, align 8
  %call2_400dd4 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %1482, %struct.Memory* %MEMORY.7)
  %1487 = load i64, i64* %PC.i, align 8
  %1488 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1489 = add i32 %1488, 1
  %1490 = zext i32 %1489 to i64
  store i64 %1490, i64* %RAX.i291, align 8
  %1491 = icmp eq i32 %1488, -1
  %1492 = icmp eq i32 %1489, 0
  %1493 = or i1 %1491, %1492
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %12, align 1
  %1495 = and i32 %1489, 255
  %1496 = tail call i32 @llvm.ctpop.i32(i32 %1495)
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  %1499 = xor i8 %1498, 1
  store i8 %1499, i8* %13, align 1
  %1500 = xor i32 %1488, %1489
  %1501 = lshr i32 %1500, 4
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  store i8 %1503, i8* %14, align 1
  %1504 = icmp eq i32 %1489, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %15, align 1
  %1506 = lshr i32 %1489, 31
  %1507 = trunc i32 %1506 to i8
  store i8 %1507, i8* %16, align 1
  %1508 = lshr i32 %1488, 31
  %1509 = xor i32 %1506, %1508
  %1510 = add nuw nsw i32 %1509, %1506
  %1511 = icmp eq i32 %1510, 2
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %17, align 1
  store i32 %1489, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1513 = add i64 %1487, -59
  store i64 %1513, i64* %3, align 8
  br label %block_.L_400d9e

block_.L_400def:                                  ; preds = %block_.L_400d9e
  %1514 = add i64 %1476, -2095
  %1515 = add i64 %1476, 5
  %1516 = load i64, i64* %6, align 8
  %1517 = add i64 %1516, -8
  %1518 = inttoptr i64 %1517 to i64*
  store i64 %1515, i64* %1518, align 8
  store i64 %1517, i64* %6, align 8
  store i64 %1514, i64* %3, align 8
  %call2_400def = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1514, %struct.Memory* %MEMORY.7)
  %1519 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x40310d_type* @G__0x40310d to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %595, align 1
  store i32 0, i32* %596, align 1
  store i32 0, i32* %597, align 1
  store i32 0, i32* %598, align 1
  %1520 = load i64, i64* %RBP.i, align 8
  %1521 = add i64 %1520, -84
  %1522 = add i64 %1519, 18
  store i64 %1522, i64* %PC.i, align 8
  %1523 = load <2 x float>, <2 x float>* %60, align 1
  %1524 = extractelement <2 x float> %1523, i32 0
  %1525 = inttoptr i64 %1521 to float*
  store float %1524, float* %1525, align 4
  %1526 = load i64, i64* %RBP.i, align 8
  %1527 = add i64 %1526, -84
  %1528 = load i64, i64* %PC.i, align 8
  %1529 = add i64 %1528, 5
  store i64 %1529, i64* %PC.i, align 8
  %1530 = inttoptr i64 %1527 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %1531, i32* %1532, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1533 = add i64 %1526, -80
  %1534 = add i64 %1528, 10
  store i64 %1534, i64* %PC.i, align 8
  %1535 = load <2 x float>, <2 x float>* %320, align 1
  %1536 = load <2 x i32>, <2 x i32>* %257, align 1
  %1537 = inttoptr i64 %1533 to float*
  %1538 = load float, float* %1537, align 4
  %1539 = extractelement <2 x float> %1535, i32 0
  %1540 = fsub float %1539, %1538
  store float %1540, float* %21, align 1
  %1541 = bitcast <2 x float> %1535 to <2 x i32>
  %1542 = extractelement <2 x i32> %1541, i32 1
  store i32 %1542, i32* %260, align 1
  %1543 = extractelement <2 x i32> %1536, i32 0
  store i32 %1543, i32* %262, align 1
  %1544 = extractelement <2 x i32> %1536, i32 1
  store i32 %1544, i32* %264, align 1
  %1545 = add i64 %1526, -72
  %1546 = add i64 %1528, 15
  store i64 %1546, i64* %PC.i, align 8
  %1547 = load <2 x float>, <2 x float>* %60, align 1
  %1548 = extractelement <2 x float> %1547, i32 0
  %1549 = inttoptr i64 %1545 to float*
  store float %1548, float* %1549, align 4
  %1550 = load i64, i64* %PC.i, align 8
  %1551 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1551, i64* %RDI.i642, align 8
  %1552 = load i64, i64* %RBP.i, align 8
  %1553 = add i64 %1552, -68
  %1554 = add i64 %1550, 11
  store i64 %1554, i64* %PC.i, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RDX.i386, align 8
  %1558 = load <2 x i32>, <2 x i32>* %1394, align 1
  %1559 = load <2 x i32>, <2 x i32>* %1395, align 1
  %1560 = extractelement <2 x i32> %1558, i32 0
  store i32 %1560, i32* %478, align 1
  %1561 = extractelement <2 x i32> %1558, i32 1
  store i32 %1561, i32* %260, align 1
  %1562 = extractelement <2 x i32> %1559, i32 0
  store i32 %1562, i32* %262, align 1
  %1563 = extractelement <2 x i32> %1559, i32 1
  store i32 %1563, i32* %264, align 1
  store i8 1, i8* %AL.i1589, align 1
  %1564 = add i64 %1550, -2389
  %1565 = add i64 %1550, 21
  %1566 = load i64, i64* %6, align 8
  %1567 = add i64 %1566, -8
  %1568 = inttoptr i64 %1567 to i64*
  store i64 %1565, i64* %1568, align 8
  store i64 %1567, i64* %6, align 8
  store i64 %1564, i64* %3, align 8
  %1569 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400def)
  %1570 = load i64, i64* %RBP.i, align 8
  %1571 = add i64 %1570, -64
  %1572 = load i64, i64* %PC.i, align 8
  %1573 = add i64 %1572, 4
  store i64 %1573, i64* %PC.i, align 8
  %1574 = inttoptr i64 %1571 to i32*
  %1575 = load i32, i32* %1574, align 4
  store i8 0, i8* %12, align 1
  %1576 = and i32 %1575, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1581 = icmp eq i32 %1575, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %15, align 1
  %1583 = lshr i32 %1575, 31
  %1584 = trunc i32 %1583 to i8
  store i8 %1584, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1585 = add i64 %1570, -940
  %1586 = load i32, i32* %EAX.i1578, align 4
  %1587 = add i64 %1572, 10
  store i64 %1587, i64* %PC.i, align 8
  %1588 = inttoptr i64 %1585 to i32*
  store i32 %1586, i32* %1588, align 4
  %1589 = load i64, i64* %PC.i, align 8
  %1590 = load i8, i8* %16, align 1
  %1591 = icmp ne i8 %1590, 0
  %1592 = load i8, i8* %17, align 1
  %1593 = icmp ne i8 %1592, 0
  %1594 = xor i1 %1591, %1593
  %.v25 = select i1 %1594, i64 6, i64 15
  %1595 = add i64 %1589, %.v25
  store i64 %1595, i64* %3, align 8
  br i1 %1594, label %block_400e3a, label %block_.L_400e43

block_400e3a:                                     ; preds = %block_.L_400def
  %1596 = load i64, i64* %RBP.i, align 8
  %1597 = add i64 %1596, -68
  %1598 = add i64 %1595, 3
  store i64 %1598, i64* %PC.i, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = shl i32 %1600, 1
  %1602 = icmp slt i32 %1600, 0
  %1603 = icmp slt i32 %1601, 0
  %1604 = xor i1 %1602, %1603
  %1605 = zext i32 %1601 to i64
  store i64 %1605, i64* %RAX.i291, align 8
  %.lobit = lshr i32 %1600, 31
  %1606 = trunc i32 %.lobit to i8
  store i8 %1606, i8* %12, align 1
  %1607 = and i32 %1601, 254
  %1608 = tail call i32 @llvm.ctpop.i32(i32 %1607)
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = xor i8 %1610, 1
  store i8 %1611, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1612 = icmp eq i32 %1601, 0
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %15, align 1
  %1614 = lshr i32 %1600, 30
  %1615 = trunc i32 %1614 to i8
  %1616 = and i8 %1615, 1
  store i8 %1616, i8* %16, align 1
  %1617 = zext i1 %1604 to i8
  store i8 %1617, i8* %17, align 1
  %1618 = add i64 %1595, 8
  store i64 %1618, i64* %PC.i, align 8
  store i32 %1601, i32* %1599, align 4
  %.pre11 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e43

block_.L_400e43:                                  ; preds = %block_.L_400def, %block_400e3a
  %1619 = phi i64 [ %.pre11, %block_400e3a ], [ %1595, %block_.L_400def ]
  %1620 = load i64, i64* %RBP.i, align 8
  %1621 = add i64 %1620, -64
  %1622 = add i64 %1619, 9
  store i64 %1622, i64* %PC.i, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  store i8 0, i8* %12, align 1
  %1625 = and i32 %1624, 255
  %1626 = tail call i32 @llvm.ctpop.i32(i32 %1625)
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = xor i8 %1628, 1
  store i8 %1629, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1630 = icmp eq i32 %1624, 0
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %15, align 1
  %1632 = lshr i32 %1624, 31
  %1633 = trunc i32 %1632 to i8
  store i8 %1633, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1634 = icmp ne i8 %1633, 0
  %.v26 = select i1 %1634, i64 -195, i64 15
  %1635 = add i64 %1619, %.v26
  store i64 %1635, i64* %3, align 8
  br i1 %1634, label %block_.L_400d80, label %block_400e52

block_400e52:                                     ; preds = %block_.L_400e43
  store i64 ptrtoint (%G__0x403127_type* @G__0x403127 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %478, align 1
  store i32 0, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %1636 = add i64 %1620, -72
  %1637 = add i64 %1635, 18
  store i64 %1637, i64* %PC.i, align 8
  %1638 = inttoptr i64 %1636 to float*
  %1639 = inttoptr i64 %1636 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = bitcast %union.VectorReg* %195 to i32*
  store i32 %1640, i32* %1641, align 1
  store float 0.000000e+00, float* %581, align 1
  store float 0.000000e+00, float* %582, align 1
  store float 0.000000e+00, float* %584, align 1
  %1642 = load <2 x float>, <2 x float>* %585, align 1
  %1643 = extractelement <2 x float> %1642, i32 0
  %1644 = fpext float %1643 to double
  store double %1644, double* %197, align 1
  %1645 = add i64 %1620, -68
  %1646 = add i64 %1635, 25
  store i64 %1646, i64* %PC.i, align 8
  %1647 = inttoptr i64 %1645 to i32*
  %1648 = load i32, i32* %1647, align 4
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RAX.i291, align 8
  %1650 = sitofp i32 %1648 to double
  store double %1650, double* %212, align 1
  %1651 = bitcast i64* %198 to <2 x i32>*
  %1652 = load <2 x i32>, <2 x i32>* %1651, align 1
  %1653 = fdiv double %1644, %1650
  %1654 = bitcast %union.VectorReg* %195 to <2 x i32>*
  %1655 = bitcast double %1653 to <2 x i32>
  %1656 = bitcast i64* %198 to <2 x i32>*
  %1657 = fptrunc double %1653 to float
  store float %1657, float* %579, align 1
  %1658 = extractelement <2 x i32> %1655, i32 1
  store i32 %1658, i32* %596, align 1
  %1659 = extractelement <2 x i32> %1652, i32 0
  store i32 %1659, i32* %597, align 1
  %1660 = extractelement <2 x i32> %1652, i32 1
  store i32 %1660, i32* %598, align 1
  %1661 = add i64 %1635, 42
  store i64 %1661, i64* %PC.i, align 8
  %1662 = load <2 x float>, <2 x float>* %585, align 1
  %1663 = extractelement <2 x float> %1662, i32 0
  store float %1663, float* %1638, align 4
  %1664 = load i64, i64* %PC.i, align 8
  %1665 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1665, i64* %RDI.i642, align 8
  store i8 1, i8* %AL.i1589, align 1
  %1666 = add i64 %1664, -2492
  %1667 = add i64 %1664, 15
  %1668 = load i64, i64* %6, align 8
  %1669 = add i64 %1668, -8
  %1670 = inttoptr i64 %1669 to i64*
  store i64 %1667, i64* %1670, align 8
  store i64 %1669, i64* %6, align 8
  store i64 %1666, i64* %3, align 8
  %1671 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1569)
  %1672 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x40314e_type* @G__0x40314e to i64), i64* %RSI.i265, align 8
  %1673 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1673, i64* %RDI.i642, align 8
  %1674 = load i64, i64* %RBP.i, align 8
  %1675 = add i64 %1674, -944
  %1676 = load i32, i32* %EAX.i1578, align 4
  %1677 = add i64 %1672, 24
  store i64 %1677, i64* %PC.i, align 8
  %1678 = inttoptr i64 %1675 to i32*
  store i32 %1676, i32* %1678, align 4
  %1679 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1680 = add i64 %1679, -2531
  %1681 = add i64 %1679, 7
  %1682 = load i64, i64* %6, align 8
  %1683 = add i64 %1682, -8
  %1684 = inttoptr i64 %1683 to i64*
  store i64 %1681, i64* %1684, align 8
  store i64 %1683, i64* %6, align 8
  store i64 %1680, i64* %3, align 8
  %1685 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1671)
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, -64
  %1688 = load i64, i64* %PC.i, align 8
  %1689 = add i64 %1688, 7
  store i64 %1689, i64* %PC.i, align 8
  %1690 = inttoptr i64 %1687 to i32*
  store i32 -3, i32* %1690, align 4
  %1691 = load i64, i64* %PC.i, align 8
  store i32 100, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1692 = load i64, i64* %RBP.i, align 8
  %1693 = add i64 %1692, -948
  %1694 = load i32, i32* %EAX.i1578, align 4
  %1695 = add i64 %1691, 17
  store i64 %1695, i64* %PC.i, align 8
  %1696 = inttoptr i64 %1693 to i32*
  store i32 %1694, i32* %1696, align 4
  %.pre12 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ec2

block_.L_400ec2:                                  ; preds = %block_.L_400fbc, %block_400e52
  %1697 = phi i64 [ %.pre12, %block_400e52 ], [ %1920, %block_.L_400fbc ]
  %MEMORY.9 = phi %struct.Memory* [ %1685, %block_400e52 ], [ %1858, %block_.L_400fbc ]
  %1698 = add i64 %1697, -2306
  %1699 = add i64 %1697, 5
  %1700 = load i64, i64* %6, align 8
  %1701 = add i64 %1700, -8
  %1702 = inttoptr i64 %1701 to i64*
  store i64 %1699, i64* %1702, align 8
  store i64 %1701, i64* %6, align 8
  store i64 %1698, i64* %3, align 8
  %call2_400ec2 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1698, %struct.Memory* %MEMORY.9)
  %1703 = load i64, i64* %RBP.i, align 8
  %1704 = add i64 %1703, -80
  %1705 = load i64, i64* %PC.i, align 8
  %1706 = add i64 %1705, 5
  store i64 %1706, i64* %PC.i, align 8
  %1707 = load <2 x float>, <2 x float>* %60, align 1
  %1708 = extractelement <2 x float> %1707, i32 0
  %1709 = inttoptr i64 %1704 to float*
  store float %1708, float* %1709, align 4
  %1710 = load i64, i64* %RBP.i, align 8
  %1711 = add i64 %1710, -64
  %1712 = load i64, i64* %PC.i, align 8
  %1713 = add i64 %1712, 3
  store i64 %1713, i64* %PC.i, align 8
  %1714 = inttoptr i64 %1711 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = add i32 %1715, 1
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RAX.i291, align 8
  %1718 = icmp eq i32 %1715, -1
  %1719 = icmp eq i32 %1716, 0
  %1720 = or i1 %1718, %1719
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %12, align 1
  %1722 = and i32 %1716, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %13, align 1
  %1727 = xor i32 %1715, %1716
  %1728 = lshr i32 %1727, 4
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  store i8 %1730, i8* %14, align 1
  %1731 = icmp eq i32 %1716, 0
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %15, align 1
  %1733 = lshr i32 %1716, 31
  %1734 = trunc i32 %1733 to i8
  store i8 %1734, i8* %16, align 1
  %1735 = lshr i32 %1715, 31
  %1736 = xor i32 %1733, %1735
  %1737 = add nuw nsw i32 %1736, %1733
  %1738 = icmp eq i32 %1737, 2
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %17, align 1
  %1740 = add i64 %1712, 9
  store i64 %1740, i64* %PC.i, align 8
  store i32 %1716, i32* %1714, align 4
  %1741 = load i64, i64* %PC.i, align 8
  %1742 = add i64 %1741, 11
  store i64 %1742, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400ee0

block_.L_400ee0:                                  ; preds = %block_400ef4, %block_.L_400ec2
  %1743 = phi i32 [ 0, %block_.L_400ec2 ], [ %1797, %block_400ef4 ]
  %1744 = phi i64 [ %1742, %block_.L_400ec2 ], [ %1821, %block_400ef4 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_400ec2, %block_.L_400ec2 ], [ %call2_400f4b, %block_400ef4 ]
  %1745 = zext i32 %1743 to i64
  store i64 %1745, i64* %RAX.i291, align 8
  %1746 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1747 = sub i32 %1743, %1746
  %1748 = icmp ult i32 %1743, %1746
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %12, align 1
  %1750 = and i32 %1747, 255
  %1751 = tail call i32 @llvm.ctpop.i32(i32 %1750)
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = xor i8 %1753, 1
  store i8 %1754, i8* %13, align 1
  %1755 = xor i32 %1746, %1743
  %1756 = xor i32 %1755, %1747
  %1757 = lshr i32 %1756, 4
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  store i8 %1759, i8* %14, align 1
  %1760 = icmp eq i32 %1747, 0
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %15, align 1
  %1762 = lshr i32 %1747, 31
  %1763 = trunc i32 %1762 to i8
  store i8 %1763, i8* %16, align 1
  %1764 = lshr i32 %1743, 31
  %1765 = lshr i32 %1746, 31
  %1766 = xor i32 %1765, %1764
  %1767 = xor i32 %1762, %1764
  %1768 = add nuw nsw i32 %1767, %1766
  %1769 = icmp eq i32 %1768, 2
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %17, align 1
  %1771 = icmp ne i8 %1763, 0
  %1772 = xor i1 %1771, %1769
  %.v27 = select i1 %1772, i64 20, i64 134
  %1773 = add i64 %1744, %.v27
  store i64 %1773, i64* %3, align 8
  br i1 %1772, label %block_400ef4, label %block_.L_400f66

block_400ef4:                                     ; preds = %block_.L_400ee0
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %1774 = load i64, i64* %RBP.i, align 8
  %1775 = add i64 %1774, -20
  store i64 %1775, i64* %R8.i856, align 8
  %1776 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1777 = zext i32 %1776 to i64
  store i64 %1777, i64* %RSI.i265, align 8
  %1778 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1779 = zext i32 %1778 to i64
  store i64 %1779, i64* %RDX.i386, align 8
  %1780 = add i64 %1773, 2236
  %1781 = add i64 %1773, 43
  %1782 = load i64, i64* %6, align 8
  %1783 = add i64 %1782, -8
  %1784 = inttoptr i64 %1783 to i64*
  store i64 %1781, i64* %1784, align 8
  store i64 %1783, i64* %6, align 8
  store i64 %1780, i64* %3, align 8
  %call2_400f1a = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %1780, %struct.Memory* %MEMORY.10)
  %1785 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %R8.i856, align 8
  %1786 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RSI.i265, align 8
  %1788 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1789 = zext i32 %1788 to i64
  store i64 %1789, i64* %RDX.i386, align 8
  %1790 = add i64 %1785, 2657
  %1791 = add i64 %1785, 49
  %1792 = load i64, i64* %6, align 8
  %1793 = add i64 %1792, -8
  %1794 = inttoptr i64 %1793 to i64*
  store i64 %1791, i64* %1794, align 8
  store i64 %1793, i64* %6, align 8
  store i64 %1790, i64* %3, align 8
  %call2_400f4b = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %1790, %struct.Memory* %call2_400f1a)
  %1795 = load i64, i64* %PC.i, align 8
  %1796 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1797 = add i32 %1796, 1
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RAX.i291, align 8
  %1799 = icmp eq i32 %1796, -1
  %1800 = icmp eq i32 %1797, 0
  %1801 = or i1 %1799, %1800
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %12, align 1
  %1803 = and i32 %1797, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %13, align 1
  %1808 = xor i32 %1796, %1797
  %1809 = lshr i32 %1808, 4
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  store i8 %1811, i8* %14, align 1
  %1812 = icmp eq i32 %1797, 0
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %15, align 1
  %1814 = lshr i32 %1797, 31
  %1815 = trunc i32 %1814 to i8
  store i8 %1815, i8* %16, align 1
  %1816 = lshr i32 %1796, 31
  %1817 = xor i32 %1814, %1816
  %1818 = add nuw nsw i32 %1817, %1814
  %1819 = icmp eq i32 %1818, 2
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %17, align 1
  store i32 %1797, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1821 = add i64 %1795, -112
  store i64 %1821, i64* %3, align 8
  br label %block_.L_400ee0

block_.L_400f66:                                  ; preds = %block_.L_400ee0
  %1822 = add i64 %1773, -2470
  %1823 = add i64 %1773, 5
  %1824 = load i64, i64* %6, align 8
  %1825 = add i64 %1824, -8
  %1826 = inttoptr i64 %1825 to i64*
  store i64 %1823, i64* %1826, align 8
  store i64 %1825, i64* %6, align 8
  store i64 %1822, i64* %3, align 8
  %call2_400f66 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1822, %struct.Memory* %MEMORY.10)
  %1827 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x40310d_type* @G__0x40310d to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %595, align 1
  store i32 0, i32* %596, align 1
  store i32 0, i32* %597, align 1
  store i32 0, i32* %598, align 1
  %1828 = load i64, i64* %RBP.i, align 8
  %1829 = add i64 %1828, -80
  %1830 = add i64 %1827, 18
  store i64 %1830, i64* %PC.i, align 8
  %1831 = load <2 x float>, <2 x float>* %320, align 1
  %1832 = inttoptr i64 %1829 to float*
  %1833 = load float, float* %1832, align 4
  %1834 = extractelement <2 x float> %1831, i32 0
  %1835 = fsub float %1834, %1833
  store float %1835, float* %21, align 1
  %1836 = bitcast <2 x float> %1831 to <2 x i32>
  %1837 = extractelement <2 x i32> %1836, i32 1
  store i32 %1837, i32* %260, align 1
  %1838 = add i64 %1828, -84
  %1839 = add i64 %1827, 23
  store i64 %1839, i64* %PC.i, align 8
  %1840 = load <2 x float>, <2 x float>* %60, align 1
  %1841 = extractelement <2 x float> %1840, i32 0
  %1842 = inttoptr i64 %1838 to float*
  store float %1841, float* %1842, align 4
  %1843 = load i64, i64* %PC.i, align 8
  %1844 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1844, i64* %RDI.i642, align 8
  %1845 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RDX.i386, align 8
  %1847 = load <2 x i32>, <2 x i32>* %1394, align 1
  %1848 = load <2 x i32>, <2 x i32>* %1395, align 1
  %1849 = extractelement <2 x i32> %1847, i32 0
  store i32 %1849, i32* %478, align 1
  %1850 = extractelement <2 x i32> %1847, i32 1
  store i32 %1850, i32* %260, align 1
  %1851 = extractelement <2 x i32> %1848, i32 0
  store i32 %1851, i32* %262, align 1
  %1852 = extractelement <2 x i32> %1848, i32 1
  store i32 %1852, i32* %264, align 1
  store i8 1, i8* %AL.i1589, align 1
  %1853 = add i64 %1843, -2754
  %1854 = add i64 %1843, 25
  %1855 = load i64, i64* %6, align 8
  %1856 = add i64 %1855, -8
  %1857 = inttoptr i64 %1856 to i64*
  store i64 %1854, i64* %1857, align 8
  store i64 %1856, i64* %6, align 8
  store i64 %1853, i64* %3, align 8
  %1858 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400f66)
  %1859 = load i64, i64* %RBP.i, align 8
  %1860 = add i64 %1859, -64
  %1861 = load i64, i64* %PC.i, align 8
  %1862 = add i64 %1861, 4
  store i64 %1862, i64* %PC.i, align 8
  %1863 = inttoptr i64 %1860 to i32*
  %1864 = load i32, i32* %1863, align 4
  store i8 0, i8* %12, align 1
  %1865 = and i32 %1864, 255
  %1866 = tail call i32 @llvm.ctpop.i32(i32 %1865)
  %1867 = trunc i32 %1866 to i8
  %1868 = and i8 %1867, 1
  %1869 = xor i8 %1868, 1
  store i8 %1869, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1870 = icmp eq i32 %1864, 0
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %15, align 1
  %1872 = lshr i32 %1864, 31
  %1873 = trunc i32 %1872 to i8
  store i8 %1873, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1874 = add i64 %1859, -952
  %1875 = load i32, i32* %EAX.i1578, align 4
  %1876 = add i64 %1861, 10
  store i64 %1876, i64* %PC.i, align 8
  %1877 = inttoptr i64 %1874 to i32*
  store i32 %1875, i32* %1877, align 4
  %1878 = load i64, i64* %PC.i, align 8
  %1879 = load i8, i8* %16, align 1
  %1880 = icmp ne i8 %1879, 0
  %1881 = load i8, i8* %17, align 1
  %1882 = icmp ne i8 %1881, 0
  %1883 = xor i1 %1880, %1882
  %.v28 = select i1 %1883, i64 6, i64 23
  %1884 = add i64 %1878, %.v28
  store i64 %1884, i64* %3, align 8
  br i1 %1883, label %block_400fab, label %block_.L_400fbc

block_400fab:                                     ; preds = %block_.L_400f66
  %1885 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1886 = shl i32 %1885, 1
  %1887 = icmp slt i32 %1885, 0
  %1888 = icmp slt i32 %1886, 0
  %1889 = xor i1 %1887, %1888
  %1890 = zext i32 %1886 to i64
  store i64 %1890, i64* %RAX.i291, align 8
  %.lobit29 = lshr i32 %1885, 31
  %1891 = trunc i32 %.lobit29 to i8
  store i8 %1891, i8* %12, align 1
  %1892 = and i32 %1886, 254
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1897 = icmp eq i32 %1886, 0
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %15, align 1
  %1899 = lshr i32 %1885, 30
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  store i8 %1901, i8* %16, align 1
  %1902 = zext i1 %1889 to i8
  store i8 %1902, i8* %17, align 1
  %1903 = add i64 %1884, 16
  store i64 %1903, i64* %PC.i, align 8
  store i32 %1886, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  br label %block_.L_400fbc

block_.L_400fbc:                                  ; preds = %block_.L_400f66, %block_400fab
  %1904 = phi i64 [ %1903, %block_400fab ], [ %1884, %block_.L_400f66 ]
  %1905 = load i64, i64* %RBP.i, align 8
  %1906 = add i64 %1905, -64
  %1907 = add i64 %1904, 9
  store i64 %1907, i64* %PC.i, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  store i8 0, i8* %12, align 1
  %1910 = and i32 %1909, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1915 = icmp eq i32 %1909, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %15, align 1
  %1917 = lshr i32 %1909, 31
  %1918 = trunc i32 %1917 to i8
  store i8 %1918, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1919 = icmp ne i8 %1918, 0
  %.v30 = select i1 %1919, i64 -250, i64 15
  %1920 = add i64 %1904, %.v30
  store i64 %1920, i64* %3, align 8
  br i1 %1919, label %block_.L_400ec2, label %block_400fcb

block_400fcb:                                     ; preds = %block_.L_400fbc
  store i32 1000, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  store i64 ptrtoint (%G__0x40317d_type* @G__0x40317d to i64), i64* %RSI.i265, align 8
  store i64 0, i64* %RDX.i386, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1921 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1921, i64* %RDI.i642, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1922 = add i64 %1920, -2827
  %1923 = add i64 %1920, 63
  %1924 = load i64, i64* %6, align 8
  %1925 = add i64 %1924, -8
  %1926 = inttoptr i64 %1925 to i64*
  store i64 %1923, i64* %1926, align 8
  store i64 %1925, i64* %6, align 8
  store i64 %1922, i64* %3, align 8
  %1927 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1858)
  %1928 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x403191_type* @G__0x403191 to i64), i64* %RSI.i265, align 8
  %1929 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1929, i64* %RDI.i642, align 8
  %1930 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1931 = zext i32 %1930 to i64
  store i64 %1931, i64* %RDX.i386, align 8
  %1932 = load i64, i64* %RBP.i, align 8
  %1933 = add i64 %1932, -956
  %1934 = load i32, i32* %EAX.i1578, align 4
  %1935 = add i64 %1928, 31
  store i64 %1935, i64* %PC.i, align 8
  %1936 = inttoptr i64 %1933 to i32*
  store i32 %1934, i32* %1936, align 4
  %1937 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1938 = add i64 %1937, -2921
  %1939 = add i64 %1937, 7
  %1940 = load i64, i64* %6, align 8
  %1941 = add i64 %1940, -8
  %1942 = inttoptr i64 %1941 to i64*
  store i64 %1939, i64* %1942, align 8
  store i64 %1941, i64* %6, align 8
  store i64 %1938, i64* %3, align 8
  %1943 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1927)
  %1944 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI.i265, align 8
  %1945 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1945, i64* %RDI.i642, align 8
  %1946 = load i64, i64* %RBP.i, align 8
  %1947 = add i64 %1946, -960
  %1948 = load i32, i32* %EAX.i1578, align 4
  %1949 = add i64 %1944, 24
  store i64 %1949, i64* %PC.i, align 8
  %1950 = inttoptr i64 %1947 to i32*
  store i32 %1948, i32* %1950, align 4
  %1951 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1952 = add i64 %1951, -2952
  %1953 = add i64 %1951, 7
  %1954 = load i64, i64* %6, align 8
  %1955 = add i64 %1954, -8
  %1956 = inttoptr i64 %1955 to i64*
  store i64 %1953, i64* %1956, align 8
  store i64 %1955, i64* %6, align 8
  store i64 %1952, i64* %3, align 8
  %1957 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1943)
  %1958 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI.i265, align 8
  %1959 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1959, i64* %RDI.i642, align 8
  %1960 = load i64, i64* %RBP.i, align 8
  %1961 = add i64 %1960, -964
  %1962 = load i32, i32* %EAX.i1578, align 4
  %1963 = add i64 %1958, 24
  store i64 %1963, i64* %PC.i, align 8
  %1964 = inttoptr i64 %1961 to i32*
  store i32 %1962, i32* %1964, align 4
  %1965 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1966 = add i64 %1965, -2983
  %1967 = add i64 %1965, 7
  %1968 = load i64, i64* %6, align 8
  %1969 = add i64 %1968, -8
  %1970 = inttoptr i64 %1969 to i64*
  store i64 %1967, i64* %1970, align 8
  store i64 %1969, i64* %6, align 8
  store i64 %1966, i64* %3, align 8
  %1971 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1957)
  %1972 = load i64, i64* %PC.i, align 8
  store i32 0, i32* %478, align 1
  store i32 0, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %1973 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1974 = zext i32 %1973 to i64
  store i64 %1974, i64* %RDX.i386, align 8
  %1975 = load <2 x i32>, <2 x i32>* %1654, align 1
  %1976 = load <2 x i32>, <2 x i32>* %1656, align 1
  %1977 = sitofp i32 %1973 to float
  store float %1977, float* %579, align 1
  %1978 = extractelement <2 x i32> %1975, i32 1
  store i32 %1978, i32* %596, align 1
  %1979 = extractelement <2 x i32> %1976, i32 0
  store i32 %1979, i32* %597, align 1
  %1980 = extractelement <2 x i32> %1976, i32 1
  store i32 %1980, i32* %598, align 1
  %1981 = load i64, i64* %RBP.i, align 8
  %1982 = add i64 %1981, -72
  %1983 = add i64 %1972, 19
  store i64 %1983, i64* %PC.i, align 8
  %1984 = bitcast %union.VectorReg* %195 to <2 x float>*
  %1985 = load <2 x float>, <2 x float>* %1984, align 1
  %1986 = load <2 x i32>, <2 x i32>* %1656, align 1
  %1987 = inttoptr i64 %1982 to float*
  %1988 = load float, float* %1987, align 4
  %1989 = extractelement <2 x float> %1985, i32 0
  %1990 = fmul float %1989, %1988
  store float %1990, float* %579, align 1
  %1991 = bitcast <2 x float> %1985 to <2 x i32>
  %1992 = extractelement <2 x i32> %1991, i32 1
  store i32 %1992, i32* %596, align 1
  %1993 = extractelement <2 x i32> %1986, i32 0
  store i32 %1993, i32* %597, align 1
  %1994 = extractelement <2 x i32> %1986, i32 1
  store i32 %1994, i32* %598, align 1
  %1995 = add i64 %1981, -44
  %1996 = add i64 %1972, 24
  store i64 %1996, i64* %PC.i, align 8
  %1997 = load <2 x float>, <2 x float>* %585, align 1
  %1998 = extractelement <2 x float> %1997, i32 0
  %1999 = inttoptr i64 %1995 to float*
  store float %1998, float* %1999, align 4
  %2000 = load i64, i64* %PC.i, align 8
  %2001 = load <2 x float>, <2 x float>* %60, align 1
  %2002 = extractelement <2 x float> %2001, i32 0
  store float %2002, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  store i32 1, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2003 = load i64, i64* %RBP.i, align 8
  %2004 = add i64 %2003, -968
  %2005 = load i32, i32* %EAX.i1578, align 4
  %2006 = add i64 %2000, 26
  store i64 %2006, i64* %PC.i, align 8
  %2007 = inttoptr i64 %2004 to i32*
  store i32 %2005, i32* %2007, align 4
  %2008 = bitcast i64* %589 to double*
  %2009 = bitcast %union.VectorReg* %213 to <2 x i32>*
  %2010 = bitcast i64* %221 to <2 x i32>*
  %.pre13 = load i64, i64* %PC.i, align 8
  %.pre14 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  br label %block_.L_4010a0

block_.L_4010a0:                                  ; preds = %block_.L_4011eb, %block_400fcb
  %2011 = phi i32 [ %.pre14, %block_400fcb ], [ %2473, %block_.L_4011eb ]
  %2012 = phi i64 [ %.pre13, %block_400fcb ], [ %2497, %block_.L_4011eb ]
  %MEMORY.13 = phi %struct.Memory* [ %1971, %block_400fcb ], [ %call2_401304, %block_.L_4011eb ]
  %2013 = add i32 %2011, -6
  %2014 = icmp ult i32 %2011, 6
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %12, align 1
  %2016 = and i32 %2013, 255
  %2017 = tail call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  store i8 %2020, i8* %13, align 1
  %2021 = xor i32 %2011, %2013
  %2022 = lshr i32 %2021, 4
  %2023 = trunc i32 %2022 to i8
  %2024 = and i8 %2023, 1
  store i8 %2024, i8* %14, align 1
  %2025 = icmp eq i32 %2013, 0
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %15, align 1
  %2027 = lshr i32 %2013, 31
  %2028 = trunc i32 %2027 to i8
  store i8 %2028, i8* %16, align 1
  %2029 = lshr i32 %2011, 31
  %2030 = xor i32 %2027, %2029
  %2031 = add nuw nsw i32 %2030, %2029
  %2032 = icmp eq i32 %2031, 2
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %17, align 1
  %2034 = icmp ne i8 %2028, 0
  %2035 = xor i1 %2034, %2032
  %.v31 = select i1 %2035, i64 14, i64 639
  %2036 = add i64 %2012, %.v31
  store i64 %2036, i64* %3, align 8
  br i1 %2035, label %block_4010ae, label %block_.L_40131f

block_4010ae:                                     ; preds = %block_.L_4010a0
  %2037 = add i64 %2036, -2798
  %2038 = add i64 %2036, 5
  %2039 = load i64, i64* %6, align 8
  %2040 = add i64 %2039, -8
  %2041 = inttoptr i64 %2040 to i64*
  store i64 %2038, i64* %2041, align 8
  store i64 %2040, i64* %6, align 8
  store i64 %2037, i64* %3, align 8
  %call2_4010ae = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2037, %struct.Memory* %MEMORY.13)
  %2042 = load i64, i64* %RBP.i, align 8
  %2043 = add i64 %2042, -40
  %2044 = load i64, i64* %PC.i, align 8
  %2045 = add i64 %2044, 5
  store i64 %2045, i64* %PC.i, align 8
  %2046 = load <2 x float>, <2 x float>* %60, align 1
  %2047 = extractelement <2 x float> %2046, i32 0
  %2048 = inttoptr i64 %2043 to float*
  store float %2047, float* %2048, align 4
  %2049 = load i64, i64* %PC.i, align 8
  %2050 = add i64 %2049, 11
  store i64 %2050, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4010c3

block_.L_4010c3:                                  ; preds = %block_4010d7, %block_4010ae
  %2051 = phi i32 [ 0, %block_4010ae ], [ %2105, %block_4010d7 ]
  %2052 = phi i64 [ %2050, %block_4010ae ], [ %2129, %block_4010d7 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_4010ae, %block_4010ae ], [ %call2_40112e, %block_4010d7 ]
  %2053 = zext i32 %2051 to i64
  store i64 %2053, i64* %RAX.i291, align 8
  %2054 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2055 = sub i32 %2051, %2054
  %2056 = icmp ult i32 %2051, %2054
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %12, align 1
  %2058 = and i32 %2055, 255
  %2059 = tail call i32 @llvm.ctpop.i32(i32 %2058)
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = xor i8 %2061, 1
  store i8 %2062, i8* %13, align 1
  %2063 = xor i32 %2054, %2051
  %2064 = xor i32 %2063, %2055
  %2065 = lshr i32 %2064, 4
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  store i8 %2067, i8* %14, align 1
  %2068 = icmp eq i32 %2055, 0
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %15, align 1
  %2070 = lshr i32 %2055, 31
  %2071 = trunc i32 %2070 to i8
  store i8 %2071, i8* %16, align 1
  %2072 = lshr i32 %2051, 31
  %2073 = lshr i32 %2054, 31
  %2074 = xor i32 %2073, %2072
  %2075 = xor i32 %2070, %2072
  %2076 = add nuw nsw i32 %2075, %2074
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %17, align 1
  %2079 = icmp ne i8 %2071, 0
  %2080 = xor i1 %2079, %2077
  %.v32 = select i1 %2080, i64 20, i64 134
  %2081 = add i64 %2052, %.v32
  store i64 %2081, i64* %3, align 8
  br i1 %2080, label %block_4010d7, label %block_.L_401149

block_4010d7:                                     ; preds = %block_.L_4010c3
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %2082 = load i64, i64* %RBP.i, align 8
  %2083 = add i64 %2082, -20
  store i64 %2083, i64* %R8.i856, align 8
  %2084 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RSI.i265, align 8
  %2086 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RDX.i386, align 8
  %2088 = add i64 %2081, 1753
  %2089 = add i64 %2081, 43
  %2090 = load i64, i64* %6, align 8
  %2091 = add i64 %2090, -8
  %2092 = inttoptr i64 %2091 to i64*
  store i64 %2089, i64* %2092, align 8
  store i64 %2091, i64* %6, align 8
  store i64 %2088, i64* %3, align 8
  %call2_4010fd = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %2088, %struct.Memory* %MEMORY.14)
  %2093 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %R8.i856, align 8
  %2094 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2095 = zext i32 %2094 to i64
  store i64 %2095, i64* %RSI.i265, align 8
  %2096 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2097 = zext i32 %2096 to i64
  store i64 %2097, i64* %RDX.i386, align 8
  %2098 = add i64 %2093, 2174
  %2099 = add i64 %2093, 49
  %2100 = load i64, i64* %6, align 8
  %2101 = add i64 %2100, -8
  %2102 = inttoptr i64 %2101 to i64*
  store i64 %2099, i64* %2102, align 8
  store i64 %2101, i64* %6, align 8
  store i64 %2098, i64* %3, align 8
  %call2_40112e = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %2098, %struct.Memory* %call2_4010fd)
  %2103 = load i64, i64* %PC.i, align 8
  %2104 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2105 = add i32 %2104, 1
  %2106 = zext i32 %2105 to i64
  store i64 %2106, i64* %RAX.i291, align 8
  %2107 = icmp eq i32 %2104, -1
  %2108 = icmp eq i32 %2105, 0
  %2109 = or i1 %2107, %2108
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %12, align 1
  %2111 = and i32 %2105, 255
  %2112 = tail call i32 @llvm.ctpop.i32(i32 %2111)
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  %2115 = xor i8 %2114, 1
  store i8 %2115, i8* %13, align 1
  %2116 = xor i32 %2104, %2105
  %2117 = lshr i32 %2116, 4
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  store i8 %2119, i8* %14, align 1
  %2120 = icmp eq i32 %2105, 0
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %15, align 1
  %2122 = lshr i32 %2105, 31
  %2123 = trunc i32 %2122 to i8
  store i8 %2123, i8* %16, align 1
  %2124 = lshr i32 %2104, 31
  %2125 = xor i32 %2122, %2124
  %2126 = add nuw nsw i32 %2125, %2122
  %2127 = icmp eq i32 %2126, 2
  %2128 = zext i1 %2127 to i8
  store i8 %2128, i8* %17, align 1
  store i32 %2105, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2129 = add i64 %2103, -112
  store i64 %2129, i64* %3, align 8
  br label %block_.L_4010c3

block_.L_401149:                                  ; preds = %block_.L_4010c3
  %2130 = add i64 %2081, -2953
  %2131 = add i64 %2081, 5
  %2132 = load i64, i64* %6, align 8
  %2133 = add i64 %2132, -8
  %2134 = inttoptr i64 %2133 to i64*
  store i64 %2131, i64* %2134, align 8
  store i64 %2133, i64* %6, align 8
  store i64 %2130, i64* %3, align 8
  %call2_401149 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2130, %struct.Memory* %MEMORY.14)
  %2135 = load i64, i64* %RBP.i, align 8
  %2136 = add i64 %2135, -40
  %2137 = load i64, i64* %PC.i, align 8
  %2138 = add i64 %2137, 5
  store i64 %2138, i64* %PC.i, align 8
  %2139 = load <2 x float>, <2 x float>* %320, align 1
  %2140 = load <2 x i32>, <2 x i32>* %257, align 1
  %2141 = inttoptr i64 %2136 to float*
  %2142 = load float, float* %2141, align 4
  %2143 = extractelement <2 x float> %2139, i32 0
  %2144 = fsub float %2143, %2142
  store float %2144, float* %21, align 1
  %2145 = bitcast <2 x float> %2139 to <2 x i32>
  %2146 = extractelement <2 x i32> %2145, i32 1
  store i32 %2146, i32* %260, align 1
  %2147 = extractelement <2 x i32> %2140, i32 0
  store i32 %2147, i32* %262, align 1
  %2148 = extractelement <2 x i32> %2140, i32 1
  store i32 %2148, i32* %264, align 1
  %2149 = add i64 %2135, -44
  %2150 = add i64 %2137, 10
  store i64 %2150, i64* %PC.i, align 8
  %2151 = load <2 x float>, <2 x float>* %320, align 1
  %2152 = load <2 x i32>, <2 x i32>* %257, align 1
  %2153 = inttoptr i64 %2149 to float*
  %2154 = load float, float* %2153, align 4
  %2155 = extractelement <2 x float> %2151, i32 0
  %2156 = fsub float %2155, %2154
  store float %2156, float* %21, align 1
  %2157 = bitcast <2 x float> %2151 to <2 x i32>
  %2158 = extractelement <2 x i32> %2157, i32 1
  store i32 %2158, i32* %260, align 1
  %2159 = extractelement <2 x i32> %2152, i32 0
  store i32 %2159, i32* %262, align 1
  %2160 = extractelement <2 x i32> %2152, i32 1
  store i32 %2160, i32* %264, align 1
  %2161 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RAX.i291, align 8
  %2163 = load <2 x i32>, <2 x i32>* %1654, align 1
  %2164 = load <2 x i32>, <2 x i32>* %1656, align 1
  %2165 = sitofp i32 %2161 to float
  store float %2165, float* %579, align 1
  %2166 = extractelement <2 x i32> %2163, i32 1
  store i32 %2166, i32* %596, align 1
  %2167 = extractelement <2 x i32> %2164, i32 0
  store i32 %2167, i32* %597, align 1
  %2168 = extractelement <2 x i32> %2164, i32 1
  store i32 %2168, i32* %598, align 1
  %2169 = load <2 x float>, <2 x float>* %320, align 1
  %2170 = load <2 x i32>, <2 x i32>* %257, align 1
  %2171 = load <2 x float>, <2 x float>* %585, align 1
  %2172 = extractelement <2 x float> %2169, i32 0
  %2173 = extractelement <2 x float> %2171, i32 0
  %2174 = fdiv float %2172, %2173
  store float %2174, float* %21, align 1
  %2175 = bitcast <2 x float> %2169 to <2 x i32>
  %2176 = extractelement <2 x i32> %2175, i32 1
  store i32 %2176, i32* %260, align 1
  %2177 = extractelement <2 x i32> %2170, i32 0
  store i32 %2177, i32* %262, align 1
  %2178 = extractelement <2 x i32> %2170, i32 1
  store i32 %2178, i32* %264, align 1
  %2179 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2180 = sext i32 %2179 to i64
  store i64 %2180, i64* %RCX.i373, align 8
  %2181 = shl nsw i64 %2180, 2
  %2182 = add nsw i64 %2181, 6470352
  %2183 = add i64 %2137, 42
  store i64 %2183, i64* %PC.i, align 8
  %2184 = load <2 x float>, <2 x float>* %60, align 1
  %2185 = extractelement <2 x float> %2184, i32 0
  %2186 = inttoptr i64 %2182 to float*
  store float %2185, float* %2186, align 4
  %2187 = load i64, i64* %PC.i, align 8
  %2188 = add i64 %2187, -3000
  %2189 = add i64 %2187, 5
  %2190 = load i64, i64* %6, align 8
  %2191 = add i64 %2190, -8
  %2192 = inttoptr i64 %2191 to i64*
  store i64 %2189, i64* %2192, align 8
  store i64 %2191, i64* %6, align 8
  store i64 %2188, i64* %3, align 8
  %call2_401178 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2188, %struct.Memory* %call2_401149)
  %2193 = load i64, i64* %RBP.i, align 8
  %2194 = add i64 %2193, -40
  %2195 = load i64, i64* %PC.i, align 8
  %2196 = add i64 %2195, 5
  store i64 %2196, i64* %PC.i, align 8
  %2197 = load <2 x float>, <2 x float>* %60, align 1
  %2198 = extractelement <2 x float> %2197, i32 0
  %2199 = inttoptr i64 %2194 to float*
  store float %2198, float* %2199, align 4
  %2200 = load i64, i64* %PC.i, align 8
  %2201 = add i64 %2200, 11
  store i64 %2201, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_40118d

block_.L_40118d:                                  ; preds = %block_4011a1, %block_.L_401149
  %2202 = phi i32 [ 0, %block_.L_401149 ], [ %2244, %block_4011a1 ]
  %2203 = phi i64 [ %2201, %block_.L_401149 ], [ %2268, %block_4011a1 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_401178, %block_.L_401149 ], [ %call2_4011d0, %block_4011a1 ]
  %2204 = zext i32 %2202 to i64
  store i64 %2204, i64* %RAX.i291, align 8
  %2205 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2206 = sub i32 %2202, %2205
  %2207 = icmp ult i32 %2202, %2205
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %12, align 1
  %2209 = and i32 %2206, 255
  %2210 = tail call i32 @llvm.ctpop.i32(i32 %2209)
  %2211 = trunc i32 %2210 to i8
  %2212 = and i8 %2211, 1
  %2213 = xor i8 %2212, 1
  store i8 %2213, i8* %13, align 1
  %2214 = xor i32 %2205, %2202
  %2215 = xor i32 %2214, %2206
  %2216 = lshr i32 %2215, 4
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  store i8 %2218, i8* %14, align 1
  %2219 = icmp eq i32 %2206, 0
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %15, align 1
  %2221 = lshr i32 %2206, 31
  %2222 = trunc i32 %2221 to i8
  store i8 %2222, i8* %16, align 1
  %2223 = lshr i32 %2202, 31
  %2224 = lshr i32 %2205, 31
  %2225 = xor i32 %2224, %2223
  %2226 = xor i32 %2221, %2223
  %2227 = add nuw nsw i32 %2226, %2225
  %2228 = icmp eq i32 %2227, 2
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %17, align 1
  %2230 = icmp ne i8 %2222, 0
  %2231 = xor i1 %2230, %2228
  %.v33 = select i1 %2231, i64 20, i64 94
  %2232 = add i64 %2203, %.v33
  store i64 %2232, i64* %3, align 8
  br i1 %2231, label %block_4011a1, label %block_.L_4011eb

block_4011a1:                                     ; preds = %block_.L_40118d
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %R8.i856, align 8
  store i64 0, i64* %339, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2233 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2234 = zext i32 %2233 to i64
  store i64 %2234, i64* %RSI.i265, align 8
  %2235 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RDX.i386, align 8
  %2237 = add i64 %2232, 2799
  %2238 = add i64 %2232, 52
  %2239 = load i64, i64* %6, align 8
  %2240 = add i64 %2239, -8
  %2241 = inttoptr i64 %2240 to i64*
  store i64 %2238, i64* %2241, align 8
  store i64 %2240, i64* %6, align 8
  store i64 %2237, i64* %3, align 8
  %call2_4011d0 = tail call %struct.Memory* @sub_401c90.dgesl(%struct.State* %0, i64 %2237, %struct.Memory* %MEMORY.15)
  %2242 = load i64, i64* %PC.i, align 8
  %2243 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2244 = add i32 %2243, 1
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RAX.i291, align 8
  %2246 = icmp eq i32 %2243, -1
  %2247 = icmp eq i32 %2244, 0
  %2248 = or i1 %2246, %2247
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %12, align 1
  %2250 = and i32 %2244, 255
  %2251 = tail call i32 @llvm.ctpop.i32(i32 %2250)
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = xor i8 %2253, 1
  store i8 %2254, i8* %13, align 1
  %2255 = xor i32 %2243, %2244
  %2256 = lshr i32 %2255, 4
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  store i8 %2258, i8* %14, align 1
  %2259 = icmp eq i32 %2244, 0
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %15, align 1
  %2261 = lshr i32 %2244, 31
  %2262 = trunc i32 %2261 to i8
  store i8 %2262, i8* %16, align 1
  %2263 = lshr i32 %2243, 31
  %2264 = xor i32 %2261, %2263
  %2265 = add nuw nsw i32 %2264, %2261
  %2266 = icmp eq i32 %2265, 2
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %17, align 1
  store i32 %2244, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2268 = add i64 %2242, -72
  store i64 %2268, i64* %3, align 8
  br label %block_.L_40118d

block_.L_4011eb:                                  ; preds = %block_.L_40118d
  %2269 = add i64 %2232, -3115
  %2270 = add i64 %2232, 5
  %2271 = load i64, i64* %6, align 8
  %2272 = add i64 %2271, -8
  %2273 = inttoptr i64 %2272 to i64*
  store i64 %2270, i64* %2273, align 8
  store i64 %2272, i64* %6, align 8
  store i64 %2269, i64* %3, align 8
  %call2_4011eb = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2269, %struct.Memory* %MEMORY.15)
  %2274 = load i64, i64* %PC.i, align 8
  %2275 = load i64, i64* bitcast (%G_0x1ce0__rip__type* @G_0x1ce0__rip_ to i64*), align 8
  %2276 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %195, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2275, i64* %2276, align 1
  store double 0.000000e+00, double* %199, align 1
  %2277 = load i64, i64* bitcast (%G_0x1ce8__rip__type* @G_0x1ce8__rip_ to i64*), align 8
  %2278 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %208, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2277, i64* %2278, align 1
  store double 0.000000e+00, double* %2008, align 1
  %2279 = load i64, i64* %RBP.i, align 8
  %2280 = add i64 %2279, -40
  %2281 = add i64 %2274, 21
  store i64 %2281, i64* %PC.i, align 8
  %2282 = load <2 x float>, <2 x float>* %320, align 1
  %2283 = load <2 x i32>, <2 x i32>* %257, align 1
  %2284 = inttoptr i64 %2280 to float*
  %2285 = load float, float* %2284, align 4
  %2286 = extractelement <2 x float> %2282, i32 0
  %2287 = fsub float %2286, %2285
  store float %2287, float* %21, align 1
  %2288 = bitcast <2 x float> %2282 to <2 x i32>
  %2289 = extractelement <2 x i32> %2288, i32 1
  store i32 %2289, i32* %260, align 1
  %2290 = extractelement <2 x i32> %2283, i32 0
  store i32 %2290, i32* %262, align 1
  %2291 = extractelement <2 x i32> %2283, i32 1
  store i32 %2291, i32* %264, align 1
  %2292 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2293 = zext i32 %2292 to i64
  store i64 %2293, i64* %RAX.i291, align 8
  %2294 = load <2 x i32>, <2 x i32>* %2009, align 1
  %2295 = load <2 x i32>, <2 x i32>* %2010, align 1
  %2296 = sitofp i32 %2292 to float
  store float %2296, float* %1154, align 1
  %2297 = extractelement <2 x i32> %2294, i32 1
  store i32 %2297, i32* %220, align 1
  %2298 = extractelement <2 x i32> %2295, i32 0
  store i32 %2298, i32* %222, align 1
  %2299 = extractelement <2 x i32> %2295, i32 1
  store i32 %2299, i32* %224, align 1
  %2300 = load <2 x float>, <2 x float>* %320, align 1
  %2301 = load <2 x i32>, <2 x i32>* %257, align 1
  %2302 = load <2 x float>, <2 x float>* %1159, align 1
  %2303 = extractelement <2 x float> %2300, i32 0
  %2304 = extractelement <2 x float> %2302, i32 0
  %2305 = fdiv float %2303, %2304
  store float %2305, float* %21, align 1
  %2306 = bitcast <2 x float> %2300 to <2 x i32>
  %2307 = extractelement <2 x i32> %2306, i32 1
  store i32 %2307, i32* %260, align 1
  %2308 = extractelement <2 x i32> %2301, i32 0
  store i32 %2308, i32* %262, align 1
  %2309 = extractelement <2 x i32> %2301, i32 1
  store i32 %2309, i32* %264, align 1
  %2310 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2311 = sext i32 %2310 to i64
  %2312 = shl nsw i64 %2311, 2
  %2313 = add nsw i64 %2312, 6470412
  %2314 = add i64 %2274, 53
  store i64 %2314, i64* %PC.i, align 8
  %2315 = load <2 x float>, <2 x float>* %60, align 1
  %2316 = extractelement <2 x float> %2315, i32 0
  %2317 = inttoptr i64 %2313 to float*
  store float %2316, float* %2317, align 4
  %2318 = load i64, i64* %PC.i, align 8
  %2319 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2320 = sext i32 %2319 to i64
  store i64 %2320, i64* %RCX.i373, align 8
  %2321 = shl nsw i64 %2320, 2
  %2322 = add nsw i64 %2321, 6470352
  %2323 = add i64 %2318, 17
  store i64 %2323, i64* %PC.i, align 8
  %2324 = inttoptr i64 %2322 to i32*
  %2325 = load i32, i32* %2324, align 4
  %2326 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %2325, i32* %2326, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  store i64 %2320, i64* %RCX.i373, align 8
  %2327 = add nsw i64 %2321, 6470412
  %2328 = add i64 %2318, 34
  store i64 %2328, i64* %PC.i, align 8
  %2329 = load <2 x float>, <2 x float>* %320, align 1
  %2330 = load <2 x i32>, <2 x i32>* %257, align 1
  %2331 = inttoptr i64 %2327 to float*
  %2332 = load float, float* %2331, align 4
  %2333 = extractelement <2 x float> %2329, i32 0
  %2334 = fadd float %2333, %2332
  store float %2334, float* %21, align 1
  %2335 = bitcast <2 x float> %2329 to <2 x i32>
  %2336 = extractelement <2 x i32> %2335, i32 1
  store i32 %2336, i32* %260, align 1
  %2337 = extractelement <2 x i32> %2330, i32 0
  store i32 %2337, i32* %262, align 1
  %2338 = extractelement <2 x i32> %2330, i32 1
  store i32 %2338, i32* %264, align 1
  %2339 = load i64, i64* %RBP.i, align 8
  %2340 = add i64 %2339, -16
  %2341 = add i64 %2318, 39
  store i64 %2341, i64* %PC.i, align 8
  %2342 = load <2 x float>, <2 x float>* %60, align 1
  %2343 = extractelement <2 x float> %2342, i32 0
  %2344 = inttoptr i64 %2340 to float*
  store float %2343, float* %2344, align 4
  %2345 = load i64, i64* %RBP.i, align 8
  %2346 = add i64 %2345, -16
  %2347 = load i64, i64* %PC.i, align 8
  %2348 = add i64 %2347, 5
  store i64 %2348, i64* %PC.i, align 8
  %2349 = inttoptr i64 %2346 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %2350, i32* %2351, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2352 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2353 = sext i32 %2352 to i64
  store i64 %2353, i64* %RCX.i373, align 8
  %2354 = shl nsw i64 %2353, 2
  %2355 = add nsw i64 %2354, 6470472
  %2356 = add i64 %2347, 22
  store i64 %2356, i64* %PC.i, align 8
  %2357 = load <2 x float>, <2 x float>* %60, align 1
  %2358 = extractelement <2 x float> %2357, i32 0
  %2359 = inttoptr i64 %2355 to float*
  store float %2358, float* %2359, align 4
  %2360 = load i64, i64* %RBP.i, align 8
  %2361 = add i64 %2360, -12
  %2362 = load i64, i64* %PC.i, align 8
  %2363 = add i64 %2362, 5
  store i64 %2363, i64* %PC.i, align 8
  %2364 = inttoptr i64 %2361 to i32*
  %2365 = load i32, i32* %2364, align 4
  %2366 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %2365, i32* %2366, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2367 = load <2 x float>, <2 x float>* %60, align 1
  %2368 = extractelement <2 x float> %2367, i32 0
  %2369 = fpext float %2368 to double
  store double %2369, double* %193, align 1
  %2370 = add i64 %2360, -16
  %2371 = add i64 %2362, 14
  store i64 %2371, i64* %PC.i, align 8
  %2372 = inttoptr i64 %2370 to i32*
  %2373 = load i32, i32* %2372, align 4
  %2374 = bitcast %union.VectorReg* %213 to i32*
  store i32 %2373, i32* %2374, align 1
  store float 0.000000e+00, float* %1156, align 1
  store float 0.000000e+00, float* %1157, align 1
  store float 0.000000e+00, float* %1158, align 1
  %2375 = load <2 x float>, <2 x float>* %1159, align 1
  %2376 = extractelement <2 x float> %2375, i32 0
  %2377 = fpext float %2376 to double
  store double %2377, double* %225, align 1
  %2378 = load double, double* %212, align 1
  %2379 = fmul double %2378, %2377
  store double %2379, double* %212, align 1
  %2380 = bitcast i64* %25 to <2 x i32>*
  %2381 = load <2 x i32>, <2 x i32>* %2380, align 1
  %2382 = fdiv double %2369, %2379
  %2383 = bitcast double %2382 to <2 x i32>
  %2384 = fptrunc double %2382 to float
  store float %2384, float* %21, align 1
  %2385 = extractelement <2 x i32> %2383, i32 1
  store i32 %2385, i32* %260, align 1
  %2386 = extractelement <2 x i32> %2381, i32 0
  store i32 %2386, i32* %262, align 1
  %2387 = extractelement <2 x i32> %2381, i32 1
  store i32 %2387, i32* %264, align 1
  %2388 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2389 = sext i32 %2388 to i64
  %2390 = shl nsw i64 %2389, 2
  %2391 = add nsw i64 %2390, 6470532
  %2392 = add i64 %2362, 47
  store i64 %2392, i64* %PC.i, align 8
  %2393 = load <2 x float>, <2 x float>* %60, align 1
  %2394 = extractelement <2 x float> %2393, i32 0
  %2395 = inttoptr i64 %2391 to float*
  store float %2394, float* %2395, align 4
  %2396 = load i64, i64* %PC.i, align 8
  %2397 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2398 = sext i32 %2397 to i64
  store i64 %2398, i64* %RCX.i373, align 8
  %2399 = shl nsw i64 %2398, 2
  %2400 = add nsw i64 %2399, 6470532
  %2401 = add i64 %2396, 17
  store i64 %2401, i64* %PC.i, align 8
  %2402 = inttoptr i64 %2400 to i32*
  %2403 = load i32, i32* %2402, align 4
  %2404 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %2403, i32* %2404, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2405 = load <2 x float>, <2 x float>* %60, align 1
  %2406 = extractelement <2 x float> %2405, i32 0
  %2407 = fpext float %2406 to double
  %2408 = load double, double* %197, align 1
  %2409 = fdiv double %2408, %2407
  store double %2409, double* %197, align 1
  %2410 = bitcast double %2407 to <2 x i32>
  %2411 = load <2 x i32>, <2 x i32>* %257, align 1
  %2412 = fptrunc double %2409 to float
  store float %2412, float* %21, align 1
  %2413 = extractelement <2 x i32> %2410, i32 1
  store i32 %2413, i32* %260, align 1
  %2414 = extractelement <2 x i32> %2411, i32 0
  store i32 %2414, i32* %262, align 1
  %2415 = extractelement <2 x i32> %2411, i32 1
  store i32 %2415, i32* %264, align 1
  store i64 %2398, i64* %RCX.i373, align 8
  %2416 = add nsw i64 %2399, 6470592
  %2417 = add i64 %2396, 46
  store i64 %2417, i64* %PC.i, align 8
  %2418 = load <2 x float>, <2 x float>* %60, align 1
  %2419 = extractelement <2 x float> %2418, i32 0
  %2420 = inttoptr i64 %2416 to float*
  store float %2419, float* %2420, align 4
  %2421 = load i64, i64* %RBP.i, align 8
  %2422 = add i64 %2421, -16
  %2423 = load i64, i64* %PC.i, align 8
  %2424 = add i64 %2423, 5
  store i64 %2424, i64* %PC.i, align 8
  %2425 = inttoptr i64 %2422 to i32*
  %2426 = load i32, i32* %2425, align 4
  %2427 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %2426, i32* %2427, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2428 = add i64 %2421, -8
  %2429 = add i64 %2423, 10
  store i64 %2429, i64* %PC.i, align 8
  %2430 = load <2 x float>, <2 x float>* %320, align 1
  %2431 = inttoptr i64 %2428 to float*
  %2432 = load float, float* %2431, align 4
  %2433 = extractelement <2 x float> %2430, i32 0
  %2434 = fdiv float %2433, %2432
  store float %2434, float* %21, align 1
  %2435 = bitcast <2 x float> %2430 to <2 x i32>
  %2436 = extractelement <2 x i32> %2435, i32 1
  store i32 %2436, i32* %260, align 1
  %2437 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2438 = sext i32 %2437 to i64
  %2439 = shl nsw i64 %2438, 2
  %2440 = add nsw i64 %2439, 6470652
  %2441 = add i64 %2423, 27
  store i64 %2441, i64* %PC.i, align 8
  %2442 = load <2 x float>, <2 x float>* %60, align 1
  %2443 = extractelement <2 x float> %2442, i32 0
  %2444 = inttoptr i64 %2440 to float*
  store float %2443, float* %2444, align 4
  %2445 = load i64, i64* %PC.i, align 8
  %2446 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  %2447 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %2446, i32* %2447, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2448 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2449 = sext i32 %2448 to i64
  store i64 %2449, i64* %RCX.i373, align 8
  %2450 = shl nsw i64 %2449, 2
  %2451 = add nsw i64 %2450, 6470532
  %2452 = add i64 %2445, 26
  store i64 %2452, i64* %PC.i, align 8
  %2453 = load <2 x float>, <2 x float>* %320, align 1
  %2454 = load <2 x i32>, <2 x i32>* %257, align 1
  %2455 = inttoptr i64 %2451 to float*
  %2456 = load float, float* %2455, align 4
  %2457 = extractelement <2 x float> %2453, i32 0
  %2458 = fadd float %2457, %2456
  store float %2458, float* %21, align 1
  %2459 = bitcast <2 x float> %2453 to <2 x i32>
  %2460 = extractelement <2 x i32> %2459, i32 1
  store i32 %2460, i32* %260, align 1
  %2461 = extractelement <2 x i32> %2454, i32 0
  store i32 %2461, i32* %262, align 1
  %2462 = extractelement <2 x i32> %2454, i32 1
  store i32 %2462, i32* %264, align 1
  %2463 = load <2 x float>, <2 x float>* %60, align 1
  %2464 = extractelement <2 x float> %2463, i32 0
  store float %2464, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %2465 = zext i32 %2448 to i64
  store i64 %2465, i64* %RDI.i642, align 8
  %2466 = add i64 %2445, 5622
  %2467 = add i64 %2445, 47
  %2468 = load i64, i64* %6, align 8
  %2469 = add i64 %2468, -8
  %2470 = inttoptr i64 %2469 to i64*
  store i64 %2467, i64* %2470, align 8
  store i64 %2469, i64* %6, align 8
  store i64 %2466, i64* %3, align 8
  %call2_401304 = tail call %struct.Memory* @sub_4028d0.print_time(%struct.State* %0, i64 %2466, %struct.Memory* %call2_4011eb)
  %2471 = load i64, i64* %PC.i, align 8
  %2472 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2473 = add i32 %2472, 1
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %RAX.i291, align 8
  %2475 = icmp eq i32 %2472, -1
  %2476 = icmp eq i32 %2473, 0
  %2477 = or i1 %2475, %2476
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %12, align 1
  %2479 = and i32 %2473, 255
  %2480 = tail call i32 @llvm.ctpop.i32(i32 %2479)
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  store i8 %2483, i8* %13, align 1
  %2484 = xor i32 %2472, %2473
  %2485 = lshr i32 %2484, 4
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  store i8 %2487, i8* %14, align 1
  %2488 = icmp eq i32 %2473, 0
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %15, align 1
  %2490 = lshr i32 %2473, 31
  %2491 = trunc i32 %2490 to i8
  store i8 %2491, i8* %16, align 1
  %2492 = lshr i32 %2472, 31
  %2493 = xor i32 %2490, %2492
  %2494 = add nuw nsw i32 %2493, %2490
  %2495 = icmp eq i32 %2494, 2
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %17, align 1
  store i32 %2473, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2497 = add i64 %2471, -617
  store i64 %2497, i64* %3, align 8
  br label %block_.L_4010a0

block_.L_40131f:                                  ; preds = %block_.L_4010a0
  store i64 ptrtoint (%G__0x4031c0_type* @G__0x4031c0 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %478, align 1
  store i32 0, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %2498 = load double, double* bitcast (%G_0x1bbc__rip__type* @G_0x1bbc__rip_ to double*), align 8
  %2499 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  %2500 = bitcast %union.VectorReg* %208 to i32*
  store i32 %2499, i32* %2500, align 1
  store float 0.000000e+00, float* %588, align 1
  store float 0.000000e+00, float* %590, align 1
  store float 0.000000e+00, float* %592, align 1
  %2501 = load <2 x float>, <2 x float>* %1008, align 1
  %2502 = extractelement <2 x float> %2501, i32 0
  %2503 = fpext float %2502 to double
  %2504 = fdiv double %2503, %2498
  store double %2504, double* %212, align 1
  %2505 = bitcast double %2498 to <2 x i32>
  %2506 = fptrunc double %2504 to float
  store float %2506, float* %579, align 1
  %2507 = extractelement <2 x i32> %2505, i32 1
  store i32 %2507, i32* %596, align 1
  store i32 0, i32* %597, align 1
  store i32 0, i32* %598, align 1
  %2508 = load <2 x float>, <2 x float>* %585, align 1
  %2509 = extractelement <2 x float> %2508, i32 0
  store float %2509, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %2510 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2510, i64* %RDI.i642, align 8
  store i8 1, i8* %AL.i1589, align 1
  %2511 = add i64 %2036, -3679
  %2512 = add i64 %2036, 66
  %2513 = load i64, i64* %6, align 8
  %2514 = add i64 %2513, -8
  %2515 = inttoptr i64 %2514 to i64*
  store i64 %2512, i64* %2515, align 8
  store i64 %2514, i64* %6, align 8
  store i64 %2511, i64* %3, align 8
  %2516 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.13)
  %2517 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4031e9_type* @G__0x4031e9 to i64), i64* %RSI.i265, align 8
  %2518 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2518, i64* %RDI.i642, align 8
  %2519 = load i64, i64* %RBP.i, align 8
  %2520 = add i64 %2519, -972
  %2521 = load i32, i32* %EAX.i1578, align 4
  %2522 = add i64 %2517, 24
  store i64 %2522, i64* %PC.i, align 8
  %2523 = inttoptr i64 %2520 to i32*
  store i32 %2521, i32* %2523, align 4
  %2524 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2525 = add i64 %2524, -3769
  %2526 = add i64 %2524, 7
  %2527 = load i64, i64* %6, align 8
  %2528 = add i64 %2527, -8
  %2529 = inttoptr i64 %2528 to i64*
  store i64 %2526, i64* %2529, align 8
  store i64 %2528, i64* %6, align 8
  store i64 %2525, i64* %3, align 8
  %2530 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2516)
  %2531 = load i64, i64* %RBP.i, align 8
  %2532 = add i64 %2531, -976
  %2533 = load i32, i32* %EAX.i1578, align 4
  %2534 = load i64, i64* %PC.i, align 8
  %2535 = add i64 %2534, 6
  store i64 %2535, i64* %PC.i, align 8
  %2536 = inttoptr i64 %2532 to i32*
  store i32 %2533, i32* %2536, align 4
  %2537 = load i64, i64* %PC.i, align 8
  %2538 = add i64 %2537, -3526
  %2539 = add i64 %2537, 5
  %2540 = load i64, i64* %6, align 8
  %2541 = add i64 %2540, -8
  %2542 = inttoptr i64 %2541 to i64*
  store i64 %2539, i64* %2542, align 8
  store i64 %2541, i64* %6, align 8
  store i64 %2538, i64* %3, align 8
  %call2_401386 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2538, %struct.Memory* %2530)
  %2543 = load i64, i64* %RBP.i, align 8
  %2544 = add i64 %2543, -80
  %2545 = load i64, i64* %PC.i, align 8
  %2546 = add i64 %2545, 5
  store i64 %2546, i64* %PC.i, align 8
  %2547 = load <2 x float>, <2 x float>* %60, align 1
  %2548 = extractelement <2 x float> %2547, i32 0
  %2549 = inttoptr i64 %2544 to float*
  store float %2548, float* %2549, align 4
  %2550 = load i64, i64* %PC.i, align 8
  %2551 = add i64 %2550, 11
  store i64 %2551, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_40139b

block_.L_40139b:                                  ; preds = %block_4013ab, %block_.L_40131f
  %2552 = phi i32 [ 0, %block_.L_40131f ], [ %2599, %block_4013ab ]
  %2553 = phi i64 [ %2551, %block_.L_40131f ], [ %2623, %block_4013ab ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_401386, %block_.L_40131f ], [ %call2_4013d1, %block_4013ab ]
  %2554 = zext i32 %2552 to i64
  store i64 %2554, i64* %RAX.i291, align 8
  %2555 = load i64, i64* %RBP.i, align 8
  %2556 = add i64 %2555, -68
  %2557 = add i64 %2553, 10
  store i64 %2557, i64* %PC.i, align 8
  %2558 = inttoptr i64 %2556 to i32*
  %2559 = load i32, i32* %2558, align 4
  %2560 = sub i32 %2552, %2559
  %2561 = icmp ult i32 %2552, %2559
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %12, align 1
  %2563 = and i32 %2560, 255
  %2564 = tail call i32 @llvm.ctpop.i32(i32 %2563)
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  %2567 = xor i8 %2566, 1
  store i8 %2567, i8* %13, align 1
  %2568 = xor i32 %2559, %2552
  %2569 = xor i32 %2568, %2560
  %2570 = lshr i32 %2569, 4
  %2571 = trunc i32 %2570 to i8
  %2572 = and i8 %2571, 1
  store i8 %2572, i8* %14, align 1
  %2573 = icmp eq i32 %2560, 0
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %15, align 1
  %2575 = lshr i32 %2560, 31
  %2576 = trunc i32 %2575 to i8
  store i8 %2576, i8* %16, align 1
  %2577 = lshr i32 %2552, 31
  %2578 = lshr i32 %2559, 31
  %2579 = xor i32 %2578, %2577
  %2580 = xor i32 %2575, %2577
  %2581 = add nuw nsw i32 %2580, %2579
  %2582 = icmp eq i32 %2581, 2
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %17, align 1
  %2584 = icmp ne i8 %2576, 0
  %2585 = xor i1 %2584, %2582
  %.v34 = select i1 %2585, i64 16, i64 81
  %2586 = add i64 %2553, %.v34
  store i64 %2586, i64* %3, align 8
  br i1 %2585, label %block_4013ab, label %block_.L_4013ec

block_4013ab:                                     ; preds = %block_.L_40139b
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %2587 = add i64 %2555, -20
  store i64 %2587, i64* %R8.i856, align 8
  %2588 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2589 = zext i32 %2588 to i64
  store i64 %2589, i64* %RSI.i265, align 8
  %2590 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2591 = zext i32 %2590 to i64
  store i64 %2591, i64* %RDX.i386, align 8
  %2592 = add i64 %2586, 1029
  %2593 = add i64 %2586, 43
  %2594 = load i64, i64* %6, align 8
  %2595 = add i64 %2594, -8
  %2596 = inttoptr i64 %2595 to i64*
  store i64 %2593, i64* %2596, align 8
  store i64 %2595, i64* %6, align 8
  store i64 %2592, i64* %3, align 8
  %call2_4013d1 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %2592, %struct.Memory* %MEMORY.16)
  %2597 = load i64, i64* %PC.i, align 8
  %2598 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2599 = add i32 %2598, 1
  %2600 = zext i32 %2599 to i64
  store i64 %2600, i64* %RAX.i291, align 8
  %2601 = icmp eq i32 %2598, -1
  %2602 = icmp eq i32 %2599, 0
  %2603 = or i1 %2601, %2602
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %12, align 1
  %2605 = and i32 %2599, 255
  %2606 = tail call i32 @llvm.ctpop.i32(i32 %2605)
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  %2609 = xor i8 %2608, 1
  store i8 %2609, i8* %13, align 1
  %2610 = xor i32 %2598, %2599
  %2611 = lshr i32 %2610, 4
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  store i8 %2613, i8* %14, align 1
  %2614 = icmp eq i32 %2599, 0
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %15, align 1
  %2616 = lshr i32 %2599, 31
  %2617 = trunc i32 %2616 to i8
  store i8 %2617, i8* %16, align 1
  %2618 = lshr i32 %2598, 31
  %2619 = xor i32 %2616, %2618
  %2620 = add nuw nsw i32 %2619, %2616
  %2621 = icmp eq i32 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %17, align 1
  store i32 %2599, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2623 = add i64 %2597, -59
  store i64 %2623, i64* %3, align 8
  br label %block_.L_40139b

block_.L_4013ec:                                  ; preds = %block_.L_40139b
  %2624 = add i64 %2586, -3628
  %2625 = add i64 %2586, 5
  %2626 = load i64, i64* %6, align 8
  %2627 = add i64 %2626, -8
  %2628 = inttoptr i64 %2627 to i64*
  store i64 %2625, i64* %2628, align 8
  store i64 %2627, i64* %6, align 8
  store i64 %2624, i64* %3, align 8
  %call2_4013ec = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2624, %struct.Memory* %MEMORY.16)
  %2629 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x403127_type* @G__0x403127 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %595, align 1
  store i32 0, i32* %596, align 1
  store i32 0, i32* %597, align 1
  store i32 0, i32* %598, align 1
  %2630 = load i64, i64* %RBP.i, align 8
  %2631 = add i64 %2630, -84
  %2632 = add i64 %2629, 18
  store i64 %2632, i64* %PC.i, align 8
  %2633 = load <2 x float>, <2 x float>* %60, align 1
  %2634 = extractelement <2 x float> %2633, i32 0
  %2635 = inttoptr i64 %2631 to float*
  store float %2634, float* %2635, align 4
  %2636 = load i64, i64* %RBP.i, align 8
  %2637 = add i64 %2636, -84
  %2638 = load i64, i64* %PC.i, align 8
  %2639 = add i64 %2638, 5
  store i64 %2639, i64* %PC.i, align 8
  %2640 = inttoptr i64 %2637 to i32*
  %2641 = load i32, i32* %2640, align 4
  %2642 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %2641, i32* %2642, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2643 = add i64 %2636, -80
  %2644 = add i64 %2638, 10
  store i64 %2644, i64* %PC.i, align 8
  %2645 = load <2 x float>, <2 x float>* %320, align 1
  %2646 = load <2 x i32>, <2 x i32>* %257, align 1
  %2647 = inttoptr i64 %2643 to float*
  %2648 = load float, float* %2647, align 4
  %2649 = extractelement <2 x float> %2645, i32 0
  %2650 = fsub float %2649, %2648
  store float %2650, float* %21, align 1
  %2651 = bitcast <2 x float> %2645 to <2 x i32>
  %2652 = extractelement <2 x i32> %2651, i32 1
  store i32 %2652, i32* %260, align 1
  %2653 = extractelement <2 x i32> %2646, i32 0
  store i32 %2653, i32* %262, align 1
  %2654 = extractelement <2 x i32> %2646, i32 1
  store i32 %2654, i32* %264, align 1
  %2655 = add i64 %2636, -76
  %2656 = add i64 %2638, 15
  store i64 %2656, i64* %PC.i, align 8
  %2657 = load <2 x float>, <2 x float>* %60, align 1
  %2658 = extractelement <2 x float> %2657, i32 0
  %2659 = inttoptr i64 %2655 to float*
  store float %2658, float* %2659, align 4
  %2660 = load i64, i64* %RBP.i, align 8
  %2661 = add i64 %2660, -76
  %2662 = load i64, i64* %PC.i, align 8
  %2663 = add i64 %2662, 5
  store i64 %2663, i64* %PC.i, align 8
  %2664 = inttoptr i64 %2661 to float*
  %2665 = inttoptr i64 %2661 to i32*
  %2666 = load i32, i32* %2665, align 4
  %2667 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %2666, i32* %2667, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2668 = load <2 x float>, <2 x float>* %60, align 1
  %2669 = extractelement <2 x float> %2668, i32 0
  %2670 = fpext float %2669 to double
  store double %2670, double* %193, align 1
  %2671 = add i64 %2660, -68
  %2672 = add i64 %2662, 12
  store i64 %2672, i64* %PC.i, align 8
  %2673 = inttoptr i64 %2671 to i32*
  %2674 = load i32, i32* %2673, align 4
  %2675 = zext i32 %2674 to i64
  store i64 %2675, i64* %RAX.i291, align 8
  %2676 = sitofp i32 %2674 to double
  store double %2676, double* %212, align 1
  %2677 = fdiv double %2670, %2676
  %2678 = bitcast double %2677 to <2 x i32>
  %2679 = fptrunc double %2677 to float
  store float %2679, float* %21, align 1
  %2680 = extractelement <2 x i32> %2678, i32 1
  store i32 %2680, i32* %260, align 1
  %2681 = add i64 %2662, 29
  store i64 %2681, i64* %PC.i, align 8
  %2682 = load <2 x float>, <2 x float>* %60, align 1
  %2683 = extractelement <2 x float> %2682, i32 0
  store float %2683, float* %2664, align 4
  %2684 = load i64, i64* %PC.i, align 8
  %2685 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2685, i64* %RDI.i642, align 8
  %2686 = load <2 x i32>, <2 x i32>* %1394, align 1
  %2687 = load <2 x i32>, <2 x i32>* %1395, align 1
  %2688 = extractelement <2 x i32> %2686, i32 0
  store i32 %2688, i32* %478, align 1
  %2689 = extractelement <2 x i32> %2686, i32 1
  store i32 %2689, i32* %260, align 1
  %2690 = extractelement <2 x i32> %2687, i32 0
  store i32 %2690, i32* %262, align 1
  %2691 = extractelement <2 x i32> %2687, i32 1
  store i32 %2691, i32* %264, align 1
  store i8 1, i8* %AL.i1589, align 1
  %2692 = add i64 %2684, -3951
  %2693 = add i64 %2684, 18
  %2694 = load i64, i64* %6, align 8
  %2695 = add i64 %2694, -8
  %2696 = inttoptr i64 %2695 to i64*
  store i64 %2693, i64* %2696, align 8
  store i64 %2695, i64* %6, align 8
  store i64 %2692, i64* %3, align 8
  %2697 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4013ec)
  %2698 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x403191_type* @G__0x403191 to i64), i64* %RSI.i265, align 8
  %2699 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2699, i64* %RDI.i642, align 8
  %2700 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2701 = zext i32 %2700 to i64
  store i64 %2701, i64* %RDX.i386, align 8
  %2702 = load i64, i64* %RBP.i, align 8
  %2703 = add i64 %2702, -980
  %2704 = load i32, i32* %EAX.i1578, align 4
  %2705 = add i64 %2698, 31
  store i64 %2705, i64* %PC.i, align 8
  %2706 = inttoptr i64 %2703 to i32*
  store i32 %2704, i32* %2706, align 4
  %2707 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2708 = add i64 %2707, -4000
  %2709 = add i64 %2707, 7
  %2710 = load i64, i64* %6, align 8
  %2711 = add i64 %2710, -8
  %2712 = inttoptr i64 %2711 to i64*
  store i64 %2709, i64* %2712, align 8
  store i64 %2711, i64* %6, align 8
  store i64 %2708, i64* %3, align 8
  %2713 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2697)
  %2714 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI.i265, align 8
  %2715 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2715, i64* %RDI.i642, align 8
  %2716 = load i64, i64* %RBP.i, align 8
  %2717 = add i64 %2716, -984
  %2718 = load i32, i32* %EAX.i1578, align 4
  %2719 = add i64 %2714, 24
  store i64 %2719, i64* %PC.i, align 8
  %2720 = inttoptr i64 %2717 to i32*
  store i32 %2718, i32* %2720, align 4
  %2721 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2722 = add i64 %2721, -4031
  %2723 = add i64 %2721, 7
  %2724 = load i64, i64* %6, align 8
  %2725 = add i64 %2724, -8
  %2726 = inttoptr i64 %2725 to i64*
  store i64 %2723, i64* %2726, align 8
  store i64 %2725, i64* %6, align 8
  store i64 %2722, i64* %3, align 8
  %2727 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2713)
  %2728 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI.i265, align 8
  %2729 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2729, i64* %RDI.i642, align 8
  %2730 = load i64, i64* %RBP.i, align 8
  %2731 = add i64 %2730, -988
  %2732 = load i32, i32* %EAX.i1578, align 4
  %2733 = add i64 %2728, 24
  store i64 %2733, i64* %PC.i, align 8
  %2734 = inttoptr i64 %2731 to i32*
  store i32 %2732, i32* %2734, align 4
  %2735 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2736 = add i64 %2735, -4062
  %2737 = add i64 %2735, 7
  %2738 = load i64, i64* %6, align 8
  %2739 = add i64 %2738, -8
  %2740 = inttoptr i64 %2739 to i64*
  store i64 %2737, i64* %2740, align 8
  store i64 %2739, i64* %6, align 8
  store i64 %2736, i64* %3, align 8
  %2741 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2727)
  %2742 = load i64, i64* %PC.i, align 8
  store i32 0, i32* %478, align 1
  store i32 0, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %2743 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2744 = zext i32 %2743 to i64
  store i64 %2744, i64* %RDX.i386, align 8
  %2745 = load <2 x i32>, <2 x i32>* %1654, align 1
  %2746 = load <2 x i32>, <2 x i32>* %1656, align 1
  %2747 = sitofp i32 %2743 to float
  store float %2747, float* %579, align 1
  %2748 = extractelement <2 x i32> %2745, i32 1
  store i32 %2748, i32* %596, align 1
  %2749 = extractelement <2 x i32> %2746, i32 0
  store i32 %2749, i32* %597, align 1
  %2750 = extractelement <2 x i32> %2746, i32 1
  store i32 %2750, i32* %598, align 1
  %2751 = load i64, i64* %RBP.i, align 8
  %2752 = add i64 %2751, -76
  %2753 = add i64 %2742, 19
  store i64 %2753, i64* %PC.i, align 8
  %2754 = load <2 x float>, <2 x float>* %1984, align 1
  %2755 = load <2 x i32>, <2 x i32>* %1656, align 1
  %2756 = inttoptr i64 %2752 to float*
  %2757 = load float, float* %2756, align 4
  %2758 = extractelement <2 x float> %2754, i32 0
  %2759 = fmul float %2758, %2757
  store float %2759, float* %579, align 1
  %2760 = bitcast <2 x float> %2754 to <2 x i32>
  %2761 = extractelement <2 x i32> %2760, i32 1
  store i32 %2761, i32* %596, align 1
  %2762 = extractelement <2 x i32> %2755, i32 0
  store i32 %2762, i32* %597, align 1
  %2763 = extractelement <2 x i32> %2755, i32 1
  store i32 %2763, i32* %598, align 1
  %2764 = add i64 %2751, -44
  %2765 = add i64 %2742, 24
  store i64 %2765, i64* %PC.i, align 8
  %2766 = load <2 x float>, <2 x float>* %585, align 1
  %2767 = extractelement <2 x float> %2766, i32 0
  %2768 = inttoptr i64 %2764 to float*
  store float %2767, float* %2768, align 4
  %2769 = load i64, i64* %PC.i, align 8
  %2770 = load <2 x float>, <2 x float>* %60, align 1
  %2771 = extractelement <2 x float> %2770, i32 0
  store float %2771, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  store i32 7, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2772 = load i64, i64* %RBP.i, align 8
  %2773 = add i64 %2772, -992
  %2774 = load i32, i32* %EAX.i1578, align 4
  %2775 = add i64 %2769, 26
  store i64 %2775, i64* %PC.i, align 8
  %2776 = inttoptr i64 %2773 to i32*
  store i32 %2774, i32* %2776, align 4
  %.pre15 = load i64, i64* %PC.i, align 8
  %.pre16 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  br label %block_.L_4014d7

block_.L_4014d7:                                  ; preds = %block_.L_401622, %block_.L_4013ec
  %2777 = phi i32 [ %.pre16, %block_.L_4013ec ], [ %3239, %block_.L_401622 ]
  %2778 = phi i64 [ %.pre15, %block_.L_4013ec ], [ %3263, %block_.L_401622 ]
  %MEMORY.17 = phi %struct.Memory* [ %2741, %block_.L_4013ec ], [ %call2_40173b, %block_.L_401622 ]
  %2779 = add i32 %2777, -12
  %2780 = icmp ult i32 %2777, 12
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %12, align 1
  %2782 = and i32 %2779, 255
  %2783 = tail call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  store i8 %2786, i8* %13, align 1
  %2787 = xor i32 %2777, %2779
  %2788 = lshr i32 %2787, 4
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  store i8 %2790, i8* %14, align 1
  %2791 = icmp eq i32 %2779, 0
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %15, align 1
  %2793 = lshr i32 %2779, 31
  %2794 = trunc i32 %2793 to i8
  store i8 %2794, i8* %16, align 1
  %2795 = lshr i32 %2777, 31
  %2796 = xor i32 %2793, %2795
  %2797 = add nuw nsw i32 %2796, %2795
  %2798 = icmp eq i32 %2797, 2
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %17, align 1
  %2800 = icmp ne i8 %2794, 0
  %2801 = xor i1 %2800, %2798
  %.v35 = select i1 %2801, i64 14, i64 639
  %2802 = add i64 %2778, %.v35
  store i64 %2802, i64* %3, align 8
  br i1 %2801, label %block_4014e5, label %block_.L_401756

block_4014e5:                                     ; preds = %block_.L_4014d7
  %2803 = add i64 %2802, -3877
  %2804 = add i64 %2802, 5
  %2805 = load i64, i64* %6, align 8
  %2806 = add i64 %2805, -8
  %2807 = inttoptr i64 %2806 to i64*
  store i64 %2804, i64* %2807, align 8
  store i64 %2806, i64* %6, align 8
  store i64 %2803, i64* %3, align 8
  %call2_4014e5 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2803, %struct.Memory* %MEMORY.17)
  %2808 = load i64, i64* %RBP.i, align 8
  %2809 = add i64 %2808, -40
  %2810 = load i64, i64* %PC.i, align 8
  %2811 = add i64 %2810, 5
  store i64 %2811, i64* %PC.i, align 8
  %2812 = load <2 x float>, <2 x float>* %60, align 1
  %2813 = extractelement <2 x float> %2812, i32 0
  %2814 = inttoptr i64 %2809 to float*
  store float %2813, float* %2814, align 4
  %2815 = load i64, i64* %PC.i, align 8
  %2816 = add i64 %2815, 11
  store i64 %2816, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4014fa

block_.L_4014fa:                                  ; preds = %block_40150e, %block_4014e5
  %2817 = phi i32 [ 0, %block_4014e5 ], [ %2871, %block_40150e ]
  %2818 = phi i64 [ %2816, %block_4014e5 ], [ %2895, %block_40150e ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_4014e5, %block_4014e5 ], [ %call2_401565, %block_40150e ]
  %2819 = zext i32 %2817 to i64
  store i64 %2819, i64* %RAX.i291, align 8
  %2820 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2821 = sub i32 %2817, %2820
  %2822 = icmp ult i32 %2817, %2820
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %12, align 1
  %2824 = and i32 %2821, 255
  %2825 = tail call i32 @llvm.ctpop.i32(i32 %2824)
  %2826 = trunc i32 %2825 to i8
  %2827 = and i8 %2826, 1
  %2828 = xor i8 %2827, 1
  store i8 %2828, i8* %13, align 1
  %2829 = xor i32 %2820, %2817
  %2830 = xor i32 %2829, %2821
  %2831 = lshr i32 %2830, 4
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  store i8 %2833, i8* %14, align 1
  %2834 = icmp eq i32 %2821, 0
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %15, align 1
  %2836 = lshr i32 %2821, 31
  %2837 = trunc i32 %2836 to i8
  store i8 %2837, i8* %16, align 1
  %2838 = lshr i32 %2817, 31
  %2839 = lshr i32 %2820, 31
  %2840 = xor i32 %2839, %2838
  %2841 = xor i32 %2836, %2838
  %2842 = add nuw nsw i32 %2841, %2840
  %2843 = icmp eq i32 %2842, 2
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %17, align 1
  %2845 = icmp ne i8 %2837, 0
  %2846 = xor i1 %2845, %2843
  %.v36 = select i1 %2846, i64 20, i64 134
  %2847 = add i64 %2818, %.v36
  store i64 %2847, i64* %3, align 8
  br i1 %2846, label %block_40150e, label %block_.L_401580

block_40150e:                                     ; preds = %block_.L_4014fa
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %2848 = load i64, i64* %RBP.i, align 8
  %2849 = add i64 %2848, -20
  store i64 %2849, i64* %R8.i856, align 8
  %2850 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RSI.i265, align 8
  %2852 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2853 = zext i32 %2852 to i64
  store i64 %2853, i64* %RDX.i386, align 8
  %2854 = add i64 %2847, 674
  %2855 = add i64 %2847, 43
  %2856 = load i64, i64* %6, align 8
  %2857 = add i64 %2856, -8
  %2858 = inttoptr i64 %2857 to i64*
  store i64 %2855, i64* %2858, align 8
  store i64 %2857, i64* %6, align 8
  store i64 %2854, i64* %3, align 8
  %call2_401534 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %2854, %struct.Memory* %MEMORY.18)
  %2859 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %R8.i856, align 8
  %2860 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2861 = zext i32 %2860 to i64
  store i64 %2861, i64* %RSI.i265, align 8
  %2862 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2863 = zext i32 %2862 to i64
  store i64 %2863, i64* %RDX.i386, align 8
  %2864 = add i64 %2859, 1095
  %2865 = add i64 %2859, 49
  %2866 = load i64, i64* %6, align 8
  %2867 = add i64 %2866, -8
  %2868 = inttoptr i64 %2867 to i64*
  store i64 %2865, i64* %2868, align 8
  store i64 %2867, i64* %6, align 8
  store i64 %2864, i64* %3, align 8
  %call2_401565 = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %2864, %struct.Memory* %call2_401534)
  %2869 = load i64, i64* %PC.i, align 8
  %2870 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2871 = add i32 %2870, 1
  %2872 = zext i32 %2871 to i64
  store i64 %2872, i64* %RAX.i291, align 8
  %2873 = icmp eq i32 %2870, -1
  %2874 = icmp eq i32 %2871, 0
  %2875 = or i1 %2873, %2874
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %12, align 1
  %2877 = and i32 %2871, 255
  %2878 = tail call i32 @llvm.ctpop.i32(i32 %2877)
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  %2881 = xor i8 %2880, 1
  store i8 %2881, i8* %13, align 1
  %2882 = xor i32 %2870, %2871
  %2883 = lshr i32 %2882, 4
  %2884 = trunc i32 %2883 to i8
  %2885 = and i8 %2884, 1
  store i8 %2885, i8* %14, align 1
  %2886 = icmp eq i32 %2871, 0
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %15, align 1
  %2888 = lshr i32 %2871, 31
  %2889 = trunc i32 %2888 to i8
  store i8 %2889, i8* %16, align 1
  %2890 = lshr i32 %2870, 31
  %2891 = xor i32 %2888, %2890
  %2892 = add nuw nsw i32 %2891, %2888
  %2893 = icmp eq i32 %2892, 2
  %2894 = zext i1 %2893 to i8
  store i8 %2894, i8* %17, align 1
  store i32 %2871, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2895 = add i64 %2869, -112
  store i64 %2895, i64* %3, align 8
  br label %block_.L_4014fa

block_.L_401580:                                  ; preds = %block_.L_4014fa
  %2896 = add i64 %2847, -4032
  %2897 = add i64 %2847, 5
  %2898 = load i64, i64* %6, align 8
  %2899 = add i64 %2898, -8
  %2900 = inttoptr i64 %2899 to i64*
  store i64 %2897, i64* %2900, align 8
  store i64 %2899, i64* %6, align 8
  store i64 %2896, i64* %3, align 8
  %call2_401580 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2896, %struct.Memory* %MEMORY.18)
  %2901 = load i64, i64* %RBP.i, align 8
  %2902 = add i64 %2901, -40
  %2903 = load i64, i64* %PC.i, align 8
  %2904 = add i64 %2903, 5
  store i64 %2904, i64* %PC.i, align 8
  %2905 = load <2 x float>, <2 x float>* %320, align 1
  %2906 = load <2 x i32>, <2 x i32>* %257, align 1
  %2907 = inttoptr i64 %2902 to float*
  %2908 = load float, float* %2907, align 4
  %2909 = extractelement <2 x float> %2905, i32 0
  %2910 = fsub float %2909, %2908
  store float %2910, float* %21, align 1
  %2911 = bitcast <2 x float> %2905 to <2 x i32>
  %2912 = extractelement <2 x i32> %2911, i32 1
  store i32 %2912, i32* %260, align 1
  %2913 = extractelement <2 x i32> %2906, i32 0
  store i32 %2913, i32* %262, align 1
  %2914 = extractelement <2 x i32> %2906, i32 1
  store i32 %2914, i32* %264, align 1
  %2915 = add i64 %2901, -44
  %2916 = add i64 %2903, 10
  store i64 %2916, i64* %PC.i, align 8
  %2917 = load <2 x float>, <2 x float>* %320, align 1
  %2918 = load <2 x i32>, <2 x i32>* %257, align 1
  %2919 = inttoptr i64 %2915 to float*
  %2920 = load float, float* %2919, align 4
  %2921 = extractelement <2 x float> %2917, i32 0
  %2922 = fsub float %2921, %2920
  store float %2922, float* %21, align 1
  %2923 = bitcast <2 x float> %2917 to <2 x i32>
  %2924 = extractelement <2 x i32> %2923, i32 1
  store i32 %2924, i32* %260, align 1
  %2925 = extractelement <2 x i32> %2918, i32 0
  store i32 %2925, i32* %262, align 1
  %2926 = extractelement <2 x i32> %2918, i32 1
  store i32 %2926, i32* %264, align 1
  %2927 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2928 = zext i32 %2927 to i64
  store i64 %2928, i64* %RAX.i291, align 8
  %2929 = load <2 x i32>, <2 x i32>* %1654, align 1
  %2930 = load <2 x i32>, <2 x i32>* %1656, align 1
  %2931 = sitofp i32 %2927 to float
  store float %2931, float* %579, align 1
  %2932 = extractelement <2 x i32> %2929, i32 1
  store i32 %2932, i32* %596, align 1
  %2933 = extractelement <2 x i32> %2930, i32 0
  store i32 %2933, i32* %597, align 1
  %2934 = extractelement <2 x i32> %2930, i32 1
  store i32 %2934, i32* %598, align 1
  %2935 = load <2 x float>, <2 x float>* %320, align 1
  %2936 = load <2 x i32>, <2 x i32>* %257, align 1
  %2937 = load <2 x float>, <2 x float>* %585, align 1
  %2938 = extractelement <2 x float> %2935, i32 0
  %2939 = extractelement <2 x float> %2937, i32 0
  %2940 = fdiv float %2938, %2939
  store float %2940, float* %21, align 1
  %2941 = bitcast <2 x float> %2935 to <2 x i32>
  %2942 = extractelement <2 x i32> %2941, i32 1
  store i32 %2942, i32* %260, align 1
  %2943 = extractelement <2 x i32> %2936, i32 0
  store i32 %2943, i32* %262, align 1
  %2944 = extractelement <2 x i32> %2936, i32 1
  store i32 %2944, i32* %264, align 1
  %2945 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2946 = sext i32 %2945 to i64
  store i64 %2946, i64* %RCX.i373, align 8
  %2947 = shl nsw i64 %2946, 2
  %2948 = add nsw i64 %2947, 6470352
  %2949 = add i64 %2903, 42
  store i64 %2949, i64* %PC.i, align 8
  %2950 = load <2 x float>, <2 x float>* %60, align 1
  %2951 = extractelement <2 x float> %2950, i32 0
  %2952 = inttoptr i64 %2948 to float*
  store float %2951, float* %2952, align 4
  %2953 = load i64, i64* %PC.i, align 8
  %2954 = add i64 %2953, -4079
  %2955 = add i64 %2953, 5
  %2956 = load i64, i64* %6, align 8
  %2957 = add i64 %2956, -8
  %2958 = inttoptr i64 %2957 to i64*
  store i64 %2955, i64* %2958, align 8
  store i64 %2957, i64* %6, align 8
  store i64 %2954, i64* %3, align 8
  %call2_4015af = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2954, %struct.Memory* %call2_401580)
  %2959 = load i64, i64* %RBP.i, align 8
  %2960 = add i64 %2959, -40
  %2961 = load i64, i64* %PC.i, align 8
  %2962 = add i64 %2961, 5
  store i64 %2962, i64* %PC.i, align 8
  %2963 = load <2 x float>, <2 x float>* %60, align 1
  %2964 = extractelement <2 x float> %2963, i32 0
  %2965 = inttoptr i64 %2960 to float*
  store float %2964, float* %2965, align 4
  %2966 = load i64, i64* %PC.i, align 8
  %2967 = add i64 %2966, 11
  store i64 %2967, i64* %PC.i, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4015c4

block_.L_4015c4:                                  ; preds = %block_4015d8, %block_.L_401580
  %2968 = phi i32 [ 0, %block_.L_401580 ], [ %3010, %block_4015d8 ]
  %2969 = phi i64 [ %2967, %block_.L_401580 ], [ %3034, %block_4015d8 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_4015af, %block_.L_401580 ], [ %call2_401607, %block_4015d8 ]
  %2970 = zext i32 %2968 to i64
  store i64 %2970, i64* %RAX.i291, align 8
  %2971 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2972 = sub i32 %2968, %2971
  %2973 = icmp ult i32 %2968, %2971
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %12, align 1
  %2975 = and i32 %2972, 255
  %2976 = tail call i32 @llvm.ctpop.i32(i32 %2975)
  %2977 = trunc i32 %2976 to i8
  %2978 = and i8 %2977, 1
  %2979 = xor i8 %2978, 1
  store i8 %2979, i8* %13, align 1
  %2980 = xor i32 %2971, %2968
  %2981 = xor i32 %2980, %2972
  %2982 = lshr i32 %2981, 4
  %2983 = trunc i32 %2982 to i8
  %2984 = and i8 %2983, 1
  store i8 %2984, i8* %14, align 1
  %2985 = icmp eq i32 %2972, 0
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %15, align 1
  %2987 = lshr i32 %2972, 31
  %2988 = trunc i32 %2987 to i8
  store i8 %2988, i8* %16, align 1
  %2989 = lshr i32 %2968, 31
  %2990 = lshr i32 %2971, 31
  %2991 = xor i32 %2990, %2989
  %2992 = xor i32 %2987, %2989
  %2993 = add nuw nsw i32 %2992, %2991
  %2994 = icmp eq i32 %2993, 2
  %2995 = zext i1 %2994 to i8
  store i8 %2995, i8* %17, align 1
  %2996 = icmp ne i8 %2988, 0
  %2997 = xor i1 %2996, %2994
  %.v37 = select i1 %2997, i64 20, i64 94
  %2998 = add i64 %2969, %.v37
  store i64 %2998, i64* %3, align 8
  br i1 %2997, label %block_4015d8, label %block_.L_401622

block_4015d8:                                     ; preds = %block_.L_4015c4
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %R8.i856, align 8
  store i64 0, i64* %339, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2999 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RSI.i265, align 8
  %3001 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %3002 = zext i32 %3001 to i64
  store i64 %3002, i64* %RDX.i386, align 8
  %3003 = add i64 %2998, 1720
  %3004 = add i64 %2998, 52
  %3005 = load i64, i64* %6, align 8
  %3006 = add i64 %3005, -8
  %3007 = inttoptr i64 %3006 to i64*
  store i64 %3004, i64* %3007, align 8
  store i64 %3006, i64* %6, align 8
  store i64 %3003, i64* %3, align 8
  %call2_401607 = tail call %struct.Memory* @sub_401c90.dgesl(%struct.State* %0, i64 %3003, %struct.Memory* %MEMORY.19)
  %3008 = load i64, i64* %PC.i, align 8
  %3009 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %3010 = add i32 %3009, 1
  %3011 = zext i32 %3010 to i64
  store i64 %3011, i64* %RAX.i291, align 8
  %3012 = icmp eq i32 %3009, -1
  %3013 = icmp eq i32 %3010, 0
  %3014 = or i1 %3012, %3013
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %12, align 1
  %3016 = and i32 %3010, 255
  %3017 = tail call i32 @llvm.ctpop.i32(i32 %3016)
  %3018 = trunc i32 %3017 to i8
  %3019 = and i8 %3018, 1
  %3020 = xor i8 %3019, 1
  store i8 %3020, i8* %13, align 1
  %3021 = xor i32 %3009, %3010
  %3022 = lshr i32 %3021, 4
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  store i8 %3024, i8* %14, align 1
  %3025 = icmp eq i32 %3010, 0
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %15, align 1
  %3027 = lshr i32 %3010, 31
  %3028 = trunc i32 %3027 to i8
  store i8 %3028, i8* %16, align 1
  %3029 = lshr i32 %3009, 31
  %3030 = xor i32 %3027, %3029
  %3031 = add nuw nsw i32 %3030, %3027
  %3032 = icmp eq i32 %3031, 2
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %17, align 1
  store i32 %3010, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %3034 = add i64 %3008, -72
  store i64 %3034, i64* %3, align 8
  br label %block_.L_4015c4

block_.L_401622:                                  ; preds = %block_.L_4015c4
  %3035 = add i64 %2998, -4194
  %3036 = add i64 %2998, 5
  %3037 = load i64, i64* %6, align 8
  %3038 = add i64 %3037, -8
  %3039 = inttoptr i64 %3038 to i64*
  store i64 %3036, i64* %3039, align 8
  store i64 %3038, i64* %6, align 8
  store i64 %3035, i64* %3, align 8
  %call2_401622 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %3035, %struct.Memory* %MEMORY.19)
  %3040 = load i64, i64* %PC.i, align 8
  %3041 = load i64, i64* bitcast (%G_0x18a9__rip__type* @G_0x18a9__rip_ to i64*), align 8
  %3042 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %195, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3041, i64* %3042, align 1
  store double 0.000000e+00, double* %199, align 1
  %3043 = load i64, i64* bitcast (%G_0x18b1__rip__type* @G_0x18b1__rip_ to i64*), align 8
  %3044 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %208, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3043, i64* %3044, align 1
  store double 0.000000e+00, double* %2008, align 1
  %3045 = load i64, i64* %RBP.i, align 8
  %3046 = add i64 %3045, -40
  %3047 = add i64 %3040, 21
  store i64 %3047, i64* %PC.i, align 8
  %3048 = load <2 x float>, <2 x float>* %320, align 1
  %3049 = load <2 x i32>, <2 x i32>* %257, align 1
  %3050 = inttoptr i64 %3046 to float*
  %3051 = load float, float* %3050, align 4
  %3052 = extractelement <2 x float> %3048, i32 0
  %3053 = fsub float %3052, %3051
  store float %3053, float* %21, align 1
  %3054 = bitcast <2 x float> %3048 to <2 x i32>
  %3055 = extractelement <2 x i32> %3054, i32 1
  store i32 %3055, i32* %260, align 1
  %3056 = extractelement <2 x i32> %3049, i32 0
  store i32 %3056, i32* %262, align 1
  %3057 = extractelement <2 x i32> %3049, i32 1
  store i32 %3057, i32* %264, align 1
  %3058 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %3059 = zext i32 %3058 to i64
  store i64 %3059, i64* %RAX.i291, align 8
  %3060 = load <2 x i32>, <2 x i32>* %2009, align 1
  %3061 = load <2 x i32>, <2 x i32>* %2010, align 1
  %3062 = sitofp i32 %3058 to float
  store float %3062, float* %1154, align 1
  %3063 = extractelement <2 x i32> %3060, i32 1
  store i32 %3063, i32* %220, align 1
  %3064 = extractelement <2 x i32> %3061, i32 0
  store i32 %3064, i32* %222, align 1
  %3065 = extractelement <2 x i32> %3061, i32 1
  store i32 %3065, i32* %224, align 1
  %3066 = load <2 x float>, <2 x float>* %320, align 1
  %3067 = load <2 x i32>, <2 x i32>* %257, align 1
  %3068 = load <2 x float>, <2 x float>* %1159, align 1
  %3069 = extractelement <2 x float> %3066, i32 0
  %3070 = extractelement <2 x float> %3068, i32 0
  %3071 = fdiv float %3069, %3070
  store float %3071, float* %21, align 1
  %3072 = bitcast <2 x float> %3066 to <2 x i32>
  %3073 = extractelement <2 x i32> %3072, i32 1
  store i32 %3073, i32* %260, align 1
  %3074 = extractelement <2 x i32> %3067, i32 0
  store i32 %3074, i32* %262, align 1
  %3075 = extractelement <2 x i32> %3067, i32 1
  store i32 %3075, i32* %264, align 1
  %3076 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3077 = sext i32 %3076 to i64
  %3078 = shl nsw i64 %3077, 2
  %3079 = add nsw i64 %3078, 6470412
  %3080 = add i64 %3040, 53
  store i64 %3080, i64* %PC.i, align 8
  %3081 = load <2 x float>, <2 x float>* %60, align 1
  %3082 = extractelement <2 x float> %3081, i32 0
  %3083 = inttoptr i64 %3079 to float*
  store float %3082, float* %3083, align 4
  %3084 = load i64, i64* %PC.i, align 8
  %3085 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3086 = sext i32 %3085 to i64
  store i64 %3086, i64* %RCX.i373, align 8
  %3087 = shl nsw i64 %3086, 2
  %3088 = add nsw i64 %3087, 6470352
  %3089 = add i64 %3084, 17
  store i64 %3089, i64* %PC.i, align 8
  %3090 = inttoptr i64 %3088 to i32*
  %3091 = load i32, i32* %3090, align 4
  %3092 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %3091, i32* %3092, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  store i64 %3086, i64* %RCX.i373, align 8
  %3093 = add nsw i64 %3087, 6470412
  %3094 = add i64 %3084, 34
  store i64 %3094, i64* %PC.i, align 8
  %3095 = load <2 x float>, <2 x float>* %320, align 1
  %3096 = load <2 x i32>, <2 x i32>* %257, align 1
  %3097 = inttoptr i64 %3093 to float*
  %3098 = load float, float* %3097, align 4
  %3099 = extractelement <2 x float> %3095, i32 0
  %3100 = fadd float %3099, %3098
  store float %3100, float* %21, align 1
  %3101 = bitcast <2 x float> %3095 to <2 x i32>
  %3102 = extractelement <2 x i32> %3101, i32 1
  store i32 %3102, i32* %260, align 1
  %3103 = extractelement <2 x i32> %3096, i32 0
  store i32 %3103, i32* %262, align 1
  %3104 = extractelement <2 x i32> %3096, i32 1
  store i32 %3104, i32* %264, align 1
  %3105 = load i64, i64* %RBP.i, align 8
  %3106 = add i64 %3105, -16
  %3107 = add i64 %3084, 39
  store i64 %3107, i64* %PC.i, align 8
  %3108 = load <2 x float>, <2 x float>* %60, align 1
  %3109 = extractelement <2 x float> %3108, i32 0
  %3110 = inttoptr i64 %3106 to float*
  store float %3109, float* %3110, align 4
  %3111 = load i64, i64* %RBP.i, align 8
  %3112 = add i64 %3111, -16
  %3113 = load i64, i64* %PC.i, align 8
  %3114 = add i64 %3113, 5
  store i64 %3114, i64* %PC.i, align 8
  %3115 = inttoptr i64 %3112 to i32*
  %3116 = load i32, i32* %3115, align 4
  %3117 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %3116, i32* %3117, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3118 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3119 = sext i32 %3118 to i64
  store i64 %3119, i64* %RCX.i373, align 8
  %3120 = shl nsw i64 %3119, 2
  %3121 = add nsw i64 %3120, 6470472
  %3122 = add i64 %3113, 22
  store i64 %3122, i64* %PC.i, align 8
  %3123 = load <2 x float>, <2 x float>* %60, align 1
  %3124 = extractelement <2 x float> %3123, i32 0
  %3125 = inttoptr i64 %3121 to float*
  store float %3124, float* %3125, align 4
  %3126 = load i64, i64* %RBP.i, align 8
  %3127 = add i64 %3126, -12
  %3128 = load i64, i64* %PC.i, align 8
  %3129 = add i64 %3128, 5
  store i64 %3129, i64* %PC.i, align 8
  %3130 = inttoptr i64 %3127 to i32*
  %3131 = load i32, i32* %3130, align 4
  %3132 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %3131, i32* %3132, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3133 = load <2 x float>, <2 x float>* %60, align 1
  %3134 = extractelement <2 x float> %3133, i32 0
  %3135 = fpext float %3134 to double
  store double %3135, double* %193, align 1
  %3136 = add i64 %3126, -16
  %3137 = add i64 %3128, 14
  store i64 %3137, i64* %PC.i, align 8
  %3138 = inttoptr i64 %3136 to i32*
  %3139 = load i32, i32* %3138, align 4
  %3140 = bitcast %union.VectorReg* %213 to i32*
  store i32 %3139, i32* %3140, align 1
  store float 0.000000e+00, float* %1156, align 1
  store float 0.000000e+00, float* %1157, align 1
  store float 0.000000e+00, float* %1158, align 1
  %3141 = load <2 x float>, <2 x float>* %1159, align 1
  %3142 = extractelement <2 x float> %3141, i32 0
  %3143 = fpext float %3142 to double
  store double %3143, double* %225, align 1
  %3144 = load double, double* %212, align 1
  %3145 = fmul double %3144, %3143
  store double %3145, double* %212, align 1
  %3146 = bitcast i64* %25 to <2 x i32>*
  %3147 = load <2 x i32>, <2 x i32>* %3146, align 1
  %3148 = fdiv double %3135, %3145
  %3149 = bitcast double %3148 to <2 x i32>
  %3150 = fptrunc double %3148 to float
  store float %3150, float* %21, align 1
  %3151 = extractelement <2 x i32> %3149, i32 1
  store i32 %3151, i32* %260, align 1
  %3152 = extractelement <2 x i32> %3147, i32 0
  store i32 %3152, i32* %262, align 1
  %3153 = extractelement <2 x i32> %3147, i32 1
  store i32 %3153, i32* %264, align 1
  %3154 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3155 = sext i32 %3154 to i64
  %3156 = shl nsw i64 %3155, 2
  %3157 = add nsw i64 %3156, 6470532
  %3158 = add i64 %3128, 47
  store i64 %3158, i64* %PC.i, align 8
  %3159 = load <2 x float>, <2 x float>* %60, align 1
  %3160 = extractelement <2 x float> %3159, i32 0
  %3161 = inttoptr i64 %3157 to float*
  store float %3160, float* %3161, align 4
  %3162 = load i64, i64* %PC.i, align 8
  %3163 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3164 = sext i32 %3163 to i64
  store i64 %3164, i64* %RCX.i373, align 8
  %3165 = shl nsw i64 %3164, 2
  %3166 = add nsw i64 %3165, 6470532
  %3167 = add i64 %3162, 17
  store i64 %3167, i64* %PC.i, align 8
  %3168 = inttoptr i64 %3166 to i32*
  %3169 = load i32, i32* %3168, align 4
  %3170 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %3169, i32* %3170, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3171 = load <2 x float>, <2 x float>* %60, align 1
  %3172 = extractelement <2 x float> %3171, i32 0
  %3173 = fpext float %3172 to double
  %3174 = load double, double* %197, align 1
  %3175 = fdiv double %3174, %3173
  store double %3175, double* %197, align 1
  %3176 = bitcast double %3173 to <2 x i32>
  %3177 = load <2 x i32>, <2 x i32>* %257, align 1
  %3178 = fptrunc double %3175 to float
  store float %3178, float* %21, align 1
  %3179 = extractelement <2 x i32> %3176, i32 1
  store i32 %3179, i32* %260, align 1
  %3180 = extractelement <2 x i32> %3177, i32 0
  store i32 %3180, i32* %262, align 1
  %3181 = extractelement <2 x i32> %3177, i32 1
  store i32 %3181, i32* %264, align 1
  store i64 %3164, i64* %RCX.i373, align 8
  %3182 = add nsw i64 %3165, 6470592
  %3183 = add i64 %3162, 46
  store i64 %3183, i64* %PC.i, align 8
  %3184 = load <2 x float>, <2 x float>* %60, align 1
  %3185 = extractelement <2 x float> %3184, i32 0
  %3186 = inttoptr i64 %3182 to float*
  store float %3185, float* %3186, align 4
  %3187 = load i64, i64* %RBP.i, align 8
  %3188 = add i64 %3187, -16
  %3189 = load i64, i64* %PC.i, align 8
  %3190 = add i64 %3189, 5
  store i64 %3190, i64* %PC.i, align 8
  %3191 = inttoptr i64 %3188 to i32*
  %3192 = load i32, i32* %3191, align 4
  %3193 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %3192, i32* %3193, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3194 = add i64 %3187, -8
  %3195 = add i64 %3189, 10
  store i64 %3195, i64* %PC.i, align 8
  %3196 = load <2 x float>, <2 x float>* %320, align 1
  %3197 = inttoptr i64 %3194 to float*
  %3198 = load float, float* %3197, align 4
  %3199 = extractelement <2 x float> %3196, i32 0
  %3200 = fdiv float %3199, %3198
  store float %3200, float* %21, align 1
  %3201 = bitcast <2 x float> %3196 to <2 x i32>
  %3202 = extractelement <2 x i32> %3201, i32 1
  store i32 %3202, i32* %260, align 1
  %3203 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3204 = sext i32 %3203 to i64
  %3205 = shl nsw i64 %3204, 2
  %3206 = add nsw i64 %3205, 6470652
  %3207 = add i64 %3189, 27
  store i64 %3207, i64* %PC.i, align 8
  %3208 = load <2 x float>, <2 x float>* %60, align 1
  %3209 = extractelement <2 x float> %3208, i32 0
  %3210 = inttoptr i64 %3206 to float*
  store float %3209, float* %3210, align 4
  %3211 = load i64, i64* %PC.i, align 8
  %3212 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  %3213 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %3212, i32* %3213, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3214 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3215 = sext i32 %3214 to i64
  store i64 %3215, i64* %RCX.i373, align 8
  %3216 = shl nsw i64 %3215, 2
  %3217 = add nsw i64 %3216, 6470532
  %3218 = add i64 %3211, 26
  store i64 %3218, i64* %PC.i, align 8
  %3219 = load <2 x float>, <2 x float>* %320, align 1
  %3220 = load <2 x i32>, <2 x i32>* %257, align 1
  %3221 = inttoptr i64 %3217 to float*
  %3222 = load float, float* %3221, align 4
  %3223 = extractelement <2 x float> %3219, i32 0
  %3224 = fadd float %3223, %3222
  store float %3224, float* %21, align 1
  %3225 = bitcast <2 x float> %3219 to <2 x i32>
  %3226 = extractelement <2 x i32> %3225, i32 1
  store i32 %3226, i32* %260, align 1
  %3227 = extractelement <2 x i32> %3220, i32 0
  store i32 %3227, i32* %262, align 1
  %3228 = extractelement <2 x i32> %3220, i32 1
  store i32 %3228, i32* %264, align 1
  %3229 = load <2 x float>, <2 x float>* %60, align 1
  %3230 = extractelement <2 x float> %3229, i32 0
  store float %3230, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %3231 = zext i32 %3214 to i64
  store i64 %3231, i64* %RDI.i642, align 8
  %3232 = add i64 %3211, 4543
  %3233 = add i64 %3211, 47
  %3234 = load i64, i64* %6, align 8
  %3235 = add i64 %3234, -8
  %3236 = inttoptr i64 %3235 to i64*
  store i64 %3233, i64* %3236, align 8
  store i64 %3235, i64* %6, align 8
  store i64 %3232, i64* %3, align 8
  %call2_40173b = tail call %struct.Memory* @sub_4028d0.print_time(%struct.State* %0, i64 %3232, %struct.Memory* %call2_401622)
  %3237 = load i64, i64* %PC.i, align 8
  %3238 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3239 = add i32 %3238, 1
  %3240 = zext i32 %3239 to i64
  store i64 %3240, i64* %RAX.i291, align 8
  %3241 = icmp eq i32 %3238, -1
  %3242 = icmp eq i32 %3239, 0
  %3243 = or i1 %3241, %3242
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %12, align 1
  %3245 = and i32 %3239, 255
  %3246 = tail call i32 @llvm.ctpop.i32(i32 %3245)
  %3247 = trunc i32 %3246 to i8
  %3248 = and i8 %3247, 1
  %3249 = xor i8 %3248, 1
  store i8 %3249, i8* %13, align 1
  %3250 = xor i32 %3238, %3239
  %3251 = lshr i32 %3250, 4
  %3252 = trunc i32 %3251 to i8
  %3253 = and i8 %3252, 1
  store i8 %3253, i8* %14, align 1
  %3254 = icmp eq i32 %3239, 0
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %15, align 1
  %3256 = lshr i32 %3239, 31
  %3257 = trunc i32 %3256 to i8
  store i8 %3257, i8* %16, align 1
  %3258 = lshr i32 %3238, 31
  %3259 = xor i32 %3256, %3258
  %3260 = add nuw nsw i32 %3259, %3256
  %3261 = icmp eq i32 %3260, 2
  %3262 = zext i1 %3261 to i8
  store i8 %3262, i8* %17, align 1
  store i32 %3239, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3263 = add i64 %3237, -617
  store i64 %3263, i64* %3, align 8
  br label %block_.L_4014d7

block_.L_401756:                                  ; preds = %block_.L_4014d7
  store i64 ptrtoint (%G__0x4031c0_type* @G__0x4031c0 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %478, align 1
  store i32 0, i32* %260, align 1
  store i32 0, i32* %262, align 1
  store i32 0, i32* %264, align 1
  %3264 = load double, double* bitcast (%G_0x1785__rip__type* @G_0x1785__rip_ to double*), align 8
  %3265 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  %3266 = bitcast %union.VectorReg* %208 to i32*
  store i32 %3265, i32* %3266, align 1
  store float 0.000000e+00, float* %588, align 1
  store float 0.000000e+00, float* %590, align 1
  store float 0.000000e+00, float* %592, align 1
  %3267 = load <2 x float>, <2 x float>* %1008, align 1
  %3268 = extractelement <2 x float> %3267, i32 0
  %3269 = fpext float %3268 to double
  %3270 = fdiv double %3269, %3264
  store double %3270, double* %212, align 1
  %3271 = bitcast double %3264 to <2 x i32>
  %3272 = fptrunc double %3270 to float
  store float %3272, float* %579, align 1
  %3273 = extractelement <2 x i32> %3271, i32 1
  store i32 %3273, i32* %596, align 1
  store i32 0, i32* %597, align 1
  store i32 0, i32* %598, align 1
  %3274 = load <2 x float>, <2 x float>* %585, align 1
  %3275 = extractelement <2 x float> %3274, i32 0
  store float %3275, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %3276 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %3276, i64* %RDI.i642, align 8
  store i8 1, i8* %AL.i1589, align 1
  %3277 = add i64 %2802, -4758
  %3278 = add i64 %2802, 66
  %3279 = load i64, i64* %6, align 8
  %3280 = add i64 %3279, -8
  %3281 = inttoptr i64 %3280 to i64*
  store i64 %3278, i64* %3281, align 8
  store i64 %3280, i64* %6, align 8
  store i64 %3277, i64* %3, align 8
  %3282 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.17)
  %3283 = load i64, i64* %PC.i, align 8
  store i64 0, i64* %RCX.i373, align 8
  %3284 = load i64, i64* %RBP.i, align 8
  %3285 = add i64 %3284, -996
  %3286 = load i32, i32* %EAX.i1578, align 4
  %3287 = add i64 %3283, 8
  store i64 %3287, i64* %PC.i, align 8
  %3288 = inttoptr i64 %3285 to i32*
  store i32 %3286, i32* %3288, align 4
  %3289 = load i32, i32* %ECX.i1370, align 4
  %3290 = zext i32 %3289 to i64
  %3291 = load i64, i64* %PC.i, align 8
  store i64 %3290, i64* %RAX.i291, align 8
  %3292 = load i64, i64* %RSP.i11, align 8
  %3293 = add i64 %3292, 1008
  store i64 %3293, i64* %RSP.i11, align 8
  %3294 = icmp ugt i64 %3292, -1009
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %12, align 1
  %3296 = trunc i64 %3293 to i32
  %3297 = and i32 %3296, 255
  %3298 = tail call i32 @llvm.ctpop.i32(i32 %3297)
  %3299 = trunc i32 %3298 to i8
  %3300 = and i8 %3299, 1
  %3301 = xor i8 %3300, 1
  store i8 %3301, i8* %13, align 1
  %3302 = xor i64 %3292, 16
  %3303 = xor i64 %3302, %3293
  %3304 = lshr i64 %3303, 4
  %3305 = trunc i64 %3304 to i8
  %3306 = and i8 %3305, 1
  store i8 %3306, i8* %14, align 1
  %3307 = icmp eq i64 %3293, 0
  %3308 = zext i1 %3307 to i8
  store i8 %3308, i8* %15, align 1
  %3309 = lshr i64 %3293, 63
  %3310 = trunc i64 %3309 to i8
  store i8 %3310, i8* %16, align 1
  %3311 = lshr i64 %3292, 63
  %3312 = xor i64 %3309, %3311
  %3313 = add nuw nsw i64 %3312, %3309
  %3314 = icmp eq i64 %3313, 2
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %17, align 1
  %3316 = add i64 %3291, 10
  store i64 %3316, i64* %PC.i, align 8
  %3317 = add i64 %3292, 1016
  %3318 = inttoptr i64 %3293 to i64*
  %3319 = load i64, i64* %3318, align 8
  store i64 %3319, i64* %RBP.i, align 8
  store i64 %3317, i64* %6, align 8
  %3320 = add i64 %3291, 11
  store i64 %3320, i64* %PC.i, align 8
  %3321 = inttoptr i64 %3317 to i64*
  %3322 = load i64, i64* %3321, align 8
  store i64 %3322, i64* %3, align 8
  %3323 = add i64 %3292, 1024
  store i64 %3323, i64* %6, align 8
  ret %struct.Memory* %3282
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

define %struct.Memory* @routine_subq__0x3f0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1008
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1008
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

define %struct.Memory* @routine_movq__0x402f6b___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f6b_type* @G__0x402f6b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x289b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x289b__rip__type* @G_0x289b__rip_ to i32*), align 8
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

define %struct.Memory* @routine_movq__0x402f4a___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f4a_type* @G__0x402f4a to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x402f30___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f30_type* @G__0x402f30 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x2d0___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 720, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x340__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
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

define %struct.Memory* @routine_movq__r9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x348__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -840
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x350__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x354__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -852
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

define %struct.Memory* @routine_movq__rax__MINUS0x360__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movb__0x20__MINUS0x340__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 32, i8* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x350__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x360__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc9__0x604050(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 201, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc8__0x604054(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 200, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x354__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -852
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

define %struct.Memory* @routine_movl__0x64__0x604058(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x348__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -840
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x402f73___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f73_type* @G__0x402f73 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x364__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -868
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x402f7b___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f7b_type* @G__0x402f7b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x368__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -872
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x402fb1___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402fb1_type* @G__0x402fb1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x36c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -876
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x402fc2___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402fc2_type* @G__0x402fc2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x370__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -880
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2750__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x2750__rip__type* @G_0x2750__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2750__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x2750__rip__type* @G_0x2750__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604058___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x604058___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %9 = sext i32 %5 to i64
  %10 = sext i32 %8 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %4, align 8
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

define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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

define %struct.Memory* @routine_divsd__xmm1___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

define %struct.Memory* @routine_cvtsd2ss__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

define %struct.Memory* @routine_movl_0x604050___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604058___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x374__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -884
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.matgen(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_callq_.second(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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

define %struct.Memory* @routine_callq_.dgefa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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

define %struct.Memory* @routine_movss__xmm0__0x62bad0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bad0_type* @G_0x62bad0 to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x62b480___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.dgesl(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movss__xmm0__0x62bb0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bad0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bad0_type* @G_0x62bad0 to i32*), align 8
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

define %struct.Memory* @routine_addss_0x62bb0c___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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

define %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x604058___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
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

define %struct.Memory* @routine_jge_.L_400907(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62b480___rax_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6468736
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bcf0___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
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

define %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4008bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400997(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movd__xmm0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RCX to [2 x i32]*
  %9 = bitcast i64* %RCX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0x80000000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
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

define %struct.Memory* @routine_movd__ecx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
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

define %struct.Memory* @routine_movss__xmm0__0x62b480___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40093d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x62b480___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x62bcf0___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62bcf0_type* @G__0x62bcf0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x604060___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604058___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604050___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.dmxpy(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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

define %struct.Memory* @routine_jge_.L_400b15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_0x62b480___rax_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6468736
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

define %struct.Memory* @routine_movaps_0x2500__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x2500__rip__type* @G_0x2500__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__type* @G_0x2500__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__type* @G_0x2500__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__type* @G_0x2500__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

; <label>:12:                                     ; preds = %block_400478
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

; <label>:22:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_jbe_.L_400a44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x380__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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

define %struct.Memory* @routine_movaps_0x24c0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x24c0__rip__type* @G_0x24c0__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__type* @G_0x24c0__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__type* @G_0x24c0__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__type* @G_0x24c0__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast [32 x %union.VectorReg]* %3 to i32*
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

define %struct.Memory* @routine_movsd_MINUS0x380__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
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

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %12 = bitcast <2 x i32> %8 to double
  %13 = fptrunc double %12 to float
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

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_movss_0x62bcf0___rax_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470896
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x247e__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x247e__rip__type* @G_0x247e__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__type* @G_0x247e__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__type* @G_0x247e__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__type* @G_0x247e__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_400ac6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x388__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400aee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bcf0___rax_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470896
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x243e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x243e__rip__type* @G_0x243e__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__type* @G_0x243e__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__type* @G_0x243e__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__type* @G_0x243e__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x388__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
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

define %struct.Memory* @routine_jmpq_.L_4009e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x23af__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x23af__rip__type* @G_0x23af__rip_ to i32*), align 8
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

define %struct.Memory* @routine_callq_.epslon(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x402fd4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402fd4_type* @G__0x402fd4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x2398__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x2398__rip__type* @G_0x2398__rip_ to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x604058___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl__eax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_MINUS0x14__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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

define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

define %struct.Memory* @routine_movss_0x62bcf0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bcf0_type* @G_0x62bcf0 to i32*), align 8
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

define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %17 = fsub float %15, %16
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bcf0___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470896
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

define %struct.Memory* @routine_movq__0x402ffb___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402ffb_type* @G__0x402ffb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -908
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40301e___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40301e_type* @G__0x40301e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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

define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm3___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm4___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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

define %struct.Memory* @routine_movl__eax__MINUS0x390__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -912
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x5___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 5, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40303f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40303f_type* @G__0x40303f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x394__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -916
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x403074___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403074_type* @G__0x403074 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604050___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x398__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -920
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4030aa___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x39c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -924
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4030e2___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -928
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_movss__xmm1__0x62bb48(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb48_type* @G_0x62bb48 to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

; <label>:12:                                     ; preds = %block_400478
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

; <label>:22:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -932
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_400d24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2206__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x2206__rip__type* @G_0x2206__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x220e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x220e__rip__type* @G_0x220e__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast %union.VectorReg* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x62bb84(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bb84___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bb84_type* @G_0x62bb84 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bbc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bb84(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
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

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
  %17 = fdiv float %16, %15
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

define %struct.Memory* @routine_movss__xmm0__0x62bbfc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbfc_type* @G_0x62bbfc to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.print_time(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x4030ef___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030ef_type* @G__0x4030ef to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xfffffffd__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -3, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x64__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -936
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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

define %struct.Memory* @routine_jmpq_.L_400d9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40310d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40310d_type* @G__0x40310d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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

define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_subss_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

define %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -940
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400e48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_400d80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %13 = add i64 %3, %.v
  store i64 %13, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x403127___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403127_type* @G__0x403127 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = bitcast <2 x i32> %8 to double
  %13 = fptrunc double %12 to float
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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

define %struct.Memory* @routine_movq__0x40314e___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40314e_type* @G__0x40314e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -944
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x64__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -948
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
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

define %struct.Memory* @routine_jge_.L_400f66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400ee0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62c010___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -952
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400fbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_0x62c010___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_400ec2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %13 = add i64 %3, %.v
  store i64 %13, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3e8__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1000, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400fef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x1__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40317d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40317d_type* @G__0x40317d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x403191___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403191_type* @G__0x403191 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -956
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -960
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -964
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl__edx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__0x62bb9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -968
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x6__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %5, 6
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

define %struct.Memory* @routine_jge_.L_40131f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401149(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4010c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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

define %struct.Memory* @routine_cvtsi2ssl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

define %struct.Memory* @routine_movslq_0x62c014___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bad0___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470352
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4011eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_40118d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1ce0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1ce0__rip__type* @G_0x1ce0__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1ce8__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1ce8__rip__type* @G_0x1ce8__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl__eax___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

define %struct.Memory* @routine_movss__xmm0__0x62bb0c___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470412
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bad0___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470352
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_0x62bb0c___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470412
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to <2 x i32>*
  %14 = load <2 x i32>, <2 x i32>* %13, align 1
  %15 = inttoptr i64 %7 to float*
  %16 = load float, float* %15, align 4
  %17 = extractelement <2 x float> %11, i32 0
  %18 = fadd float %17, %16
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = bitcast <2 x float> %11 to <2 x i32>
  %21 = extractelement <2 x i32> %20, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %14, i32 0
  %25 = bitcast i64* %12 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %14, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bb48___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470472
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

define %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bb84___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470532
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bb84___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470532
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bbc0___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470592
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bbfc___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470652
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bb9c___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
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

define %struct.Memory* @routine_addss_0x62bb84___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470532
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to <2 x i32>*
  %14 = load <2 x i32>, <2 x i32>* %13, align 1
  %15 = inttoptr i64 %7 to float*
  %16 = load float, float* %15, align 4
  %17 = extractelement <2 x float> %11, i32 0
  %18 = fadd float %17, %16
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = bitcast <2 x float> %11 to <2 x i32>
  %21 = extractelement <2 x i32> %20, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %14, i32 0
  %25 = bitcast i64* %12 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %14, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62c014___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62c014___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4031c0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4031c0_type* @G__0x4031c0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1bbc__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1bbc__rip__type* @G_0x1bbc__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bb9c___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x62bb9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4031e9___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4031e9_type* @G__0x4031e9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3cc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -972
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -976
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4013ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x62c020___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604054___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40139b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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

define %struct.Memory* @routine_movss_MINUS0x4c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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

define %struct.Memory* @routine_movl_0x604054___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -980
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -984
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -988
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_MINUS0x4c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_movss__xmm0__0x62bbb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -992
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xc__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = add i32 %5, -12
  %7 = icmp ult i32 %5, 12
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

define %struct.Memory* @routine_jge_.L_401756(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401580(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4014fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401622(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4015c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x18a9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x18a9__rip__type* @G_0x18a9__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x18b1__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x18b1__rip__type* @G_0x18b1__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bbb4___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
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

define %struct.Memory* @routine_jmpq_.L_4014d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1785__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1785__rip__type* @G_0x1785__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bbb4___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x62bbb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -996
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__0x3f0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1008
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1009
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
