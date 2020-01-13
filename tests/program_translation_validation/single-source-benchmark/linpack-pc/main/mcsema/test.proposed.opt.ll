; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1785__rip__4200299__type = type <{ [16 x i8] }>
%G_0x18a9__rip__4199983__type = type <{ [16 x i8] }>
%G_0x18b1__rip__4199991__type = type <{ [16 x i8] }>
%G_0x1bbc__rip__4199220__type = type <{ [16 x i8] }>
%G_0x1ce0__rip__4198904__type = type <{ [16 x i8] }>
%G_0x1ce8__rip__4198912__type = type <{ [16 x i8] }>
%G_0x2206__rip__4197586__type = type <{ [16 x i8] }>
%G_0x220e__rip__4197594__type = type <{ [16 x i8] }>
%G_0x2398__rip__4197172__type = type <{ [16 x i8] }>
%G_0x23af__rip__4197149__type = type <{ [16 x i8] }>
%G_0x243e__rip__4197090__type = type <{ [16 x i8] }>
%G_0x247e__rip__4197026__type = type <{ [16 x i8] }>
%G_0x24c0__rip__4196960__type = type <{ [16 x i8] }>
%G_0x2500__rip__4196896__type = type <{ [16 x i8] }>
%G_0x2750__rip__4196232__type = type <{ [16 x i8] }>
%G_0x2750__rip__4196240__type = type <{ [16 x i8] }>
%G_0x289b__rip__4195885__type = type <{ [16 x i8] }>
%G_0x604040_type = type <{ [8 x i8] }>
%G_0x604050_type = type <{ [4 x i8] }>
%G_0x604054_type = type <{ [4 x i8] }>
%G_0x604058_type = type <{ [4 x i8] }>
%G_0x62bad0_type = type <{ [16 x i8] }>
%G_0x62bb0c_type = type <{ [16 x i8] }>
%G_0x62bb48_type = type <{ [4 x i8] }>
%G_0x62bb84_type = type <{ [16 x i8] }>
%G_0x62bb9c_type = type <{ [16 x i8] }>
%G_0x62bbb4_type = type <{ [16 x i8] }>
%G_0x62bbc0_type = type <{ [4 x i8] }>
%G_0x62bbfc_type = type <{ [4 x i8] }>
%G_0x62bcec_type = type <{ [8 x i8] }>
%G_0x62bcf0_type = type <{ [16 x i8] }>
%G_0x62c010_type = type <{ [4 x i8] }>
%G_0x62c014_type = type <{ [8 x i8] }>
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
@G_0x1785__rip__4200299_ = local_unnamed_addr global %G_0x1785__rip__4200299__type zeroinitializer
@G_0x18a9__rip__4199983_ = local_unnamed_addr global %G_0x18a9__rip__4199983__type zeroinitializer
@G_0x18b1__rip__4199991_ = local_unnamed_addr global %G_0x18b1__rip__4199991__type zeroinitializer
@G_0x1bbc__rip__4199220_ = local_unnamed_addr global %G_0x1bbc__rip__4199220__type zeroinitializer
@G_0x1ce0__rip__4198904_ = local_unnamed_addr global %G_0x1ce0__rip__4198904__type zeroinitializer
@G_0x1ce8__rip__4198912_ = local_unnamed_addr global %G_0x1ce8__rip__4198912__type zeroinitializer
@G_0x2206__rip__4197586_ = local_unnamed_addr global %G_0x2206__rip__4197586__type zeroinitializer
@G_0x220e__rip__4197594_ = local_unnamed_addr global %G_0x220e__rip__4197594__type zeroinitializer
@G_0x2398__rip__4197172_ = local_unnamed_addr global %G_0x2398__rip__4197172__type zeroinitializer
@G_0x23af__rip__4197149_ = local_unnamed_addr global %G_0x23af__rip__4197149__type zeroinitializer
@G_0x243e__rip__4197090_ = global %G_0x243e__rip__4197090__type zeroinitializer
@G_0x247e__rip__4197026_ = global %G_0x247e__rip__4197026__type zeroinitializer
@G_0x24c0__rip__4196960_ = global %G_0x24c0__rip__4196960__type zeroinitializer
@G_0x2500__rip__4196896_ = global %G_0x2500__rip__4196896__type zeroinitializer
@G_0x2750__rip__4196232_ = local_unnamed_addr global %G_0x2750__rip__4196232__type zeroinitializer
@G_0x2750__rip__4196240_ = local_unnamed_addr global %G_0x2750__rip__4196240__type zeroinitializer
@G_0x289b__rip__4195885_ = local_unnamed_addr global %G_0x289b__rip__4195885__type zeroinitializer
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
  %11 = add i64 %7, -1016
  store i64 %11, i64* %6, align 8
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
  %20 = load i32, i32* bitcast (%G_0x289b__rip__4195885__type* @G_0x289b__rip__4195885_ to i32*), align 8
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
  store i64 %38, i64* %3, align 8
  %39 = inttoptr i64 %37 to i32*
  store i32 0, i32* %39, align 4
  %40 = load i64, i64* %R9.i, align 8
  %41 = load i64, i64* %3, align 8
  store i64 %40, i64* %RDI.i642, align 8
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -840
  %44 = load i64, i64* %RSI.i265, align 8
  %45 = add i64 %41, 10
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %EDX.i385, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %3, align 8
  store i64 %48, i64* %RSI.i265, align 8
  %50 = load i64, i64* %33, align 8
  store i64 %50, i64* %RDX.i386, align 8
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -848
  %53 = load i64, i64* %RCX.i373, align 8
  %54 = add i64 %49, 12
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -852
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 8
  store i64 %59, i64* %3, align 8
  %60 = bitcast [32 x %union.VectorReg]* %18 to <2 x float>*
  %61 = load <2 x float>, <2 x float>* %60, align 1
  %62 = extractelement <2 x float> %61, i32 0
  %63 = inttoptr i64 %57 to float*
  store float %62, float* %63, align 4
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -864
  %66 = load i64, i64* %RAX.i291, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 7
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %3, align 8
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
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 7
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %78 to i8*
  store i8 32, i8* %81, align 1
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -848
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 7
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RAX.i291, align 8
  %88 = add i64 %82, -96
  %89 = add i64 %84, 11
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i64*
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -864
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 7
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RCX.i373, align 8
  %97 = add i64 %91, -104
  %98 = add i64 %93, 11
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %3, align 8
  store i32 201, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -852
  %103 = add i64 %100, 30
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %106 = add i64 %101, -8
  %107 = add i64 %100, 35
  store i64 %107, i64* %3, align 8
  %108 = load <2 x float>, <2 x float>* %60, align 1
  %109 = extractelement <2 x float> %108, i32 0
  %110 = inttoptr i64 %106 to float*
  store float %109, float* %110, align 4
  %111 = load i64, i64* %3, align 8
  store i32 100, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %112 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %112, i64* %RDI.i642, align 8
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -840
  %115 = add i64 %111, 26
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RSI.i265, align 8
  %AL.i1589 = bitcast %union.anon* %29 to i8*
  store i8 0, i8* %AL.i1589, align 1
  %118 = add i64 %111, -515
  %119 = add i64 %111, 33
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, -8
  %122 = inttoptr i64 %121 to i64*
  store i64 %119, i64* %122, align 8
  store i64 %121, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  %123 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %76)
  %124 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402f73_type* @G__0x402f73 to i64), i64* %RSI.i265, align 8
  %125 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %125, i64* %RDI.i642, align 8
  %EAX.i1578 = bitcast %union.anon* %29 to i32*
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -868
  %128 = load i32, i32* %EAX.i1578, align 4
  %129 = add i64 %124, 24
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %130, align 4
  %131 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %132 = add i64 %131, -572
  %133 = add i64 %131, 7
  %134 = load i64, i64* %6, align 8
  %135 = add i64 %134, -8
  %136 = inttoptr i64 %135 to i64*
  store i64 %133, i64* %136, align 8
  store i64 %135, i64* %6, align 8
  store i64 %132, i64* %3, align 8
  %137 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %123)
  %138 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402f7b_type* @G__0x402f7b to i64), i64* %RSI.i265, align 8
  %139 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %139, i64* %RDI.i642, align 8
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -872
  %142 = load i32, i32* %EAX.i1578, align 4
  %143 = add i64 %138, 24
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %141 to i32*
  store i32 %142, i32* %144, align 4
  %145 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %146 = add i64 %145, -603
  %147 = add i64 %145, 7
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150, align 8
  store i64 %149, i64* %6, align 8
  store i64 %146, i64* %3, align 8
  %151 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %137)
  %152 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402fb1_type* @G__0x402fb1 to i64), i64* %RSI.i265, align 8
  %153 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %153, i64* %RDI.i642, align 8
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -96
  %156 = add i64 %152, 22
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RDX.i386, align 8
  %159 = add i64 %154, -876
  %160 = load i32, i32* %EAX.i1578, align 4
  %161 = add i64 %152, 28
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %159 to i32*
  store i32 %160, i32* %162, align 4
  %163 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %164 = add i64 %163, -638
  %165 = add i64 %163, 7
  %166 = load i64, i64* %6, align 8
  %167 = add i64 %166, -8
  %168 = inttoptr i64 %167 to i64*
  store i64 %165, i64* %168, align 8
  store i64 %167, i64* %6, align 8
  store i64 %164, i64* %3, align 8
  %169 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %151)
  %170 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402fc2_type* @G__0x402fc2 to i64), i64* %RSI.i265, align 8
  %171 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %171, i64* %RDI.i642, align 8
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -104
  %174 = add i64 %170, 22
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RDX.i386, align 8
  %177 = add i64 %172, -880
  %178 = load i32, i32* %EAX.i1578, align 4
  %179 = add i64 %170, 28
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %177 to i32*
  store i32 %178, i32* %180, align 4
  %181 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %182 = add i64 %181, -673
  %183 = add i64 %181, 7
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, -8
  %186 = inttoptr i64 %185 to i64*
  store i64 %183, i64* %186, align 8
  store i64 %185, i64* %6, align 8
  store i64 %182, i64* %3, align 8
  %187 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %169)
  %188 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -20
  store i64 %190, i64* %33, align 8
  %191 = load double, double* bitcast (%G_0x2750__rip__4196232__type* @G_0x2750__rip__4196232_ to double*), align 8
  %192 = bitcast [32 x %union.VectorReg]* %18 to double*
  store double %191, double* %192, align 1
  %193 = bitcast i64* %25 to double*
  store double 0.000000e+00, double* %193, align 1
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %195 = bitcast %union.VectorReg* %194 to i8*
  %196 = load i64, i64* bitcast (%G_0x2750__rip__4196240__type* @G_0x2750__rip__4196240_ to i64*), align 8
  %197 = bitcast %union.VectorReg* %194 to double*
  %198 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %194, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %196, i64* %198, align 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %200 = bitcast i64* %199 to double*
  store double 0.000000e+00, double* %200, align 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %202 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %203 = sext i32 %202 to i64
  %204 = mul nsw i64 %203, %203
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
  %215 = bitcast double %191 to <2 x i32>
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
  %228 = load double, double* %197, align 1
  %229 = fdiv double %227, %228
  %230 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %231 = sext i32 %230 to i64
  %232 = mul nsw i64 %231, %231
  %233 = trunc i64 %232 to i32
  %234 = and i64 %232, 4294967295
  store i64 %234, i64* %201, align 8
  %235 = shl i64 %232, 32
  %236 = ashr exact i64 %235, 32
  %237 = icmp ne i64 %236, %232
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %12, align 1
  %239 = and i32 %233, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %244 = lshr i32 %233, 31
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %16, align 1
  store i8 %238, i8* %17, align 1
  %246 = sitofp i32 %233 to double
  store double %246, double* %197, align 1
  %247 = load double, double* %192, align 1
  %248 = bitcast i64* %25 to <2 x i32>*
  %249 = load <2 x i32>, <2 x i32>* %248, align 1
  %250 = fmul double %247, %246
  %251 = fadd double %229, %250
  store double %251, double* %225, align 1
  %252 = bitcast double %250 to <2 x i32>
  %253 = fptrunc double %251 to float
  store float %253, float* %21, align 1
  %254 = extractelement <2 x i32> %252, i32 1
  %255 = bitcast i8* %23 to i32*
  store i32 %254, i32* %255, align 1
  %256 = extractelement <2 x i32> %249, i32 0
  %257 = bitcast i64* %25 to i32*
  store i32 %256, i32* %257, align 1
  %258 = extractelement <2 x i32> %249, i32 1
  %259 = bitcast i8* %27 to i32*
  store i32 %258, i32* %259, align 1
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -12
  %262 = add i64 %188, 121
  store i64 %262, i64* %3, align 8
  %263 = load <2 x float>, <2 x float>* %60, align 1
  %264 = extractelement <2 x float> %263, i32 0
  %265 = inttoptr i64 %261 to float*
  store float %264, float* %265, align 4
  %266 = load i64, i64* %3, align 8
  %267 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RSI.i265, align 8
  %269 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RDX.i386, align 8
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -884
  %273 = load i32, i32* %EAX.i1578, align 4
  %274 = add i64 %266, 20
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %272 to i32*
  store i32 %273, i32* %275, align 4
  %276 = load i64, i64* %3, align 8
  %277 = add i64 %276, 4027
  %278 = add i64 %276, 5
  %279 = load i64, i64* %6, align 8
  %280 = add i64 %279, -8
  %281 = inttoptr i64 %280 to i64*
  store i64 %278, i64* %281, align 8
  store i64 %280, i64* %6, align 8
  store i64 %277, i64* %3, align 8
  %call2_4007f5 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %277, %struct.Memory* %187)
  %282 = load i64, i64* %3, align 8
  %283 = add i64 %282, -570
  %284 = add i64 %282, 5
  %285 = load i64, i64* %6, align 8
  %286 = add i64 %285, -8
  %287 = inttoptr i64 %286 to i64*
  store i64 %284, i64* %287, align 8
  store i64 %286, i64* %6, align 8
  store i64 %283, i64* %3, align 8
  %call2_4007fa = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %283, %struct.Memory* %call2_4007f5)
  %288 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %33, align 8
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -40
  %291 = add i64 %288, 35
  store i64 %291, i64* %3, align 8
  %292 = load <2 x float>, <2 x float>* %60, align 1
  %293 = extractelement <2 x float> %292, i32 0
  %294 = inttoptr i64 %290 to float*
  store float %293, float* %294, align 4
  %295 = load i64, i64* %3, align 8
  %296 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RSI.i265, align 8
  %298 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RDX.i386, align 8
  %300 = add i64 %295, 4446
  %301 = add i64 %295, 19
  %302 = load i64, i64* %6, align 8
  %303 = add i64 %302, -8
  %304 = inttoptr i64 %303 to i64*
  store i64 %301, i64* %304, align 8
  store i64 %303, i64* %6, align 8
  store i64 %300, i64* %3, align 8
  %call2_400830 = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %300, %struct.Memory* %call2_4007fa)
  %305 = load i64, i64* %3, align 8
  %306 = add i64 %305, -629
  %307 = add i64 %305, 5
  %308 = load i64, i64* %6, align 8
  %309 = add i64 %308, -8
  %310 = inttoptr i64 %309 to i64*
  store i64 %307, i64* %310, align 8
  store i64 %309, i64* %6, align 8
  store i64 %306, i64* %3, align 8
  %call2_400835 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %306, %struct.Memory* %call2_400830)
  %311 = load i64, i64* %RBP.i, align 8
  %312 = add i64 %311, -40
  %313 = load i64, i64* %3, align 8
  %314 = add i64 %313, 5
  store i64 %314, i64* %3, align 8
  %315 = load <2 x float>, <2 x float>* %60, align 1
  %316 = load <2 x i32>, <2 x i32>* %248, align 1
  %317 = inttoptr i64 %312 to float*
  %318 = load float, float* %317, align 4
  %319 = extractelement <2 x float> %315, i32 0
  %320 = fsub float %319, %318
  store float %320, float* %21, align 1
  %321 = bitcast <2 x float> %315 to <2 x i32>
  %322 = extractelement <2 x i32> %321, i32 1
  store i32 %322, i32* %255, align 1
  %323 = extractelement <2 x i32> %316, i32 0
  store i32 %323, i32* %257, align 1
  %324 = extractelement <2 x i32> %316, i32 1
  store i32 %324, i32* %259, align 1
  %325 = load <2 x float>, <2 x float>* %60, align 1
  %326 = extractelement <2 x float> %325, i32 0
  store float %326, float* bitcast (%G_0x62bad0_type* @G_0x62bad0 to float*), align 8
  %327 = add i64 %313, -634
  %328 = add i64 %313, 19
  %329 = load i64, i64* %6, align 8
  %330 = add i64 %329, -8
  %331 = inttoptr i64 %330 to i64*
  store i64 %328, i64* %331, align 8
  store i64 %330, i64* %6, align 8
  store i64 %327, i64* %3, align 8
  %call2_400848 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %327, %struct.Memory* %call2_400835)
  %332 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %33, align 8
  store i64 0, i64* %R9.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %333 = load i64, i64* %RBP.i, align 8
  %334 = add i64 %333, -40
  %335 = add i64 %332, 38
  store i64 %335, i64* %3, align 8
  %336 = load <2 x float>, <2 x float>* %60, align 1
  %337 = extractelement <2 x float> %336, i32 0
  %338 = inttoptr i64 %334 to float*
  store float %337, float* %338, align 4
  %339 = load i64, i64* %3, align 8
  %340 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RSI.i265, align 8
  %342 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RDX.i386, align 8
  %344 = add i64 %339, 5149
  %345 = add i64 %339, 19
  %346 = load i64, i64* %6, align 8
  %347 = add i64 %346, -8
  %348 = inttoptr i64 %347 to i64*
  store i64 %345, i64* %348, align 8
  store i64 %347, i64* %6, align 8
  store i64 %344, i64* %3, align 8
  %call2_400881 = tail call %struct.Memory* @sub_401c90.dgesl(%struct.State* %0, i64 %344, %struct.Memory* %call2_400848)
  %349 = load i64, i64* %3, align 8
  %350 = add i64 %349, -710
  %351 = add i64 %349, 5
  %352 = load i64, i64* %6, align 8
  %353 = add i64 %352, -8
  %354 = inttoptr i64 %353 to i64*
  store i64 %351, i64* %354, align 8
  store i64 %353, i64* %6, align 8
  store i64 %350, i64* %3, align 8
  %call2_400886 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %350, %struct.Memory* %call2_400881)
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -40
  %357 = load i64, i64* %3, align 8
  %358 = add i64 %357, 5
  store i64 %358, i64* %3, align 8
  %359 = load <2 x float>, <2 x float>* %60, align 1
  %360 = inttoptr i64 %356 to float*
  %361 = load float, float* %360, align 4
  %362 = extractelement <2 x float> %359, i32 0
  %363 = fsub float %362, %361
  store float %363, float* %21, align 1
  %364 = bitcast <2 x float> %359 to <2 x i32>
  %365 = extractelement <2 x i32> %364, i32 1
  store i32 %365, i32* %255, align 1
  %366 = load <2 x float>, <2 x float>* %60, align 1
  %367 = extractelement <2 x float> %366, i32 0
  store float %367, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  %368 = load i32, i32* bitcast (%G_0x62bad0_type* @G_0x62bad0 to i32*), align 8
  store i32 %368, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %369 = load <2 x float>, <2 x float>* %60, align 1
  %370 = load <2 x i32>, <2 x i32>* %248, align 1
  %371 = extractelement <2 x float> %369, i32 0
  %372 = fadd float %371, %367
  store float %372, float* %21, align 1
  %373 = bitcast <2 x float> %369 to <2 x i32>
  %374 = extractelement <2 x i32> %373, i32 1
  store i32 %374, i32* %255, align 1
  %375 = extractelement <2 x i32> %370, i32 0
  store i32 %375, i32* %257, align 1
  %376 = extractelement <2 x i32> %370, i32 1
  store i32 %376, i32* %259, align 1
  %377 = add i64 %355, -16
  %378 = add i64 %357, 37
  store i64 %378, i64* %3, align 8
  %379 = load <2 x float>, <2 x float>* %60, align 1
  %380 = extractelement <2 x float> %379, i32 0
  %381 = inttoptr i64 %377 to float*
  store float %380, float* %381, align 4
  %382 = load i64, i64* %3, align 8
  %383 = add i64 %382, 11
  store i64 %383, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4008bb

block_.L_4008bb:                                  ; preds = %block_4008cf, %entry
  %384 = phi i32 [ %428, %block_4008cf ], [ 0, %entry ]
  %385 = phi i64 [ %451, %block_4008cf ], [ %383, %entry ]
  %386 = zext i32 %384 to i64
  store i64 %386, i64* %RAX.i291, align 8
  %387 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %388 = sub i32 %384, %387
  %389 = icmp ult i32 %384, %387
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %12, align 1
  %391 = and i32 %388, 255
  %392 = tail call i32 @llvm.ctpop.i32(i32 %391)
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  store i8 %395, i8* %13, align 1
  %396 = xor i32 %387, %384
  %397 = xor i32 %396, %388
  %398 = lshr i32 %397, 4
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %14, align 1
  %401 = icmp eq i32 %388, 0
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %15, align 1
  %403 = lshr i32 %388, 31
  %404 = trunc i32 %403 to i8
  store i8 %404, i8* %16, align 1
  %405 = lshr i32 %384, 31
  %406 = lshr i32 %387, 31
  %407 = xor i32 %406, %405
  %408 = xor i32 %403, %405
  %409 = add nuw nsw i32 %408, %407
  %410 = icmp eq i32 %409, 2
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %17, align 1
  %412 = icmp ne i8 %404, 0
  %413 = xor i1 %412, %410
  %.v = select i1 %413, i64 20, i64 76
  %414 = add i64 %385, %.v
  store i64 %414, i64* %3, align 8
  br i1 %413, label %block_4008cf, label %block_.L_400907

block_4008cf:                                     ; preds = %block_.L_4008bb
  %415 = sext i32 %384 to i64
  store i64 %415, i64* %RAX.i291, align 8
  %416 = shl nsw i64 %415, 2
  %417 = add nsw i64 %416, 6468736
  %418 = add i64 %414, 17
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  store i32 %420, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %421 = add nsw i64 %416, 6470896
  %422 = add i64 %414, 34
  store i64 %422, i64* %3, align 8
  %423 = load <2 x float>, <2 x float>* %60, align 1
  %424 = extractelement <2 x float> %423, i32 0
  %425 = inttoptr i64 %421 to float*
  store float %424, float* %425, align 4
  %426 = load i64, i64* %3, align 8
  %427 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %428 = add i32 %427, 1
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RAX.i291, align 8
  %430 = icmp eq i32 %427, -1
  %431 = icmp eq i32 %428, 0
  %432 = or i1 %430, %431
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %12, align 1
  %434 = and i32 %428, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %13, align 1
  %439 = xor i32 %427, %428
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %14, align 1
  %443 = zext i1 %431 to i8
  store i8 %443, i8* %15, align 1
  %444 = lshr i32 %428, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %16, align 1
  %446 = lshr i32 %427, 31
  %447 = xor i32 %444, %446
  %448 = add nuw nsw i32 %447, %444
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %17, align 1
  store i32 %428, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %451 = add i64 %426, -54
  store i64 %451, i64* %3, align 8
  br label %block_.L_4008bb

block_.L_400907:                                  ; preds = %block_.L_4008bb
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -20
  store i64 %453, i64* %33, align 8
  %454 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RSI.i265, align 8
  %456 = zext i32 %387 to i64
  store i64 %456, i64* %RDX.i386, align 8
  %457 = add i64 %414, 3753
  %458 = add i64 %414, 43
  %459 = load i64, i64* %6, align 8
  %460 = add i64 %459, -8
  %461 = inttoptr i64 %460 to i64*
  store i64 %458, i64* %461, align 8
  store i64 %460, i64* %6, align 8
  store i64 %457, i64* %3, align 8
  %call2_40092d = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %457, %struct.Memory* %call2_400886)
  %462 = load i64, i64* %3, align 8
  %463 = add i64 %462, 11
  store i64 %463, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %464 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %465 = bitcast %union.anon* %30 to [2 x i32]*
  %466 = bitcast %union.anon* %30 to i32*
  %467 = getelementptr inbounds [2 x i32], [2 x i32]* %465, i64 0, i64 1
  br label %block_.L_40093d

block_.L_40093d:                                  ; preds = %block_400951, %block_.L_400907
  %468 = phi i32 [ %518, %block_400951 ], [ 0, %block_.L_400907 ]
  %469 = phi i64 [ %541, %block_400951 ], [ %463, %block_.L_400907 ]
  %470 = zext i32 %468 to i64
  store i64 %470, i64* %RAX.i291, align 8
  %471 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %472 = sub i32 %468, %471
  %473 = icmp ult i32 %468, %471
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %12, align 1
  %475 = and i32 %472, 255
  %476 = tail call i32 @llvm.ctpop.i32(i32 %475)
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = xor i8 %478, 1
  store i8 %479, i8* %13, align 1
  %480 = xor i32 %471, %468
  %481 = xor i32 %480, %472
  %482 = lshr i32 %481, 4
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  store i8 %484, i8* %14, align 1
  %485 = icmp eq i32 %472, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %15, align 1
  %487 = lshr i32 %472, 31
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %16, align 1
  %489 = lshr i32 %468, 31
  %490 = lshr i32 %471, 31
  %491 = xor i32 %490, %489
  %492 = xor i32 %487, %489
  %493 = add nuw nsw i32 %492, %491
  %494 = icmp eq i32 %493, 2
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %17, align 1
  %496 = icmp ne i8 %488, 0
  %497 = xor i1 %496, %494
  %.v19 = select i1 %497, i64 20, i64 90
  %498 = add i64 %469, %.v19
  store i64 %498, i64* %3, align 8
  br i1 %497, label %block_400951, label %block_.L_400997

block_400951:                                     ; preds = %block_.L_40093d
  %499 = sext i32 %468 to i64
  store i64 %499, i64* %RAX.i291, align 8
  %500 = shl nsw i64 %499, 2
  %501 = add nsw i64 %500, 6468736
  %502 = add i64 %498, 17
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to float*
  %504 = inttoptr i64 %501 to i32*
  %505 = load i32, i32* %504, align 4
  store i32 %505, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  %506 = add i64 %498, 21
  store i64 %506, i64* %3, align 8
  %507 = load i64, i64* %464, align 1
  %508 = trunc i64 %507 to i32
  store i32 %508, i32* %466, align 1
  store i32 0, i32* %467, align 1
  %509 = load i64, i64* %RCX.i373, align 8
  %510 = and i64 %509, 4294967295
  %511 = xor i64 %510, 2147483648
  store i64 %511, i64* %RCX.i373, align 8
  %512 = trunc i64 %511 to i32
  store i32 %512, i32* %22, align 1
  store i32 0, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %513 = add i64 %498, 48
  store i64 %513, i64* %3, align 8
  %514 = load <2 x float>, <2 x float>* %60, align 1
  %515 = extractelement <2 x float> %514, i32 0
  store float %515, float* %503, align 4
  %516 = load i64, i64* %3, align 8
  %517 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %518 = add i32 %517, 1
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RAX.i291, align 8
  %520 = icmp eq i32 %517, -1
  %521 = icmp eq i32 %518, 0
  %522 = or i1 %520, %521
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %12, align 1
  %524 = and i32 %518, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %13, align 1
  %529 = xor i32 %517, %518
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %14, align 1
  %533 = zext i1 %521 to i8
  store i8 %533, i8* %15, align 1
  %534 = lshr i32 %518, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %16, align 1
  %536 = lshr i32 %517, 31
  %537 = xor i32 %534, %536
  %538 = add nuw nsw i32 %537, %534
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %17, align 1
  store i32 %518, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %541 = add i64 %516, -68
  store i64 %541, i64* %3, align 8
  br label %block_.L_40093d

block_.L_400997:                                  ; preds = %block_.L_40093d
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RSI.i265, align 8
  store i64 ptrtoint (%G__0x62bcf0_type* @G__0x62bcf0 to i64), i64* %33, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %R9.i, align 8
  %542 = zext i32 %471 to i64
  store i64 %542, i64* %RDI.i642, align 8
  store i64 %542, i64* %RDX.i386, align 8
  %543 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RCX.i373, align 8
  %545 = add i64 %498, 5753
  %546 = add i64 %498, 56
  %547 = load i64, i64* %6, align 8
  %548 = add i64 %547, -8
  %549 = inttoptr i64 %548 to i64*
  store i64 %546, i64* %549, align 8
  store i64 %548, i64* %6, align 8
  store i64 %545, i64* %3, align 8
  %call2_4009ca = tail call %struct.Memory* @sub_402010.dmxpy(%struct.State* %0, i64 %545, %struct.Memory* %call2_40092d)
  %550 = load i64, i64* %3, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %551 = load i64, i64* %RBP.i, align 8
  %552 = add i64 %551, -28
  %553 = add i64 %550, 8
  store i64 %553, i64* %3, align 8
  %554 = load <2 x float>, <2 x float>* %60, align 1
  %555 = extractelement <2 x float> %554, i32 0
  %556 = inttoptr i64 %552 to float*
  store float %555, float* %556, align 4
  %557 = load i64, i64* %RBP.i, align 8
  %558 = add i64 %557, -24
  %559 = load i64, i64* %3, align 8
  %560 = add i64 %559, 5
  store i64 %560, i64* %3, align 8
  %561 = load <2 x float>, <2 x float>* %60, align 1
  %562 = extractelement <2 x float> %561, i32 0
  %563 = inttoptr i64 %558 to float*
  store float %562, float* %563, align 4
  %564 = load i64, i64* %3, align 8
  %565 = add i64 %564, 11
  store i64 %565, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %566 = bitcast %union.VectorReg* %194 to float*
  %567 = getelementptr inbounds i8, i8* %195, i64 4
  %568 = bitcast i8* %567 to float*
  %569 = bitcast i64* %199 to float*
  %570 = getelementptr inbounds i8, i8* %195, i64 12
  %571 = bitcast i8* %570 to float*
  %572 = bitcast %union.VectorReg* %194 to <2 x float>*
  %573 = bitcast %union.VectorReg* %208 to float*
  %574 = getelementptr inbounds i8, i8* %209, i64 4
  %575 = bitcast i8* %574 to float*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %577 = bitcast i64* %576 to float*
  %578 = getelementptr inbounds i8, i8* %209, i64 12
  %579 = bitcast i8* %578 to float*
  %580 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %208, i64 0, i32 0, i32 0, i32 0, i64 0
  %581 = bitcast %union.VectorReg* %194 to i32*
  %582 = bitcast i8* %567 to i32*
  %583 = bitcast i64* %199 to i32*
  %584 = bitcast i8* %570 to i32*
  br label %block_.L_4009e7

block_.L_4009e7:                                  ; preds = %block_.L_400aee, %block_.L_400997
  %585 = phi i32 [ 0, %block_.L_400997 ], [ %870, %block_.L_400aee ]
  %586 = phi i64 [ %565, %block_.L_400997 ], [ %893, %block_.L_400aee ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4009ca, %block_.L_400997 ], [ %804, %block_.L_400aee ]
  %587 = zext i32 %585 to i64
  store i64 %587, i64* %RAX.i291, align 8
  %588 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %589 = sub i32 %585, %588
  %590 = icmp ult i32 %585, %588
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %12, align 1
  %592 = and i32 %589, 255
  %593 = tail call i32 @llvm.ctpop.i32(i32 %592)
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  store i8 %596, i8* %13, align 1
  %597 = xor i32 %588, %585
  %598 = xor i32 %597, %589
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %14, align 1
  %602 = icmp eq i32 %589, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %15, align 1
  %604 = lshr i32 %589, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %16, align 1
  %606 = lshr i32 %585, 31
  %607 = lshr i32 %588, 31
  %608 = xor i32 %607, %606
  %609 = xor i32 %604, %606
  %610 = add nuw nsw i32 %609, %608
  %611 = icmp eq i32 %610, 2
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %17, align 1
  %613 = icmp ne i8 %605, 0
  %614 = xor i1 %613, %611
  %.v20 = select i1 %614, i64 20, i64 302
  %615 = add i64 %586, %.v20
  store i64 %615, i64* %3, align 8
  br i1 %614, label %block_4009fb, label %block_.L_400b15

block_4009fb:                                     ; preds = %block_.L_4009e7
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -28
  %618 = add i64 %615, 5
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  store i32 %620, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %621 = load <2 x float>, <2 x float>* %60, align 1
  %622 = extractelement <2 x float> %621, i32 0
  %623 = fpext float %622 to double
  store double %623, double* %192, align 1
  %624 = sext i32 %585 to i64
  store i64 %624, i64* %RAX.i291, align 8
  %625 = shl nsw i64 %624, 2
  %626 = add nsw i64 %625, 6468736
  %627 = add i64 %615, 26
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i32*
  %629 = load i32, i32* %628, align 4
  store i32 %629, i32* %581, align 1
  store float 0.000000e+00, float* %568, align 1
  store float 0.000000e+00, float* %569, align 1
  store float 0.000000e+00, float* %571, align 1
  %630 = load <2 x float>, <2 x float>* %572, align 1
  %631 = extractelement <2 x float> %630, i32 0
  %632 = fpext float %631 to double
  %633 = load i32, i32* bitcast (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i32*), align 8
  %634 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 4) to i32*), align 4
  %635 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 8) to i32*), align 8
  %636 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 12) to i32*), align 4
  %637 = bitcast %union.VectorReg* %208 to i32*
  store i32 %633, i32* %637, align 1
  %638 = bitcast i8* %574 to i32*
  store i32 %634, i32* %638, align 1
  %639 = bitcast i64* %576 to i32*
  store i32 %635, i32* %639, align 1
  %640 = bitcast i8* %578 to i32*
  store i32 %636, i32* %640, align 1
  %641 = bitcast double %632 to i64
  %642 = load i64, i64* %199, align 1
  %643 = load i64, i64* %580, align 1
  %644 = load i64, i64* %576, align 1
  %645 = and i64 %643, %641
  %646 = and i64 %644, %642
  %647 = trunc i64 %645 to i32
  %648 = lshr i64 %645, 32
  %649 = trunc i64 %648 to i32
  store i32 %647, i32* %581, align 1
  store i32 %649, i32* %582, align 1
  %650 = trunc i64 %646 to i32
  store i32 %650, i32* %583, align 1
  %651 = lshr i64 %646, 32
  %652 = trunc i64 %651 to i32
  store i32 %652, i32* %584, align 1
  %653 = add i64 %615, 45
  store i64 %653, i64* %3, align 8
  %654 = load double, double* %197, align 1
  %655 = fcmp uno double %623, %654
  br i1 %655, label %656, label %666

; <label>:656:                                    ; preds = %block_4009fb
  %657 = fadd double %623, %654
  %658 = bitcast double %657 to i64
  %659 = and i64 %658, 9221120237041090560
  %660 = icmp eq i64 %659, 9218868437227405312
  %661 = and i64 %658, 2251799813685247
  %662 = icmp ne i64 %661, 0
  %663 = and i1 %660, %662
  br i1 %663, label %664, label %672

; <label>:664:                                    ; preds = %656
  %665 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %653, %struct.Memory* %MEMORY.2)
  %.pre = load i64, i64* %3, align 8
  %.pre2 = load i8, i8* %12, align 1
  %.pre3 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1308

; <label>:666:                                    ; preds = %block_4009fb
  %667 = fcmp ogt double %623, %654
  br i1 %667, label %672, label %668

; <label>:668:                                    ; preds = %666
  %669 = fcmp olt double %623, %654
  br i1 %669, label %672, label %670

; <label>:670:                                    ; preds = %668
  %671 = fcmp oeq double %623, %654
  br i1 %671, label %672, label %676

; <label>:672:                                    ; preds = %670, %668, %666, %656
  %673 = phi i8 [ 0, %666 ], [ 0, %668 ], [ 1, %670 ], [ 1, %656 ]
  %674 = phi i8 [ 0, %666 ], [ 0, %668 ], [ 0, %670 ], [ 1, %656 ]
  %675 = phi i8 [ 0, %666 ], [ 1, %668 ], [ 0, %670 ], [ 1, %656 ]
  store i8 %673, i8* %15, align 1
  store i8 %674, i8* %13, align 1
  store i8 %675, i8* %12, align 1
  br label %676

; <label>:676:                                    ; preds = %672, %670
  %677 = phi i8 [ %673, %672 ], [ %603, %670 ]
  %678 = phi i8 [ %675, %672 ], [ %591, %670 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1308

routine_ucomisd__xmm1___xmm0.exit1308:            ; preds = %676, %664
  %679 = phi i8 [ %.pre3, %664 ], [ %677, %676 ]
  %680 = phi i8 [ %.pre2, %664 ], [ %678, %676 ]
  %681 = phi i64 [ %.pre, %664 ], [ %653, %676 ]
  %682 = phi %struct.Memory* [ %665, %664 ], [ %MEMORY.2, %676 ]
  %683 = or i8 %679, %680
  %684 = icmp ne i8 %683, 0
  %.v21 = select i1 %684, i64 28, i64 6
  %685 = add i64 %681, %.v21
  store i64 %685, i64* %3, align 8
  br i1 %684, label %block_.L_400a44, label %block_400a2e

block_400a2e:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit1308
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -28
  %688 = add i64 %685, 5
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  store i32 %690, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %691 = load <2 x float>, <2 x float>* %60, align 1
  %692 = extractelement <2 x float> %691, i32 0
  %693 = fpext float %692 to double
  store double %693, double* %192, align 1
  %694 = add i64 %686, -896
  %695 = add i64 %685, 17
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to double*
  store double %693, double* %696, align 8
  %697 = load i64, i64* %3, align 8
  %698 = add i64 %697, 45
  store i64 %698, i64* %3, align 8
  br label %block_.L_400a6c

block_.L_400a44:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit1308
  %699 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %700 = sext i32 %699 to i64
  store i64 %700, i64* %RAX.i291, align 8
  %701 = shl nsw i64 %700, 2
  %702 = add nsw i64 %701, 6468736
  %703 = add i64 %685, 17
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  store i32 %705, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %706 = load <2 x float>, <2 x float>* %60, align 1
  %707 = extractelement <2 x float> %706, i32 0
  %708 = fpext float %707 to double
  %709 = load i32, i32* bitcast (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i32*), align 8
  %710 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 4) to i32*), align 4
  %711 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 8) to i32*), align 8
  %712 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 12) to i32*), align 4
  store i32 %709, i32* %581, align 1
  store i32 %710, i32* %582, align 1
  store i32 %711, i32* %583, align 1
  store i32 %712, i32* %584, align 1
  %713 = bitcast double %708 to i64
  %714 = load i64, i64* %25, align 1
  %715 = load i64, i64* %198, align 1
  %716 = load i64, i64* %199, align 1
  %717 = and i64 %715, %713
  %718 = and i64 %716, %714
  %719 = trunc i64 %717 to i32
  %720 = lshr i64 %717, 32
  %721 = trunc i64 %720 to i32
  store i32 %719, i32* %22, align 1
  store i32 %721, i32* %255, align 1
  %722 = trunc i64 %718 to i32
  store i32 %722, i32* %257, align 1
  %723 = lshr i64 %718, 32
  %724 = trunc i64 %723 to i32
  store i32 %724, i32* %259, align 1
  %725 = load i64, i64* %RBP.i, align 8
  %726 = add i64 %725, -896
  %727 = add i64 %685, 40
  store i64 %727, i64* %3, align 8
  %728 = load i64, i64* %464, align 1
  %729 = inttoptr i64 %726 to i64*
  store i64 %728, i64* %729, align 8
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400a6c

block_.L_400a6c:                                  ; preds = %block_.L_400a44, %block_400a2e
  %730 = phi i64 [ %.pre4, %block_.L_400a44 ], [ %698, %block_400a2e ]
  %731 = load i64, i64* %RBP.i, align 8
  %732 = add i64 %731, -896
  %733 = add i64 %730, 8
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to double*
  %735 = load double, double* %734, align 8
  %736 = bitcast double %735 to <2 x i32>
  %737 = fptrunc double %735 to float
  store float %737, float* %21, align 1
  %738 = extractelement <2 x i32> %736, i32 1
  store i32 %738, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %739 = add i64 %731, -28
  %740 = add i64 %730, 17
  store i64 %740, i64* %3, align 8
  %741 = load <2 x float>, <2 x float>* %60, align 1
  %742 = extractelement <2 x float> %741, i32 0
  %743 = inttoptr i64 %739 to float*
  store float %742, float* %743, align 4
  %744 = load i64, i64* %RBP.i, align 8
  %745 = add i64 %744, -24
  %746 = load i64, i64* %3, align 8
  %747 = add i64 %746, 5
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %745 to i32*
  %749 = load i32, i32* %748, align 4
  store i32 %749, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %750 = load <2 x float>, <2 x float>* %60, align 1
  %751 = extractelement <2 x float> %750, i32 0
  %752 = fpext float %751 to double
  store double %752, double* %192, align 1
  %753 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RAX.i291, align 8
  %755 = shl nsw i64 %754, 2
  %756 = add nsw i64 %755, 6470896
  %757 = add i64 %746, 26
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  store i32 %759, i32* %581, align 1
  store float 0.000000e+00, float* %568, align 1
  store float 0.000000e+00, float* %569, align 1
  store float 0.000000e+00, float* %571, align 1
  %760 = load <2 x float>, <2 x float>* %572, align 1
  %761 = extractelement <2 x float> %760, i32 0
  %762 = fpext float %761 to double
  %763 = load i32, i32* bitcast (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i32*), align 8
  %764 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 4) to i32*), align 4
  %765 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 8) to i32*), align 8
  %766 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 12) to i32*), align 4
  store i32 %763, i32* %637, align 1
  store i32 %764, i32* %638, align 1
  store i32 %765, i32* %639, align 1
  store i32 %766, i32* %640, align 1
  %767 = bitcast double %762 to i64
  %768 = load i64, i64* %199, align 1
  %769 = load i64, i64* %580, align 1
  %770 = load i64, i64* %576, align 1
  %771 = and i64 %769, %767
  %772 = and i64 %770, %768
  %773 = trunc i64 %771 to i32
  %774 = lshr i64 %771, 32
  %775 = trunc i64 %774 to i32
  store i32 %773, i32* %581, align 1
  store i32 %775, i32* %582, align 1
  %776 = trunc i64 %772 to i32
  store i32 %776, i32* %583, align 1
  %777 = lshr i64 %772, 32
  %778 = trunc i64 %777 to i32
  store i32 %778, i32* %584, align 1
  %779 = add i64 %746, 45
  store i64 %779, i64* %3, align 8
  %780 = load double, double* %197, align 1
  %781 = fcmp uno double %752, %780
  br i1 %781, label %782, label %792

; <label>:782:                                    ; preds = %block_.L_400a6c
  %783 = fadd double %752, %780
  %784 = bitcast double %783 to i64
  %785 = and i64 %784, 9221120237041090560
  %786 = icmp eq i64 %785, 9218868437227405312
  %787 = and i64 %784, 2251799813685247
  %788 = icmp ne i64 %787, 0
  %789 = and i1 %786, %788
  br i1 %789, label %790, label %798

; <label>:790:                                    ; preds = %782
  %791 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %779, %struct.Memory* %682)
  %.pre5 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:792:                                    ; preds = %block_.L_400a6c
  %793 = fcmp ogt double %752, %780
  br i1 %793, label %798, label %794

; <label>:794:                                    ; preds = %792
  %795 = fcmp olt double %752, %780
  br i1 %795, label %798, label %796

; <label>:796:                                    ; preds = %794
  %797 = fcmp oeq double %752, %780
  br i1 %797, label %798, label %802

; <label>:798:                                    ; preds = %796, %794, %792, %782
  %799 = phi i8 [ 0, %792 ], [ 0, %794 ], [ 1, %796 ], [ 1, %782 ]
  %800 = phi i8 [ 0, %792 ], [ 0, %794 ], [ 0, %796 ], [ 1, %782 ]
  %801 = phi i8 [ 0, %792 ], [ 1, %794 ], [ 0, %796 ], [ 1, %782 ]
  store i8 %799, i8* %15, align 1
  store i8 %800, i8* %13, align 1
  store i8 %801, i8* %12, align 1
  br label %802

; <label>:802:                                    ; preds = %798, %796
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %802, %790
  %803 = phi i64 [ %.pre5, %790 ], [ %779, %802 ]
  %804 = phi %struct.Memory* [ %791, %790 ], [ %682, %802 ]
  %805 = load i8, i8* %12, align 1
  %806 = load i8, i8* %15, align 1
  %807 = or i8 %806, %805
  %808 = icmp ne i8 %807, 0
  %.v22 = select i1 %808, i64 28, i64 6
  %809 = add i64 %803, %.v22
  store i64 %809, i64* %3, align 8
  br i1 %808, label %block_.L_400ac6, label %block_400ab0

block_400ab0:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %810 = load i64, i64* %RBP.i, align 8
  %811 = add i64 %810, -24
  %812 = add i64 %809, 5
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  store i32 %814, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %815 = load <2 x float>, <2 x float>* %60, align 1
  %816 = extractelement <2 x float> %815, i32 0
  %817 = fpext float %816 to double
  store double %817, double* %192, align 1
  %818 = add i64 %810, -904
  %819 = add i64 %809, 17
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to double*
  store double %817, double* %820, align 8
  %821 = load i64, i64* %3, align 8
  %822 = add i64 %821, 45
  store i64 %822, i64* %3, align 8
  br label %block_.L_400aee

block_.L_400ac6:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %823 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %824 = sext i32 %823 to i64
  store i64 %824, i64* %RAX.i291, align 8
  %825 = shl nsw i64 %824, 2
  %826 = add nsw i64 %825, 6470896
  %827 = add i64 %809, 17
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  store i32 %829, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %830 = load <2 x float>, <2 x float>* %60, align 1
  %831 = extractelement <2 x float> %830, i32 0
  %832 = fpext float %831 to double
  %833 = load i32, i32* bitcast (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i32*), align 8
  %834 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 4) to i32*), align 4
  %835 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 8) to i32*), align 8
  %836 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 12) to i32*), align 4
  store i32 %833, i32* %581, align 1
  store i32 %834, i32* %582, align 1
  store i32 %835, i32* %583, align 1
  store i32 %836, i32* %584, align 1
  %837 = bitcast double %832 to i64
  %838 = load i64, i64* %25, align 1
  %839 = load i64, i64* %198, align 1
  %840 = load i64, i64* %199, align 1
  %841 = and i64 %839, %837
  %842 = and i64 %840, %838
  %843 = trunc i64 %841 to i32
  %844 = lshr i64 %841, 32
  %845 = trunc i64 %844 to i32
  store i32 %843, i32* %22, align 1
  store i32 %845, i32* %255, align 1
  %846 = trunc i64 %842 to i32
  store i32 %846, i32* %257, align 1
  %847 = lshr i64 %842, 32
  %848 = trunc i64 %847 to i32
  store i32 %848, i32* %259, align 1
  %849 = load i64, i64* %RBP.i, align 8
  %850 = add i64 %849, -904
  %851 = add i64 %809, 40
  store i64 %851, i64* %3, align 8
  %852 = load i64, i64* %464, align 1
  %853 = inttoptr i64 %850 to i64*
  store i64 %852, i64* %853, align 8
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400aee

block_.L_400aee:                                  ; preds = %block_.L_400ac6, %block_400ab0
  %854 = phi i64 [ %.pre6, %block_.L_400ac6 ], [ %822, %block_400ab0 ]
  %855 = load i64, i64* %RBP.i, align 8
  %856 = add i64 %855, -904
  %857 = add i64 %854, 8
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to double*
  %859 = load double, double* %858, align 8
  %860 = bitcast double %859 to <2 x i32>
  %861 = fptrunc double %859 to float
  store float %861, float* %21, align 1
  %862 = extractelement <2 x i32> %860, i32 1
  store i32 %862, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %863 = add i64 %855, -24
  %864 = add i64 %854, 17
  store i64 %864, i64* %3, align 8
  %865 = load <2 x float>, <2 x float>* %60, align 1
  %866 = extractelement <2 x float> %865, i32 0
  %867 = inttoptr i64 %863 to float*
  store float %866, float* %867, align 4
  %868 = load i64, i64* %3, align 8
  %869 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %870 = add i32 %869, 1
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RAX.i291, align 8
  %872 = icmp eq i32 %869, -1
  %873 = icmp eq i32 %870, 0
  %874 = or i1 %872, %873
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %12, align 1
  %876 = and i32 %870, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %13, align 1
  %881 = xor i32 %869, %870
  %882 = lshr i32 %881, 4
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  store i8 %884, i8* %14, align 1
  %885 = zext i1 %873 to i8
  store i8 %885, i8* %15, align 1
  %886 = lshr i32 %870, 31
  %887 = trunc i32 %886 to i8
  store i8 %887, i8* %16, align 1
  %888 = lshr i32 %869, 31
  %889 = xor i32 %886, %888
  %890 = add nuw nsw i32 %889, %886
  %891 = icmp eq i32 %890, 2
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %17, align 1
  store i32 %870, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %893 = add i64 %868, -280
  store i64 %893, i64* %3, align 8
  br label %block_.L_4009e7

block_.L_400b15:                                  ; preds = %block_.L_4009e7
  %894 = load i32, i32* bitcast (%G_0x23af__rip__4197149__type* @G_0x23af__rip__4197149_ to i32*), align 8
  store i32 %894, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %895 = add i64 %615, 7419
  %896 = add i64 %615, 13
  %897 = load i64, i64* %6, align 8
  %898 = add i64 %897, -8
  %899 = inttoptr i64 %898 to i64*
  store i64 %896, i64* %899, align 8
  store i64 %898, i64* %6, align 8
  store i64 %895, i64* %3, align 8
  %call2_400b1d = tail call %struct.Memory* @sub_402810.epslon(%struct.State* %0, i64 %895, %struct.Memory* %MEMORY.2)
  %900 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402fd4_type* @G__0x402fd4 to i64), i64* %RSI.i265, align 8
  %901 = load i32, i32* bitcast (%G_0x2398__rip__4197172__type* @G_0x2398__rip__4197172_ to i32*), align 8
  store i32 %901, i32* %581, align 1
  store float 0.000000e+00, float* %568, align 1
  store float 0.000000e+00, float* %569, align 1
  store float 0.000000e+00, float* %571, align 1
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -36
  %904 = add i64 %900, 23
  store i64 %904, i64* %3, align 8
  %905 = load <2 x float>, <2 x float>* %60, align 1
  %906 = extractelement <2 x float> %905, i32 0
  %907 = inttoptr i64 %903 to float*
  store float %906, float* %907, align 4
  %908 = load i64, i64* %RBP.i, align 8
  %909 = add i64 %908, -28
  %910 = load i64, i64* %3, align 8
  %911 = add i64 %910, 5
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %909 to i32*
  %913 = load i32, i32* %912, align 4
  store i32 %913, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %914 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RAX.i291, align 8
  %916 = bitcast %union.VectorReg* %208 to <2 x i32>*
  %917 = load <2 x i32>, <2 x i32>* %916, align 1
  %918 = bitcast i64* %576 to <2 x i32>*
  %919 = load <2 x i32>, <2 x i32>* %918, align 1
  %920 = sitofp i32 %914 to float
  store float %920, float* %573, align 1
  %921 = extractelement <2 x i32> %917, i32 1
  %922 = bitcast i8* %574 to i32*
  store i32 %921, i32* %922, align 1
  %923 = extractelement <2 x i32> %919, i32 0
  %924 = bitcast i64* %576 to i32*
  store i32 %923, i32* %924, align 1
  %925 = extractelement <2 x i32> %919, i32 1
  %926 = bitcast i8* %578 to i32*
  store i32 %925, i32* %926, align 1
  %927 = add i64 %908, -20
  %928 = add i64 %910, 21
  store i64 %928, i64* %3, align 8
  %929 = bitcast %union.VectorReg* %208 to <2 x float>*
  %930 = load <2 x float>, <2 x float>* %929, align 1
  %931 = load <2 x i32>, <2 x i32>* %918, align 1
  %932 = inttoptr i64 %927 to float*
  %933 = load float, float* %932, align 4
  %934 = extractelement <2 x float> %930, i32 0
  %935 = fmul float %934, %933
  store float %935, float* %573, align 1
  %936 = bitcast <2 x float> %930 to <2 x i32>
  %937 = extractelement <2 x i32> %936, i32 1
  store i32 %937, i32* %922, align 1
  %938 = extractelement <2 x i32> %931, i32 0
  store i32 %938, i32* %924, align 1
  %939 = extractelement <2 x i32> %931, i32 1
  store i32 %939, i32* %926, align 1
  %940 = add i64 %908, -24
  %941 = add i64 %910, 26
  store i64 %941, i64* %3, align 8
  %942 = load <2 x float>, <2 x float>* %929, align 1
  %943 = load <2 x i32>, <2 x i32>* %918, align 1
  %944 = inttoptr i64 %940 to float*
  %945 = load float, float* %944, align 4
  %946 = extractelement <2 x float> %942, i32 0
  %947 = fmul float %946, %945
  store float %947, float* %573, align 1
  %948 = bitcast <2 x float> %942 to <2 x i32>
  %949 = extractelement <2 x i32> %948, i32 1
  store i32 %949, i32* %922, align 1
  %950 = extractelement <2 x i32> %943, i32 0
  store i32 %950, i32* %924, align 1
  %951 = extractelement <2 x i32> %943, i32 1
  store i32 %951, i32* %926, align 1
  %952 = add i64 %908, -36
  %953 = add i64 %910, 31
  store i64 %953, i64* %3, align 8
  %954 = load <2 x float>, <2 x float>* %929, align 1
  %955 = load <2 x i32>, <2 x i32>* %918, align 1
  %956 = inttoptr i64 %952 to float*
  %957 = load float, float* %956, align 4
  %958 = extractelement <2 x float> %954, i32 0
  %959 = fmul float %958, %957
  store float %959, float* %573, align 1
  %960 = bitcast <2 x float> %954 to <2 x i32>
  %961 = extractelement <2 x i32> %960, i32 1
  store i32 %961, i32* %922, align 1
  %962 = extractelement <2 x i32> %955, i32 0
  store i32 %962, i32* %924, align 1
  %963 = extractelement <2 x i32> %955, i32 1
  store i32 %963, i32* %926, align 1
  %964 = load <2 x float>, <2 x float>* %60, align 1
  %965 = load <2 x i32>, <2 x i32>* %248, align 1
  %966 = load <2 x float>, <2 x float>* %929, align 1
  %967 = extractelement <2 x float> %964, i32 0
  %968 = extractelement <2 x float> %966, i32 0
  %969 = fdiv float %967, %968
  store float %969, float* %21, align 1
  %970 = bitcast <2 x float> %964 to <2 x i32>
  %971 = extractelement <2 x i32> %970, i32 1
  store i32 %971, i32* %255, align 1
  %972 = extractelement <2 x i32> %965, i32 0
  store i32 %972, i32* %257, align 1
  %973 = extractelement <2 x i32> %965, i32 1
  store i32 %973, i32* %259, align 1
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -32
  %976 = add i64 %910, 40
  store i64 %976, i64* %3, align 8
  %977 = load <2 x float>, <2 x float>* %60, align 1
  %978 = extractelement <2 x float> %977, i32 0
  %979 = inttoptr i64 %975 to float*
  store float %978, float* %979, align 4
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -36
  %982 = load i64, i64* %3, align 8
  %983 = add i64 %982, 5
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984, align 4
  store i32 %985, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  %986 = add i64 %980, -48
  %987 = add i64 %982, 10
  store i64 %987, i64* %3, align 8
  %988 = load <2 x float>, <2 x float>* %60, align 1
  %989 = extractelement <2 x float> %988, i32 0
  %990 = inttoptr i64 %986 to float*
  store float %989, float* %990, align 4
  %991 = load i64, i64* %3, align 8
  %992 = load i32, i32* bitcast (%G_0x62bcf0_type* @G_0x62bcf0 to i32*), align 8
  store i32 %992, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %993 = load <2 x float>, <2 x float>* %60, align 1
  %994 = load <2 x i32>, <2 x i32>* %248, align 1
  %995 = load <2 x float>, <2 x float>* %572, align 1
  %996 = extractelement <2 x float> %993, i32 0
  %997 = extractelement <2 x float> %995, i32 0
  %998 = fsub float %996, %997
  store float %998, float* %21, align 1
  %999 = bitcast <2 x float> %993 to <2 x i32>
  %1000 = extractelement <2 x i32> %999, i32 1
  store i32 %1000, i32* %255, align 1
  %1001 = extractelement <2 x i32> %994, i32 0
  store i32 %1001, i32* %257, align 1
  %1002 = extractelement <2 x i32> %994, i32 1
  store i32 %1002, i32* %259, align 1
  %1003 = load i64, i64* %RBP.i, align 8
  %1004 = add i64 %1003, -52
  %1005 = add i64 %991, 18
  store i64 %1005, i64* %3, align 8
  %1006 = load <2 x float>, <2 x float>* %60, align 1
  %1007 = extractelement <2 x float> %1006, i32 0
  %1008 = inttoptr i64 %1004 to float*
  store float %1007, float* %1008, align 4
  %1009 = load i64, i64* %3, align 8
  %1010 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1011 = add i32 %1010, -1
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RAX.i291, align 8
  %1013 = icmp eq i32 %1010, 0
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %12, align 1
  %1015 = and i32 %1011, 255
  %1016 = tail call i32 @llvm.ctpop.i32(i32 %1015)
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = xor i8 %1018, 1
  store i8 %1019, i8* %13, align 1
  %1020 = xor i32 %1010, %1011
  %1021 = lshr i32 %1020, 4
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  store i8 %1023, i8* %14, align 1
  %1024 = icmp eq i32 %1011, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %15, align 1
  %1026 = lshr i32 %1011, 31
  %1027 = trunc i32 %1026 to i8
  store i8 %1027, i8* %16, align 1
  %1028 = lshr i32 %1010, 31
  %1029 = xor i32 %1026, %1028
  %1030 = add nuw nsw i32 %1029, %1028
  %1031 = icmp eq i32 %1030, 2
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %17, align 1
  %1033 = sext i32 %1011 to i64
  store i64 %1033, i64* %RCX.i373, align 8
  %1034 = shl nsw i64 %1033, 2
  %1035 = add nsw i64 %1034, 6470896
  %1036 = add i64 %1009, 22
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i32*
  %1038 = load i32, i32* %1037, align 4
  store i32 %1038, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1039 = load <2 x float>, <2 x float>* %60, align 1
  %1040 = load <2 x i32>, <2 x i32>* %248, align 1
  %1041 = load <2 x float>, <2 x float>* %572, align 1
  %1042 = extractelement <2 x float> %1039, i32 0
  %1043 = extractelement <2 x float> %1041, i32 0
  %1044 = fsub float %1042, %1043
  store float %1044, float* %21, align 1
  %1045 = bitcast <2 x float> %1039 to <2 x i32>
  %1046 = extractelement <2 x i32> %1045, i32 1
  store i32 %1046, i32* %255, align 1
  %1047 = extractelement <2 x i32> %1040, i32 0
  store i32 %1047, i32* %257, align 1
  %1048 = extractelement <2 x i32> %1040, i32 1
  store i32 %1048, i32* %259, align 1
  %1049 = load i64, i64* %RBP.i, align 8
  %1050 = add i64 %1049, -56
  %1051 = add i64 %1009, 31
  store i64 %1051, i64* %3, align 8
  %1052 = load <2 x float>, <2 x float>* %60, align 1
  %1053 = extractelement <2 x float> %1052, i32 0
  %1054 = inttoptr i64 %1050 to float*
  store float %1053, float* %1054, align 4
  %1055 = load i64, i64* %3, align 8
  %1056 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1056, i64* %RDI.i642, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1057 = add i64 %1055, -1756
  %1058 = add i64 %1055, 15
  %1059 = load i64, i64* %6, align 8
  %1060 = add i64 %1059, -8
  %1061 = inttoptr i64 %1060 to i64*
  store i64 %1058, i64* %1061, align 8
  store i64 %1060, i64* %6, align 8
  store i64 %1057, i64* %3, align 8
  %1062 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400b1d)
  %1063 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402ffb_type* @G__0x402ffb to i64), i64* %RSI.i265, align 8
  %1064 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1064, i64* %RDI.i642, align 8
  %1065 = load i64, i64* %RBP.i, align 8
  %1066 = add i64 %1065, -908
  %1067 = load i32, i32* %EAX.i1578, align 4
  %1068 = add i64 %1063, 24
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1066 to i32*
  store i32 %1067, i32* %1069, align 4
  %1070 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1071 = add i64 %1070, -1795
  %1072 = add i64 %1070, 7
  %1073 = load i64, i64* %6, align 8
  %1074 = add i64 %1073, -8
  %1075 = inttoptr i64 %1074 to i64*
  store i64 %1072, i64* %1075, align 8
  store i64 %1074, i64* %6, align 8
  store i64 %1071, i64* %3, align 8
  %1076 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1062)
  %1077 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40301e_type* @G__0x40301e to i64), i64* %RSI.i265, align 8
  %1078 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1078, i64* %RDI.i642, align 8
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -32
  %1081 = add i64 %1077, 23
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  store i32 %1083, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1084 = load <2 x float>, <2 x float>* %60, align 1
  %1085 = extractelement <2 x float> %1084, i32 0
  %1086 = fpext float %1085 to double
  store double %1086, double* %192, align 1
  %1087 = add i64 %1079, -28
  %1088 = add i64 %1077, 32
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  %1090 = load i32, i32* %1089, align 4
  store i32 %1090, i32* %581, align 1
  store float 0.000000e+00, float* %568, align 1
  store float 0.000000e+00, float* %569, align 1
  store float 0.000000e+00, float* %571, align 1
  %1091 = load <2 x float>, <2 x float>* %572, align 1
  %1092 = extractelement <2 x float> %1091, i32 0
  %1093 = fpext float %1092 to double
  store double %1093, double* %197, align 1
  %1094 = add i64 %1079, -48
  %1095 = add i64 %1077, 41
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = bitcast %union.VectorReg* %208 to i32*
  store i32 %1097, i32* %1098, align 1
  store float 0.000000e+00, float* %575, align 1
  store float 0.000000e+00, float* %577, align 1
  store float 0.000000e+00, float* %579, align 1
  %1099 = load <2 x float>, <2 x float>* %929, align 1
  %1100 = extractelement <2 x float> %1099, i32 0
  %1101 = fpext float %1100 to double
  store double %1101, double* %212, align 1
  %1102 = add i64 %1079, -52
  %1103 = add i64 %1077, 50
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = bitcast %union.VectorReg* %213 to float*
  store i32 %1105, i32* %217, align 1
  %1107 = bitcast i8* %219 to float*
  store float 0.000000e+00, float* %1107, align 1
  %1108 = bitcast i64* %221 to float*
  store float 0.000000e+00, float* %1108, align 1
  %1109 = bitcast i8* %223 to float*
  store float 0.000000e+00, float* %1109, align 1
  %1110 = bitcast %union.VectorReg* %213 to <2 x float>*
  %1111 = load <2 x float>, <2 x float>* %1110, align 1
  %1112 = extractelement <2 x float> %1111, i32 0
  %1113 = fpext float %1112 to double
  store double %1113, double* %225, align 1
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %1115 = bitcast %union.VectorReg* %1114 to i8*
  %1116 = add i64 %1079, -56
  %1117 = add i64 %1077, 59
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = bitcast %union.VectorReg* %1114 to i32*
  store i32 %1119, i32* %1120, align 1
  %1121 = getelementptr inbounds i8, i8* %1115, i64 4
  %1122 = bitcast i8* %1121 to float*
  store float 0.000000e+00, float* %1122, align 1
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %1124 = bitcast i64* %1123 to float*
  store float 0.000000e+00, float* %1124, align 1
  %1125 = getelementptr inbounds i8, i8* %1115, i64 12
  %1126 = bitcast i8* %1125 to float*
  store float 0.000000e+00, float* %1126, align 1
  %1127 = bitcast %union.VectorReg* %1114 to <2 x float>*
  %1128 = load <2 x float>, <2 x float>* %1127, align 1
  %1129 = extractelement <2 x float> %1128, i32 0
  %1130 = fpext float %1129 to double
  %1131 = bitcast %union.VectorReg* %1114 to double*
  store double %1130, double* %1131, align 1
  %1132 = add i64 %1079, -912
  %1133 = load i32, i32* %EAX.i1578, align 4
  %1134 = add i64 %1077, 69
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1132 to i32*
  store i32 %1133, i32* %1135, align 4
  %1136 = load i64, i64* %3, align 8
  store i8 5, i8* %AL.i1589, align 1
  %1137 = add i64 %1136, -1871
  %1138 = add i64 %1136, 7
  %1139 = load i64, i64* %6, align 8
  %1140 = add i64 %1139, -8
  %1141 = inttoptr i64 %1140 to i64*
  store i64 %1138, i64* %1141, align 8
  store i64 %1140, i64* %6, align 8
  store i64 %1137, i64* %3, align 8
  %1142 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1076)
  %1143 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40303f_type* @G__0x40303f to i64), i64* %RSI.i265, align 8
  %1144 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1144, i64* %RDI.i642, align 8
  %1145 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1146 = zext i32 %1145 to i64
  store i64 %1146, i64* %RDX.i386, align 8
  %1147 = load i64, i64* %RBP.i, align 8
  %1148 = add i64 %1147, -916
  %1149 = load i32, i32* %EAX.i1578, align 4
  %1150 = add i64 %1143, 31
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1148 to i32*
  store i32 %1149, i32* %1151, align 4
  %1152 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1153 = add i64 %1152, -1909
  %1154 = add i64 %1152, 7
  %1155 = load i64, i64* %6, align 8
  %1156 = add i64 %1155, -8
  %1157 = inttoptr i64 %1156 to i64*
  store i64 %1154, i64* %1157, align 8
  store i64 %1156, i64* %6, align 8
  store i64 %1153, i64* %3, align 8
  %1158 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1142)
  %1159 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403074_type* @G__0x403074 to i64), i64* %RSI.i265, align 8
  %1160 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1160, i64* %RDI.i642, align 8
  %1161 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RDX.i386, align 8
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -920
  %1165 = load i32, i32* %EAX.i1578, align 4
  %1166 = add i64 %1159, 31
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1164 to i32*
  store i32 %1165, i32* %1167, align 4
  %1168 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1169 = add i64 %1168, -1947
  %1170 = add i64 %1168, 7
  %1171 = load i64, i64* %6, align 8
  %1172 = add i64 %1171, -8
  %1173 = inttoptr i64 %1172 to i64*
  store i64 %1170, i64* %1173, align 8
  store i64 %1172, i64* %6, align 8
  store i64 %1169, i64* %3, align 8
  %1174 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1158)
  %1175 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI.i265, align 8
  %1176 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1176, i64* %RDI.i642, align 8
  %1177 = load i64, i64* %RBP.i, align 8
  %1178 = add i64 %1177, -924
  %1179 = load i32, i32* %EAX.i1578, align 4
  %1180 = add i64 %1175, 24
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1178 to i32*
  store i32 %1179, i32* %1181, align 4
  %1182 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1183 = add i64 %1182, -1978
  %1184 = add i64 %1182, 7
  %1185 = load i64, i64* %6, align 8
  %1186 = add i64 %1185, -8
  %1187 = inttoptr i64 %1186 to i64*
  store i64 %1184, i64* %1187, align 8
  store i64 %1186, i64* %6, align 8
  store i64 %1183, i64* %3, align 8
  %1188 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1174)
  %1189 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI.i265, align 8
  %1190 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1190, i64* %RDI.i642, align 8
  %1191 = load i64, i64* %RBP.i, align 8
  %1192 = add i64 %1191, -928
  %1193 = load i32, i32* %EAX.i1578, align 4
  %1194 = add i64 %1189, 24
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1192 to i32*
  store i32 %1193, i32* %1195, align 4
  %1196 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1197 = add i64 %1196, -2009
  %1198 = add i64 %1196, 7
  %1199 = load i64, i64* %6, align 8
  %1200 = add i64 %1199, -8
  %1201 = inttoptr i64 %1200 to i64*
  store i64 %1198, i64* %1201, align 8
  store i64 %1200, i64* %6, align 8
  store i64 %1197, i64* %3, align 8
  %1202 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1188)
  %1203 = load i64, i64* %3, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %1204 = load i64, i64* %RBP.i, align 8
  %1205 = add i64 %1204, -16
  %1206 = add i64 %1203, 8
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  store i32 %1208, i32* %581, align 1
  store float 0.000000e+00, float* %568, align 1
  store float 0.000000e+00, float* %569, align 1
  store float 0.000000e+00, float* %571, align 1
  %1209 = load <2 x float>, <2 x float>* %572, align 1
  %1210 = extractelement <2 x float> %1209, i32 0
  store float %1210, float* bitcast (%G_0x62bb48_type* @G_0x62bb48 to float*), align 8
  %1211 = add i64 %1203, 22
  store i64 %1211, i64* %3, align 8
  %1212 = load i32, i32* %1207, align 4
  store i32 %1212, i32* %581, align 1
  store float 0.000000e+00, float* %568, align 1
  store float 0.000000e+00, float* %569, align 1
  store float 0.000000e+00, float* %571, align 1
  %1213 = load <2 x float>, <2 x float>* %572, align 1
  %1214 = extractelement <2 x float> %1213, i32 0
  %1215 = fpext float %1214 to double
  store double %1215, double* %197, align 1
  %1216 = add i64 %1203, 30
  store i64 %1216, i64* %3, align 8
  %1217 = load double, double* %192, align 1
  %1218 = fcmp uno double %1215, %1217
  br i1 %1218, label %1219, label %1229

; <label>:1219:                                   ; preds = %block_.L_400b15
  %1220 = fadd double %1215, %1217
  %1221 = bitcast double %1220 to i64
  %1222 = and i64 %1221, 9221120237041090560
  %1223 = icmp eq i64 %1222, 9218868437227405312
  %1224 = and i64 %1221, 2251799813685247
  %1225 = icmp ne i64 %1224, 0
  %1226 = and i1 %1223, %1225
  br i1 %1226, label %1227, label %1235

; <label>:1227:                                   ; preds = %1219
  %1228 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1216, %struct.Memory* %1202)
  %.pre7 = load i64, i64* %RBP.i, align 8
  %.pre8 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1229:                                   ; preds = %block_.L_400b15
  %1230 = fcmp ogt double %1215, %1217
  br i1 %1230, label %1235, label %1231

; <label>:1231:                                   ; preds = %1229
  %1232 = fcmp olt double %1215, %1217
  br i1 %1232, label %1235, label %1233

; <label>:1233:                                   ; preds = %1231
  %1234 = fcmp oeq double %1215, %1217
  br i1 %1234, label %1235, label %1239

; <label>:1235:                                   ; preds = %1233, %1231, %1229, %1219
  %1236 = phi i8 [ 0, %1229 ], [ 0, %1231 ], [ 1, %1233 ], [ 1, %1219 ]
  %1237 = phi i8 [ 0, %1229 ], [ 0, %1231 ], [ 0, %1233 ], [ 1, %1219 ]
  %1238 = phi i8 [ 0, %1229 ], [ 1, %1231 ], [ 0, %1233 ], [ 1, %1219 ]
  store i8 %1236, i8* %15, align 1
  store i8 %1237, i8* %13, align 1
  store i8 %1238, i8* %12, align 1
  br label %1239

; <label>:1239:                                   ; preds = %1235, %1233
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1239, %1227
  %1240 = phi i64 [ %.pre8, %1227 ], [ %1216, %1239 ]
  %1241 = phi i64 [ %.pre7, %1227 ], [ %1204, %1239 ]
  %1242 = phi %struct.Memory* [ %1228, %1227 ], [ %1202, %1239 ]
  %1243 = add i64 %1241, -932
  %1244 = load i32, i32* %EAX.i1578, align 4
  %1245 = add i64 %1240, 6
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1243 to i32*
  store i32 %1244, i32* %1246, align 4
  %1247 = load i64, i64* %3, align 8
  %1248 = load i8, i8* %12, align 1
  %1249 = load i8, i8* %15, align 1
  %1250 = or i8 %1249, %1248
  %1251 = icmp ne i8 %1250, 0
  %.v23 = select i1 %1251, i64 96, i64 6
  %1252 = add i64 %1247, %.v23
  store i64 %1252, i64* %3, align 8
  br i1 %1251, label %block_.L_400d24, label %block_400cca

block_400cca:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1253 = load double, double* bitcast (%G_0x2206__rip__4197586__type* @G_0x2206__rip__4197586_ to double*), align 8
  store double %1253, double* %192, align 1
  store double 0.000000e+00, double* %193, align 1
  %1254 = load double, double* bitcast (%G_0x220e__rip__4197594__type* @G_0x220e__rip__4197594_ to double*), align 8
  store double %1254, double* %197, align 1
  store double 0.000000e+00, double* %200, align 1
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -12
  %1257 = add i64 %1252, 21
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i32*
  %1259 = load i32, i32* %1258, align 4
  store i32 %1259, i32* %1098, align 1
  store float 0.000000e+00, float* %575, align 1
  store float 0.000000e+00, float* %577, align 1
  store float 0.000000e+00, float* %579, align 1
  %1260 = load <2 x float>, <2 x float>* %929, align 1
  %1261 = extractelement <2 x float> %1260, i32 0
  %1262 = fpext float %1261 to double
  store double %1262, double* %212, align 1
  %1263 = add i64 %1255, -16
  %1264 = add i64 %1252, 30
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  store i32 %1266, i32* %217, align 1
  store float 0.000000e+00, float* %1107, align 1
  store float 0.000000e+00, float* %1108, align 1
  store float 0.000000e+00, float* %1109, align 1
  %1267 = load <2 x float>, <2 x float>* %1110, align 1
  %1268 = extractelement <2 x float> %1267, i32 0
  %1269 = fpext float %1268 to double
  store double %1269, double* %225, align 1
  %1270 = fmul double %1254, %1269
  %1271 = fdiv double %1262, %1270
  store double %1271, double* %212, align 1
  %1272 = bitcast double %1270 to <2 x i32>
  %1273 = fptrunc double %1271 to float
  store float %1273, float* %566, align 1
  %1274 = extractelement <2 x i32> %1272, i32 1
  store i32 %1274, i32* %582, align 1
  %1275 = load <2 x float>, <2 x float>* %572, align 1
  %1276 = extractelement <2 x float> %1275, i32 0
  store float %1276, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  store float %1276, float* %566, align 1
  store float 0.000000e+00, float* %568, align 1
  store float 0.000000e+00, float* %569, align 1
  store float 0.000000e+00, float* %571, align 1
  %1277 = load <2 x float>, <2 x float>* %572, align 1
  %1278 = extractelement <2 x float> %1277, i32 0
  %1279 = fpext float %1278 to double
  store double %1279, double* %197, align 1
  %1280 = fdiv double %1253, %1279
  %1281 = bitcast double %1280 to <2 x i32>
  %1282 = fptrunc double %1280 to float
  store float %1282, float* %21, align 1
  %1283 = extractelement <2 x i32> %1281, i32 1
  store i32 %1283, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %1284 = load <2 x float>, <2 x float>* %60, align 1
  %1285 = extractelement <2 x float> %1284, i32 0
  store float %1285, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  %1286 = add i64 %1252, 111
  store i64 %1286, i64* %3, align 8
  br label %block_.L_400d39

block_.L_400d24:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  store i32 0, i32* %22, align 1
  store i32 0, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %1287 = load <2 x float>, <2 x float>* %60, align 1
  %1288 = extractelement <2 x float> %1287, i32 0
  store float %1288, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  %1289 = add i64 %1252, 21
  store i64 %1289, i64* %3, align 8
  store float %1288, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  %.pre9 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d39

block_.L_400d39:                                  ; preds = %block_.L_400d24, %block_400cca
  %1290 = phi i64 [ %.pre9, %block_.L_400d24 ], [ %1255, %block_400cca ]
  %1291 = phi i64 [ %1289, %block_.L_400d24 ], [ %1286, %block_400cca ]
  store i64 0, i64* %RDI.i642, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1292 = add i64 %1290, -16
  %1293 = add i64 %1291, 7
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  store i32 %1295, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1296 = add i64 %1290, -8
  %1297 = add i64 %1291, 12
  store i64 %1297, i64* %3, align 8
  %1298 = load <2 x float>, <2 x float>* %60, align 1
  %1299 = load <2 x i32>, <2 x i32>* %248, align 1
  %1300 = inttoptr i64 %1296 to float*
  %1301 = load float, float* %1300, align 4
  %1302 = extractelement <2 x float> %1298, i32 0
  %1303 = fdiv float %1302, %1301
  store float %1303, float* %21, align 1
  %1304 = bitcast <2 x float> %1298 to <2 x i32>
  %1305 = extractelement <2 x i32> %1304, i32 1
  store i32 %1305, i32* %255, align 1
  %1306 = extractelement <2 x i32> %1299, i32 0
  store i32 %1306, i32* %257, align 1
  %1307 = extractelement <2 x i32> %1299, i32 1
  store i32 %1307, i32* %259, align 1
  %1308 = load <2 x float>, <2 x float>* %60, align 1
  %1309 = extractelement <2 x float> %1308, i32 0
  store float %1309, float* bitcast (%G_0x62bbfc_type* @G_0x62bbfc to float*), align 8
  %1310 = add i64 %1291, 7063
  %1311 = add i64 %1291, 26
  %1312 = load i64, i64* %6, align 8
  %1313 = add i64 %1312, -8
  %1314 = inttoptr i64 %1313 to i64*
  store i64 %1311, i64* %1314, align 8
  store i64 %1313, i64* %6, align 8
  store i64 %1310, i64* %3, align 8
  %call2_400d4e = tail call %struct.Memory* @sub_4028d0.print_time(%struct.State* %0, i64 %1310, %struct.Memory* %1242)
  %1315 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030ef_type* @G__0x4030ef to i64), i64* %RSI.i265, align 8
  %1316 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1316, i64* %RDI.i642, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1317 = add i64 %1315, -2195
  %1318 = add i64 %1315, 25
  %1319 = load i64, i64* %6, align 8
  %1320 = add i64 %1319, -8
  %1321 = inttoptr i64 %1320 to i64*
  store i64 %1318, i64* %1321, align 8
  store i64 %1320, i64* %6, align 8
  store i64 %1317, i64* %3, align 8
  %1322 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400d4e)
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -64
  %1325 = load i64, i64* %3, align 8
  %1326 = add i64 %1325, 7
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1324 to i32*
  store i32 -3, i32* %1327, align 4
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -68
  %1330 = load i64, i64* %3, align 8
  %1331 = add i64 %1330, 7
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1329 to i32*
  store i32 100, i32* %1332, align 4
  %1333 = load i64, i64* %RBP.i, align 8
  %1334 = add i64 %1333, -936
  %1335 = load i32, i32* %EAX.i1578, align 4
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 6
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1334 to i32*
  store i32 %1335, i32* %1338, align 4
  %1339 = bitcast %union.VectorReg* %194 to <2 x i32>*
  %1340 = bitcast i64* %199 to <2 x i32>*
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_400d80

block_.L_400d80:                                  ; preds = %block_.L_400e43, %block_.L_400d39
  %1341 = phi i64 [ %.pre10, %block_.L_400d39 ], [ %1577, %block_.L_400e43 ]
  %MEMORY.6 = phi %struct.Memory* [ %1322, %block_.L_400d39 ], [ %1511, %block_.L_400e43 ]
  %1342 = add i64 %1341, -1984
  %1343 = add i64 %1341, 5
  %1344 = load i64, i64* %6, align 8
  %1345 = add i64 %1344, -8
  %1346 = inttoptr i64 %1345 to i64*
  store i64 %1343, i64* %1346, align 8
  store i64 %1345, i64* %6, align 8
  store i64 %1342, i64* %3, align 8
  %call2_400d80 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1342, %struct.Memory* %MEMORY.6)
  %1347 = load i64, i64* %RBP.i, align 8
  %1348 = add i64 %1347, -80
  %1349 = load i64, i64* %3, align 8
  %1350 = add i64 %1349, 5
  store i64 %1350, i64* %3, align 8
  %1351 = load <2 x float>, <2 x float>* %60, align 1
  %1352 = extractelement <2 x float> %1351, i32 0
  %1353 = inttoptr i64 %1348 to float*
  store float %1352, float* %1353, align 4
  %1354 = load i64, i64* %RBP.i, align 8
  %1355 = add i64 %1354, -64
  %1356 = load i64, i64* %3, align 8
  %1357 = add i64 %1356, 3
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1355 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = add i32 %1359, 1
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RAX.i291, align 8
  %1362 = icmp eq i32 %1359, -1
  %1363 = icmp eq i32 %1360, 0
  %1364 = or i1 %1362, %1363
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %12, align 1
  %1366 = and i32 %1360, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %13, align 1
  %1371 = xor i32 %1359, %1360
  %1372 = lshr i32 %1371, 4
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %14, align 1
  %1375 = zext i1 %1363 to i8
  store i8 %1375, i8* %15, align 1
  %1376 = lshr i32 %1360, 31
  %1377 = trunc i32 %1376 to i8
  store i8 %1377, i8* %16, align 1
  %1378 = lshr i32 %1359, 31
  %1379 = xor i32 %1376, %1378
  %1380 = add nuw nsw i32 %1379, %1376
  %1381 = icmp eq i32 %1380, 2
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %17, align 1
  %1383 = add i64 %1356, 9
  store i64 %1383, i64* %3, align 8
  store i32 %1360, i32* %1358, align 4
  %1384 = load i64, i64* %3, align 8
  %1385 = add i64 %1384, 11
  store i64 %1385, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400d9e

block_.L_400d9e:                                  ; preds = %block_400dae, %block_.L_400d80
  %1386 = phi i32 [ 0, %block_.L_400d80 ], [ %1433, %block_400dae ]
  %1387 = phi i64 [ %1385, %block_.L_400d80 ], [ %1456, %block_400dae ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_400d80, %block_.L_400d80 ], [ %call2_400dd4, %block_400dae ]
  %1388 = zext i32 %1386 to i64
  store i64 %1388, i64* %RAX.i291, align 8
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -68
  %1391 = add i64 %1387, 10
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = sub i32 %1386, %1393
  %1395 = icmp ult i32 %1386, %1393
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %12, align 1
  %1397 = and i32 %1394, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %13, align 1
  %1402 = xor i32 %1393, %1386
  %1403 = xor i32 %1402, %1394
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %14, align 1
  %1407 = icmp eq i32 %1394, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %15, align 1
  %1409 = lshr i32 %1394, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %16, align 1
  %1411 = lshr i32 %1386, 31
  %1412 = lshr i32 %1393, 31
  %1413 = xor i32 %1412, %1411
  %1414 = xor i32 %1409, %1411
  %1415 = add nuw nsw i32 %1414, %1413
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %17, align 1
  %1418 = icmp ne i8 %1410, 0
  %1419 = xor i1 %1418, %1416
  %.v24 = select i1 %1419, i64 16, i64 81
  %1420 = add i64 %1387, %.v24
  store i64 %1420, i64* %3, align 8
  br i1 %1419, label %block_400dae, label %block_.L_400def

block_400dae:                                     ; preds = %block_.L_400d9e
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %1421 = add i64 %1389, -20
  store i64 %1421, i64* %33, align 8
  %1422 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RSI.i265, align 8
  %1424 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1425 = zext i32 %1424 to i64
  store i64 %1425, i64* %RDX.i386, align 8
  %1426 = add i64 %1420, 2562
  %1427 = add i64 %1420, 43
  %1428 = load i64, i64* %6, align 8
  %1429 = add i64 %1428, -8
  %1430 = inttoptr i64 %1429 to i64*
  store i64 %1427, i64* %1430, align 8
  store i64 %1429, i64* %6, align 8
  store i64 %1426, i64* %3, align 8
  %call2_400dd4 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %1426, %struct.Memory* %MEMORY.7)
  %1431 = load i64, i64* %3, align 8
  %1432 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1433 = add i32 %1432, 1
  %1434 = zext i32 %1433 to i64
  store i64 %1434, i64* %RAX.i291, align 8
  %1435 = icmp eq i32 %1432, -1
  %1436 = icmp eq i32 %1433, 0
  %1437 = or i1 %1435, %1436
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %12, align 1
  %1439 = and i32 %1433, 255
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439)
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %13, align 1
  %1444 = xor i32 %1432, %1433
  %1445 = lshr i32 %1444, 4
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  store i8 %1447, i8* %14, align 1
  %1448 = zext i1 %1436 to i8
  store i8 %1448, i8* %15, align 1
  %1449 = lshr i32 %1433, 31
  %1450 = trunc i32 %1449 to i8
  store i8 %1450, i8* %16, align 1
  %1451 = lshr i32 %1432, 31
  %1452 = xor i32 %1449, %1451
  %1453 = add nuw nsw i32 %1452, %1449
  %1454 = icmp eq i32 %1453, 2
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %17, align 1
  store i32 %1433, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1456 = add i64 %1431, -59
  store i64 %1456, i64* %3, align 8
  br label %block_.L_400d9e

block_.L_400def:                                  ; preds = %block_.L_400d9e
  %1457 = add i64 %1420, -2095
  %1458 = add i64 %1420, 5
  %1459 = load i64, i64* %6, align 8
  %1460 = add i64 %1459, -8
  %1461 = inttoptr i64 %1460 to i64*
  store i64 %1458, i64* %1461, align 8
  store i64 %1460, i64* %6, align 8
  store i64 %1457, i64* %3, align 8
  %call2_400def = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1457, %struct.Memory* %MEMORY.7)
  %1462 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40310d_type* @G__0x40310d to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %581, align 1
  store i32 0, i32* %582, align 1
  store i32 0, i32* %583, align 1
  store i32 0, i32* %584, align 1
  %1463 = load i64, i64* %RBP.i, align 8
  %1464 = add i64 %1463, -84
  %1465 = add i64 %1462, 18
  store i64 %1465, i64* %3, align 8
  %1466 = load <2 x float>, <2 x float>* %60, align 1
  %1467 = extractelement <2 x float> %1466, i32 0
  %1468 = inttoptr i64 %1464 to float*
  store float %1467, float* %1468, align 4
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add i64 %1469, -84
  %1471 = load i64, i64* %3, align 8
  %1472 = add i64 %1471, 5
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1470 to i32*
  %1474 = load i32, i32* %1473, align 4
  store i32 %1474, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1475 = add i64 %1469, -80
  %1476 = add i64 %1471, 10
  store i64 %1476, i64* %3, align 8
  %1477 = load <2 x float>, <2 x float>* %60, align 1
  %1478 = load <2 x i32>, <2 x i32>* %248, align 1
  %1479 = inttoptr i64 %1475 to float*
  %1480 = load float, float* %1479, align 4
  %1481 = extractelement <2 x float> %1477, i32 0
  %1482 = fsub float %1481, %1480
  store float %1482, float* %21, align 1
  %1483 = bitcast <2 x float> %1477 to <2 x i32>
  %1484 = extractelement <2 x i32> %1483, i32 1
  store i32 %1484, i32* %255, align 1
  %1485 = extractelement <2 x i32> %1478, i32 0
  store i32 %1485, i32* %257, align 1
  %1486 = extractelement <2 x i32> %1478, i32 1
  store i32 %1486, i32* %259, align 1
  %1487 = add i64 %1469, -72
  %1488 = add i64 %1471, 15
  store i64 %1488, i64* %3, align 8
  %1489 = load <2 x float>, <2 x float>* %60, align 1
  %1490 = extractelement <2 x float> %1489, i32 0
  %1491 = inttoptr i64 %1487 to float*
  store float %1490, float* %1491, align 4
  %1492 = load i64, i64* %3, align 8
  %1493 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1493, i64* %RDI.i642, align 8
  %1494 = load i64, i64* %RBP.i, align 8
  %1495 = add i64 %1494, -68
  %1496 = add i64 %1492, 11
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RDX.i386, align 8
  %1500 = load <2 x i32>, <2 x i32>* %1339, align 1
  %1501 = load <2 x i32>, <2 x i32>* %1340, align 1
  %1502 = extractelement <2 x i32> %1500, i32 0
  store i32 %1502, i32* %22, align 1
  %1503 = extractelement <2 x i32> %1500, i32 1
  store i32 %1503, i32* %255, align 1
  %1504 = extractelement <2 x i32> %1501, i32 0
  store i32 %1504, i32* %257, align 1
  %1505 = extractelement <2 x i32> %1501, i32 1
  store i32 %1505, i32* %259, align 1
  store i8 1, i8* %AL.i1589, align 1
  %1506 = add i64 %1492, -2389
  %1507 = add i64 %1492, 21
  %1508 = load i64, i64* %6, align 8
  %1509 = add i64 %1508, -8
  %1510 = inttoptr i64 %1509 to i64*
  store i64 %1507, i64* %1510, align 8
  store i64 %1509, i64* %6, align 8
  store i64 %1506, i64* %3, align 8
  %1511 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400def)
  %1512 = load i64, i64* %RBP.i, align 8
  %1513 = add i64 %1512, -64
  %1514 = load i64, i64* %3, align 8
  %1515 = add i64 %1514, 4
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1513 to i32*
  %1517 = load i32, i32* %1516, align 4
  store i8 0, i8* %12, align 1
  %1518 = and i32 %1517, 255
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1523 = icmp eq i32 %1517, 0
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %15, align 1
  %1525 = lshr i32 %1517, 31
  %1526 = trunc i32 %1525 to i8
  store i8 %1526, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1527 = add i64 %1512, -940
  %1528 = load i32, i32* %EAX.i1578, align 4
  %1529 = add i64 %1514, 10
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1527 to i32*
  store i32 %1528, i32* %1530, align 4
  %1531 = load i64, i64* %3, align 8
  %1532 = load i8, i8* %16, align 1
  %1533 = icmp ne i8 %1532, 0
  %1534 = load i8, i8* %17, align 1
  %1535 = icmp ne i8 %1534, 0
  %1536 = xor i1 %1533, %1535
  %.v25 = select i1 %1536, i64 6, i64 15
  %1537 = add i64 %1531, %.v25
  store i64 %1537, i64* %3, align 8
  br i1 %1536, label %block_400e3a, label %block_.L_400e43

block_400e3a:                                     ; preds = %block_.L_400def
  %1538 = load i64, i64* %RBP.i, align 8
  %1539 = add i64 %1538, -68
  %1540 = add i64 %1537, 3
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = shl i32 %1542, 1
  %1544 = icmp slt i32 %1542, 0
  %1545 = icmp slt i32 %1543, 0
  %1546 = xor i1 %1544, %1545
  %1547 = zext i32 %1543 to i64
  store i64 %1547, i64* %RAX.i291, align 8
  %.lobit = lshr i32 %1542, 31
  %1548 = trunc i32 %.lobit to i8
  store i8 %1548, i8* %12, align 1
  %1549 = and i32 %1543, 254
  %1550 = tail call i32 @llvm.ctpop.i32(i32 %1549)
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  %1553 = xor i8 %1552, 1
  store i8 %1553, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1554 = icmp eq i32 %1543, 0
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %15, align 1
  %1556 = lshr i32 %1542, 30
  %1557 = trunc i32 %1556 to i8
  %1558 = and i8 %1557, 1
  store i8 %1558, i8* %16, align 1
  %1559 = zext i1 %1546 to i8
  store i8 %1559, i8* %17, align 1
  %1560 = add i64 %1537, 9
  store i64 %1560, i64* %3, align 8
  store i32 %1543, i32* %1541, align 4
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_400e43

block_.L_400e43:                                  ; preds = %block_.L_400def, %block_400e3a
  %1561 = phi i64 [ %.pre11, %block_400e3a ], [ %1537, %block_.L_400def ]
  %1562 = load i64, i64* %RBP.i, align 8
  %1563 = add i64 %1562, -64
  %1564 = add i64 %1561, 9
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  store i8 0, i8* %12, align 1
  %1567 = and i32 %1566, 255
  %1568 = tail call i32 @llvm.ctpop.i32(i32 %1567)
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  store i8 %1571, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1572 = icmp eq i32 %1566, 0
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %15, align 1
  %1574 = lshr i32 %1566, 31
  %1575 = trunc i32 %1574 to i8
  store i8 %1575, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1576 = icmp ne i8 %1575, 0
  %.v26 = select i1 %1576, i64 -195, i64 15
  %1577 = add i64 %1561, %.v26
  store i64 %1577, i64* %3, align 8
  br i1 %1576, label %block_.L_400d80, label %block_400e52

block_400e52:                                     ; preds = %block_.L_400e43
  store i64 ptrtoint (%G__0x403127_type* @G__0x403127 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %1578 = add i64 %1562, -72
  %1579 = add i64 %1577, 18
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to float*
  %1581 = inttoptr i64 %1578 to i32*
  %1582 = load i32, i32* %1581, align 4
  store i32 %1582, i32* %581, align 1
  store float 0.000000e+00, float* %568, align 1
  store float 0.000000e+00, float* %569, align 1
  store float 0.000000e+00, float* %571, align 1
  %1583 = load <2 x float>, <2 x float>* %572, align 1
  %1584 = extractelement <2 x float> %1583, i32 0
  %1585 = fpext float %1584 to double
  store double %1585, double* %197, align 1
  %1586 = add i64 %1562, -68
  %1587 = add i64 %1577, 25
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i32*
  %1589 = load i32, i32* %1588, align 4
  %1590 = zext i32 %1589 to i64
  store i64 %1590, i64* %RAX.i291, align 8
  %1591 = sitofp i32 %1589 to double
  store double %1591, double* %212, align 1
  %1592 = load <2 x i32>, <2 x i32>* %1340, align 1
  %1593 = fdiv double %1585, %1591
  %1594 = bitcast double %1593 to <2 x i32>
  %1595 = fptrunc double %1593 to float
  store float %1595, float* %566, align 1
  %1596 = extractelement <2 x i32> %1594, i32 1
  store i32 %1596, i32* %582, align 1
  %1597 = extractelement <2 x i32> %1592, i32 0
  store i32 %1597, i32* %583, align 1
  %1598 = extractelement <2 x i32> %1592, i32 1
  store i32 %1598, i32* %584, align 1
  %1599 = add i64 %1577, 42
  store i64 %1599, i64* %3, align 8
  %1600 = load <2 x float>, <2 x float>* %572, align 1
  %1601 = extractelement <2 x float> %1600, i32 0
  store float %1601, float* %1580, align 4
  %1602 = load i64, i64* %3, align 8
  %1603 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1603, i64* %RDI.i642, align 8
  store i8 1, i8* %AL.i1589, align 1
  %1604 = add i64 %1602, -2492
  %1605 = add i64 %1602, 15
  %1606 = load i64, i64* %6, align 8
  %1607 = add i64 %1606, -8
  %1608 = inttoptr i64 %1607 to i64*
  store i64 %1605, i64* %1608, align 8
  store i64 %1607, i64* %6, align 8
  store i64 %1604, i64* %3, align 8
  %1609 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1511)
  %1610 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40314e_type* @G__0x40314e to i64), i64* %RSI.i265, align 8
  %1611 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1611, i64* %RDI.i642, align 8
  %1612 = load i64, i64* %RBP.i, align 8
  %1613 = add i64 %1612, -944
  %1614 = load i32, i32* %EAX.i1578, align 4
  %1615 = add i64 %1610, 24
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1613 to i32*
  store i32 %1614, i32* %1616, align 4
  %1617 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1618 = add i64 %1617, -2531
  %1619 = add i64 %1617, 7
  %1620 = load i64, i64* %6, align 8
  %1621 = add i64 %1620, -8
  %1622 = inttoptr i64 %1621 to i64*
  store i64 %1619, i64* %1622, align 8
  store i64 %1621, i64* %6, align 8
  store i64 %1618, i64* %3, align 8
  %1623 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1609)
  %1624 = load i64, i64* %RBP.i, align 8
  %1625 = add i64 %1624, -64
  %1626 = load i64, i64* %3, align 8
  %1627 = add i64 %1626, 7
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1625 to i32*
  store i32 -3, i32* %1628, align 4
  %1629 = load i64, i64* %3, align 8
  store i32 100, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1630 = load i64, i64* %RBP.i, align 8
  %1631 = add i64 %1630, -948
  %1632 = load i32, i32* %EAX.i1578, align 4
  %1633 = add i64 %1629, 17
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1631 to i32*
  store i32 %1632, i32* %1634, align 4
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_400ec2

block_.L_400ec2:                                  ; preds = %block_.L_400fbc, %block_400e52
  %1635 = phi i64 [ %.pre12, %block_400e52 ], [ %1856, %block_.L_400fbc ]
  %MEMORY.9 = phi %struct.Memory* [ %1623, %block_400e52 ], [ %1794, %block_.L_400fbc ]
  %1636 = add i64 %1635, -2306
  %1637 = add i64 %1635, 5
  %1638 = load i64, i64* %6, align 8
  %1639 = add i64 %1638, -8
  %1640 = inttoptr i64 %1639 to i64*
  store i64 %1637, i64* %1640, align 8
  store i64 %1639, i64* %6, align 8
  store i64 %1636, i64* %3, align 8
  %call2_400ec2 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1636, %struct.Memory* %MEMORY.9)
  %1641 = load i64, i64* %RBP.i, align 8
  %1642 = add i64 %1641, -80
  %1643 = load i64, i64* %3, align 8
  %1644 = add i64 %1643, 5
  store i64 %1644, i64* %3, align 8
  %1645 = load <2 x float>, <2 x float>* %60, align 1
  %1646 = extractelement <2 x float> %1645, i32 0
  %1647 = inttoptr i64 %1642 to float*
  store float %1646, float* %1647, align 4
  %1648 = load i64, i64* %RBP.i, align 8
  %1649 = add i64 %1648, -64
  %1650 = load i64, i64* %3, align 8
  %1651 = add i64 %1650, 3
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1649 to i32*
  %1653 = load i32, i32* %1652, align 4
  %1654 = add i32 %1653, 1
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i291, align 8
  %1656 = icmp eq i32 %1653, -1
  %1657 = icmp eq i32 %1654, 0
  %1658 = or i1 %1656, %1657
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %12, align 1
  %1660 = and i32 %1654, 255
  %1661 = tail call i32 @llvm.ctpop.i32(i32 %1660)
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  store i8 %1664, i8* %13, align 1
  %1665 = xor i32 %1653, %1654
  %1666 = lshr i32 %1665, 4
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  store i8 %1668, i8* %14, align 1
  %1669 = zext i1 %1657 to i8
  store i8 %1669, i8* %15, align 1
  %1670 = lshr i32 %1654, 31
  %1671 = trunc i32 %1670 to i8
  store i8 %1671, i8* %16, align 1
  %1672 = lshr i32 %1653, 31
  %1673 = xor i32 %1670, %1672
  %1674 = add nuw nsw i32 %1673, %1670
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %17, align 1
  %1677 = add i64 %1650, 9
  store i64 %1677, i64* %3, align 8
  store i32 %1654, i32* %1652, align 4
  %1678 = load i64, i64* %3, align 8
  %1679 = add i64 %1678, 11
  store i64 %1679, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400ee0

block_.L_400ee0:                                  ; preds = %block_400ef4, %block_.L_400ec2
  %1680 = phi i32 [ 0, %block_.L_400ec2 ], [ %1734, %block_400ef4 ]
  %1681 = phi i64 [ %1679, %block_.L_400ec2 ], [ %1757, %block_400ef4 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_400ec2, %block_.L_400ec2 ], [ %call2_400f4b, %block_400ef4 ]
  %1682 = zext i32 %1680 to i64
  store i64 %1682, i64* %RAX.i291, align 8
  %1683 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1684 = sub i32 %1680, %1683
  %1685 = icmp ult i32 %1680, %1683
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %12, align 1
  %1687 = and i32 %1684, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %13, align 1
  %1692 = xor i32 %1683, %1680
  %1693 = xor i32 %1692, %1684
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %14, align 1
  %1697 = icmp eq i32 %1684, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %15, align 1
  %1699 = lshr i32 %1684, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %16, align 1
  %1701 = lshr i32 %1680, 31
  %1702 = lshr i32 %1683, 31
  %1703 = xor i32 %1702, %1701
  %1704 = xor i32 %1699, %1701
  %1705 = add nuw nsw i32 %1704, %1703
  %1706 = icmp eq i32 %1705, 2
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %17, align 1
  %1708 = icmp ne i8 %1700, 0
  %1709 = xor i1 %1708, %1706
  %.v27 = select i1 %1709, i64 20, i64 134
  %1710 = add i64 %1681, %.v27
  store i64 %1710, i64* %3, align 8
  br i1 %1709, label %block_400ef4, label %block_.L_400f66

block_400ef4:                                     ; preds = %block_.L_400ee0
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %1711 = load i64, i64* %RBP.i, align 8
  %1712 = add i64 %1711, -20
  store i64 %1712, i64* %33, align 8
  %1713 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1714 = zext i32 %1713 to i64
  store i64 %1714, i64* %RSI.i265, align 8
  %1715 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1716 = zext i32 %1715 to i64
  store i64 %1716, i64* %RDX.i386, align 8
  %1717 = add i64 %1710, 2236
  %1718 = add i64 %1710, 43
  %1719 = load i64, i64* %6, align 8
  %1720 = add i64 %1719, -8
  %1721 = inttoptr i64 %1720 to i64*
  store i64 %1718, i64* %1721, align 8
  store i64 %1720, i64* %6, align 8
  store i64 %1717, i64* %3, align 8
  %call2_400f1a = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %1717, %struct.Memory* %MEMORY.10)
  %1722 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %33, align 8
  %1723 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1724 = zext i32 %1723 to i64
  store i64 %1724, i64* %RSI.i265, align 8
  %1725 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1726 = zext i32 %1725 to i64
  store i64 %1726, i64* %RDX.i386, align 8
  %1727 = add i64 %1722, 2657
  %1728 = add i64 %1722, 49
  %1729 = load i64, i64* %6, align 8
  %1730 = add i64 %1729, -8
  %1731 = inttoptr i64 %1730 to i64*
  store i64 %1728, i64* %1731, align 8
  store i64 %1730, i64* %6, align 8
  store i64 %1727, i64* %3, align 8
  %call2_400f4b = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %1727, %struct.Memory* %call2_400f1a)
  %1732 = load i64, i64* %3, align 8
  %1733 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1734 = add i32 %1733, 1
  %1735 = zext i32 %1734 to i64
  store i64 %1735, i64* %RAX.i291, align 8
  %1736 = icmp eq i32 %1733, -1
  %1737 = icmp eq i32 %1734, 0
  %1738 = or i1 %1736, %1737
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %12, align 1
  %1740 = and i32 %1734, 255
  %1741 = tail call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  store i8 %1744, i8* %13, align 1
  %1745 = xor i32 %1733, %1734
  %1746 = lshr i32 %1745, 4
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  store i8 %1748, i8* %14, align 1
  %1749 = zext i1 %1737 to i8
  store i8 %1749, i8* %15, align 1
  %1750 = lshr i32 %1734, 31
  %1751 = trunc i32 %1750 to i8
  store i8 %1751, i8* %16, align 1
  %1752 = lshr i32 %1733, 31
  %1753 = xor i32 %1750, %1752
  %1754 = add nuw nsw i32 %1753, %1750
  %1755 = icmp eq i32 %1754, 2
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %17, align 1
  store i32 %1734, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1757 = add i64 %1732, -112
  store i64 %1757, i64* %3, align 8
  br label %block_.L_400ee0

block_.L_400f66:                                  ; preds = %block_.L_400ee0
  %1758 = add i64 %1710, -2470
  %1759 = add i64 %1710, 5
  %1760 = load i64, i64* %6, align 8
  %1761 = add i64 %1760, -8
  %1762 = inttoptr i64 %1761 to i64*
  store i64 %1759, i64* %1762, align 8
  store i64 %1761, i64* %6, align 8
  store i64 %1758, i64* %3, align 8
  %call2_400f66 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1758, %struct.Memory* %MEMORY.10)
  %1763 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40310d_type* @G__0x40310d to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %581, align 1
  store i32 0, i32* %582, align 1
  store i32 0, i32* %583, align 1
  store i32 0, i32* %584, align 1
  %1764 = load i64, i64* %RBP.i, align 8
  %1765 = add i64 %1764, -80
  %1766 = add i64 %1763, 18
  store i64 %1766, i64* %3, align 8
  %1767 = load <2 x float>, <2 x float>* %60, align 1
  %1768 = inttoptr i64 %1765 to float*
  %1769 = load float, float* %1768, align 4
  %1770 = extractelement <2 x float> %1767, i32 0
  %1771 = fsub float %1770, %1769
  store float %1771, float* %21, align 1
  %1772 = bitcast <2 x float> %1767 to <2 x i32>
  %1773 = extractelement <2 x i32> %1772, i32 1
  store i32 %1773, i32* %255, align 1
  %1774 = add i64 %1764, -84
  %1775 = add i64 %1763, 23
  store i64 %1775, i64* %3, align 8
  %1776 = load <2 x float>, <2 x float>* %60, align 1
  %1777 = extractelement <2 x float> %1776, i32 0
  %1778 = inttoptr i64 %1774 to float*
  store float %1777, float* %1778, align 4
  %1779 = load i64, i64* %3, align 8
  %1780 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1780, i64* %RDI.i642, align 8
  %1781 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1782 = zext i32 %1781 to i64
  store i64 %1782, i64* %RDX.i386, align 8
  %1783 = load <2 x i32>, <2 x i32>* %1339, align 1
  %1784 = load <2 x i32>, <2 x i32>* %1340, align 1
  %1785 = extractelement <2 x i32> %1783, i32 0
  store i32 %1785, i32* %22, align 1
  %1786 = extractelement <2 x i32> %1783, i32 1
  store i32 %1786, i32* %255, align 1
  %1787 = extractelement <2 x i32> %1784, i32 0
  store i32 %1787, i32* %257, align 1
  %1788 = extractelement <2 x i32> %1784, i32 1
  store i32 %1788, i32* %259, align 1
  store i8 1, i8* %AL.i1589, align 1
  %1789 = add i64 %1779, -2754
  %1790 = add i64 %1779, 25
  %1791 = load i64, i64* %6, align 8
  %1792 = add i64 %1791, -8
  %1793 = inttoptr i64 %1792 to i64*
  store i64 %1790, i64* %1793, align 8
  store i64 %1792, i64* %6, align 8
  store i64 %1789, i64* %3, align 8
  %1794 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400f66)
  %1795 = load i64, i64* %RBP.i, align 8
  %1796 = add i64 %1795, -64
  %1797 = load i64, i64* %3, align 8
  %1798 = add i64 %1797, 4
  store i64 %1798, i64* %3, align 8
  %1799 = inttoptr i64 %1796 to i32*
  %1800 = load i32, i32* %1799, align 4
  store i8 0, i8* %12, align 1
  %1801 = and i32 %1800, 255
  %1802 = tail call i32 @llvm.ctpop.i32(i32 %1801)
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = xor i8 %1804, 1
  store i8 %1805, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1806 = icmp eq i32 %1800, 0
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %15, align 1
  %1808 = lshr i32 %1800, 31
  %1809 = trunc i32 %1808 to i8
  store i8 %1809, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1810 = add i64 %1795, -952
  %1811 = load i32, i32* %EAX.i1578, align 4
  %1812 = add i64 %1797, 10
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1810 to i32*
  store i32 %1811, i32* %1813, align 4
  %1814 = load i64, i64* %3, align 8
  %1815 = load i8, i8* %16, align 1
  %1816 = icmp ne i8 %1815, 0
  %1817 = load i8, i8* %17, align 1
  %1818 = icmp ne i8 %1817, 0
  %1819 = xor i1 %1816, %1818
  %.v28 = select i1 %1819, i64 6, i64 23
  %1820 = add i64 %1814, %.v28
  store i64 %1820, i64* %3, align 8
  br i1 %1819, label %block_400fab, label %block_.L_400fbc

block_400fab:                                     ; preds = %block_.L_400f66
  %1821 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1822 = shl i32 %1821, 1
  %1823 = icmp slt i32 %1821, 0
  %1824 = icmp slt i32 %1822, 0
  %1825 = xor i1 %1823, %1824
  %1826 = zext i32 %1822 to i64
  store i64 %1826, i64* %RAX.i291, align 8
  %.lobit29 = lshr i32 %1821, 31
  %1827 = trunc i32 %.lobit29 to i8
  store i8 %1827, i8* %12, align 1
  %1828 = and i32 %1822, 254
  %1829 = tail call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  store i8 %1832, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1833 = icmp eq i32 %1822, 0
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %15, align 1
  %1835 = lshr i32 %1821, 30
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  store i8 %1837, i8* %16, align 1
  %1838 = zext i1 %1825 to i8
  store i8 %1838, i8* %17, align 1
  %1839 = add i64 %1820, 17
  store i64 %1839, i64* %3, align 8
  store i32 %1822, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  br label %block_.L_400fbc

block_.L_400fbc:                                  ; preds = %block_.L_400f66, %block_400fab
  %1840 = phi i64 [ %1839, %block_400fab ], [ %1820, %block_.L_400f66 ]
  %1841 = load i64, i64* %RBP.i, align 8
  %1842 = add i64 %1841, -64
  %1843 = add i64 %1840, 9
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1842 to i32*
  %1845 = load i32, i32* %1844, align 4
  store i8 0, i8* %12, align 1
  %1846 = and i32 %1845, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1851 = icmp eq i32 %1845, 0
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %15, align 1
  %1853 = lshr i32 %1845, 31
  %1854 = trunc i32 %1853 to i8
  store i8 %1854, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1855 = icmp ne i8 %1854, 0
  %.v30 = select i1 %1855, i64 -250, i64 15
  %1856 = add i64 %1840, %.v30
  store i64 %1856, i64* %3, align 8
  br i1 %1855, label %block_.L_400ec2, label %block_400fcb

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
  %1857 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1857, i64* %RDI.i642, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1858 = add i64 %1856, -2827
  %1859 = add i64 %1856, 63
  %1860 = load i64, i64* %6, align 8
  %1861 = add i64 %1860, -8
  %1862 = inttoptr i64 %1861 to i64*
  store i64 %1859, i64* %1862, align 8
  store i64 %1861, i64* %6, align 8
  store i64 %1858, i64* %3, align 8
  %1863 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1794)
  %1864 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403191_type* @G__0x403191 to i64), i64* %RSI.i265, align 8
  %1865 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1865, i64* %RDI.i642, align 8
  %1866 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RDX.i386, align 8
  %1868 = load i64, i64* %RBP.i, align 8
  %1869 = add i64 %1868, -956
  %1870 = load i32, i32* %EAX.i1578, align 4
  %1871 = add i64 %1864, 31
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1869 to i32*
  store i32 %1870, i32* %1872, align 4
  %1873 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1874 = add i64 %1873, -2921
  %1875 = add i64 %1873, 7
  %1876 = load i64, i64* %6, align 8
  %1877 = add i64 %1876, -8
  %1878 = inttoptr i64 %1877 to i64*
  store i64 %1875, i64* %1878, align 8
  store i64 %1877, i64* %6, align 8
  store i64 %1874, i64* %3, align 8
  %1879 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1863)
  %1880 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI.i265, align 8
  %1881 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1881, i64* %RDI.i642, align 8
  %1882 = load i64, i64* %RBP.i, align 8
  %1883 = add i64 %1882, -960
  %1884 = load i32, i32* %EAX.i1578, align 4
  %1885 = add i64 %1880, 24
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1883 to i32*
  store i32 %1884, i32* %1886, align 4
  %1887 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1888 = add i64 %1887, -2952
  %1889 = add i64 %1887, 7
  %1890 = load i64, i64* %6, align 8
  %1891 = add i64 %1890, -8
  %1892 = inttoptr i64 %1891 to i64*
  store i64 %1889, i64* %1892, align 8
  store i64 %1891, i64* %6, align 8
  store i64 %1888, i64* %3, align 8
  %1893 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1879)
  %1894 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI.i265, align 8
  %1895 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1895, i64* %RDI.i642, align 8
  %1896 = load i64, i64* %RBP.i, align 8
  %1897 = add i64 %1896, -964
  %1898 = load i32, i32* %EAX.i1578, align 4
  %1899 = add i64 %1894, 24
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1897 to i32*
  store i32 %1898, i32* %1900, align 4
  %1901 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1902 = add i64 %1901, -2983
  %1903 = add i64 %1901, 7
  %1904 = load i64, i64* %6, align 8
  %1905 = add i64 %1904, -8
  %1906 = inttoptr i64 %1905 to i64*
  store i64 %1903, i64* %1906, align 8
  store i64 %1905, i64* %6, align 8
  store i64 %1902, i64* %3, align 8
  %1907 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1893)
  %1908 = load i64, i64* %3, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %1909 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RDX.i386, align 8
  %1911 = load <2 x i32>, <2 x i32>* %1339, align 1
  %1912 = load <2 x i32>, <2 x i32>* %1340, align 1
  %1913 = sitofp i32 %1909 to float
  store float %1913, float* %566, align 1
  %1914 = extractelement <2 x i32> %1911, i32 1
  store i32 %1914, i32* %582, align 1
  %1915 = extractelement <2 x i32> %1912, i32 0
  store i32 %1915, i32* %583, align 1
  %1916 = extractelement <2 x i32> %1912, i32 1
  store i32 %1916, i32* %584, align 1
  %1917 = load i64, i64* %RBP.i, align 8
  %1918 = add i64 %1917, -72
  %1919 = add i64 %1908, 19
  store i64 %1919, i64* %3, align 8
  %1920 = load <2 x float>, <2 x float>* %572, align 1
  %1921 = load <2 x i32>, <2 x i32>* %1340, align 1
  %1922 = inttoptr i64 %1918 to float*
  %1923 = load float, float* %1922, align 4
  %1924 = extractelement <2 x float> %1920, i32 0
  %1925 = fmul float %1924, %1923
  store float %1925, float* %566, align 1
  %1926 = bitcast <2 x float> %1920 to <2 x i32>
  %1927 = extractelement <2 x i32> %1926, i32 1
  store i32 %1927, i32* %582, align 1
  %1928 = extractelement <2 x i32> %1921, i32 0
  store i32 %1928, i32* %583, align 1
  %1929 = extractelement <2 x i32> %1921, i32 1
  store i32 %1929, i32* %584, align 1
  %1930 = add i64 %1917, -44
  %1931 = add i64 %1908, 24
  store i64 %1931, i64* %3, align 8
  %1932 = load <2 x float>, <2 x float>* %572, align 1
  %1933 = extractelement <2 x float> %1932, i32 0
  %1934 = inttoptr i64 %1930 to float*
  store float %1933, float* %1934, align 4
  %1935 = load i64, i64* %3, align 8
  %1936 = load <2 x float>, <2 x float>* %60, align 1
  %1937 = extractelement <2 x float> %1936, i32 0
  store float %1937, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  store i32 1, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %1938 = load i64, i64* %RBP.i, align 8
  %1939 = add i64 %1938, -968
  %1940 = load i32, i32* %EAX.i1578, align 4
  %1941 = add i64 %1935, 26
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1939 to i32*
  store i32 %1940, i32* %1942, align 4
  %1943 = bitcast i64* %576 to double*
  %1944 = bitcast %union.VectorReg* %213 to <2 x i32>*
  %1945 = bitcast i64* %221 to <2 x i32>*
  %.pre13 = load i64, i64* %3, align 8
  %.pre14 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  br label %block_.L_4010a0

block_.L_4010a0:                                  ; preds = %block_.L_4011eb, %block_400fcb
  %1946 = phi i32 [ %.pre14, %block_400fcb ], [ %2396, %block_.L_4011eb ]
  %1947 = phi i64 [ %.pre13, %block_400fcb ], [ %2419, %block_.L_4011eb ]
  %MEMORY.13 = phi %struct.Memory* [ %1907, %block_400fcb ], [ %call2_401304, %block_.L_4011eb ]
  %1948 = add i32 %1946, -6
  %1949 = icmp ult i32 %1946, 6
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %12, align 1
  %1951 = and i32 %1948, 255
  %1952 = tail call i32 @llvm.ctpop.i32(i32 %1951)
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  %1955 = xor i8 %1954, 1
  store i8 %1955, i8* %13, align 1
  %1956 = xor i32 %1946, %1948
  %1957 = lshr i32 %1956, 4
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  store i8 %1959, i8* %14, align 1
  %1960 = icmp eq i32 %1948, 0
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %15, align 1
  %1962 = lshr i32 %1948, 31
  %1963 = trunc i32 %1962 to i8
  store i8 %1963, i8* %16, align 1
  %1964 = lshr i32 %1946, 31
  %1965 = xor i32 %1962, %1964
  %1966 = add nuw nsw i32 %1965, %1964
  %1967 = icmp eq i32 %1966, 2
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %17, align 1
  %1969 = icmp ne i8 %1963, 0
  %1970 = xor i1 %1969, %1967
  %.v31 = select i1 %1970, i64 14, i64 639
  %1971 = add i64 %1947, %.v31
  store i64 %1971, i64* %3, align 8
  br i1 %1970, label %block_4010ae, label %block_.L_40131f

block_4010ae:                                     ; preds = %block_.L_4010a0
  %1972 = add i64 %1971, -2798
  %1973 = add i64 %1971, 5
  %1974 = load i64, i64* %6, align 8
  %1975 = add i64 %1974, -8
  %1976 = inttoptr i64 %1975 to i64*
  store i64 %1973, i64* %1976, align 8
  store i64 %1975, i64* %6, align 8
  store i64 %1972, i64* %3, align 8
  %call2_4010ae = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1972, %struct.Memory* %MEMORY.13)
  %1977 = load i64, i64* %RBP.i, align 8
  %1978 = add i64 %1977, -40
  %1979 = load i64, i64* %3, align 8
  %1980 = add i64 %1979, 5
  store i64 %1980, i64* %3, align 8
  %1981 = load <2 x float>, <2 x float>* %60, align 1
  %1982 = extractelement <2 x float> %1981, i32 0
  %1983 = inttoptr i64 %1978 to float*
  store float %1982, float* %1983, align 4
  %1984 = load i64, i64* %3, align 8
  %1985 = add i64 %1984, 11
  store i64 %1985, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4010c3

block_.L_4010c3:                                  ; preds = %block_4010d7, %block_4010ae
  %1986 = phi i32 [ 0, %block_4010ae ], [ %2040, %block_4010d7 ]
  %1987 = phi i64 [ %1985, %block_4010ae ], [ %2063, %block_4010d7 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_4010ae, %block_4010ae ], [ %call2_40112e, %block_4010d7 ]
  %1988 = zext i32 %1986 to i64
  store i64 %1988, i64* %RAX.i291, align 8
  %1989 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1990 = sub i32 %1986, %1989
  %1991 = icmp ult i32 %1986, %1989
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %12, align 1
  %1993 = and i32 %1990, 255
  %1994 = tail call i32 @llvm.ctpop.i32(i32 %1993)
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = xor i8 %1996, 1
  store i8 %1997, i8* %13, align 1
  %1998 = xor i32 %1989, %1986
  %1999 = xor i32 %1998, %1990
  %2000 = lshr i32 %1999, 4
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  store i8 %2002, i8* %14, align 1
  %2003 = icmp eq i32 %1990, 0
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %15, align 1
  %2005 = lshr i32 %1990, 31
  %2006 = trunc i32 %2005 to i8
  store i8 %2006, i8* %16, align 1
  %2007 = lshr i32 %1986, 31
  %2008 = lshr i32 %1989, 31
  %2009 = xor i32 %2008, %2007
  %2010 = xor i32 %2005, %2007
  %2011 = add nuw nsw i32 %2010, %2009
  %2012 = icmp eq i32 %2011, 2
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %17, align 1
  %2014 = icmp ne i8 %2006, 0
  %2015 = xor i1 %2014, %2012
  %.v32 = select i1 %2015, i64 20, i64 134
  %2016 = add i64 %1987, %.v32
  store i64 %2016, i64* %3, align 8
  br i1 %2015, label %block_4010d7, label %block_.L_401149

block_4010d7:                                     ; preds = %block_.L_4010c3
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %2017 = load i64, i64* %RBP.i, align 8
  %2018 = add i64 %2017, -20
  store i64 %2018, i64* %33, align 8
  %2019 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2020 = zext i32 %2019 to i64
  store i64 %2020, i64* %RSI.i265, align 8
  %2021 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RDX.i386, align 8
  %2023 = add i64 %2016, 1753
  %2024 = add i64 %2016, 43
  %2025 = load i64, i64* %6, align 8
  %2026 = add i64 %2025, -8
  %2027 = inttoptr i64 %2026 to i64*
  store i64 %2024, i64* %2027, align 8
  store i64 %2026, i64* %6, align 8
  store i64 %2023, i64* %3, align 8
  %call2_4010fd = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %2023, %struct.Memory* %MEMORY.14)
  %2028 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %33, align 8
  %2029 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RSI.i265, align 8
  %2031 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RDX.i386, align 8
  %2033 = add i64 %2028, 2174
  %2034 = add i64 %2028, 49
  %2035 = load i64, i64* %6, align 8
  %2036 = add i64 %2035, -8
  %2037 = inttoptr i64 %2036 to i64*
  store i64 %2034, i64* %2037, align 8
  store i64 %2036, i64* %6, align 8
  store i64 %2033, i64* %3, align 8
  %call2_40112e = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %2033, %struct.Memory* %call2_4010fd)
  %2038 = load i64, i64* %3, align 8
  %2039 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2040 = add i32 %2039, 1
  %2041 = zext i32 %2040 to i64
  store i64 %2041, i64* %RAX.i291, align 8
  %2042 = icmp eq i32 %2039, -1
  %2043 = icmp eq i32 %2040, 0
  %2044 = or i1 %2042, %2043
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %12, align 1
  %2046 = and i32 %2040, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %13, align 1
  %2051 = xor i32 %2039, %2040
  %2052 = lshr i32 %2051, 4
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  store i8 %2054, i8* %14, align 1
  %2055 = zext i1 %2043 to i8
  store i8 %2055, i8* %15, align 1
  %2056 = lshr i32 %2040, 31
  %2057 = trunc i32 %2056 to i8
  store i8 %2057, i8* %16, align 1
  %2058 = lshr i32 %2039, 31
  %2059 = xor i32 %2056, %2058
  %2060 = add nuw nsw i32 %2059, %2056
  %2061 = icmp eq i32 %2060, 2
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %17, align 1
  store i32 %2040, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2063 = add i64 %2038, -112
  store i64 %2063, i64* %3, align 8
  br label %block_.L_4010c3

block_.L_401149:                                  ; preds = %block_.L_4010c3
  %2064 = add i64 %2016, -2953
  %2065 = add i64 %2016, 5
  %2066 = load i64, i64* %6, align 8
  %2067 = add i64 %2066, -8
  %2068 = inttoptr i64 %2067 to i64*
  store i64 %2065, i64* %2068, align 8
  store i64 %2067, i64* %6, align 8
  store i64 %2064, i64* %3, align 8
  %call2_401149 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2064, %struct.Memory* %MEMORY.14)
  %2069 = load i64, i64* %RBP.i, align 8
  %2070 = add i64 %2069, -40
  %2071 = load i64, i64* %3, align 8
  %2072 = add i64 %2071, 5
  store i64 %2072, i64* %3, align 8
  %2073 = load <2 x float>, <2 x float>* %60, align 1
  %2074 = load <2 x i32>, <2 x i32>* %248, align 1
  %2075 = inttoptr i64 %2070 to float*
  %2076 = load float, float* %2075, align 4
  %2077 = extractelement <2 x float> %2073, i32 0
  %2078 = fsub float %2077, %2076
  store float %2078, float* %21, align 1
  %2079 = bitcast <2 x float> %2073 to <2 x i32>
  %2080 = extractelement <2 x i32> %2079, i32 1
  store i32 %2080, i32* %255, align 1
  %2081 = extractelement <2 x i32> %2074, i32 0
  store i32 %2081, i32* %257, align 1
  %2082 = extractelement <2 x i32> %2074, i32 1
  store i32 %2082, i32* %259, align 1
  %2083 = add i64 %2069, -44
  %2084 = add i64 %2071, 10
  store i64 %2084, i64* %3, align 8
  %2085 = load <2 x float>, <2 x float>* %60, align 1
  %2086 = load <2 x i32>, <2 x i32>* %248, align 1
  %2087 = inttoptr i64 %2083 to float*
  %2088 = load float, float* %2087, align 4
  %2089 = extractelement <2 x float> %2085, i32 0
  %2090 = fsub float %2089, %2088
  store float %2090, float* %21, align 1
  %2091 = bitcast <2 x float> %2085 to <2 x i32>
  %2092 = extractelement <2 x i32> %2091, i32 1
  store i32 %2092, i32* %255, align 1
  %2093 = extractelement <2 x i32> %2086, i32 0
  store i32 %2093, i32* %257, align 1
  %2094 = extractelement <2 x i32> %2086, i32 1
  store i32 %2094, i32* %259, align 1
  %2095 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2096 = zext i32 %2095 to i64
  store i64 %2096, i64* %RAX.i291, align 8
  %2097 = load <2 x i32>, <2 x i32>* %1339, align 1
  %2098 = load <2 x i32>, <2 x i32>* %1340, align 1
  %2099 = sitofp i32 %2095 to float
  store float %2099, float* %566, align 1
  %2100 = extractelement <2 x i32> %2097, i32 1
  store i32 %2100, i32* %582, align 1
  %2101 = extractelement <2 x i32> %2098, i32 0
  store i32 %2101, i32* %583, align 1
  %2102 = extractelement <2 x i32> %2098, i32 1
  store i32 %2102, i32* %584, align 1
  %2103 = load <2 x float>, <2 x float>* %60, align 1
  %2104 = load <2 x i32>, <2 x i32>* %248, align 1
  %2105 = load <2 x float>, <2 x float>* %572, align 1
  %2106 = extractelement <2 x float> %2103, i32 0
  %2107 = extractelement <2 x float> %2105, i32 0
  %2108 = fdiv float %2106, %2107
  store float %2108, float* %21, align 1
  %2109 = bitcast <2 x float> %2103 to <2 x i32>
  %2110 = extractelement <2 x i32> %2109, i32 1
  store i32 %2110, i32* %255, align 1
  %2111 = extractelement <2 x i32> %2104, i32 0
  store i32 %2111, i32* %257, align 1
  %2112 = extractelement <2 x i32> %2104, i32 1
  store i32 %2112, i32* %259, align 1
  %2113 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2114 = sext i32 %2113 to i64
  store i64 %2114, i64* %RCX.i373, align 8
  %2115 = shl nsw i64 %2114, 2
  %2116 = add nsw i64 %2115, 6470352
  %2117 = add i64 %2071, 42
  store i64 %2117, i64* %3, align 8
  %2118 = load <2 x float>, <2 x float>* %60, align 1
  %2119 = extractelement <2 x float> %2118, i32 0
  %2120 = inttoptr i64 %2116 to float*
  store float %2119, float* %2120, align 4
  %2121 = load i64, i64* %3, align 8
  %2122 = add i64 %2121, -3000
  %2123 = add i64 %2121, 5
  %2124 = load i64, i64* %6, align 8
  %2125 = add i64 %2124, -8
  %2126 = inttoptr i64 %2125 to i64*
  store i64 %2123, i64* %2126, align 8
  store i64 %2125, i64* %6, align 8
  store i64 %2122, i64* %3, align 8
  %call2_401178 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2122, %struct.Memory* %call2_401149)
  %2127 = load i64, i64* %RBP.i, align 8
  %2128 = add i64 %2127, -40
  %2129 = load i64, i64* %3, align 8
  %2130 = add i64 %2129, 5
  store i64 %2130, i64* %3, align 8
  %2131 = load <2 x float>, <2 x float>* %60, align 1
  %2132 = extractelement <2 x float> %2131, i32 0
  %2133 = inttoptr i64 %2128 to float*
  store float %2132, float* %2133, align 4
  %2134 = load i64, i64* %3, align 8
  %2135 = add i64 %2134, 11
  store i64 %2135, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_40118d

block_.L_40118d:                                  ; preds = %block_4011a1, %block_.L_401149
  %2136 = phi i32 [ 0, %block_.L_401149 ], [ %2178, %block_4011a1 ]
  %2137 = phi i64 [ %2135, %block_.L_401149 ], [ %2201, %block_4011a1 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_401178, %block_.L_401149 ], [ %call2_4011d0, %block_4011a1 ]
  %2138 = zext i32 %2136 to i64
  store i64 %2138, i64* %RAX.i291, align 8
  %2139 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2140 = sub i32 %2136, %2139
  %2141 = icmp ult i32 %2136, %2139
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %12, align 1
  %2143 = and i32 %2140, 255
  %2144 = tail call i32 @llvm.ctpop.i32(i32 %2143)
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  %2147 = xor i8 %2146, 1
  store i8 %2147, i8* %13, align 1
  %2148 = xor i32 %2139, %2136
  %2149 = xor i32 %2148, %2140
  %2150 = lshr i32 %2149, 4
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  store i8 %2152, i8* %14, align 1
  %2153 = icmp eq i32 %2140, 0
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %15, align 1
  %2155 = lshr i32 %2140, 31
  %2156 = trunc i32 %2155 to i8
  store i8 %2156, i8* %16, align 1
  %2157 = lshr i32 %2136, 31
  %2158 = lshr i32 %2139, 31
  %2159 = xor i32 %2158, %2157
  %2160 = xor i32 %2155, %2157
  %2161 = add nuw nsw i32 %2160, %2159
  %2162 = icmp eq i32 %2161, 2
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %17, align 1
  %2164 = icmp ne i8 %2156, 0
  %2165 = xor i1 %2164, %2162
  %.v33 = select i1 %2165, i64 20, i64 94
  %2166 = add i64 %2137, %.v33
  store i64 %2166, i64* %3, align 8
  br i1 %2165, label %block_4011a1, label %block_.L_4011eb

block_4011a1:                                     ; preds = %block_.L_40118d
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %33, align 8
  store i64 0, i64* %R9.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2167 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2168 = zext i32 %2167 to i64
  store i64 %2168, i64* %RSI.i265, align 8
  %2169 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %RDX.i386, align 8
  %2171 = add i64 %2166, 2799
  %2172 = add i64 %2166, 52
  %2173 = load i64, i64* %6, align 8
  %2174 = add i64 %2173, -8
  %2175 = inttoptr i64 %2174 to i64*
  store i64 %2172, i64* %2175, align 8
  store i64 %2174, i64* %6, align 8
  store i64 %2171, i64* %3, align 8
  %call2_4011d0 = tail call %struct.Memory* @sub_401c90.dgesl(%struct.State* %0, i64 %2171, %struct.Memory* %MEMORY.15)
  %2176 = load i64, i64* %3, align 8
  %2177 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2178 = add i32 %2177, 1
  %2179 = zext i32 %2178 to i64
  store i64 %2179, i64* %RAX.i291, align 8
  %2180 = icmp eq i32 %2177, -1
  %2181 = icmp eq i32 %2178, 0
  %2182 = or i1 %2180, %2181
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %12, align 1
  %2184 = and i32 %2178, 255
  %2185 = tail call i32 @llvm.ctpop.i32(i32 %2184)
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = xor i8 %2187, 1
  store i8 %2188, i8* %13, align 1
  %2189 = xor i32 %2177, %2178
  %2190 = lshr i32 %2189, 4
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  store i8 %2192, i8* %14, align 1
  %2193 = zext i1 %2181 to i8
  store i8 %2193, i8* %15, align 1
  %2194 = lshr i32 %2178, 31
  %2195 = trunc i32 %2194 to i8
  store i8 %2195, i8* %16, align 1
  %2196 = lshr i32 %2177, 31
  %2197 = xor i32 %2194, %2196
  %2198 = add nuw nsw i32 %2197, %2194
  %2199 = icmp eq i32 %2198, 2
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %17, align 1
  store i32 %2178, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2201 = add i64 %2176, -72
  store i64 %2201, i64* %3, align 8
  br label %block_.L_40118d

block_.L_4011eb:                                  ; preds = %block_.L_40118d
  %2202 = add i64 %2166, -3115
  %2203 = add i64 %2166, 5
  %2204 = load i64, i64* %6, align 8
  %2205 = add i64 %2204, -8
  %2206 = inttoptr i64 %2205 to i64*
  store i64 %2203, i64* %2206, align 8
  store i64 %2205, i64* %6, align 8
  store i64 %2202, i64* %3, align 8
  %call2_4011eb = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2202, %struct.Memory* %MEMORY.15)
  %2207 = load i64, i64* %3, align 8
  %2208 = load i64, i64* bitcast (%G_0x1ce0__rip__4198904__type* @G_0x1ce0__rip__4198904_ to i64*), align 8
  store i64 %2208, i64* %198, align 1
  store double 0.000000e+00, double* %200, align 1
  %2209 = load i64, i64* bitcast (%G_0x1ce8__rip__4198912__type* @G_0x1ce8__rip__4198912_ to i64*), align 8
  store i64 %2209, i64* %580, align 1
  store double 0.000000e+00, double* %1943, align 1
  %2210 = load i64, i64* %RBP.i, align 8
  %2211 = add i64 %2210, -40
  %2212 = add i64 %2207, 21
  store i64 %2212, i64* %3, align 8
  %2213 = load <2 x float>, <2 x float>* %60, align 1
  %2214 = load <2 x i32>, <2 x i32>* %248, align 1
  %2215 = inttoptr i64 %2211 to float*
  %2216 = load float, float* %2215, align 4
  %2217 = extractelement <2 x float> %2213, i32 0
  %2218 = fsub float %2217, %2216
  store float %2218, float* %21, align 1
  %2219 = bitcast <2 x float> %2213 to <2 x i32>
  %2220 = extractelement <2 x i32> %2219, i32 1
  store i32 %2220, i32* %255, align 1
  %2221 = extractelement <2 x i32> %2214, i32 0
  store i32 %2221, i32* %257, align 1
  %2222 = extractelement <2 x i32> %2214, i32 1
  store i32 %2222, i32* %259, align 1
  %2223 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2224 = zext i32 %2223 to i64
  store i64 %2224, i64* %RAX.i291, align 8
  %2225 = load <2 x i32>, <2 x i32>* %1944, align 1
  %2226 = load <2 x i32>, <2 x i32>* %1945, align 1
  %2227 = sitofp i32 %2223 to float
  store float %2227, float* %1106, align 1
  %2228 = extractelement <2 x i32> %2225, i32 1
  store i32 %2228, i32* %220, align 1
  %2229 = extractelement <2 x i32> %2226, i32 0
  store i32 %2229, i32* %222, align 1
  %2230 = extractelement <2 x i32> %2226, i32 1
  store i32 %2230, i32* %224, align 1
  %2231 = load <2 x float>, <2 x float>* %60, align 1
  %2232 = load <2 x i32>, <2 x i32>* %248, align 1
  %2233 = load <2 x float>, <2 x float>* %1110, align 1
  %2234 = extractelement <2 x float> %2231, i32 0
  %2235 = extractelement <2 x float> %2233, i32 0
  %2236 = fdiv float %2234, %2235
  store float %2236, float* %21, align 1
  %2237 = bitcast <2 x float> %2231 to <2 x i32>
  %2238 = extractelement <2 x i32> %2237, i32 1
  store i32 %2238, i32* %255, align 1
  %2239 = extractelement <2 x i32> %2232, i32 0
  store i32 %2239, i32* %257, align 1
  %2240 = extractelement <2 x i32> %2232, i32 1
  store i32 %2240, i32* %259, align 1
  %2241 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2242 = sext i32 %2241 to i64
  %2243 = shl nsw i64 %2242, 2
  %2244 = add nsw i64 %2243, 6470412
  %2245 = add i64 %2207, 53
  store i64 %2245, i64* %3, align 8
  %2246 = load <2 x float>, <2 x float>* %60, align 1
  %2247 = extractelement <2 x float> %2246, i32 0
  %2248 = inttoptr i64 %2244 to float*
  store float %2247, float* %2248, align 4
  %2249 = load i64, i64* %3, align 8
  %2250 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2251 = sext i32 %2250 to i64
  store i64 %2251, i64* %RCX.i373, align 8
  %2252 = shl nsw i64 %2251, 2
  %2253 = add nsw i64 %2252, 6470352
  %2254 = add i64 %2249, 17
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  %2256 = load i32, i32* %2255, align 4
  store i32 %2256, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  store i64 %2251, i64* %RCX.i373, align 8
  %2257 = add nsw i64 %2252, 6470412
  %2258 = add i64 %2249, 34
  store i64 %2258, i64* %3, align 8
  %2259 = load <2 x float>, <2 x float>* %60, align 1
  %2260 = load <2 x i32>, <2 x i32>* %248, align 1
  %2261 = inttoptr i64 %2257 to float*
  %2262 = load float, float* %2261, align 4
  %2263 = extractelement <2 x float> %2259, i32 0
  %2264 = fadd float %2263, %2262
  store float %2264, float* %21, align 1
  %2265 = bitcast <2 x float> %2259 to <2 x i32>
  %2266 = extractelement <2 x i32> %2265, i32 1
  store i32 %2266, i32* %255, align 1
  %2267 = extractelement <2 x i32> %2260, i32 0
  store i32 %2267, i32* %257, align 1
  %2268 = extractelement <2 x i32> %2260, i32 1
  store i32 %2268, i32* %259, align 1
  %2269 = load i64, i64* %RBP.i, align 8
  %2270 = add i64 %2269, -16
  %2271 = add i64 %2249, 39
  store i64 %2271, i64* %3, align 8
  %2272 = load <2 x float>, <2 x float>* %60, align 1
  %2273 = extractelement <2 x float> %2272, i32 0
  %2274 = inttoptr i64 %2270 to float*
  store float %2273, float* %2274, align 4
  %2275 = load i64, i64* %RBP.i, align 8
  %2276 = add i64 %2275, -16
  %2277 = load i64, i64* %3, align 8
  %2278 = add i64 %2277, 5
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2276 to i32*
  %2280 = load i32, i32* %2279, align 4
  store i32 %2280, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2281 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2282 = sext i32 %2281 to i64
  store i64 %2282, i64* %RCX.i373, align 8
  %2283 = shl nsw i64 %2282, 2
  %2284 = add nsw i64 %2283, 6470472
  %2285 = add i64 %2277, 22
  store i64 %2285, i64* %3, align 8
  %2286 = load <2 x float>, <2 x float>* %60, align 1
  %2287 = extractelement <2 x float> %2286, i32 0
  %2288 = inttoptr i64 %2284 to float*
  store float %2287, float* %2288, align 4
  %2289 = load i64, i64* %RBP.i, align 8
  %2290 = add i64 %2289, -12
  %2291 = load i64, i64* %3, align 8
  %2292 = add i64 %2291, 5
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2290 to i32*
  %2294 = load i32, i32* %2293, align 4
  store i32 %2294, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2295 = load <2 x float>, <2 x float>* %60, align 1
  %2296 = extractelement <2 x float> %2295, i32 0
  %2297 = fpext float %2296 to double
  store double %2297, double* %192, align 1
  %2298 = add i64 %2289, -16
  %2299 = add i64 %2291, 14
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  %2301 = load i32, i32* %2300, align 4
  store i32 %2301, i32* %217, align 1
  store float 0.000000e+00, float* %1107, align 1
  store float 0.000000e+00, float* %1108, align 1
  store float 0.000000e+00, float* %1109, align 1
  %2302 = load <2 x float>, <2 x float>* %1110, align 1
  %2303 = extractelement <2 x float> %2302, i32 0
  %2304 = fpext float %2303 to double
  store double %2304, double* %225, align 1
  %2305 = load double, double* %212, align 1
  %2306 = fmul double %2305, %2304
  store double %2306, double* %212, align 1
  %2307 = load <2 x i32>, <2 x i32>* %248, align 1
  %2308 = fdiv double %2297, %2306
  %2309 = bitcast double %2308 to <2 x i32>
  %2310 = fptrunc double %2308 to float
  store float %2310, float* %21, align 1
  %2311 = extractelement <2 x i32> %2309, i32 1
  store i32 %2311, i32* %255, align 1
  %2312 = extractelement <2 x i32> %2307, i32 0
  store i32 %2312, i32* %257, align 1
  %2313 = extractelement <2 x i32> %2307, i32 1
  store i32 %2313, i32* %259, align 1
  %2314 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2315 = sext i32 %2314 to i64
  %2316 = shl nsw i64 %2315, 2
  %2317 = add nsw i64 %2316, 6470532
  %2318 = add i64 %2291, 47
  store i64 %2318, i64* %3, align 8
  %2319 = load <2 x float>, <2 x float>* %60, align 1
  %2320 = extractelement <2 x float> %2319, i32 0
  %2321 = inttoptr i64 %2317 to float*
  store float %2320, float* %2321, align 4
  %2322 = load i64, i64* %3, align 8
  %2323 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2324 = sext i32 %2323 to i64
  store i64 %2324, i64* %RCX.i373, align 8
  %2325 = shl nsw i64 %2324, 2
  %2326 = add nsw i64 %2325, 6470532
  %2327 = add i64 %2322, 17
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  store i32 %2329, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2330 = load <2 x float>, <2 x float>* %60, align 1
  %2331 = extractelement <2 x float> %2330, i32 0
  %2332 = fpext float %2331 to double
  %2333 = load double, double* %197, align 1
  %2334 = fdiv double %2333, %2332
  store double %2334, double* %197, align 1
  %2335 = bitcast double %2332 to <2 x i32>
  %2336 = load <2 x i32>, <2 x i32>* %248, align 1
  %2337 = fptrunc double %2334 to float
  store float %2337, float* %21, align 1
  %2338 = extractelement <2 x i32> %2335, i32 1
  store i32 %2338, i32* %255, align 1
  %2339 = extractelement <2 x i32> %2336, i32 0
  store i32 %2339, i32* %257, align 1
  %2340 = extractelement <2 x i32> %2336, i32 1
  store i32 %2340, i32* %259, align 1
  store i64 %2324, i64* %RCX.i373, align 8
  %2341 = add nsw i64 %2325, 6470592
  %2342 = add i64 %2322, 46
  store i64 %2342, i64* %3, align 8
  %2343 = load <2 x float>, <2 x float>* %60, align 1
  %2344 = extractelement <2 x float> %2343, i32 0
  %2345 = inttoptr i64 %2341 to float*
  store float %2344, float* %2345, align 4
  %2346 = load i64, i64* %RBP.i, align 8
  %2347 = add i64 %2346, -16
  %2348 = load i64, i64* %3, align 8
  %2349 = add i64 %2348, 5
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2347 to i32*
  %2351 = load i32, i32* %2350, align 4
  store i32 %2351, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2352 = add i64 %2346, -8
  %2353 = add i64 %2348, 10
  store i64 %2353, i64* %3, align 8
  %2354 = load <2 x float>, <2 x float>* %60, align 1
  %2355 = inttoptr i64 %2352 to float*
  %2356 = load float, float* %2355, align 4
  %2357 = extractelement <2 x float> %2354, i32 0
  %2358 = fdiv float %2357, %2356
  store float %2358, float* %21, align 1
  %2359 = bitcast <2 x float> %2354 to <2 x i32>
  %2360 = extractelement <2 x i32> %2359, i32 1
  store i32 %2360, i32* %255, align 1
  %2361 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2362 = sext i32 %2361 to i64
  %2363 = shl nsw i64 %2362, 2
  %2364 = add nsw i64 %2363, 6470652
  %2365 = add i64 %2348, 27
  store i64 %2365, i64* %3, align 8
  %2366 = load <2 x float>, <2 x float>* %60, align 1
  %2367 = extractelement <2 x float> %2366, i32 0
  %2368 = inttoptr i64 %2364 to float*
  store float %2367, float* %2368, align 4
  %2369 = load i64, i64* %3, align 8
  %2370 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  store i32 %2370, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2371 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2372 = sext i32 %2371 to i64
  store i64 %2372, i64* %RCX.i373, align 8
  %2373 = shl nsw i64 %2372, 2
  %2374 = add nsw i64 %2373, 6470532
  %2375 = add i64 %2369, 26
  store i64 %2375, i64* %3, align 8
  %2376 = load <2 x float>, <2 x float>* %60, align 1
  %2377 = load <2 x i32>, <2 x i32>* %248, align 1
  %2378 = inttoptr i64 %2374 to float*
  %2379 = load float, float* %2378, align 4
  %2380 = extractelement <2 x float> %2376, i32 0
  %2381 = fadd float %2380, %2379
  store float %2381, float* %21, align 1
  %2382 = bitcast <2 x float> %2376 to <2 x i32>
  %2383 = extractelement <2 x i32> %2382, i32 1
  store i32 %2383, i32* %255, align 1
  %2384 = extractelement <2 x i32> %2377, i32 0
  store i32 %2384, i32* %257, align 1
  %2385 = extractelement <2 x i32> %2377, i32 1
  store i32 %2385, i32* %259, align 1
  %2386 = load <2 x float>, <2 x float>* %60, align 1
  %2387 = extractelement <2 x float> %2386, i32 0
  store float %2387, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %2388 = zext i32 %2371 to i64
  store i64 %2388, i64* %RDI.i642, align 8
  %2389 = add i64 %2369, 5622
  %2390 = add i64 %2369, 47
  %2391 = load i64, i64* %6, align 8
  %2392 = add i64 %2391, -8
  %2393 = inttoptr i64 %2392 to i64*
  store i64 %2390, i64* %2393, align 8
  store i64 %2392, i64* %6, align 8
  store i64 %2389, i64* %3, align 8
  %call2_401304 = tail call %struct.Memory* @sub_4028d0.print_time(%struct.State* %0, i64 %2389, %struct.Memory* %call2_4011eb)
  %2394 = load i64, i64* %3, align 8
  %2395 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2396 = add i32 %2395, 1
  %2397 = zext i32 %2396 to i64
  store i64 %2397, i64* %RAX.i291, align 8
  %2398 = icmp eq i32 %2395, -1
  %2399 = icmp eq i32 %2396, 0
  %2400 = or i1 %2398, %2399
  %2401 = zext i1 %2400 to i8
  store i8 %2401, i8* %12, align 1
  %2402 = and i32 %2396, 255
  %2403 = tail call i32 @llvm.ctpop.i32(i32 %2402)
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = xor i8 %2405, 1
  store i8 %2406, i8* %13, align 1
  %2407 = xor i32 %2395, %2396
  %2408 = lshr i32 %2407, 4
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  store i8 %2410, i8* %14, align 1
  %2411 = zext i1 %2399 to i8
  store i8 %2411, i8* %15, align 1
  %2412 = lshr i32 %2396, 31
  %2413 = trunc i32 %2412 to i8
  store i8 %2413, i8* %16, align 1
  %2414 = lshr i32 %2395, 31
  %2415 = xor i32 %2412, %2414
  %2416 = add nuw nsw i32 %2415, %2412
  %2417 = icmp eq i32 %2416, 2
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %17, align 1
  store i32 %2396, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2419 = add i64 %2394, -617
  store i64 %2419, i64* %3, align 8
  br label %block_.L_4010a0

block_.L_40131f:                                  ; preds = %block_.L_4010a0
  store i64 ptrtoint (%G__0x4031c0_type* @G__0x4031c0 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %2420 = load double, double* bitcast (%G_0x1bbc__rip__4199220__type* @G_0x1bbc__rip__4199220_ to double*), align 8
  %2421 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  store i32 %2421, i32* %1098, align 1
  store float 0.000000e+00, float* %575, align 1
  store float 0.000000e+00, float* %577, align 1
  store float 0.000000e+00, float* %579, align 1
  %2422 = load <2 x float>, <2 x float>* %929, align 1
  %2423 = extractelement <2 x float> %2422, i32 0
  %2424 = fpext float %2423 to double
  %2425 = fdiv double %2424, %2420
  store double %2425, double* %212, align 1
  %2426 = bitcast double %2420 to <2 x i32>
  %2427 = fptrunc double %2425 to float
  store float %2427, float* %566, align 1
  %2428 = extractelement <2 x i32> %2426, i32 1
  store i32 %2428, i32* %582, align 1
  store i32 0, i32* %583, align 1
  store i32 0, i32* %584, align 1
  %2429 = load <2 x float>, <2 x float>* %572, align 1
  %2430 = extractelement <2 x float> %2429, i32 0
  store float %2430, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %2431 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2431, i64* %RDI.i642, align 8
  store i8 1, i8* %AL.i1589, align 1
  %2432 = add i64 %1971, -3679
  %2433 = add i64 %1971, 66
  %2434 = load i64, i64* %6, align 8
  %2435 = add i64 %2434, -8
  %2436 = inttoptr i64 %2435 to i64*
  store i64 %2433, i64* %2436, align 8
  store i64 %2435, i64* %6, align 8
  store i64 %2432, i64* %3, align 8
  %2437 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.13)
  %2438 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4031e9_type* @G__0x4031e9 to i64), i64* %RSI.i265, align 8
  %2439 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2439, i64* %RDI.i642, align 8
  %2440 = load i64, i64* %RBP.i, align 8
  %2441 = add i64 %2440, -972
  %2442 = load i32, i32* %EAX.i1578, align 4
  %2443 = add i64 %2438, 24
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2441 to i32*
  store i32 %2442, i32* %2444, align 4
  %2445 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2446 = add i64 %2445, -3769
  %2447 = add i64 %2445, 7
  %2448 = load i64, i64* %6, align 8
  %2449 = add i64 %2448, -8
  %2450 = inttoptr i64 %2449 to i64*
  store i64 %2447, i64* %2450, align 8
  store i64 %2449, i64* %6, align 8
  store i64 %2446, i64* %3, align 8
  %2451 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2437)
  %2452 = load i64, i64* %RBP.i, align 8
  %2453 = add i64 %2452, -976
  %2454 = load i32, i32* %EAX.i1578, align 4
  %2455 = load i64, i64* %3, align 8
  %2456 = add i64 %2455, 6
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2453 to i32*
  store i32 %2454, i32* %2457, align 4
  %2458 = load i64, i64* %3, align 8
  %2459 = add i64 %2458, -3526
  %2460 = add i64 %2458, 5
  %2461 = load i64, i64* %6, align 8
  %2462 = add i64 %2461, -8
  %2463 = inttoptr i64 %2462 to i64*
  store i64 %2460, i64* %2463, align 8
  store i64 %2462, i64* %6, align 8
  store i64 %2459, i64* %3, align 8
  %call2_401386 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2459, %struct.Memory* %2451)
  %2464 = load i64, i64* %RBP.i, align 8
  %2465 = add i64 %2464, -80
  %2466 = load i64, i64* %3, align 8
  %2467 = add i64 %2466, 5
  store i64 %2467, i64* %3, align 8
  %2468 = load <2 x float>, <2 x float>* %60, align 1
  %2469 = extractelement <2 x float> %2468, i32 0
  %2470 = inttoptr i64 %2465 to float*
  store float %2469, float* %2470, align 4
  %2471 = load i64, i64* %3, align 8
  %2472 = add i64 %2471, 11
  store i64 %2472, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_40139b

block_.L_40139b:                                  ; preds = %block_4013ab, %block_.L_40131f
  %2473 = phi i32 [ 0, %block_.L_40131f ], [ %2520, %block_4013ab ]
  %2474 = phi i64 [ %2472, %block_.L_40131f ], [ %2543, %block_4013ab ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_401386, %block_.L_40131f ], [ %call2_4013d1, %block_4013ab ]
  %2475 = zext i32 %2473 to i64
  store i64 %2475, i64* %RAX.i291, align 8
  %2476 = load i64, i64* %RBP.i, align 8
  %2477 = add i64 %2476, -68
  %2478 = add i64 %2474, 10
  store i64 %2478, i64* %3, align 8
  %2479 = inttoptr i64 %2477 to i32*
  %2480 = load i32, i32* %2479, align 4
  %2481 = sub i32 %2473, %2480
  %2482 = icmp ult i32 %2473, %2480
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %12, align 1
  %2484 = and i32 %2481, 255
  %2485 = tail call i32 @llvm.ctpop.i32(i32 %2484)
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  %2488 = xor i8 %2487, 1
  store i8 %2488, i8* %13, align 1
  %2489 = xor i32 %2480, %2473
  %2490 = xor i32 %2489, %2481
  %2491 = lshr i32 %2490, 4
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  store i8 %2493, i8* %14, align 1
  %2494 = icmp eq i32 %2481, 0
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %15, align 1
  %2496 = lshr i32 %2481, 31
  %2497 = trunc i32 %2496 to i8
  store i8 %2497, i8* %16, align 1
  %2498 = lshr i32 %2473, 31
  %2499 = lshr i32 %2480, 31
  %2500 = xor i32 %2499, %2498
  %2501 = xor i32 %2496, %2498
  %2502 = add nuw nsw i32 %2501, %2500
  %2503 = icmp eq i32 %2502, 2
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %17, align 1
  %2505 = icmp ne i8 %2497, 0
  %2506 = xor i1 %2505, %2503
  %.v34 = select i1 %2506, i64 16, i64 81
  %2507 = add i64 %2474, %.v34
  store i64 %2507, i64* %3, align 8
  br i1 %2506, label %block_4013ab, label %block_.L_4013ec

block_4013ab:                                     ; preds = %block_.L_40139b
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %2508 = add i64 %2476, -20
  store i64 %2508, i64* %33, align 8
  %2509 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2510 = zext i32 %2509 to i64
  store i64 %2510, i64* %RSI.i265, align 8
  %2511 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2512 = zext i32 %2511 to i64
  store i64 %2512, i64* %RDX.i386, align 8
  %2513 = add i64 %2507, 1029
  %2514 = add i64 %2507, 43
  %2515 = load i64, i64* %6, align 8
  %2516 = add i64 %2515, -8
  %2517 = inttoptr i64 %2516 to i64*
  store i64 %2514, i64* %2517, align 8
  store i64 %2516, i64* %6, align 8
  store i64 %2513, i64* %3, align 8
  %call2_4013d1 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %2513, %struct.Memory* %MEMORY.16)
  %2518 = load i64, i64* %3, align 8
  %2519 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2520 = add i32 %2519, 1
  %2521 = zext i32 %2520 to i64
  store i64 %2521, i64* %RAX.i291, align 8
  %2522 = icmp eq i32 %2519, -1
  %2523 = icmp eq i32 %2520, 0
  %2524 = or i1 %2522, %2523
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %12, align 1
  %2526 = and i32 %2520, 255
  %2527 = tail call i32 @llvm.ctpop.i32(i32 %2526)
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = xor i8 %2529, 1
  store i8 %2530, i8* %13, align 1
  %2531 = xor i32 %2519, %2520
  %2532 = lshr i32 %2531, 4
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  store i8 %2534, i8* %14, align 1
  %2535 = zext i1 %2523 to i8
  store i8 %2535, i8* %15, align 1
  %2536 = lshr i32 %2520, 31
  %2537 = trunc i32 %2536 to i8
  store i8 %2537, i8* %16, align 1
  %2538 = lshr i32 %2519, 31
  %2539 = xor i32 %2536, %2538
  %2540 = add nuw nsw i32 %2539, %2536
  %2541 = icmp eq i32 %2540, 2
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %17, align 1
  store i32 %2520, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2543 = add i64 %2518, -59
  store i64 %2543, i64* %3, align 8
  br label %block_.L_40139b

block_.L_4013ec:                                  ; preds = %block_.L_40139b
  %2544 = add i64 %2507, -3628
  %2545 = add i64 %2507, 5
  %2546 = load i64, i64* %6, align 8
  %2547 = add i64 %2546, -8
  %2548 = inttoptr i64 %2547 to i64*
  store i64 %2545, i64* %2548, align 8
  store i64 %2547, i64* %6, align 8
  store i64 %2544, i64* %3, align 8
  %call2_4013ec = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2544, %struct.Memory* %MEMORY.16)
  %2549 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403127_type* @G__0x403127 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %581, align 1
  store i32 0, i32* %582, align 1
  store i32 0, i32* %583, align 1
  store i32 0, i32* %584, align 1
  %2550 = load i64, i64* %RBP.i, align 8
  %2551 = add i64 %2550, -84
  %2552 = add i64 %2549, 18
  store i64 %2552, i64* %3, align 8
  %2553 = load <2 x float>, <2 x float>* %60, align 1
  %2554 = extractelement <2 x float> %2553, i32 0
  %2555 = inttoptr i64 %2551 to float*
  store float %2554, float* %2555, align 4
  %2556 = load i64, i64* %RBP.i, align 8
  %2557 = add i64 %2556, -84
  %2558 = load i64, i64* %3, align 8
  %2559 = add i64 %2558, 5
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2557 to i32*
  %2561 = load i32, i32* %2560, align 4
  store i32 %2561, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2562 = add i64 %2556, -80
  %2563 = add i64 %2558, 10
  store i64 %2563, i64* %3, align 8
  %2564 = load <2 x float>, <2 x float>* %60, align 1
  %2565 = load <2 x i32>, <2 x i32>* %248, align 1
  %2566 = inttoptr i64 %2562 to float*
  %2567 = load float, float* %2566, align 4
  %2568 = extractelement <2 x float> %2564, i32 0
  %2569 = fsub float %2568, %2567
  store float %2569, float* %21, align 1
  %2570 = bitcast <2 x float> %2564 to <2 x i32>
  %2571 = extractelement <2 x i32> %2570, i32 1
  store i32 %2571, i32* %255, align 1
  %2572 = extractelement <2 x i32> %2565, i32 0
  store i32 %2572, i32* %257, align 1
  %2573 = extractelement <2 x i32> %2565, i32 1
  store i32 %2573, i32* %259, align 1
  %2574 = add i64 %2556, -76
  %2575 = add i64 %2558, 15
  store i64 %2575, i64* %3, align 8
  %2576 = load <2 x float>, <2 x float>* %60, align 1
  %2577 = extractelement <2 x float> %2576, i32 0
  %2578 = inttoptr i64 %2574 to float*
  store float %2577, float* %2578, align 4
  %2579 = load i64, i64* %RBP.i, align 8
  %2580 = add i64 %2579, -76
  %2581 = load i64, i64* %3, align 8
  %2582 = add i64 %2581, 5
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2580 to float*
  %2584 = inttoptr i64 %2580 to i32*
  %2585 = load i32, i32* %2584, align 4
  store i32 %2585, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2586 = load <2 x float>, <2 x float>* %60, align 1
  %2587 = extractelement <2 x float> %2586, i32 0
  %2588 = fpext float %2587 to double
  store double %2588, double* %192, align 1
  %2589 = add i64 %2579, -68
  %2590 = add i64 %2581, 12
  store i64 %2590, i64* %3, align 8
  %2591 = inttoptr i64 %2589 to i32*
  %2592 = load i32, i32* %2591, align 4
  %2593 = zext i32 %2592 to i64
  store i64 %2593, i64* %RAX.i291, align 8
  %2594 = sitofp i32 %2592 to double
  store double %2594, double* %212, align 1
  %2595 = fdiv double %2588, %2594
  %2596 = bitcast double %2595 to <2 x i32>
  %2597 = fptrunc double %2595 to float
  store float %2597, float* %21, align 1
  %2598 = extractelement <2 x i32> %2596, i32 1
  store i32 %2598, i32* %255, align 1
  %2599 = add i64 %2581, 29
  store i64 %2599, i64* %3, align 8
  %2600 = load <2 x float>, <2 x float>* %60, align 1
  %2601 = extractelement <2 x float> %2600, i32 0
  store float %2601, float* %2583, align 4
  %2602 = load i64, i64* %3, align 8
  %2603 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2603, i64* %RDI.i642, align 8
  %2604 = load <2 x i32>, <2 x i32>* %1339, align 1
  %2605 = load <2 x i32>, <2 x i32>* %1340, align 1
  %2606 = extractelement <2 x i32> %2604, i32 0
  store i32 %2606, i32* %22, align 1
  %2607 = extractelement <2 x i32> %2604, i32 1
  store i32 %2607, i32* %255, align 1
  %2608 = extractelement <2 x i32> %2605, i32 0
  store i32 %2608, i32* %257, align 1
  %2609 = extractelement <2 x i32> %2605, i32 1
  store i32 %2609, i32* %259, align 1
  store i8 1, i8* %AL.i1589, align 1
  %2610 = add i64 %2602, -3951
  %2611 = add i64 %2602, 18
  %2612 = load i64, i64* %6, align 8
  %2613 = add i64 %2612, -8
  %2614 = inttoptr i64 %2613 to i64*
  store i64 %2611, i64* %2614, align 8
  store i64 %2613, i64* %6, align 8
  store i64 %2610, i64* %3, align 8
  %2615 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4013ec)
  %2616 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403191_type* @G__0x403191 to i64), i64* %RSI.i265, align 8
  %2617 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2617, i64* %RDI.i642, align 8
  %2618 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2619 = zext i32 %2618 to i64
  store i64 %2619, i64* %RDX.i386, align 8
  %2620 = load i64, i64* %RBP.i, align 8
  %2621 = add i64 %2620, -980
  %2622 = load i32, i32* %EAX.i1578, align 4
  %2623 = add i64 %2616, 31
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2621 to i32*
  store i32 %2622, i32* %2624, align 4
  %2625 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2626 = add i64 %2625, -4000
  %2627 = add i64 %2625, 7
  %2628 = load i64, i64* %6, align 8
  %2629 = add i64 %2628, -8
  %2630 = inttoptr i64 %2629 to i64*
  store i64 %2627, i64* %2630, align 8
  store i64 %2629, i64* %6, align 8
  store i64 %2626, i64* %3, align 8
  %2631 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2615)
  %2632 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI.i265, align 8
  %2633 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2633, i64* %RDI.i642, align 8
  %2634 = load i64, i64* %RBP.i, align 8
  %2635 = add i64 %2634, -984
  %2636 = load i32, i32* %EAX.i1578, align 4
  %2637 = add i64 %2632, 24
  store i64 %2637, i64* %3, align 8
  %2638 = inttoptr i64 %2635 to i32*
  store i32 %2636, i32* %2638, align 4
  %2639 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2640 = add i64 %2639, -4031
  %2641 = add i64 %2639, 7
  %2642 = load i64, i64* %6, align 8
  %2643 = add i64 %2642, -8
  %2644 = inttoptr i64 %2643 to i64*
  store i64 %2641, i64* %2644, align 8
  store i64 %2643, i64* %6, align 8
  store i64 %2640, i64* %3, align 8
  %2645 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2631)
  %2646 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI.i265, align 8
  %2647 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2647, i64* %RDI.i642, align 8
  %2648 = load i64, i64* %RBP.i, align 8
  %2649 = add i64 %2648, -988
  %2650 = load i32, i32* %EAX.i1578, align 4
  %2651 = add i64 %2646, 24
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2649 to i32*
  store i32 %2650, i32* %2652, align 4
  %2653 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2654 = add i64 %2653, -4062
  %2655 = add i64 %2653, 7
  %2656 = load i64, i64* %6, align 8
  %2657 = add i64 %2656, -8
  %2658 = inttoptr i64 %2657 to i64*
  store i64 %2655, i64* %2658, align 8
  store i64 %2657, i64* %6, align 8
  store i64 %2654, i64* %3, align 8
  %2659 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2645)
  %2660 = load i64, i64* %3, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %2661 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2662 = zext i32 %2661 to i64
  store i64 %2662, i64* %RDX.i386, align 8
  %2663 = load <2 x i32>, <2 x i32>* %1339, align 1
  %2664 = load <2 x i32>, <2 x i32>* %1340, align 1
  %2665 = sitofp i32 %2661 to float
  store float %2665, float* %566, align 1
  %2666 = extractelement <2 x i32> %2663, i32 1
  store i32 %2666, i32* %582, align 1
  %2667 = extractelement <2 x i32> %2664, i32 0
  store i32 %2667, i32* %583, align 1
  %2668 = extractelement <2 x i32> %2664, i32 1
  store i32 %2668, i32* %584, align 1
  %2669 = load i64, i64* %RBP.i, align 8
  %2670 = add i64 %2669, -76
  %2671 = add i64 %2660, 19
  store i64 %2671, i64* %3, align 8
  %2672 = load <2 x float>, <2 x float>* %572, align 1
  %2673 = load <2 x i32>, <2 x i32>* %1340, align 1
  %2674 = inttoptr i64 %2670 to float*
  %2675 = load float, float* %2674, align 4
  %2676 = extractelement <2 x float> %2672, i32 0
  %2677 = fmul float %2676, %2675
  store float %2677, float* %566, align 1
  %2678 = bitcast <2 x float> %2672 to <2 x i32>
  %2679 = extractelement <2 x i32> %2678, i32 1
  store i32 %2679, i32* %582, align 1
  %2680 = extractelement <2 x i32> %2673, i32 0
  store i32 %2680, i32* %583, align 1
  %2681 = extractelement <2 x i32> %2673, i32 1
  store i32 %2681, i32* %584, align 1
  %2682 = add i64 %2669, -44
  %2683 = add i64 %2660, 24
  store i64 %2683, i64* %3, align 8
  %2684 = load <2 x float>, <2 x float>* %572, align 1
  %2685 = extractelement <2 x float> %2684, i32 0
  %2686 = inttoptr i64 %2682 to float*
  store float %2685, float* %2686, align 4
  %2687 = load i64, i64* %3, align 8
  %2688 = load <2 x float>, <2 x float>* %60, align 1
  %2689 = extractelement <2 x float> %2688, i32 0
  store float %2689, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  store i32 7, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2690 = load i64, i64* %RBP.i, align 8
  %2691 = add i64 %2690, -992
  %2692 = load i32, i32* %EAX.i1578, align 4
  %2693 = add i64 %2687, 26
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2691 to i32*
  store i32 %2692, i32* %2694, align 4
  %.pre15 = load i64, i64* %3, align 8
  %.pre16 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  br label %block_.L_4014d7

block_.L_4014d7:                                  ; preds = %block_.L_401622, %block_.L_4013ec
  %2695 = phi i32 [ %.pre16, %block_.L_4013ec ], [ %3145, %block_.L_401622 ]
  %2696 = phi i64 [ %.pre15, %block_.L_4013ec ], [ %3168, %block_.L_401622 ]
  %MEMORY.17 = phi %struct.Memory* [ %2659, %block_.L_4013ec ], [ %call2_40173b, %block_.L_401622 ]
  %2697 = add i32 %2695, -12
  %2698 = icmp ult i32 %2695, 12
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %12, align 1
  %2700 = and i32 %2697, 255
  %2701 = tail call i32 @llvm.ctpop.i32(i32 %2700)
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  store i8 %2704, i8* %13, align 1
  %2705 = xor i32 %2695, %2697
  %2706 = lshr i32 %2705, 4
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  store i8 %2708, i8* %14, align 1
  %2709 = icmp eq i32 %2697, 0
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %15, align 1
  %2711 = lshr i32 %2697, 31
  %2712 = trunc i32 %2711 to i8
  store i8 %2712, i8* %16, align 1
  %2713 = lshr i32 %2695, 31
  %2714 = xor i32 %2711, %2713
  %2715 = add nuw nsw i32 %2714, %2713
  %2716 = icmp eq i32 %2715, 2
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %17, align 1
  %2718 = icmp ne i8 %2712, 0
  %2719 = xor i1 %2718, %2716
  %.v35 = select i1 %2719, i64 14, i64 639
  %2720 = add i64 %2696, %.v35
  store i64 %2720, i64* %3, align 8
  br i1 %2719, label %block_4014e5, label %block_.L_401756

block_4014e5:                                     ; preds = %block_.L_4014d7
  %2721 = add i64 %2720, -3877
  %2722 = add i64 %2720, 5
  %2723 = load i64, i64* %6, align 8
  %2724 = add i64 %2723, -8
  %2725 = inttoptr i64 %2724 to i64*
  store i64 %2722, i64* %2725, align 8
  store i64 %2724, i64* %6, align 8
  store i64 %2721, i64* %3, align 8
  %call2_4014e5 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2721, %struct.Memory* %MEMORY.17)
  %2726 = load i64, i64* %RBP.i, align 8
  %2727 = add i64 %2726, -40
  %2728 = load i64, i64* %3, align 8
  %2729 = add i64 %2728, 5
  store i64 %2729, i64* %3, align 8
  %2730 = load <2 x float>, <2 x float>* %60, align 1
  %2731 = extractelement <2 x float> %2730, i32 0
  %2732 = inttoptr i64 %2727 to float*
  store float %2731, float* %2732, align 4
  %2733 = load i64, i64* %3, align 8
  %2734 = add i64 %2733, 11
  store i64 %2734, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4014fa

block_.L_4014fa:                                  ; preds = %block_40150e, %block_4014e5
  %2735 = phi i32 [ 0, %block_4014e5 ], [ %2789, %block_40150e ]
  %2736 = phi i64 [ %2734, %block_4014e5 ], [ %2812, %block_40150e ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_4014e5, %block_4014e5 ], [ %call2_401565, %block_40150e ]
  %2737 = zext i32 %2735 to i64
  store i64 %2737, i64* %RAX.i291, align 8
  %2738 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2739 = sub i32 %2735, %2738
  %2740 = icmp ult i32 %2735, %2738
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %12, align 1
  %2742 = and i32 %2739, 255
  %2743 = tail call i32 @llvm.ctpop.i32(i32 %2742)
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  %2746 = xor i8 %2745, 1
  store i8 %2746, i8* %13, align 1
  %2747 = xor i32 %2738, %2735
  %2748 = xor i32 %2747, %2739
  %2749 = lshr i32 %2748, 4
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  store i8 %2751, i8* %14, align 1
  %2752 = icmp eq i32 %2739, 0
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %15, align 1
  %2754 = lshr i32 %2739, 31
  %2755 = trunc i32 %2754 to i8
  store i8 %2755, i8* %16, align 1
  %2756 = lshr i32 %2735, 31
  %2757 = lshr i32 %2738, 31
  %2758 = xor i32 %2757, %2756
  %2759 = xor i32 %2754, %2756
  %2760 = add nuw nsw i32 %2759, %2758
  %2761 = icmp eq i32 %2760, 2
  %2762 = zext i1 %2761 to i8
  store i8 %2762, i8* %17, align 1
  %2763 = icmp ne i8 %2755, 0
  %2764 = xor i1 %2763, %2761
  %.v36 = select i1 %2764, i64 20, i64 134
  %2765 = add i64 %2736, %.v36
  store i64 %2765, i64* %3, align 8
  br i1 %2764, label %block_40150e, label %block_.L_401580

block_40150e:                                     ; preds = %block_.L_4014fa
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %2766 = load i64, i64* %RBP.i, align 8
  %2767 = add i64 %2766, -20
  store i64 %2767, i64* %33, align 8
  %2768 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2769 = zext i32 %2768 to i64
  store i64 %2769, i64* %RSI.i265, align 8
  %2770 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2771 = zext i32 %2770 to i64
  store i64 %2771, i64* %RDX.i386, align 8
  %2772 = add i64 %2765, 674
  %2773 = add i64 %2765, 43
  %2774 = load i64, i64* %6, align 8
  %2775 = add i64 %2774, -8
  %2776 = inttoptr i64 %2775 to i64*
  store i64 %2773, i64* %2776, align 8
  store i64 %2775, i64* %6, align 8
  store i64 %2772, i64* %3, align 8
  %call2_401534 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %2772, %struct.Memory* %MEMORY.18)
  %2777 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %33, align 8
  %2778 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2779 = zext i32 %2778 to i64
  store i64 %2779, i64* %RSI.i265, align 8
  %2780 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2781 = zext i32 %2780 to i64
  store i64 %2781, i64* %RDX.i386, align 8
  %2782 = add i64 %2777, 1095
  %2783 = add i64 %2777, 49
  %2784 = load i64, i64* %6, align 8
  %2785 = add i64 %2784, -8
  %2786 = inttoptr i64 %2785 to i64*
  store i64 %2783, i64* %2786, align 8
  store i64 %2785, i64* %6, align 8
  store i64 %2782, i64* %3, align 8
  %call2_401565 = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %2782, %struct.Memory* %call2_401534)
  %2787 = load i64, i64* %3, align 8
  %2788 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2789 = add i32 %2788, 1
  %2790 = zext i32 %2789 to i64
  store i64 %2790, i64* %RAX.i291, align 8
  %2791 = icmp eq i32 %2788, -1
  %2792 = icmp eq i32 %2789, 0
  %2793 = or i1 %2791, %2792
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %12, align 1
  %2795 = and i32 %2789, 255
  %2796 = tail call i32 @llvm.ctpop.i32(i32 %2795)
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = xor i8 %2798, 1
  store i8 %2799, i8* %13, align 1
  %2800 = xor i32 %2788, %2789
  %2801 = lshr i32 %2800, 4
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  store i8 %2803, i8* %14, align 1
  %2804 = zext i1 %2792 to i8
  store i8 %2804, i8* %15, align 1
  %2805 = lshr i32 %2789, 31
  %2806 = trunc i32 %2805 to i8
  store i8 %2806, i8* %16, align 1
  %2807 = lshr i32 %2788, 31
  %2808 = xor i32 %2805, %2807
  %2809 = add nuw nsw i32 %2808, %2805
  %2810 = icmp eq i32 %2809, 2
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %17, align 1
  store i32 %2789, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2812 = add i64 %2787, -112
  store i64 %2812, i64* %3, align 8
  br label %block_.L_4014fa

block_.L_401580:                                  ; preds = %block_.L_4014fa
  %2813 = add i64 %2765, -4032
  %2814 = add i64 %2765, 5
  %2815 = load i64, i64* %6, align 8
  %2816 = add i64 %2815, -8
  %2817 = inttoptr i64 %2816 to i64*
  store i64 %2814, i64* %2817, align 8
  store i64 %2816, i64* %6, align 8
  store i64 %2813, i64* %3, align 8
  %call2_401580 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2813, %struct.Memory* %MEMORY.18)
  %2818 = load i64, i64* %RBP.i, align 8
  %2819 = add i64 %2818, -40
  %2820 = load i64, i64* %3, align 8
  %2821 = add i64 %2820, 5
  store i64 %2821, i64* %3, align 8
  %2822 = load <2 x float>, <2 x float>* %60, align 1
  %2823 = load <2 x i32>, <2 x i32>* %248, align 1
  %2824 = inttoptr i64 %2819 to float*
  %2825 = load float, float* %2824, align 4
  %2826 = extractelement <2 x float> %2822, i32 0
  %2827 = fsub float %2826, %2825
  store float %2827, float* %21, align 1
  %2828 = bitcast <2 x float> %2822 to <2 x i32>
  %2829 = extractelement <2 x i32> %2828, i32 1
  store i32 %2829, i32* %255, align 1
  %2830 = extractelement <2 x i32> %2823, i32 0
  store i32 %2830, i32* %257, align 1
  %2831 = extractelement <2 x i32> %2823, i32 1
  store i32 %2831, i32* %259, align 1
  %2832 = add i64 %2818, -44
  %2833 = add i64 %2820, 10
  store i64 %2833, i64* %3, align 8
  %2834 = load <2 x float>, <2 x float>* %60, align 1
  %2835 = load <2 x i32>, <2 x i32>* %248, align 1
  %2836 = inttoptr i64 %2832 to float*
  %2837 = load float, float* %2836, align 4
  %2838 = extractelement <2 x float> %2834, i32 0
  %2839 = fsub float %2838, %2837
  store float %2839, float* %21, align 1
  %2840 = bitcast <2 x float> %2834 to <2 x i32>
  %2841 = extractelement <2 x i32> %2840, i32 1
  store i32 %2841, i32* %255, align 1
  %2842 = extractelement <2 x i32> %2835, i32 0
  store i32 %2842, i32* %257, align 1
  %2843 = extractelement <2 x i32> %2835, i32 1
  store i32 %2843, i32* %259, align 1
  %2844 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2845 = zext i32 %2844 to i64
  store i64 %2845, i64* %RAX.i291, align 8
  %2846 = load <2 x i32>, <2 x i32>* %1339, align 1
  %2847 = load <2 x i32>, <2 x i32>* %1340, align 1
  %2848 = sitofp i32 %2844 to float
  store float %2848, float* %566, align 1
  %2849 = extractelement <2 x i32> %2846, i32 1
  store i32 %2849, i32* %582, align 1
  %2850 = extractelement <2 x i32> %2847, i32 0
  store i32 %2850, i32* %583, align 1
  %2851 = extractelement <2 x i32> %2847, i32 1
  store i32 %2851, i32* %584, align 1
  %2852 = load <2 x float>, <2 x float>* %60, align 1
  %2853 = load <2 x i32>, <2 x i32>* %248, align 1
  %2854 = load <2 x float>, <2 x float>* %572, align 1
  %2855 = extractelement <2 x float> %2852, i32 0
  %2856 = extractelement <2 x float> %2854, i32 0
  %2857 = fdiv float %2855, %2856
  store float %2857, float* %21, align 1
  %2858 = bitcast <2 x float> %2852 to <2 x i32>
  %2859 = extractelement <2 x i32> %2858, i32 1
  store i32 %2859, i32* %255, align 1
  %2860 = extractelement <2 x i32> %2853, i32 0
  store i32 %2860, i32* %257, align 1
  %2861 = extractelement <2 x i32> %2853, i32 1
  store i32 %2861, i32* %259, align 1
  %2862 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2863 = sext i32 %2862 to i64
  store i64 %2863, i64* %RCX.i373, align 8
  %2864 = shl nsw i64 %2863, 2
  %2865 = add nsw i64 %2864, 6470352
  %2866 = add i64 %2820, 42
  store i64 %2866, i64* %3, align 8
  %2867 = load <2 x float>, <2 x float>* %60, align 1
  %2868 = extractelement <2 x float> %2867, i32 0
  %2869 = inttoptr i64 %2865 to float*
  store float %2868, float* %2869, align 4
  %2870 = load i64, i64* %3, align 8
  %2871 = add i64 %2870, -4079
  %2872 = add i64 %2870, 5
  %2873 = load i64, i64* %6, align 8
  %2874 = add i64 %2873, -8
  %2875 = inttoptr i64 %2874 to i64*
  store i64 %2872, i64* %2875, align 8
  store i64 %2874, i64* %6, align 8
  store i64 %2871, i64* %3, align 8
  %call2_4015af = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2871, %struct.Memory* %call2_401580)
  %2876 = load i64, i64* %RBP.i, align 8
  %2877 = add i64 %2876, -40
  %2878 = load i64, i64* %3, align 8
  %2879 = add i64 %2878, 5
  store i64 %2879, i64* %3, align 8
  %2880 = load <2 x float>, <2 x float>* %60, align 1
  %2881 = extractelement <2 x float> %2880, i32 0
  %2882 = inttoptr i64 %2877 to float*
  store float %2881, float* %2882, align 4
  %2883 = load i64, i64* %3, align 8
  %2884 = add i64 %2883, 11
  store i64 %2884, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4015c4

block_.L_4015c4:                                  ; preds = %block_4015d8, %block_.L_401580
  %2885 = phi i32 [ 0, %block_.L_401580 ], [ %2927, %block_4015d8 ]
  %2886 = phi i64 [ %2884, %block_.L_401580 ], [ %2950, %block_4015d8 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_4015af, %block_.L_401580 ], [ %call2_401607, %block_4015d8 ]
  %2887 = zext i32 %2885 to i64
  store i64 %2887, i64* %RAX.i291, align 8
  %2888 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2889 = sub i32 %2885, %2888
  %2890 = icmp ult i32 %2885, %2888
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %12, align 1
  %2892 = and i32 %2889, 255
  %2893 = tail call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  store i8 %2896, i8* %13, align 1
  %2897 = xor i32 %2888, %2885
  %2898 = xor i32 %2897, %2889
  %2899 = lshr i32 %2898, 4
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  store i8 %2901, i8* %14, align 1
  %2902 = icmp eq i32 %2889, 0
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %15, align 1
  %2904 = lshr i32 %2889, 31
  %2905 = trunc i32 %2904 to i8
  store i8 %2905, i8* %16, align 1
  %2906 = lshr i32 %2885, 31
  %2907 = lshr i32 %2888, 31
  %2908 = xor i32 %2907, %2906
  %2909 = xor i32 %2904, %2906
  %2910 = add nuw nsw i32 %2909, %2908
  %2911 = icmp eq i32 %2910, 2
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %17, align 1
  %2913 = icmp ne i8 %2905, 0
  %2914 = xor i1 %2913, %2911
  %.v37 = select i1 %2914, i64 20, i64 94
  %2915 = add i64 %2886, %.v37
  store i64 %2915, i64* %3, align 8
  br i1 %2914, label %block_4015d8, label %block_.L_401622

block_4015d8:                                     ; preds = %block_.L_4015c4
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %33, align 8
  store i64 0, i64* %R9.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2916 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2917 = zext i32 %2916 to i64
  store i64 %2917, i64* %RSI.i265, align 8
  %2918 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2919 = zext i32 %2918 to i64
  store i64 %2919, i64* %RDX.i386, align 8
  %2920 = add i64 %2915, 1720
  %2921 = add i64 %2915, 52
  %2922 = load i64, i64* %6, align 8
  %2923 = add i64 %2922, -8
  %2924 = inttoptr i64 %2923 to i64*
  store i64 %2921, i64* %2924, align 8
  store i64 %2923, i64* %6, align 8
  store i64 %2920, i64* %3, align 8
  %call2_401607 = tail call %struct.Memory* @sub_401c90.dgesl(%struct.State* %0, i64 %2920, %struct.Memory* %MEMORY.19)
  %2925 = load i64, i64* %3, align 8
  %2926 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2927 = add i32 %2926, 1
  %2928 = zext i32 %2927 to i64
  store i64 %2928, i64* %RAX.i291, align 8
  %2929 = icmp eq i32 %2926, -1
  %2930 = icmp eq i32 %2927, 0
  %2931 = or i1 %2929, %2930
  %2932 = zext i1 %2931 to i8
  store i8 %2932, i8* %12, align 1
  %2933 = and i32 %2927, 255
  %2934 = tail call i32 @llvm.ctpop.i32(i32 %2933)
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  %2937 = xor i8 %2936, 1
  store i8 %2937, i8* %13, align 1
  %2938 = xor i32 %2926, %2927
  %2939 = lshr i32 %2938, 4
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  store i8 %2941, i8* %14, align 1
  %2942 = zext i1 %2930 to i8
  store i8 %2942, i8* %15, align 1
  %2943 = lshr i32 %2927, 31
  %2944 = trunc i32 %2943 to i8
  store i8 %2944, i8* %16, align 1
  %2945 = lshr i32 %2926, 31
  %2946 = xor i32 %2943, %2945
  %2947 = add nuw nsw i32 %2946, %2943
  %2948 = icmp eq i32 %2947, 2
  %2949 = zext i1 %2948 to i8
  store i8 %2949, i8* %17, align 1
  store i32 %2927, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2950 = add i64 %2925, -72
  store i64 %2950, i64* %3, align 8
  br label %block_.L_4015c4

block_.L_401622:                                  ; preds = %block_.L_4015c4
  %2951 = add i64 %2915, -4194
  %2952 = add i64 %2915, 5
  %2953 = load i64, i64* %6, align 8
  %2954 = add i64 %2953, -8
  %2955 = inttoptr i64 %2954 to i64*
  store i64 %2952, i64* %2955, align 8
  store i64 %2954, i64* %6, align 8
  store i64 %2951, i64* %3, align 8
  %call2_401622 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2951, %struct.Memory* %MEMORY.19)
  %2956 = load i64, i64* %3, align 8
  %2957 = load i64, i64* bitcast (%G_0x18a9__rip__4199983__type* @G_0x18a9__rip__4199983_ to i64*), align 8
  store i64 %2957, i64* %198, align 1
  store double 0.000000e+00, double* %200, align 1
  %2958 = load i64, i64* bitcast (%G_0x18b1__rip__4199991__type* @G_0x18b1__rip__4199991_ to i64*), align 8
  store i64 %2958, i64* %580, align 1
  store double 0.000000e+00, double* %1943, align 1
  %2959 = load i64, i64* %RBP.i, align 8
  %2960 = add i64 %2959, -40
  %2961 = add i64 %2956, 21
  store i64 %2961, i64* %3, align 8
  %2962 = load <2 x float>, <2 x float>* %60, align 1
  %2963 = load <2 x i32>, <2 x i32>* %248, align 1
  %2964 = inttoptr i64 %2960 to float*
  %2965 = load float, float* %2964, align 4
  %2966 = extractelement <2 x float> %2962, i32 0
  %2967 = fsub float %2966, %2965
  store float %2967, float* %21, align 1
  %2968 = bitcast <2 x float> %2962 to <2 x i32>
  %2969 = extractelement <2 x i32> %2968, i32 1
  store i32 %2969, i32* %255, align 1
  %2970 = extractelement <2 x i32> %2963, i32 0
  store i32 %2970, i32* %257, align 1
  %2971 = extractelement <2 x i32> %2963, i32 1
  store i32 %2971, i32* %259, align 1
  %2972 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2973 = zext i32 %2972 to i64
  store i64 %2973, i64* %RAX.i291, align 8
  %2974 = load <2 x i32>, <2 x i32>* %1944, align 1
  %2975 = load <2 x i32>, <2 x i32>* %1945, align 1
  %2976 = sitofp i32 %2972 to float
  store float %2976, float* %1106, align 1
  %2977 = extractelement <2 x i32> %2974, i32 1
  store i32 %2977, i32* %220, align 1
  %2978 = extractelement <2 x i32> %2975, i32 0
  store i32 %2978, i32* %222, align 1
  %2979 = extractelement <2 x i32> %2975, i32 1
  store i32 %2979, i32* %224, align 1
  %2980 = load <2 x float>, <2 x float>* %60, align 1
  %2981 = load <2 x i32>, <2 x i32>* %248, align 1
  %2982 = load <2 x float>, <2 x float>* %1110, align 1
  %2983 = extractelement <2 x float> %2980, i32 0
  %2984 = extractelement <2 x float> %2982, i32 0
  %2985 = fdiv float %2983, %2984
  store float %2985, float* %21, align 1
  %2986 = bitcast <2 x float> %2980 to <2 x i32>
  %2987 = extractelement <2 x i32> %2986, i32 1
  store i32 %2987, i32* %255, align 1
  %2988 = extractelement <2 x i32> %2981, i32 0
  store i32 %2988, i32* %257, align 1
  %2989 = extractelement <2 x i32> %2981, i32 1
  store i32 %2989, i32* %259, align 1
  %2990 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2991 = sext i32 %2990 to i64
  %2992 = shl nsw i64 %2991, 2
  %2993 = add nsw i64 %2992, 6470412
  %2994 = add i64 %2956, 53
  store i64 %2994, i64* %3, align 8
  %2995 = load <2 x float>, <2 x float>* %60, align 1
  %2996 = extractelement <2 x float> %2995, i32 0
  %2997 = inttoptr i64 %2993 to float*
  store float %2996, float* %2997, align 4
  %2998 = load i64, i64* %3, align 8
  %2999 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3000 = sext i32 %2999 to i64
  store i64 %3000, i64* %RCX.i373, align 8
  %3001 = shl nsw i64 %3000, 2
  %3002 = add nsw i64 %3001, 6470352
  %3003 = add i64 %2998, 17
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  store i32 %3005, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  store i64 %3000, i64* %RCX.i373, align 8
  %3006 = add nsw i64 %3001, 6470412
  %3007 = add i64 %2998, 34
  store i64 %3007, i64* %3, align 8
  %3008 = load <2 x float>, <2 x float>* %60, align 1
  %3009 = load <2 x i32>, <2 x i32>* %248, align 1
  %3010 = inttoptr i64 %3006 to float*
  %3011 = load float, float* %3010, align 4
  %3012 = extractelement <2 x float> %3008, i32 0
  %3013 = fadd float %3012, %3011
  store float %3013, float* %21, align 1
  %3014 = bitcast <2 x float> %3008 to <2 x i32>
  %3015 = extractelement <2 x i32> %3014, i32 1
  store i32 %3015, i32* %255, align 1
  %3016 = extractelement <2 x i32> %3009, i32 0
  store i32 %3016, i32* %257, align 1
  %3017 = extractelement <2 x i32> %3009, i32 1
  store i32 %3017, i32* %259, align 1
  %3018 = load i64, i64* %RBP.i, align 8
  %3019 = add i64 %3018, -16
  %3020 = add i64 %2998, 39
  store i64 %3020, i64* %3, align 8
  %3021 = load <2 x float>, <2 x float>* %60, align 1
  %3022 = extractelement <2 x float> %3021, i32 0
  %3023 = inttoptr i64 %3019 to float*
  store float %3022, float* %3023, align 4
  %3024 = load i64, i64* %RBP.i, align 8
  %3025 = add i64 %3024, -16
  %3026 = load i64, i64* %3, align 8
  %3027 = add i64 %3026, 5
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3025 to i32*
  %3029 = load i32, i32* %3028, align 4
  store i32 %3029, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3030 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3031 = sext i32 %3030 to i64
  store i64 %3031, i64* %RCX.i373, align 8
  %3032 = shl nsw i64 %3031, 2
  %3033 = add nsw i64 %3032, 6470472
  %3034 = add i64 %3026, 22
  store i64 %3034, i64* %3, align 8
  %3035 = load <2 x float>, <2 x float>* %60, align 1
  %3036 = extractelement <2 x float> %3035, i32 0
  %3037 = inttoptr i64 %3033 to float*
  store float %3036, float* %3037, align 4
  %3038 = load i64, i64* %RBP.i, align 8
  %3039 = add i64 %3038, -12
  %3040 = load i64, i64* %3, align 8
  %3041 = add i64 %3040, 5
  store i64 %3041, i64* %3, align 8
  %3042 = inttoptr i64 %3039 to i32*
  %3043 = load i32, i32* %3042, align 4
  store i32 %3043, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3044 = load <2 x float>, <2 x float>* %60, align 1
  %3045 = extractelement <2 x float> %3044, i32 0
  %3046 = fpext float %3045 to double
  store double %3046, double* %192, align 1
  %3047 = add i64 %3038, -16
  %3048 = add i64 %3040, 14
  store i64 %3048, i64* %3, align 8
  %3049 = inttoptr i64 %3047 to i32*
  %3050 = load i32, i32* %3049, align 4
  store i32 %3050, i32* %217, align 1
  store float 0.000000e+00, float* %1107, align 1
  store float 0.000000e+00, float* %1108, align 1
  store float 0.000000e+00, float* %1109, align 1
  %3051 = load <2 x float>, <2 x float>* %1110, align 1
  %3052 = extractelement <2 x float> %3051, i32 0
  %3053 = fpext float %3052 to double
  store double %3053, double* %225, align 1
  %3054 = load double, double* %212, align 1
  %3055 = fmul double %3054, %3053
  store double %3055, double* %212, align 1
  %3056 = load <2 x i32>, <2 x i32>* %248, align 1
  %3057 = fdiv double %3046, %3055
  %3058 = bitcast double %3057 to <2 x i32>
  %3059 = fptrunc double %3057 to float
  store float %3059, float* %21, align 1
  %3060 = extractelement <2 x i32> %3058, i32 1
  store i32 %3060, i32* %255, align 1
  %3061 = extractelement <2 x i32> %3056, i32 0
  store i32 %3061, i32* %257, align 1
  %3062 = extractelement <2 x i32> %3056, i32 1
  store i32 %3062, i32* %259, align 1
  %3063 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3064 = sext i32 %3063 to i64
  %3065 = shl nsw i64 %3064, 2
  %3066 = add nsw i64 %3065, 6470532
  %3067 = add i64 %3040, 47
  store i64 %3067, i64* %3, align 8
  %3068 = load <2 x float>, <2 x float>* %60, align 1
  %3069 = extractelement <2 x float> %3068, i32 0
  %3070 = inttoptr i64 %3066 to float*
  store float %3069, float* %3070, align 4
  %3071 = load i64, i64* %3, align 8
  %3072 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3073 = sext i32 %3072 to i64
  store i64 %3073, i64* %RCX.i373, align 8
  %3074 = shl nsw i64 %3073, 2
  %3075 = add nsw i64 %3074, 6470532
  %3076 = add i64 %3071, 17
  store i64 %3076, i64* %3, align 8
  %3077 = inttoptr i64 %3075 to i32*
  %3078 = load i32, i32* %3077, align 4
  store i32 %3078, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3079 = load <2 x float>, <2 x float>* %60, align 1
  %3080 = extractelement <2 x float> %3079, i32 0
  %3081 = fpext float %3080 to double
  %3082 = load double, double* %197, align 1
  %3083 = fdiv double %3082, %3081
  store double %3083, double* %197, align 1
  %3084 = bitcast double %3081 to <2 x i32>
  %3085 = load <2 x i32>, <2 x i32>* %248, align 1
  %3086 = fptrunc double %3083 to float
  store float %3086, float* %21, align 1
  %3087 = extractelement <2 x i32> %3084, i32 1
  store i32 %3087, i32* %255, align 1
  %3088 = extractelement <2 x i32> %3085, i32 0
  store i32 %3088, i32* %257, align 1
  %3089 = extractelement <2 x i32> %3085, i32 1
  store i32 %3089, i32* %259, align 1
  store i64 %3073, i64* %RCX.i373, align 8
  %3090 = add nsw i64 %3074, 6470592
  %3091 = add i64 %3071, 46
  store i64 %3091, i64* %3, align 8
  %3092 = load <2 x float>, <2 x float>* %60, align 1
  %3093 = extractelement <2 x float> %3092, i32 0
  %3094 = inttoptr i64 %3090 to float*
  store float %3093, float* %3094, align 4
  %3095 = load i64, i64* %RBP.i, align 8
  %3096 = add i64 %3095, -16
  %3097 = load i64, i64* %3, align 8
  %3098 = add i64 %3097, 5
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3096 to i32*
  %3100 = load i32, i32* %3099, align 4
  store i32 %3100, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3101 = add i64 %3095, -8
  %3102 = add i64 %3097, 10
  store i64 %3102, i64* %3, align 8
  %3103 = load <2 x float>, <2 x float>* %60, align 1
  %3104 = inttoptr i64 %3101 to float*
  %3105 = load float, float* %3104, align 4
  %3106 = extractelement <2 x float> %3103, i32 0
  %3107 = fdiv float %3106, %3105
  store float %3107, float* %21, align 1
  %3108 = bitcast <2 x float> %3103 to <2 x i32>
  %3109 = extractelement <2 x i32> %3108, i32 1
  store i32 %3109, i32* %255, align 1
  %3110 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3111 = sext i32 %3110 to i64
  %3112 = shl nsw i64 %3111, 2
  %3113 = add nsw i64 %3112, 6470652
  %3114 = add i64 %3097, 27
  store i64 %3114, i64* %3, align 8
  %3115 = load <2 x float>, <2 x float>* %60, align 1
  %3116 = extractelement <2 x float> %3115, i32 0
  %3117 = inttoptr i64 %3113 to float*
  store float %3116, float* %3117, align 4
  %3118 = load i64, i64* %3, align 8
  %3119 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  store i32 %3119, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3120 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3121 = sext i32 %3120 to i64
  store i64 %3121, i64* %RCX.i373, align 8
  %3122 = shl nsw i64 %3121, 2
  %3123 = add nsw i64 %3122, 6470532
  %3124 = add i64 %3118, 26
  store i64 %3124, i64* %3, align 8
  %3125 = load <2 x float>, <2 x float>* %60, align 1
  %3126 = load <2 x i32>, <2 x i32>* %248, align 1
  %3127 = inttoptr i64 %3123 to float*
  %3128 = load float, float* %3127, align 4
  %3129 = extractelement <2 x float> %3125, i32 0
  %3130 = fadd float %3129, %3128
  store float %3130, float* %21, align 1
  %3131 = bitcast <2 x float> %3125 to <2 x i32>
  %3132 = extractelement <2 x i32> %3131, i32 1
  store i32 %3132, i32* %255, align 1
  %3133 = extractelement <2 x i32> %3126, i32 0
  store i32 %3133, i32* %257, align 1
  %3134 = extractelement <2 x i32> %3126, i32 1
  store i32 %3134, i32* %259, align 1
  %3135 = load <2 x float>, <2 x float>* %60, align 1
  %3136 = extractelement <2 x float> %3135, i32 0
  store float %3136, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %3137 = zext i32 %3120 to i64
  store i64 %3137, i64* %RDI.i642, align 8
  %3138 = add i64 %3118, 4543
  %3139 = add i64 %3118, 47
  %3140 = load i64, i64* %6, align 8
  %3141 = add i64 %3140, -8
  %3142 = inttoptr i64 %3141 to i64*
  store i64 %3139, i64* %3142, align 8
  store i64 %3141, i64* %6, align 8
  store i64 %3138, i64* %3, align 8
  %call2_40173b = tail call %struct.Memory* @sub_4028d0.print_time(%struct.State* %0, i64 %3138, %struct.Memory* %call2_401622)
  %3143 = load i64, i64* %3, align 8
  %3144 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3145 = add i32 %3144, 1
  %3146 = zext i32 %3145 to i64
  store i64 %3146, i64* %RAX.i291, align 8
  %3147 = icmp eq i32 %3144, -1
  %3148 = icmp eq i32 %3145, 0
  %3149 = or i1 %3147, %3148
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %12, align 1
  %3151 = and i32 %3145, 255
  %3152 = tail call i32 @llvm.ctpop.i32(i32 %3151)
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  %3155 = xor i8 %3154, 1
  store i8 %3155, i8* %13, align 1
  %3156 = xor i32 %3144, %3145
  %3157 = lshr i32 %3156, 4
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  store i8 %3159, i8* %14, align 1
  %3160 = zext i1 %3148 to i8
  store i8 %3160, i8* %15, align 1
  %3161 = lshr i32 %3145, 31
  %3162 = trunc i32 %3161 to i8
  store i8 %3162, i8* %16, align 1
  %3163 = lshr i32 %3144, 31
  %3164 = xor i32 %3161, %3163
  %3165 = add nuw nsw i32 %3164, %3161
  %3166 = icmp eq i32 %3165, 2
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %17, align 1
  store i32 %3145, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3168 = add i64 %3143, -617
  store i64 %3168, i64* %3, align 8
  br label %block_.L_4014d7

block_.L_401756:                                  ; preds = %block_.L_4014d7
  store i64 ptrtoint (%G__0x4031c0_type* @G__0x4031c0 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %255, align 1
  store i32 0, i32* %257, align 1
  store i32 0, i32* %259, align 1
  %3169 = load double, double* bitcast (%G_0x1785__rip__4200299__type* @G_0x1785__rip__4200299_ to double*), align 8
  %3170 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  store i32 %3170, i32* %1098, align 1
  store float 0.000000e+00, float* %575, align 1
  store float 0.000000e+00, float* %577, align 1
  store float 0.000000e+00, float* %579, align 1
  %3171 = load <2 x float>, <2 x float>* %929, align 1
  %3172 = extractelement <2 x float> %3171, i32 0
  %3173 = fpext float %3172 to double
  %3174 = fdiv double %3173, %3169
  store double %3174, double* %212, align 1
  %3175 = bitcast double %3169 to <2 x i32>
  %3176 = fptrunc double %3174 to float
  store float %3176, float* %566, align 1
  %3177 = extractelement <2 x i32> %3175, i32 1
  store i32 %3177, i32* %582, align 1
  store i32 0, i32* %583, align 1
  store i32 0, i32* %584, align 1
  %3178 = load <2 x float>, <2 x float>* %572, align 1
  %3179 = extractelement <2 x float> %3178, i32 0
  store float %3179, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %3180 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %3180, i64* %RDI.i642, align 8
  store i8 1, i8* %AL.i1589, align 1
  %3181 = add i64 %2720, -4758
  %3182 = add i64 %2720, 66
  %3183 = load i64, i64* %6, align 8
  %3184 = add i64 %3183, -8
  %3185 = inttoptr i64 %3184 to i64*
  store i64 %3182, i64* %3185, align 8
  store i64 %3184, i64* %6, align 8
  store i64 %3181, i64* %3, align 8
  %3186 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.17)
  %3187 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i373, align 8
  %3188 = load i64, i64* %RBP.i, align 8
  %3189 = add i64 %3188, -996
  %3190 = load i32, i32* %EAX.i1578, align 4
  %3191 = add i64 %3187, 8
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3189 to i32*
  store i32 %3190, i32* %3192, align 4
  %3193 = load i32, i32* %466, align 4
  %3194 = zext i32 %3193 to i64
  %3195 = load i64, i64* %3, align 8
  store i64 %3194, i64* %RAX.i291, align 8
  %3196 = load i64, i64* %6, align 8
  %3197 = add i64 %3196, 1008
  store i64 %3197, i64* %6, align 8
  %3198 = icmp ugt i64 %3196, -1009
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %12, align 1
  %3200 = trunc i64 %3197 to i32
  %3201 = and i32 %3200, 255
  %3202 = tail call i32 @llvm.ctpop.i32(i32 %3201)
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = xor i8 %3204, 1
  store i8 %3205, i8* %13, align 1
  %3206 = xor i64 %3196, 16
  %3207 = xor i64 %3206, %3197
  %3208 = lshr i64 %3207, 4
  %3209 = trunc i64 %3208 to i8
  %3210 = and i8 %3209, 1
  store i8 %3210, i8* %14, align 1
  %3211 = icmp eq i64 %3197, 0
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %15, align 1
  %3213 = lshr i64 %3197, 63
  %3214 = trunc i64 %3213 to i8
  store i8 %3214, i8* %16, align 1
  %3215 = lshr i64 %3196, 63
  %3216 = xor i64 %3213, %3215
  %3217 = add nuw nsw i64 %3216, %3213
  %3218 = icmp eq i64 %3217, 2
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %17, align 1
  %3220 = add i64 %3195, 10
  store i64 %3220, i64* %3, align 8
  %3221 = add i64 %3196, 1016
  %3222 = inttoptr i64 %3197 to i64*
  %3223 = load i64, i64* %3222, align 8
  store i64 %3223, i64* %RBP.i, align 8
  store i64 %3221, i64* %6, align 8
  %3224 = add i64 %3195, 11
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3221 to i64*
  %3226 = load i64, i64* %3225, align 8
  store i64 %3226, i64* %3, align 8
  %3227 = add i64 %3196, 1024
  store i64 %3227, i64* %6, align 8
  ret %struct.Memory* %3186
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
  %7 = load i32, i32* bitcast (%G_0x289b__rip__4195885__type* @G_0x289b__rip__4195885_ to i32*), align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %5 = load i64, i64* bitcast (%G_0x2750__rip__4196232__type* @G_0x2750__rip__4196232_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x2750__rip__4196240__type* @G_0x2750__rip__4196240_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 12) to i32*), align 4
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 12) to i32*), align 4
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
  %7 = load i32, i32* bitcast (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 12) to i32*), align 4
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 12) to i32*), align 4
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
  store i64 %4, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x23af__rip__4197149__type* @G_0x23af__rip__4197149_ to i32*), align 8
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
  store i64 %4, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x2398__rip__4197172__type* @G_0x2398__rip__4197172_ to i32*), align 8
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2206__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x2206__rip__4197586__type* @G_0x2206__rip__4197586_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x220e__rip__4197594__type* @G_0x220e__rip__4197594_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %5 = add i64 %4, 3
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ee0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40118d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1ce0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1ce0__rip__4198904__type* @G_0x1ce0__rip__4198904_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x1ce8__rip__4198912__type* @G_0x1ce8__rip__4198912_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
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
  %5 = load i64, i64* bitcast (%G_0x1bbc__rip__4199220__type* @G_0x1bbc__rip__4199220_ to i64*), align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4014fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4015c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x18a9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x18a9__rip__4199983__type* @G_0x18a9__rip__4199983_ to i64*), align 8
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
  %5 = load i64, i64* bitcast (%G_0x18b1__rip__4199991__type* @G_0x18b1__rip__4199991_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1785__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1785__rip__4200299__type* @G_0x1785__rip__4200299_ to i64*), align 8
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
